Insert into Operacao Values(459,'Ocultar botão novo volume', 4, 48, 1)

GO--1164

ALTER TABLE VolumeEntregaProd ADD CodUsuarioEmb INT
ALTER TABLE VolumeEntregaProd ADD DataHoraEmb DATETIME

GO--1165

Alter table BonusNotaItem add QtdCrossDocking Numeric(18,4)
Alter table BonusNotaItem add ArmLiberadoCrossDocking int

GO--1166

CREATE TABLE [dbo].[PedidosItemAudit](
	[CodPedidoItemAudit] [int] NOT NULL,
	[CodPedidoItem] [int] NOT NULL,
	[CodPedido] [int] NOT NULL,
	[CodVolumeExp] [int] NOT NULL,
	[Qtde] [numeric](12, 4) NOT NULL,
	[CodUsuario] [int] NOT NULL,
	[CodProduto] [int] NOT NULL,
	[DtAudit] [datetime] NULL,
	[DtValidade] [datetime] NULL,
	[Lote] [varchar](20) NULL
)

ALTER TABLE [dbo].[PedidosItemAudit]  ADD CONSTRAINT [PK_PedidosItemAudit] PRIMARY KEY([CodPedidoItemAudit])
GO

ALTER TABLE [dbo].[PedidosItemAudit]  ADD CONSTRAINT [FK_PedidosItemAudit_PedidosItem] FOREIGN KEY([CodPedidoItem])
REFERENCES [dbo].[PedidosItem] ([CodPedidoItem])

GO--1167

Alter table Carregamento add CodUsuarioConf int

GO--1168

Alter table Endereco add TipoCrossDocking int

GO--1169

ALTER TABLE PedidosCab ADD Peso NUMERIC(15,2)

go -- 1171

ALTER TABLE OrdemServicoItem ADD QtdEstoque NUMERIC(18,4)

go -- 1172

Insert into Operacao Values(460,'Senha para alterar endereço', 2, 46, 1)

go -- 1173

CREATE TRIGGER [dbo].[Upd_OrdemServicoItem_QtdEstoque] 
   ON [dbo].[OrdemServicoItem]
   AFTER UPDATE 
As 
BEGIN
	Declare		
	    @CodOrdemServicoItem int,
		@CodProduto int,				
		@QtdCortada decimal(18,2);

	SELECT @CodOrdemServicoItem = Coalesce(I.CodOrdemServicoItem,0),
	       @CodProduto = Coalesce(I.CodProduto,0),		   
		   @QtdCortada = Coalesce(I.QtdCortada,0)
	FROM Inserted I
  
    IF(@QtdCortada > 0)
	BEGIN	  
      UPDATE OrdemServicoItem SET QtdEstoque = 
		(SELECT IsNull(SUM(EstoqueDisponivel),0) 
		 from EstoqueGeral WITH(NOLOCK)
		 where CodProd = @CodProduto)
		 WHERE CodOrdemServicoItem = @CodOrdemServicoItem
	END;
  

END;

go -- 1174

Insert into Formulario values (277, 63, 3, 1, 'Rel. Produto Estoque', 'fi_EstoqueProd', NULL)

go -- 1175

Insert into Formulario values (278, 64, 3, 1, 'Rel. Auditoria', 'fi_RelAuditoria', NULL)

go -- 1176

Alter table ProdutoKit add ativo int

go -- 1177

ALTER TABLE TIPOALMOXARIFADO ADD EAN128 INT

go -- 1178

Alter table PedidosCab add PedCli varchar(20)
Alter table PedidosCab add TipoPed varchar(1)

Alter table Carregamento add PedCli varchar(20)

go -- 1179

ALTER TABLE PARAMETROWMS ADD AbastecimentoPVPS INT

go -- 1180

ALTER TABLE CARREGAMENTO ADD TipoCarreg VARCHAR(1)

go -- 1181

ALTER TABLE VolumeExp ADD Situacao INT

go -- 1182

ALTER TABLE BOX ALTER COLUMN DescBox VARCHAR(60)

go -- 1185

Alter table VolumeEntregaProd add Excluido int
Alter table VolumeEntregaProd add CodUsuarioExclusao int
Alter table VolumeEntregaProd add DataHoraExclusao DateTime

go -- 1186

ALTER TABLE NotaFiscalItemEntrada ADD QtdExportada NUMERIC(12,4)

go -- 1187

Insert into Formulario values (279, 12, 4, 1, 'Entrada WMS', 'FRM_EntradaWMS', NULL)

go -- 1188

Insert into Formulario values (281, 34, 5, 1, 'Acompanhamento para faturamento', 'FRM_AcompExpFaturamento', NULL)

go -- 1189

ALTER TABLE CLIENTE ADD Latitude numeric(18, 7)
GO
ALTER TABLE CLIENTE ADD Longitude numeric(18, 7)

Go -- 1190

ALTER TABLE FILIAL ADD Latitude numeric(18, 7)
GO
ALTER TABLE FILIAL ADD Longitude numeric(18, 7)

go -- 1191

ALTER TABLE Produto ADD ControlaFabricacao INT
GO
ALTER TABLE Produto ADD ControlaNumSerie INT

go -- 1192
 
Insert into Formulario values (282, 62, 6, 1, 'Recebimento', 'FRM_ConferenciaBonusAut_New', 1)

GO

ALTER TABLE BonusNotaItemEtiqueta ADD NumSerie VARCHAR(50)

GO -- 1193

CREATE TABLE EstEndEtiquetaDet(
	CodEstEndEtiquetaDet bigint IDENTITY(1,1) NOT NULL,
	CodEstEndEtiqueta int NOT NULL,
	QtdEstoque numeric(12, 4) NULL,
	DtValidade date NULL,
	Lote varchar(15) NULL,
	DtFabric date NULL,
	NumSerie varchar(50) NULL
)

GO 

ALTER TABLE EstEndEtiquetaDet ADD CONSTRAINT [PK_EstEndEtiquetaDet] PRIMARY KEY(CodEstEndEtiquetaDet)

GO

ALTER TABLE EstEndEtiquetaDet ADD CONSTRAINT [FK_EstEndEtiquetaDet_EstEndEtiqueta] FOREIGN KEY(CodEstEndEtiqueta)
REFERENCES EstEndEtiqueta(CodEstEndEtiqueta)

GO --1194

Insert into Formulario values (283, 63, 6, 1, 'Transf. Pulmão -> Picking Fração', 'FRM_TransfereItem_New', 2)

GO

CREATE TABLE EstEnderecoDet(
	CodEstEnderecoDet bigint IDENTITY(1,1) NOT NULL,
	CodEstEndereco int NOT NULL,
	QtdEstoque numeric(12, 4) NULL,
	DtValidade date NULL,
	Lote varchar(15) NULL,
	DtFabric date NULL,
	NumSerie varchar(50) NULL
)

GO

ALTER TABLE EstEnderecoDet ADD CONSTRAINT [PK_EstEnderecoDet] PRIMARY KEY(CodEstEnderecoDet)

GO

ALTER TABLE EstEnderecoDet ADD CONSTRAINT [FK_EstEnderecoDet_EstEndereco] FOREIGN KEY(CodEstEndereco)
REFERENCES EstEndereco(CodEstEndereco)

GO

CREATE PROCEDURE [dbo].[sp_InsertEstEnderecoDet] 
 @CodEstEndereco int,
 @QtdEstoque numeric(12, 4),
 @DtValidade varchar(10),
 @Lote varchar(15),
 @DtFabric varchar(10),
 @NumSerie varchar(50)
AS
  DECLARE @CodEstEnderecoDet int;
  BEGIN
    SET @CodEstEnderecoDet = 0;
	IF(@NumSerie IS NULL)
	BEGIN
		SELECT TOP 1
		  @CodEstEnderecoDet = E.CodEstEnderecoDet
		FROM EstEnderecoDet E
		WHERE E.CodEstEnderecoDet = @CodEstEndereco
		AND E.DtValidade = @DtValidade
		AND E.Lote = @Lote
		AND E.DtFabric = @DtFabric		
	END
	ELSE
	BEGIN
		SELECT TOP 1
		  @CodEstEnderecoDet = E.CodEstEnderecoDet
		FROM EstEnderecoDet E
		WHERE E.CodEstEnderecoDet = @CodEstEndereco		
		AND E.NumSerie = @NumSerie;

		SET @DtValidade = NULL;
		SET @Lote = NULL;
		SET @DtFabric = NULL;
		
	END
	----
    IF (@CodEstEnderecoDet > 0)
    BEGIN
      UPDATE EstEnderecoDet
      SET QtdEstoque = COALESCE(QtdEstoque, 0) + @QtdEstoque
      WHERE CodEstEnderecoDet = @CodEstEnderecoDet;
    END
    ELSE
    BEGIN
      INSERT INTO EstEnderecoDet (CodEstEndereco,
      QtdEstoque, DtValidade, Lote, DtFabric, NumSerie)
        VALUES (@CodEstEndereco, @QtdEstoque, @DtValidade, @Lote, @DtFabric, @NumSerie)
    END
  END
  
  GO --1195
  
  CREATE VIEW [dbo].[ExpCxProduto] AS
SELECT MCab.CodCarregamento, PedIt.CodPedidoCab, PedIt.CodFilialIntegracao, DLog.CodDeposito, 
       PedIt.CodProduto, PedIt.QtdProduto AS QtdPed, PD.QtdCX, 
       Ender.CodEndereco AS EndCx, Ender.CodEstacao AS EstCx, 
       CAST((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0))/PD.QtdCX AS int) AS Caixa, 
       CAST((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0))/PD.QtdCX AS int) * PD.QtdCX AS TotReq,
       PedIt.CodFilial,
       COALESCE (SUM(COALESCE (EstPk.EstoqueDisponivel, 0)),0) AS EstoquePicking,
       COALESCE (SUM(COALESCE (EstPl.EstoqueDisponivel, 0)),0) AS EstoquePulmao
  FROM PedidosItem PedIt
       JOIN PRODUTO PD ON PD.CodProduto = PedIT.CodProduto
       JOIN DadosLogistica DLog ON DLog.Codprod = PedIt.CodProduto AND DLog.CodFilial = PedIt.CodFilial
       JOIN ParametroWMS P on P.CodFilial = PedIt.CodFilial and P.CodDeposito = DLog.CodDeposito 
       JOIN Endereco Ender ON Ender.CodEndereco = Coalesce(Coalesce(DLog.CodEnderecoMaster,DLog.CodEnderecoFracionado), P.CodEndCxPadrao)
  LEFT JOIN MontagemCab MCab ON PedIt.CodPedidoCab = MCab.CodPedidoCab
                           AND PedIt.CodFilialIntegracao = MCab.CodFilialIntegracao   
  LEFT JOIN EstoqueTotalPicking EstPk on EstPk.Codprod = PedIt.CodProduto
                                     and EstPk.CodDeposito = Ender.CodDeposito
  LEFT JOIN EstoqueTotalPulmao EstPl on EstPl.CodProd = PedIt.CodProduto
                                    AND EstPl.CodDeposito = Ender.CodDeposito                                
 WHERE (PD.QtdCX > 0)
 group by MCab.CodCarregamento, PedIt.CodPedidoCab, PedIt.CodFilialIntegracao,
          DLog.CodDeposito, PedIt.CodProduto, PedIt.QtdProduto, PedIt.QtdCorte, PD.QtdCX,
          Ender.CodEndereco, Ender.CodEstacao, PedIt.CodFilial
		  
 GO --1196
 
 CREATE VIEW [dbo].[ExpUndProduto] AS
SELECT MCab.CodCarregamento, PedIt.CodFilial, PedIt.CodFilialIntegracao, DLog.CodDeposito, 
       PedIt.CodPedidoCab, PedIt.CodProduto, PedIt.QtdProduto AS QtdPed, 
       Coalesce(PedIt.QtdCorte,0) AS QtdCorte, E.CodEndereco AS EndF, E.CodEstacao AS EstF, 
       Null as CodEmbalagem, 
       CASE WHEN (Coalesce(PD.QtdCx,0) > 0) AND 
                 ((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) >= PD.QtdCx) 
            THEN ((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) % PD.QtdCx)  
            ELSE (PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) END AS Unidade,
       COALESCE (SUM(COALESCE (EstPk.EstoqueDisponivel, 0)),0) AS EstoquePicking,
       COALESCE (SUM(COALESCE (EstPl.EstoqueDisponivel, 0)),0) AS EstoquePulmao,
       PedIt.DtValidade, PedIt.Lote, PedIt.ItemPedido
  FROM PedidosItem AS PedIt
       JOIN PRODUTO PD ON PD.CodProduto = PedIT.CodProduto
       JOIN DadosLogistica AS DLog ON PedIt.CodProduto = DLog.Codprod AND PedIt.CodFilial = DLog.CodFilial
       JOIN ParametroWMS P on P.CodFilial = PedIt.CodFilial and P.CodDeposito = DLog.CodDeposito 
       JOIN Endereco AS E ON E.CodEndereco = Coalesce(DLog.CodEnderecoFracionado, P.CodEndFracPadrao)       
  LEFT JOIN MontagemCab AS MCab ON PedIt.CodPedidoCab = MCab.CodPedidoCab
                               and PedIt.CodFilialIntegracao = MCab.CodFilialIntegracao
  LEFT JOIN EstoqueTotalPicking AS EstPk on EstPk.Codprod = PedIt.CodProduto
                                 and EstPk.CodDeposito = DLog.CodDeposito
                                 and EstPk.CodFilial = DLog.CodFilial                                 
  LEFT JOIN EstoqueTotalPulmao as EstPl on EstPl.CodProd = PedIt.CodProduto
                                AND EstPl.CodDeposito = DLog.CodDeposito
group by MCab.CodCarregamento, PedIt.CodFilial, PedIt.CodFilialIntegracao, DLog.CodDeposito, 
       PedIt.CodPedidoCab, PedIt.CodProduto, PedIt.QtdProduto, PedIt.QtdCorte,
       E.CodEndereco, E.CodEstacao, 
       CASE WHEN (Coalesce(PD.QtdCx,0) > 0) AND 
                 ((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) >= PD.QtdCx) 
            THEN ((PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) % PD.QtdCx)  
            ELSE (PedIt.QtdProduto-Coalesce(PedIt.QtdCorte,0)) END, 
	  PedIt.DtValidade, PedIt.Lote, PedIt.ItemPedido

 GO --1197
 
 Alter table ExpedicaoAut add TipoOS varchar(20)
 
 GO --1198
 
 Insert into Formulario values (284, 64, 6, 1, 'Expedição Multi Endereços', 'FRM_ExpMultiEnd_New', 3)
 
 GO --1199
 
 Alter table PedidosCab add CodCarregamento int
 
 GO --1200
 
 Insert into Operacao Values(461,'Operações, Classificar itens Cross Docking', 42, 43, 1)
GO
Insert into Operacao Values(462,'Operações, Informe peso da balança manual', 43, 43, 1)
GO
Insert into Operacao Values(463,'Operações, Etiquetas do recebimento - Acompanhamento', 44, 43, 1)
GO
Insert into Operacao Values(464,'Impressões, Etiquetas do bônus', 45, 43, 1)
GO
Insert into Operacao Values(465,'Impressões, Log de etiqueta', 46, 43, 1)
GO
Insert into Operacao Values(466,'Impressões, Resumo recebimento MP', 47, 43, 1)
GO
Insert into Operacao Values(467,'Impressões, Divergência por volume de conferência', 48, 43, 1)

GO --1201

Insert into Formulario values (285, 65, 6, 0, 'Expedição Mult Carga', 'FRM_ExpMultiPedidosCarga' ,3)

GO --1202

Insert into Operacao values (468, 'Informar quantidade', 1,227,1)

GO --1203

Insert into Formulario values (286, 66, 6, 1, 'Produto Barra', 'FRM_ProdutoBarra' ,2)

GO

CREATE TABLE [dbo].[ProdutoBarra](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CodProduto] [int] NULL,
	[CodFornecedor] [int] NOT NULL,
	[Tamanho] [int] NOT NULL,
	[EanInicio] [int] NULL,
	[EanTam] [int] NULL,
	[Validade] [int] NULL,
	[ValidadeInicio] [int] NULL,
	[ValidadeTam] [int] NULL,
	[Fabric] [int] NULL,
	[FabricInicio] [int] NULL,
	[FabricTam] [int] NULL,
	[Lote] [int] NULL,
	[LoteInicio] [int] NULL,
	[LoteTam] [int] NULL,
	[Qtd] [int] NULL,
	[Qtdinicio] [int] NULL,
	[QtdTam] [int] NULL,
 CONSTRAINT [PK_ProdutoBarra] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProdutoBarra]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoBarra_Fornecedor] FOREIGN KEY([CodFornecedor])
REFERENCES [dbo].[Fornecedor] ([CodFornecedor])
GO

ALTER TABLE [dbo].[ProdutoBarra] CHECK CONSTRAINT [FK_ProdutoBarra_Fornecedor]
GO

ALTER TABLE [dbo].[ProdutoBarra]  WITH CHECK ADD  CONSTRAINT [FK_ProdutoBarra_Produto] FOREIGN KEY([CodProduto])
REFERENCES [dbo].[Produto] ([CodProduto])
GO

ALTER TABLE [dbo].[ProdutoBarra] CHECK CONSTRAINT [FK_ProdutoBarra_Produto]
GO


GO --1204

ALTER TABLE ProdutoBarra ADD DataFormato varchar(20)

GO --1205

ALTER TABLE ProdutoBarra ADD QtdFrac INT
GO
ALTER TABLE ProdutoBarra ADD QtdFracInicio INT
GO
ALTER TABLE ProdutoBarra ADD QtdFracTam INT

GO --1206

Insert into Operacao values (469, 'Gerar etiqueta sem imprimir', 2,168,1)

GO --1207

Insert into Formulario values (287, 67, 6, 1, 'Conferência do Pedido', 'FRM_ConfPedidoNumSerie' ,3)
GO
ALTER TABLE PedidosItemConf ADD DtFabric DATETIME
GO
ALTER TABLE PedidosItemConf ADD DtValidade DATETIME
GO
ALTER TABLE PedidosItemConf ADD NumSerie VARCHAR(50)

GO --1208

Alter table OrdemServicoItem add CodEnderecoVoltaApanhe int
Alter table EstEtiqueta add CodOrdemServicoItem int

Go --1209

Insert into Operacao values (470, 'Separação checkout', 0,285,1)

Go --1210

Insert into Formulario values (288, 35, 5, 0, 'Cockpit de Carregamento', 'FRM_CockpitExp' ,3)

Go --1211

ALTER TABLE Usuario ADD SenhaSupervisorExp VARCHAR(20)

Go --1212

Insert into Operacao values (471, 'Confirmar produto', 2,133,1)

Go --1213

ALTER TABLE InventarioItemDet ADD NumSerie VARCHAR(50)

GO

Insert into Formulario values (289, 68, 6, 0, 'Inventário programado', 'FRM_InventarioNumSerie' ,2)

GO --1214

CREATE TABLE GrupoCarregamento(
	CodGrupoCarregamento INT PRIMARY KEY NOT NULL,
	Data DATETIME DEFAULT GETDATE()	
)

GO

ALTER TABLE Carregamento ADD CodGrupoCarregamento INT

GO

ALTER TABLE Carregamento ADD CONSTRAINT FK_GrupoCarregamento 
FOREIGN KEY(CodGrupoCarregamento) REFERENCES GrupoCarregamento(CodGrupoCarregamento)

GO

CREATE FUNCTION [dbo].[fn_CarregamentosGrupo] (@CodGrupoCarregamento int)
RETURNS varchar(100)
BEGIN
  DECLARE @CodCarregamento int,
          @Carregs varchar(100)
  DECLARE pCarregamentos CURSOR FOR
  SELECT
    C.CodCarregamento
  FROM Carregamento C
  WHERE C.CodGrupoCarregamento = @CodGrupoCarregamento
  OPEN pCarregamentos
  FETCH NEXT FROM pCarregamentos INTO @CodCarregamento
  WHILE @@FETCH_STATUS = 0
  BEGIN
    IF LEN(@Carregs) > 0
      SET @Carregs = @Carregs + ', ' + CAST(@CodCarregamento AS varchar)
    ELSE
      SET @Carregs = CAST(@CodCarregamento AS varchar)
    FETCH NEXT FROM pCarregamentos INTO @CodCarregamento
  END
  RETURN @Carregs
END

GO --1215

CREATE view [dbo].[vEtiquetaConferencia] as
select CodEtiqueta, O.CodOrdemServicoCab, 'Cx' as Tp, Volume, Coalesce(Via,1) as Via, V.Situacao, 
       DtHoraGeracao, CodUsuarioGeracao, null as CodCarregamento, null as SituacaoCarregamento,
       null as CodUsuarioReimpressao, null as Realocado
  from VolumeCX V
  join OrdemServicoCab O on O.CodOrdemServicoCab = V.CodOrdemServicoCab and O.TipoOS = 8
 union all
select CodVolumeExp, O.CodOrdemServicoCab, 'Fr', V.NumVolume, V.Via,
		Case 
        /* Inutilizada */		
		when DataHoraCancelamento is not null then 2
        /* Não usada */
		when (select Coalesce(Sum((Coalesce(QtdAtendida,0)+Coalesce(QtdCortada,0))),0)
                from OrdemServicoItemCheckout IE
                join OrdemServicoItem I on I.CodOrdemServicoItem = IE.CodOrdemServicoItem
                JOIN OrdemServicoCab O ON I.CodOrdemServicoCab = O.CodOrdemServicoCab
               where IE.CodVolumeExp = V.CodVolumeExp ) = 0 then 0
        /* Separada */		
		when (select Sum(QtdSolicitada-(Coalesce(QtdAtendida,0)+Coalesce(QtdCortada,0)))
                from OrdemServicoItemCheckout IE
                join OrdemServicoItem I on I.CodOrdemServicoItem = IE.CodOrdemServicoItem
                JOIN OrdemServicoCab O ON I.CodOrdemServicoCab = O.CodOrdemServicoCab
               where IE.CodVolumeExp = V.CodVolumeExp and O.TipoOS = 0) <= 0 then 1
	   /* Separando */	
       else 3 end, 
       DataHoraGeracao, CodUsuarioSolicitante, V.CodCarregamento, SituacaoCarregamento,
       CodUsuarioReimpressao, V.Realocado
  from VolumeExp V
  join OrdemServicoCab O on O.CodOrdemServicoCab = V.CodOrdemServicoCab and O.TipoOS = 10

GO --1216

Alter table Carregamento add DtExpedicao DateTime

GO --1217

Insert into Operacao values (472, 'Gerar etiqueta sem imprimir', 3, 186, 1)

GO --1218

ALTER VIEW [dbo].[EstoquePicking]
AS
SELECT EE.CodFilial, E.CodDeposito, EE.Codprod, 
       COALESCE(EE.QtdEstoque, 0) AS EstoqueAtual,
       COALESCE(EE.QtdEstoque, 0) - COALESCE (EE.QtdAvaria, 0) - COALESCE (EE.QtdBloqueada, 0) AS EstoqueDisponivel,
       COALESCE(EE.QtdAvaria, 0) AS QtdAvaria,
       COALESCE(EE.QtdBloqueada, 0) AS QtdBloqueada, 
       EE.CodEndereco, E.Rua, E.Predio, E.Nivel, E.Apto, E.Bloqueado, Estacao.TipoEndereco, NULL as CodEtiqueta,
       EE.DtValidade, EE.DatUltimaEntrada, EE.Dot, EE.Lote, EE.DtFabric
  FROM EstEndereco EE
  JOIN Endereco E ON EE.CodEndereco = E.CodEndereco 
  JOIN Estacao ON E.CodEstacao = Estacao.CodEstacao
  
GO --1220

Alter table Inventario add CodInventarioERP varchar(10)

GO --1221

ALTER TABLE ParametroWMS ADD PrenderExpPorUsuario INT

GO --1222

Alter table ConexaoCliente add ViewBonus varchar(255)

GO --1223

Insert into Formulario values (290, 65, 3, 1, 'Rel. Necessidade x Estoque', 'fi_RelNecessidadeEstoque' ,NULL)
GO
Insert into Formulario values (291, 66, 3, 1, 'Rel. Cargas x Conferência', 'fi_RelCargasConferencia' ,NULL)

GO --1224

Insert into Formulario values (290, 65, 3, 1, 'Rel. Necessidade x Estoque', 'fi_RelNecessidadeEstoque' ,NULL)
GO
Insert into Formulario values (291, 66, 3, 1, 'Rel. Cargas x Conferência', 'fi_RelCargasConferencia' ,NULL)

GO --1225

Alter table Carregamento add CodFilialExportacao varchar(20)

GO --1226

Insert into Operacao values(473, 'Informar Almoxarifado', 1, 282 ,1)

GO --1227

Alter table Parametrowms add NaoInformaEndSeparacao int

GO --1228

Alter table OrdemServicoItemCheckOut add NumSerie varchar(50)

GO --1229

CREATE TABLE [dbo].[DevolucaoCabTemp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumDoc] [varchar](20) NOT NULL,
	[CodFilial] [int] NOT NULL,
	[DataHora] [DateTime] NOT NULL,
	[Situacao] [int] NULL,
 CONSTRAINT [PK_DevolucaoCabTemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

Go --1230

Alter table Pallet add Largura float
Alter table Pallet add Profundidade float

Alter table Endereco add Largura float
Alter table Endereco add Profundidade float

Alter table Etiqueta add Largura float
Alter table Etiqueta add Profundidade float

Alter table ParametroWMS add ArmazenaPorTamanhoPallet int

GO --1231

CREATE TABLE [dbo].[Altura](
	[CodAltura] [int] NOT NULL,
	[Altura] [float] NOT NULL
 CONSTRAINT [PK_Altura] PRIMARY KEY CLUSTERED 
(
	[CodAltura] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

GO --1232

Alter table altura add CodTipoEnd int

GO --1233

Insert into Formulario values (292, 24,11, 0, 'Cadastro de Altura', 'FRM_Altura', null)

GO --1234

CREATE function [dbo].[fnTotalPedido] (@pedido int) returns Numeric(18,2)
as 
begin
	declare 
		@resultado Numeric(18,2)
		
	Select @resultado = ValorTotal
	  from PedidosCab
	 where CodPedidoCab = @pedido

	return Coalesce(@resultado,0)
end

GO --1235

INSERT INTO FORMULARIO VALUES (293, 9, 1, 0, 'Controle de Permissão','FRM_ControlePermissao', Null)

GO --1236

Alter table produto add ArmPicking Int
INSERT INTO FORMULARIO VALUES (294, 36, 5, 1, 'Rel. Controle Cargas','fi_RelControleCarreg', Null)

GO --1237

INSERT INTO FORMULARIO VALUES (295, 67, 3, 0, 'Rel. de Conferência','fi_RelConferencia', Null)

GO --1238

CREATE VIEW [dbo].[EstoqueGeralDet]
AS
SELECT
  EEE.CodFilial,
  EEE.CodDeposito,
  EEE.CodProd,
  EEE.CodEtiqueta,
  SUM(COALESCE(EEEDT.QtdEstoque, 0)) AS EstAtual,
  SUM(COALESCE(EEEDT.QtdEstoque, 0))  AS EstoqueDisponivel,
  0 AS QtdAvaria,
  0 AS QtdBloqueada,
  'PL' AS tipo,
  E.CodEndereco AS CodEndereco,
  E.Rua AS rua,
  E.Predio AS predio,
  E.Nivel AS nivel,
  E.Apto AS apto,
  E.Bloqueado,
  E.CodTipoAlmoxarifado,
  E.CodTipoEnd,
  EEEDT.DtValidade,
  EEEDT.Lote NumLote,
  EEEDT.DtFabric,
  EEEDT.NumSerie    
FROM EstEndEtiqueta EEE
JOIN EstEtiqueta EE ON EEE.CodEtiqueta = EE.CodEtiqueta AND EEE.CodDeposito = EE.CodDeposito
JOIN EstEndEtiquetaDet EEEDT ON EEE.CodEstEndEtiqueta = EEEDT.CodEstEndEtiqueta
JOIN Etiqueta ETG ON ETG.CodEtiqueta = EE.CodEtiqueta AND ETG.CodDeposito = EE.CodDeposito AND ETG.Situacao = 1 /*Enderecada*/
JOIN Endereco E ON EE.CodEndereco = E.CodEndereco AND EE.CodDeposito = E.CodDeposito
GROUP BY EEE.CodFilial,
         EEE.CodDeposito,
         EEE.CodProd,
         EEE.CodEtiqueta,
         E.CodEndereco,
         E.Rua,
         E.Predio,
         E.Nivel,
         E.Apto,
         E.Bloqueado,
         E.CodTipoAlmoxarifado,
         E.CodTipoEnd,
		 EEEDT.DtValidade,
		 EEEDT.Lote,
		 EEEDT.DtFabric,
		 EEEDT.NumSerie  

UNION ALL
SELECT
  EE.CodFilial,
  E.CodDeposito,
  EE.Codprod,
  NULL,
  COALESCE(EE.QtdEstoque, 0) AS EstAtual,
  COALESCE(EE.QtdEstoque, 0) - COALESCE(EE.QtdAvaria, 0) - COALESCE(EE.QtdBloqueada, 0) AS EstoqueDisponivel,
  COALESCE(EE.QtdAvaria, 0) AS QtdAvaria,
  COALESCE(EE.QtdBloqueada, 0) AS QtdBloqueada,
  'PK' AS tipo,
  E.CodEndereco,
  E.Rua,
  E.Predio,
  E.Nivel,
  E.Apto,
  E.Bloqueado,
  E.CodTipoAlmoxarifado,
  E.CodTipoEnd,
  EEDT.DtValidade,
  EEDT.Lote NumLote,
  EEDT.DtFabric,
  EEDT.NumSerie 
FROM EstEndereco EE
JOIN Endereco E ON EE.CodEndereco = E.CodEndereco AND EE.CodFilial = E.CodFilial
JOIN EstEnderecoDet EEDT ON EE.CodEstEndereco = EEDT.CodEstEnderecoDet

GO --1239

insert into Operacao values(474 ,'Ocultar nome do cliente',5,123,1)

GO --1240

CREATE TABLE [dbo].[Produto_Mapeamento](
	[Sequencial] [int] IDENTITY(1,1) NOT NULL,
	[CodProduto] [int] NOT NULL,
	[CodEndFracionado] [int] NULL,
	[EstMinFracionado] [numeric](18, 2) NOT NULL,
	[EstMaxFracionado] [numeric](18, 2) NOT NULL,
	[CodEndMaster] [int] NULL,
	[EstMinMaster] [numeric](18, 2) NOT NULL,
	[EstMaxMaster] [numeric](18, 2) NOT NULL,
	[CodTipoAlmoxarifado] [int] NOT NULL
	CONSTRAINT [PK_Produto_Mapeamento] PRIMARY KEY CLUSTERED 
(
	[Sequencial] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Produto_Mapeamento]  WITH CHECK ADD CONSTRAINT [FK_Produto_Mapeamento_Produto] FOREIGN KEY([CodProduto])
REFERENCES [dbo].[Produto] ([CodProduto])
GO

ALTER TABLE [dbo].[Produto_Mapeamento] CHECK CONSTRAINT [FK_Produto_Mapeamento_Produto]
GO

ALTER TABLE [dbo].[Produto_Mapeamento]  WITH NOCHECK ADD CONSTRAINT [FK_Produto_Mapeamento_EndFracionado] FOREIGN KEY([CodEndFracionado])
REFERENCES [dbo].[Endereco] ([Codendereco])
GO

ALTER TABLE [dbo].[Produto_Mapeamento] NOCHECK CONSTRAINT  [FK_Produto_Mapeamento_EndFracionado]
GO

ALTER TABLE [dbo].[Produto_Mapeamento]  WITH NOCHECK ADD CONSTRAINT [FK_Produto_Mapeamento_EndMaster] FOREIGN KEY([CodEndMaster])
REFERENCES [dbo].[Endereco] ([Codendereco])
GO

ALTER TABLE [dbo].[Produto_Mapeamento] NOCHECK CONSTRAINT  [FK_Produto_Mapeamento_EndMaster]
GO

ALTER TABLE [dbo].[Produto_Mapeamento]  WITH CHECK ADD CONSTRAINT [FK_Produto_Mapeamento_TipoAlmox] FOREIGN KEY([CodTipoAlmoxarifado])
REFERENCES [dbo].[TipoAlmoxarifado] ([CodTipoAlmoxarifado])
GO

ALTER TABLE [dbo].[Produto_Mapeamento] CHECK CONSTRAINT [FK_Produto_Mapeamento_TipoAlmox]


GO --1241

CREATE view [dbo].[EstoquePickingBackLoja] AS
SELECT EE.CodFilial, 
       E.CodDeposito, 
       EE.Codprod,
       Sum(COALESCE (EE.QtdEstoque, 0)) AS EstoqueAtual,
       Sum(COALESCE (EE.QtdEstoque, 0) - 
           COALESCE (EE.QtdAvaria, 0) - 
           COALESCE (EE.QtdBloqueada, 0)) AS EstoqueDisponivel, 
       Sum(COALESCE (EE.QtdAvaria, 0)) AS QtdAvaria, 
       Sum(COALESCE (EE.QtdBloqueada, 0)) AS QtdBloqueada
  FROM dbo.EstEndereco EE
  JOIN dbo.Endereco E ON E.CodEndereco = EE.CodEndereco   
  JOIN dbo.TipoAlmoxarifado T ON T.CodTipoAlmoxarifado = E.CodTipoAlmoxarifado
 where E.Bloqueado = 0
   and T.Tipo <> 7 --7 = AutoAtendimento
 group by EE.CodFilial, 
          E.CodDeposito, 
          EE.Codprod
          
GO --1242

CREATE TABLE [dbo].[Tipo_Pedido](
	[CodTipoPedido] [int] IDENTITY(1,1) NOT NULL,
	[CodTipoPedidoERP] [varchar](10) NOT NULL,
	[Descricao] [int] NOT NULL,
	[CodTipoAlmoxarifado] [int] NOT NULL
	CONSTRAINT [PK_Tipo_Pedido] PRIMARY KEY CLUSTERED 
(
	[CodTipoPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

ALTER TABLE [dbo].[Tipo_Pedido]  WITH CHECK ADD CONSTRAINT [FK_Tipo_Pedido_TipoAlmox] FOREIGN KEY([CodTipoAlmoxarifado])
REFERENCES [dbo].[TipoAlmoxarifado] ([CodTipoAlmoxarifado])

ALTER TABLE [dbo].[Tipo_Pedido] CHECK CONSTRAINT [FK_Tipo_Pedido_TipoAlmox]

GO --1243

ALTER TABLE PedidosCab add CodTipoPedido int

GO --1244

Alter table Formulario add Mobile int

GO --1245

Alter Table ParametroWMS add NaoMostrarItensMapeados int

GO --1246

insert into Operacao values(475, 'Etiqueta Excluídas', 7,135,1)
insert into Operacao values(476, 'Gerar etiquetas de entrega', 8,135,1)
insert into Operacao values(477, 'Aplicar conferencia/ Cortes dos pedidos', 9,135,1)
insert into Operacao values(478, 'Cortar item não separado', 10,135,1)
insert into Operacao values(479, 'Limpar conferencia', 11,135,1)
insert into Operacao values(480, 'Limpar Separação', 12,135,1)
insert into Operacao values(481, 'Liberar carregamento para expedição', 13,135,1)
insert into Operacao values(482, 'Incluir pedido no carregamento', 14,135,1)
insert into Operacao values(483, 'Excluir volumes da entrega', 15,135,1)
insert into Operacao values(484, 'Cortes do carregamento', 16,135,1)
insert into Operacao values(485, 'Marcar carregamento como finalizado', 17,135,1)
insert into Operacao values(486, 'Marcar carregamento como conferido', 18,135,1)
insert into Operacao values(487, 'Retirar pedido do carregamento', 19,135,1)

go --1247

ALTER TABLE PedidosCab add CodTipoPedido int

go --1248

Alter table Cliente add Shelf int

go --1249

Alter table Cubagem add CodPedido int

go --1250

Alter table ParametroWMS add ColetorAndroid int

go --1251

Alter table Impressoras add Setor int

go --1252

Alter table VolumeEntregaProd add Aux varchar(50)

go --1253

Create procedure spGeraBonus @CodFornecedor int, @CodFilial int, @CodNotaFiscal int,
  @NumNotaFiscal int
AS

  DECLARE @CodDeposito int, @CodbonusCab int, @CodBonusNotaCab int, @CodBonusRel int,
    @Quantidade float, @CodProduto int, @CodBonusNotaItem int, @CodEtiqueta int
  
  SELECT @CodDeposito = CodDepositoArmProducao FROM Parametro
  
  EXEC @CodbonusCab = IncContador @Tabela = 'BONUSCAB'
  
  INSERT INTO BonusCab (CodBonusCab, CodDeposito, DtGeracao, UsuarioGeracao,
    HoraGeracao, Status)
  VALUES(@CodbonusCab, @CodDeposito, CAST(GETDATE() AS DATE), 1, convert(time, SYSDATETIME()),1)
  
  EXEC @CodBonusNotaCab = IncContador @Tabela = 'BONUSNOTACAB'
  
  INSERT INTO BonusNotaCab (CodBonusNotaCab, CodBonusCab, CodFornecedor, CodFilial,
    CodFilialIntegracao, DataRecebimento, CodNotaFiscal, NumNotaFiscal)
  VALUES (@CodBonusNotaCab, @CodbonusCab, @CodFornecedor, @CodFilial, 
    @CodFilial, CAST(GETDATE() AS DATE), @CodNotaFiscal, @NumNotaFiscal)

  UPDATE NOTAFISCALENTRADA SET
    StatusConf = 2
   WHERE CODNOTAFISCAL = @CODNOTAFISCAL
     AND Modelo = 2
     AND CodFilialIntegracao = @CodFilial
   
   EXEC @CodEtiqueta = IncContador @Tabela = 'ETIQUETA'
   
   INSERT INTO Etiqueta(CodEtiqueta, CodDeposito, Tipo, DtGeracao, UsuarioGeracao, Situacao, CodBonus)
   VALUES(@CodEtiqueta, @CodDeposito, 0, GETDATE(), 1, 0, @CodbonusCab)
   
   DECLARE pItens CURSOR FOR
     SELECT CodProduto, Quantidade
       FROM NotaFiscalItemEntrada
      WHERE CodNotaFiscal = @CODNOTAFISCAL
   OPEN pItens
   FETCH NEXT FROM pItens INTO @CodProduto, @Quantidade
   WHILE @@FETCH_STATUS = 0
   BEGIN
     EXEC @CodBonusRel = IncContador @Tabela= 'BONUSREL'
     INSERT INTO BonusRel(CodBonusRel, CodNotaFiscal, NumNota, Quantidade, CodProduto)
     VALUES(@CodBonusRel, @CodNotaFiscal, @NumNotaFiscal, @Quantidade, @CodProduto)
      
     EXEC @CodBonusNotaItem = IncContador @Tabela= 'BONUSNOTAITEM'
     INSERT INTO BonusNotaItem(CodBonusNotaItem, CodProduto, Qtd, CodBonusCab)
     VALUES(@CodBonusNotaItem, @CodProduto, @Quantidade, @CodbonusCab)
     
     FETCH NEXT FROM pItens INTO @CodProduto, @Quantidade
   END
   DEALLOCATE pItens
   
go --1254

Alter table Inventario add CodUsuarioSinc int

go --1255

Alter table InventarioItem add ItemNovo int

go --1256

Alter table OrdemServicoItem add Observacao varchar(255)

go --1257

INSERT INTO Formulario VALUES(296, 69,6, 0, 'Transferência veículo', 'FRM_TransfAlmox', 3, 1)

go --1258

CREATE NONCLUSTERED INDEX IDX_VolumeCX_OS
ON [dbo].[VolumeCX] ([CodOrdemServicoCab])

CREATE NONCLUSTERED INDEX IDX_Etiqueta_Situacao
ON [dbo].[Etiqueta] ([Situacao])
INCLUDE ([CodDeposito])

CREATE NONCLUSTERED INDEX IDX_EstEtiqueta_Ded_Etiq
ON [dbo].[EstEtiqueta] ([CodDeposito],[CodEtiqueta])
INCLUDE ([CodEndereco])

CREATE NONCLUSTERED INDEX IDX_EstEndEtiqueta_Ded_Etiq
ON [dbo].[EstEndEtiqueta] ([CodEtiqueta],[CodDeposito])
INCLUDE ([CodFilial],[CodProd],[DtUltimaEntrada],[DtValidade],[DtFabric],[NumLote],[NumNota],[ValUnitario],[Dot])

go --1259

Alter table VolumeEntregaProd add NumNota varchar(10)

go --1260

Alter table InventarioItem add DtFabric DateTime

go --1261

Alter table ParametroWMS add EtiquetaProdutoUnico int

go --1262

Alter table ParametroWMS add SepOrdemPedido int

go --1263

INSERT INTO Operacao VALUES(489, 0, 0, 167, 1)

go --1264

ALTER TABLE Produto add Shelf int

go --1265

Alter table ConexaoCliente add ViewNFEntradaItemDet varchar(50)

go --1266

CREATE TABLE [dbo].[NotaFiscalItemEntradaDet](
	[CodNotaFiscalItemDet] [int] NOT NULL,
	[CodNotaFiscalItem] [int] NOT NULL,
	[CodNotaFiscal] [int] NULL,
	[CodProduto] [int] NULL,
	[Quantidade] [numeric](12, 4) NULL,
	[DtFabric] [datetime] NULL,
	[Lote] [varchar](50) NULL,
	[DataValidade] [datetime] NULL,
	[NUMSERIE] [varchar](50) NULL,
 CONSTRAINT [PK_NotaFiscalItemEntradaDet] PRIMARY KEY CLUSTERED 
(
	[CodNotaFiscalItemDet] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[NotaFiscalItemEntradaDet]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemEntradaDet_Produto] FOREIGN KEY([CodProduto])
REFERENCES [dbo].[Produto] ([CodProduto])
GO

ALTER TABLE [dbo].[NotaFiscalItemEntradaDet] CHECK CONSTRAINT [FK_NotaFiscalItemEntradaDet_Produto]
GO

ALTER TABLE [dbo].[NotaFiscalItemEntradaDet]  WITH CHECK ADD  CONSTRAINT [FK_NotaFiscalItemEntradaDet_Item] FOREIGN KEY([CodNotaFiscalItem])
REFERENCES [dbo].[NotaFiscalItemEntrada] ([CodNotaFiscalItem])
GO

ALTER TABLE [dbo].[NotaFiscalItemEntradaDet] CHECK CONSTRAINT [FK_NotaFiscalItemEntradaDet_Item]

go --1267

Alter table Etiqueta add CodFilial int

go --1268

ALTER TABLE Etiqueta add CodFilial int

go --1269

INSERT INTO Operacao VALUES(490, 'Incluir', 0, 185, 1)
INSERT INTO Operacao VALUES(491, 'Alterar', 1, 185, 1)
INSERT INTO Operacao VALUES(492, 'Excluir', 2, 185, 1)
INSERT INTO Operacao VALUES(493, 'Imprimir',3, 185, 1)
INSERT INTO Operacao VALUES(494, 'Consultar', 4, 185, 1)

go --1270

Alter table ParametroWMS add ApagaEtiquetaSep int

go --1271

Alter table Produto_Etiqueta add DtFabric DateTime

go --1272

Alter table OrdemServicoItemCheckout add QtdAtendida Numeric(18,2)
Alter table OrdemServicoItemCheckout add QtdCortada Numeric(18,2)

go --1273

ALTER VIEW [dbo].[EstoquePicking]
AS
SELECT EE.CodEstEndereco, EE.CodFilial, E.CodDeposito, EE.Codprod, 
       COALESCE(EE.QtdEstoque, 0) AS EstoqueAtual,
       COALESCE(EE.QtdEstoque, 0) - COALESCE (EE.QtdAvaria, 0) - COALESCE (EE.QtdBloqueada, 0) AS EstoqueDisponivel,
       COALESCE(EE.QtdAvaria, 0) AS QtdAvaria,
       COALESCE(EE.QtdBloqueada, 0) AS QtdBloqueada, 
       EE.CodEndereco, E.Rua, E.Predio, E.Nivel, E.Apto, E.Bloqueado, Estacao.TipoEndereco, NULL as CodEtiqueta,
       EE.DtValidade, EE.DatUltimaEntrada, EE.Dot, EE.Lote, EE.DtFabric
  FROM EstEndereco EE
  JOIN Endereco E ON EE.CodEndereco = E.CodEndereco 
  JOIN Estacao ON E.CodEstacao = Estacao.CodEstacao
  
go --1274

ALTER TABLE VolumeExp ADD TipoVolume VARCHAR(50)

go --1275

alter table OrdemServicoItemCheckout ADD DtFabric datetime

go --1276

Alter table PedidosCab add TotalFrete Numeric(18,2)
Alter table Carregamento add TotalFrete Numeric(18,2)

Go

alter table bonuscab add obs varchar(max)
GO
alter table funcionario add CodFuncionarioERP varchar(20)
GO
ALTER view [dbo].[vEtiquetaExpedicao] as
select CodEtiqueta, O.CodOrdemServicoCab, 'Cx' as Tp, Volume, Coalesce(Via,1) as Via, V.Situacao, 
       DtHoraGeracao, CodUsuarioGeracao, null as CodCarregamento, null as SituacaoCarregamento,
       null as CodUsuarioReimpressao, null as Realocado
  from VolumeCX V
  join OrdemServicoCab O on O.CodOrdemServicoCab = V.CodOrdemServicoCab and O.TipoOS = 8
 union all
select CodVolumeExp, O.CodOrdemServicoCab, 'Fr', V.NumVolume, V.Via,
		Case 
        /* Inutilizada */		
		when DataHoraCancelamento is not null then 2
        /* Não usada */
		when (select Coalesce(Sum((Coalesce(i.QtdAtendida,0)+Coalesce(i.QtdCortada,0))),0)
                from OrdemServicoItemCheckout IE
                join OrdemServicoItem I on I.CodOrdemServicoItem = IE.CodOrdemServicoItem
                JOIN OrdemServicoCab O ON I.CodOrdemServicoCab = O.CodOrdemServicoCab
               where IE.CodVolumeExp = V.CodVolumeExp ) = 0 then 0
        /* Separada */		
		when (select Sum(QtdSolicitada-(Coalesce(i.QtdAtendida,0)+Coalesce(i.QtdCortada,0)))
                from OrdemServicoItemCheckout IE
                join OrdemServicoItem I on I.CodOrdemServicoItem = IE.CodOrdemServicoItem
                JOIN OrdemServicoCab O ON I.CodOrdemServicoCab = O.CodOrdemServicoCab
               where IE.CodVolumeExp = V.CodVolumeExp and O.TipoOS = 0) <= 0 then 1
	   /* Separando */	
       else 3 end, 
       DataHoraGeracao, CodUsuarioSolicitante, V.CodCarregamento, SituacaoCarregamento,
       CodUsuarioReimpressao, V.Realocado
  from VolumeExp V
  join OrdemServicoCab O on O.CodOrdemServicoCab = V.CodOrdemServicoCab and O.TipoOS = 0


go --1279

Create table tb0012EX (
	cnpj varchar(50),
	url varchar(255),
	aviso varchar(2)
)

go

Insert into Operacao values(495, 'Importar Clientes', 0, 65, 1)
Insert into Operacao values(496, 'Importar Fornecedores', 1, 65, 1)
Insert into Operacao values(497, 'Importar Transportadora', 2, 65, 1)
Insert into Operacao values(498, 'Importar Produto', 3, 65, 1)
Insert into Operacao values(499, 'Importar Vendedor', 4, 65, 1)
Insert into Operacao values(500, 'Importar Pedido', 5, 65, 1)
Insert into Operacao values(501, 'Importar NF Entrada', 6, 65, 1)
Insert into Operacao values(502, 'Importar Estoque', 7, 65, 1)
Insert into Operacao values(503, 'Importar Carregamento', 8, 65, 1)

go

INSERT INTO VersaoBD VALUES(GETDATE(),'LOGTECH','1286', NULL, NULL, NULL, NULL, NULL, '')--VERSÃO--
