; ModuleID = '/llk/IR_all_yes/lib/zstd/compress/zstd_ldm.c_pt.bc'
source_filename = "../lib/zstd/compress/zstd_ldm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.ldmParams_t = type { i32, i32, i32, i32, i32, i32 }
%struct.ldmRollingHashState_t = type { i64, i64 }
%struct.ZSTD_window_t = type { ptr, ptr, ptr, i32, i32 }
%struct.ldmState_t = type { %struct.ZSTD_window_t, ptr, i32, ptr, [64 x i32], [64 x %struct.ldmMatchCandidate_t] }
%struct.ldmMatchCandidate_t = type { ptr, i32, i32, ptr }
%struct.ldmEntry_t = type { i32, i32 }
%struct.rawSeqStore_t = type { ptr, i32, i32, i32, i32 }
%struct.rawSeq = type { i32, i32, i32 }
%struct.ZSTD_matchState_t = type { %struct.ZSTD_window_t, i32, i32, i32, ptr, ptr, ptr, i32, %struct.optState_t, ptr, %struct.ZSTD_compressionParameters, ptr }
%struct.optState_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.ZSTD_compressionParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.seqStore_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.seqDef_s = type { i32, i16, i16 }

@ZSTD_ldm_gearTab = internal constant { [256 x i64], [512 x i8] } { [256 x i64] [i64 -740570368750160036, i64 -8893660220509993966, i64 -5312086290702594868, i64 -5735972619299081762, i64 3771850993348288464, i64 5663242980927105797, i64 4180421565056919044, i64 -3545172778422107057, i64 8565414132019635614, i64 -7168278193325086006, i64 -8766759121928489687, i64 2955002781598341257, i64 -5786234267245351962, i64 -3591879250321086919, i64 152752410645948062, i64 980088017434152, i64 331732851626658549, i64 -8838640746785046208, i64 357946512872856607, i64 -9034488908246861280, i64 5763983574984628126, i64 -8902527927300804837, i64 5836814799640872626, i64 7626666828866112607, i64 -8314407865459583812, i64 -4338073698025259005, i64 -3427841724570307695, i64 -4735281124383641554, i64 3783546168938607943, i64 -5997679262622952944, i64 7335087386897913548, i64 -8164338418464644131, i64 -4068556904131095362, i64 -7831782995437506261, i64 6793784568496124290, i64 2174722154453825146, i64 2984138818416736892, i64 -7113741742226294226, i64 -2281435508835450325, i64 -7721633399858986080, i64 -3643393691544233469, i64 4998707500772197108, i64 -8746917044558380703, i64 4094234931541430821, i64 -5443419906114852421, i64 -6623610566688024079, i64 8857814660316604090, i64 -3400738594147523822, i64 -8919821665358523128, i64 -6282918144253290562, i64 2432827404989958913, i64 -7394112240096411410, i64 -6121261480113539237, i64 5984878076832140732, i64 3384046157297573234, i64 -4595246024994827002, i64 5291253059634137447, i64 8671685973221512352, i64 2826049182810801527, i64 7403797093788988755, i64 5165094797103512198, i64 3882952073790264921, i64 5144544719191608175, i64 7834774775704163346, i64 -2473432571472174399, i64 8174605543888266482, i64 -2355378437650417609, i64 -8592654940661990135, i64 6401049270349998237, i64 1690663705589720305, i64 -325991306605533225, i64 3162055811205276826, i64 7360403718927882347, i64 4149314189569060432, i64 242631106765699956, i64 4800188873694292702, i64 -4240136128533032951, i64 7695287510285100531, i64 -838191446823566789, i64 -8426618797363772681, i64 4318197351340892641, i64 1149634524221210890, i64 -7114863459094900121, i64 6598639596032476539, i64 -6839639621591231422, i64 -4468079783678231221, i64 7415306797865260392, i64 -8387907088140799907, i64 -1258625276876293193, i64 -8475030331983742166, i64 -4522295019934803305, i64 7907118757495767932, i64 -4069547487456468751, i64 -2916501145698388069, i64 -713064998698898503, i64 3241772581917522649, i64 -8751519476800664287, i64 2730958776012430807, i64 -5042858452473121693, i64 5670495071248203466, i64 -4753026106883975734, i64 8596907927398544058, i64 5161444109349651405, i64 5785732034315264735, i64 -2307004377459233095, i64 5101781436946662964, i64 -959555898603366205, i64 3854890476374695265, i64 2640596163920942051, i64 612531917322106041, i64 2943830675960290284, i64 5689027370104560298, i64 -8631226724040007757, i64 -4511209064617679402, i64 -4894469369141432134, i64 476493605933034202, i64 -4884230169516457813, i64 5170495216195818230, i64 5692683294927132859, i64 8144723081244076501, i64 -8597519866247633570, i64 -880939249453910632, i64 -4429072432866837671, i64 -9094346755688061955, i64 -8586012847855474869, i64 938274653391260135, i64 -1919596203828456659, i64 -4685062728154955610, i64 -7589917696820385588, i64 -4644676758005663535, i64 7411488509093422598, i64 -8990486576947324933, i64 -5153218641461172124, i64 -2632799881851607396, i64 -8546249320962975810, i64 -3973672932846999028, i64 8549157441122500270, i64 -6599514505156005102, i64 -6129339347647600276, i64 5601198583872550840, i64 448237196439497921, i64 4429298985553249414, i64 1710925370934130233, i64 649627535685727708, i64 7473286985276266860, i64 -6451688405355166991, i64 5916903098106068381, i64 4015692238528745986, i64 -8870599050489169071, i64 723755141375996997, i64 585701537146942606, i64 1762095187648923356, i64 -7499075263319252708, i64 -5534672106163518806, i64 2150778153372540978, i64 -6551385365357708843, i64 2851098796233701843, i64 8892087314106251931, i64 8629034505480888229, i64 -2056021433480337670, i64 -5504367576396503223, i64 -7836592892958478552, i64 -5799392812474758156, i64 1034405184557968969, i64 6802162732334632298, i64 2989737911373486958, i64 -8778167736429364826, i64 -1835460623793774935, i64 -7486017181440748174, i64 -429617951838635019, i64 3508842189232906005, i64 8135704789603646339, i64 6514020828226693353, i64 -3613195514473760017, i64 -2970174223312647786, i64 -1563248340095853661, i64 6024843996518658034, i64 718621336730405080, i64 -6679302967219244155, i64 3328034870986208117, i64 1672684744619306689, i64 -5162658619115609223, i64 -8970545856075756829, i64 -5111708603220227731, i64 8965210182149532773, i64 8555535473824159125, i64 4111651333356154152, i64 -4330767061174003086, i64 -4239562835870723191, i64 -2914198924640402128, i64 3999682325075695998, i64 8341500896009323972, i64 297956889220308695, i64 -7099292734868670191, i64 -8152361012580292778, i64 6806741856855634849, i64 5498675928299174173, i64 -5725270285902950948, i64 8841901128597221836, i64 8452800421686628345, i64 8170466794247151429, i64 3418145686321779422, i64 -7629649436654009993, i64 -885980405828750614, i64 -1279615140145250661, i64 -3645584372000451097, i64 -1959380958373714385, i64 -7401854505386743612, i64 2726709086420568843, i64 56600323866146812, i64 2432711764059673306, i64 6875692401370490017, i64 -2525618730407733492, i64 7150469517113480430, i64 -4524184818551573686, i64 6398633964089323354, i64 6824119869706748626, i64 7124491435314367896, i64 -5413128683141149161, i64 1648863654502257127, i64 -8159518228174467393, i64 7114119705011199411, i64 -3748695836744730090, i64 8708228644950752452, i64 -1200969192612019724, i64 -8253548825649809075, i64 -6218007400084108795, i64 4090442791415205777, i64 7208173716382451811, i64 -9156885958826744472, i64 4175721917217417792, i64 -1595983873127263617, i64 -7915925144243690988, i64 -4991676479780784319, i64 3502286560157455023, i64 -6532203062862126574, i64 4777171913562308143, i64 4711368926514029619, i64 -5148279762458990696, i64 -3276523506038921052, i64 -7330618301729952061, i64 8867750111338937128, i64 5817503254400830125, i64 7843308076737921667, i64 -8540058046490989581, i64 2422652698756804679, i64 4252262198383740502, i64 -2659446422212208921, i64 -8298729576016271950, i64 -382681700768530275, i64 4672201502568865753, i64 -5821590899938985698, i64 -1473505948212511144, i64 -4914601613263338112, i64 934305549654010667, i64 3120327478150945012], [512 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_ = private constant [32 x i8] c"../lib/zstd/compress/zstd_ldm.c\00", align 1
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"ZSTD_ldm_gearTab\00", align 1
@___asan_gen_.3 = private unnamed_addr constant [40 x i8] c"../lib/zstd/compress/zstd_ldm_geartab.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 14, i32 12 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @ZSTD_ldm_gearTab], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ZSTD_ldm_gearTab to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ZSTD_ldm_adjustParameters(ptr nocapture noundef %params, ptr nocapture noundef readonly %cParams) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cParams to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cParams, align 4
  %windowLog1 = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 5
  %2 = ptrtoint ptr %windowLog1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %windowLog1, align 4
  %bucketSizeLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 2
  %3 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bucketSizeLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %bucketSizeLog, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %minMatchLength = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %minMatchLength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %minMatchLength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %minMatchLength to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 64, ptr %minMatchLength, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %hashLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hashLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then7, label %if.end6.if.end13_crit_edge

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %1, -7
  %11 = tail call i32 @llvm.umax.i32(i32 %sub, i32 6)
  %12 = ptrtoint ptr %hashLog to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %hashLog, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end6.if.end13_crit_edge
  %hashRateLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 4
  %13 = ptrtoint ptr %hashRateLog to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hashRateLog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.end13.if.end27_crit_edge

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hashLog, align 4
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %16)
  %18 = ptrtoint ptr %hashRateLog to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hashRateLog, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then15, %if.end13.if.end27_crit_edge
  %19 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bucketSizeLog, align 4
  %21 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hashLog, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %22)
  %24 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bucketSizeLog, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_ldm_getTableSize([6 x i32] %params.coerce) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params.coerce.fca.0.extract = extractvalue [6 x i32] %params.coerce, 0
  %params.coerce.fca.1.extract = extractvalue [6 x i32] %params.coerce, 1
  %params.coerce.fca.2.extract = extractvalue [6 x i32] %params.coerce, 2
  %0 = tail call i32 @llvm.usub.sat.i32(i32 %params.coerce.fca.1.extract, i32 %params.coerce.fca.2.extract)
  %shl5 = shl nuw i32 1, %0
  %mul = shl i32 8, %params.coerce.fca.1.extract
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.0.extract)
  %tobool.not = icmp eq i32 %params.coerce.fca.0.extract, 0
  %add = add i32 %shl5, %mul
  %cond10 = select i1 %tobool.not, i32 0, i32 %add
  ret i32 %cond10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ZSTD_ldm_getMaxNbSeq([6 x i32] %params.coerce, i32 noundef %maxChunkSize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params.coerce.fca.0.extract = extractvalue [6 x i32] %params.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.0.extract)
  %tobool.not = icmp eq i32 %params.coerce.fca.0.extract, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %params.coerce.fca.3.extract = extractvalue [6 x i32] %params.coerce, 3
  %div = udiv i32 %maxChunkSize, %params.coerce.fca.3.extract
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_fillHashTable(ptr nocapture noundef %ldmState, ptr noundef %ip, ptr noundef %iend, ptr nocapture noundef readonly %params) local_unnamed_addr #3 align 64 {
entry:
  %hashState = alloca %struct.ldmRollingHashState_t, align 8
  %numSplits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %minMatchLength1 = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 3
  %0 = ptrtoint ptr %minMatchLength1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minMatchLength1, align 4
  %hashLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hashLog, align 4
  %bucketSizeLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bucketSizeLog, align 4
  %base2 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ldmState, i32 0, i32 1
  %6 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hashState) #9
  %8 = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %hashState, i32 0, i32 1
  %splitIndices = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numSplits) #9
  %9 = tail call i32 @llvm.umin.i32(i32 %1, i32 64) #9
  %hashRateLog2.i = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 4
  %10 = ptrtoint ptr %hashRateLog2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hashRateLog2.i, align 4
  %12 = ptrtoint ptr %hashState to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %hashState, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3.not.i = icmp eq i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not.i = icmp ult i32 %9, %11
  %or.cond.i = select i1 %cmp3.not.i, i1 true, i1 %cmp4.not.i
  %sh_prom8.i = zext i32 %11 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom8.i
  %sub10.i = xor i64 %notmask.i, -1
  %sub5.i = sub i32 %9, %11
  %sh_prom6.i = zext i32 %sub5.i to i64
  %shl7.i = select i1 %or.cond.i, i64 0, i64 %sh_prom6.i
  %shl7.sink.i = shl i64 %sub10.i, %shl7.i
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %shl7.sink.i, ptr %8, align 8
  %cmp53 = icmp ult ptr %ip, %iend
  br i1 %cmp53, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %sub = sub i32 %3, %5
  %sub.ptr.lhs.cast = ptrtoint ptr %iend to i32
  %add.ptr4 = getelementptr i8, ptr %ip, i32 %1
  %idx.neg = sub i32 0, %1
  %notmask = shl nsw i32 -1, %sub
  %sub10 = xor i32 %notmask, -1
  %sub.ptr.rhs.cast14 = ptrtoint ptr %7 to i32
  %bucketOffsets.i = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 3
  %hashTable.i.i = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %ip.addr.054 = phi ptr [ %ip, %while.body.lr.ph ], [ %add.ptr17, %for.end.while.body_crit_edge ]
  %14 = ptrtoint ptr %numSplits to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %numSplits, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %ip.addr.054 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %hashState, ptr noundef %ip.addr.054, i32 noundef %sub.ptr.sub, ptr noundef %splitIndices, ptr noundef nonnull %numSplits)
  %15 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp351.not = icmp eq i32 %16, 0
  br i1 %cmp351.not, label %while.body.for.end_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body.for.body_crit_edge
  %n.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %splitIndices, i32 %n.052
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %ip.addr.054, i32 %18
  %cmp5.not = icmp ult ptr %add.ptr, %add.ptr4
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr8 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  %call9 = tail call i64 @xxh64(ptr noundef %add.ptr8, i32 noundef %1, i64 noundef 0) #9
  %19 = trunc i64 %call9 to i32
  %conv11 = and i32 %19, %sub10
  %sub.ptr.lhs.cast13 = ptrtoint ptr %add.ptr8 to i32
  %sub.ptr.sub15 = sub i32 %sub.ptr.lhs.cast13, %sub.ptr.rhs.cast14
  %shr = lshr i64 %call9, 32
  %conv16 = trunc i64 %shr to i32
  %20 = ptrtoint ptr %bucketSizeLog to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack43 = load i32, ptr %bucketSizeLog, align 4
  %21 = ptrtoint ptr %bucketOffsets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bucketOffsets.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %conv11
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i, align 1
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %hashTable.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hashTable.i.i, align 4
  %shl.i.i = shl i32 %conv11, %.unpack43
  %add.ptr.i.i = getelementptr %struct.ldmEntry_t, ptr %26, i32 %shl.i.i
  %add.ptr3.i = getelementptr %struct.ldmEntry_t, ptr %add.ptr.i.i, i32 %conv.i
  %27 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub15, ptr %add.ptr3.i, align 4
  %entry2.sroa.2.0.add.ptr3.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr3.i, i32 4
  %28 = ptrtoint ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv16, ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i, align 4
  %add.i = add nuw nsw i32 %conv.i, 1
  %notmask.i50 = shl nsw i32 -1, %.unpack43
  %sub.i = xor i32 %notmask.i50, -1
  %and.i = and i32 %add.i, %sub.i
  %conv4.i = trunc i32 %and.i to i8
  store i8 %conv4.i, ptr %add.ptr.i, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %n.052, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body.for.end_crit_edge
  %add.ptr17 = getelementptr i8, ptr %ip.addr.054, i32 %call
  %cmp = icmp ult ptr %add.ptr17, %iend
  br i1 %cmp, label %for.end.while.body_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %for.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numSplits) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hashState) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ZSTD_ldm_gear_feed(ptr nocapture noundef %state, ptr nocapture noundef readonly %data, i32 noundef %size, ptr nocapture noundef writeonly %splits, ptr nocapture noundef %numSplits) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %state, align 8
  %stopMask = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %stopMask to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %stopMask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp172 = icmp ugt i32 %size, 3
  br i1 %cmp172, label %entry.do.body_crit_edge, label %entry.while.cond82.preheader_crit_edge

entry.while.cond82.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond82.preheader

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

while.cond82.preheader:                           ; preds = %do.end81.while.cond82.preheader_crit_edge, %entry.while.cond82.preheader_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.while.cond82.preheader_crit_edge ], [ %add66, %do.end81.while.cond82.preheader_crit_edge ]
  %hash.0.lcssa = phi i64 [ %1, %entry.while.cond82.preheader_crit_edge ], [ %add65, %do.end81.while.cond82.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.lcssa, i32 %size)
  %cmp83178 = icmp ult i32 %n.0.lcssa, %size
  br i1 %cmp83178, label %while.cond82.preheader.do.body86_crit_edge, label %while.cond82.preheader.done_crit_edge

while.cond82.preheader.done_crit_edge:            ; preds = %while.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

while.cond82.preheader.do.body86_crit_edge:       ; preds = %while.cond82.preheader
  br label %do.body86

do.body:                                          ; preds = %do.end81.do.body_crit_edge, %entry.do.body_crit_edge
  %add175 = phi i32 [ %add, %do.end81.do.body_crit_edge ], [ 3, %entry.do.body_crit_edge ]
  %hash.0174 = phi i64 [ %add65, %do.end81.do.body_crit_edge ], [ %1, %entry.do.body_crit_edge ]
  %n.0173 = phi i32 [ %add66, %do.end81.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %shl = shl i64 %hash.0174, 1
  %arrayidx = getelementptr i8, ptr %data, i32 %n.0173
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %arrayidx1 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx1, align 8
  %add2 = add i64 %7, %shl
  %add3 = or i32 %n.0173, 1
  %and4 = and i64 %add2, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %cmp5 = icmp eq i64 %and4, 0
  br i1 %cmp5, label %if.then, label %do.body.do.body13_crit_edge, !prof !11

do.body.do.body13_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then:                                          ; preds = %do.body
  %8 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numSplits, align 4
  %arrayidx7 = getelementptr i32, ptr %splits, i32 %9
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add3, ptr %arrayidx7, align 4
  %11 = load i32, ptr %numSplits, align 4
  %add8 = add i32 %11, 1
  store i32 %add8, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add8)
  %cmp9 = icmp eq i32 %add8, 64
  br i1 %cmp9, label %if.then.done_crit_edge, label %if.then.do.body13_crit_edge

if.then.do.body13_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body13:                                        ; preds = %if.then.do.body13_crit_edge, %do.body.do.body13_crit_edge
  %shl14 = shl i64 %add2, 1
  %arrayidx15 = getelementptr i8, ptr %data, i32 %add3
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %13 to i32
  %arrayidx18 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %conv16
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %15, %shl14
  %add20 = or i32 %n.0173, 2
  %and21 = and i64 %add19, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %cmp22 = icmp eq i64 %and21, 0
  br i1 %cmp22, label %if.then26, label %do.body13.do.body36_crit_edge, !prof !11

do.body13.do.body36_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.then26:                                        ; preds = %do.body13
  %16 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numSplits, align 4
  %arrayidx27 = getelementptr i32, ptr %splits, i32 %17
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add20, ptr %arrayidx27, align 4
  %19 = load i32, ptr %numSplits, align 4
  %add28 = add i32 %19, 1
  store i32 %add28, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add28)
  %cmp29 = icmp eq i32 %add28, 64
  br i1 %cmp29, label %if.then26.done_crit_edge, label %if.then26.do.body36_crit_edge

if.then26.do.body36_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

if.then26.done_crit_edge:                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body36:                                        ; preds = %if.then26.do.body36_crit_edge, %do.body13.do.body36_crit_edge
  %shl37 = shl i64 %add19, 1
  %arrayidx38 = getelementptr i8, ptr %data, i32 %add20
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %21 to i32
  %arrayidx41 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %conv39
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx41, align 8
  %add42 = add i64 %23, %shl37
  %and44 = and i64 %add42, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %cmp45 = icmp eq i64 %and44, 0
  br i1 %cmp45, label %if.then49, label %do.body36.do.body59_crit_edge, !prof !11

do.body36.do.body59_crit_edge:                    ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.then49:                                        ; preds = %do.body36
  %24 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %numSplits, align 4
  %arrayidx50 = getelementptr i32, ptr %splits, i32 %25
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add175, ptr %arrayidx50, align 4
  %27 = load i32, ptr %numSplits, align 4
  %add51 = add i32 %27, 1
  store i32 %add51, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add51)
  %cmp52 = icmp eq i32 %add51, 64
  br i1 %cmp52, label %if.then49.done_crit_edge, label %if.then49.do.body59_crit_edge

if.then49.do.body59_crit_edge:                    ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

if.then49.done_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.body59:                                        ; preds = %if.then49.do.body59_crit_edge, %do.body36.do.body59_crit_edge
  %shl60 = shl i64 %add42, 1
  %arrayidx61 = getelementptr i8, ptr %data, i32 %add175
  %28 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx61, align 1
  %conv62 = zext i8 %29 to i32
  %arrayidx64 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %conv62
  %30 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx64, align 8
  %add65 = add i64 %31, %shl60
  %add66 = add i32 %n.0173, 4
  %and67 = and i64 %add65, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and67)
  %cmp68 = icmp eq i64 %and67, 0
  br i1 %cmp68, label %if.then72, label %do.body59.do.end81_crit_edge, !prof !11

do.body59.do.end81_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.then72:                                        ; preds = %do.body59
  %32 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %numSplits, align 4
  %arrayidx73 = getelementptr i32, ptr %splits, i32 %33
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add66, ptr %arrayidx73, align 4
  %35 = load i32, ptr %numSplits, align 4
  %add74 = add i32 %35, 1
  store i32 %add74, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add74)
  %cmp75 = icmp eq i32 %add74, 64
  br i1 %cmp75, label %if.then72.done_crit_edge, label %if.then72.do.end81_crit_edge

if.then72.do.end81_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.then72.done_crit_edge:                         ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end81:                                         ; preds = %if.then72.do.end81_crit_edge, %do.body59.do.end81_crit_edge
  %add = or i32 %add66, 3
  %cmp = icmp ult i32 %add, %size
  br i1 %cmp, label %do.end81.do.body_crit_edge, label %do.end81.while.cond82.preheader_crit_edge

do.end81.while.cond82.preheader_crit_edge:        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond82.preheader

do.end81.do.body_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body86:                                        ; preds = %do.body86.backedge, %while.cond82.preheader.do.body86_crit_edge
  %hash.1180 = phi i64 [ %add92, %do.body86.backedge ], [ %hash.0.lcssa, %while.cond82.preheader.do.body86_crit_edge ]
  %n.1179 = phi i32 [ %add93, %do.body86.backedge ], [ %n.0.lcssa, %while.cond82.preheader.do.body86_crit_edge ]
  %shl87 = shl i64 %hash.1180, 1
  %arrayidx88 = getelementptr i8, ptr %data, i32 %n.1179
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx88, align 1
  %conv89 = zext i8 %37 to i32
  %arrayidx91 = getelementptr [256 x i64], ptr @ZSTD_ldm_gearTab, i32 0, i32 %conv89
  %38 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx91, align 8
  %add92 = add i64 %39, %shl87
  %add93 = add nuw i32 %n.1179, 1
  %and94 = and i64 %add92, %3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94)
  %cmp95 = icmp eq i64 %and94, 0
  br i1 %cmp95, label %if.then99, label %do.end108, !prof !11

if.then99:                                        ; preds = %do.body86
  %40 = ptrtoint ptr %numSplits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %numSplits, align 4
  %arrayidx100 = getelementptr i32, ptr %splits, i32 %41
  %42 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add93, ptr %arrayidx100, align 4
  %43 = load i32, ptr %numSplits, align 4
  %add101 = add i32 %43, 1
  store i32 %add101, ptr %numSplits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add101)
  %cmp102 = icmp ne i32 %add101, 64
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %size)
  %cmp83 = icmp ult i32 %add93, %size
  %or.cond = select i1 %cmp102, i1 %cmp83, i1 false
  br i1 %or.cond, label %if.then99.do.body86.backedge_crit_edge, label %if.then99.done_crit_edge

if.then99.done_crit_edge:                         ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then99.do.body86.backedge_crit_edge:           ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86.backedge

do.end108:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_cmp4(i32 %add93, i32 %size)
  %cmp83.old = icmp ult i32 %add93, %size
  br i1 %cmp83.old, label %do.end108.do.body86.backedge_crit_edge, label %do.end108.done_crit_edge

do.end108.done_crit_edge:                         ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

do.end108.do.body86.backedge_crit_edge:           ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body86.backedge

do.body86.backedge:                               ; preds = %do.end108.do.body86.backedge_crit_edge, %if.then99.do.body86.backedge_crit_edge
  br label %do.body86

done:                                             ; preds = %do.end108.done_crit_edge, %if.then99.done_crit_edge, %if.then72.done_crit_edge, %if.then49.done_crit_edge, %if.then26.done_crit_edge, %if.then.done_crit_edge, %while.cond82.preheader.done_crit_edge
  %n.2 = phi i32 [ %n.0.lcssa, %while.cond82.preheader.done_crit_edge ], [ %add93, %do.end108.done_crit_edge ], [ %add93, %if.then99.done_crit_edge ], [ %add66, %if.then72.done_crit_edge ], [ %add175, %if.then49.done_crit_edge ], [ %add20, %if.then26.done_crit_edge ], [ %add3, %if.then.done_crit_edge ]
  %hash.2 = phi i64 [ %hash.0.lcssa, %while.cond82.preheader.done_crit_edge ], [ %add92, %do.end108.done_crit_edge ], [ %add92, %if.then99.done_crit_edge ], [ %add65, %if.then72.done_crit_edge ], [ %add42, %if.then49.done_crit_edge ], [ %add19, %if.then26.done_crit_edge ], [ %add2, %if.then.done_crit_edge ]
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %hash.2, ptr %state, align 8
  ret i32 %n.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @xxh64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_ldm_generateSequences(ptr noundef %ldmState, ptr nocapture noundef %sequences, ptr nocapture noundef readonly %params, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #3 align 64 {
entry:
  %hashState.i = alloca %struct.ldmRollingHashState_t, align 8
  %numSplits.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %windowLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 5
  %0 = ptrtoint ptr %windowLog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %windowLog, align 4
  %shl = shl nuw i32 1, %1
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  %div74 = lshr i32 %srcSize, 20
  %rem = and i32 %srcSize, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp ne i32 %rem, 0
  %conv = zext i1 %cmp to i32
  %add = add nuw nsw i32 %div74, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp1118.not = icmp eq i32 %add, 0
  br i1 %cmp1118.not, label %entry.cleanup35_crit_edge, label %land.rhs.lr.ph

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

land.rhs.lr.ph:                                   ; preds = %entry
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %sequences, i32 0, i32 3
  %capacity = getelementptr inbounds %struct.rawSeqStore_t, ptr %sequences, i32 0, i32 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %.elt75 = getelementptr inbounds [5 x i32], ptr %ldmState, i32 0, i32 1
  %.elt79 = getelementptr inbounds [5 x i32], ptr %ldmState, i32 0, i32 3
  %.elt81 = getelementptr inbounds [5 x i32], ptr %ldmState, i32 0, i32 4
  %hashLog = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 1
  %add.neg.i = xor i32 %shl, -1
  %dictBase.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ldmState, i32 0, i32 2
  %hashTable = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 1
  %loadedDictEnd = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 2
  %cmp.not.i = icmp eq ptr %loadedDictEnd, null
  %minMatchLength1.i = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 3
  %bucketSizeLog.i = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 2
  %splitIndices.i = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 4
  %matchCandidates.i = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 5
  %2 = getelementptr inbounds %struct.ldmRollingHashState_t, ptr %hashState.i, i32 0, i32 1
  %hashRateLog2.i.i = getelementptr inbounds %struct.ldmParams_t, ptr %params, i32 0, i32 4
  %bucketOffsets.i476.i = getelementptr inbounds %struct.ldmState_t, ptr %ldmState, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %leftoverSize.0120 = phi i32 [ 0, %land.rhs.lr.ph ], [ %leftoverSize.2.ph, %for.inc.land.rhs_crit_edge ]
  %chunk.0119 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %size, align 4
  %5 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp3 = icmp ult i32 %4, %6
  br i1 %cmp3, label %for.body, label %land.rhs.cleanup35_crit_edge

land.rhs.cleanup35_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

for.body:                                         ; preds = %land.rhs
  %mul = shl i32 %chunk.0119, 20
  %add.ptr5 = getelementptr i8, ptr %src, i32 %mul
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %sub.ptr.sub)
  %cmp6 = icmp ult i32 %sub.ptr.sub, 1048576
  %add.ptr8 = getelementptr i8, ptr %add.ptr5, i32 1048576
  %cond = select i1 %cmp6, ptr %add.ptr, ptr %add.ptr8
  %sub.ptr.lhs.cast9 = ptrtoint ptr %cond to i32
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast
  %7 = ptrtoint ptr %.elt75 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack76 = load i32, ptr %.elt75, align 4
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast9, %.unpack76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1610612735, i32 %sub.ptr.sub.i)
  %cmp.i = icmp ult i32 %sub.ptr.sub.i, -1610612735
  br i1 %cmp.i, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hashLog, align 4
  %shl13 = shl nuw i32 1, %9
  %10 = ptrtoint ptr %.elt75 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.elt75, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i84 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast.i
  %sub2.i = add i32 %sub.ptr.sub.i84, %add.neg.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 %sub2.i
  store ptr %add.ptr.i, ptr %.elt75, align 4
  %12 = ptrtoint ptr %dictBase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dictBase.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %13, i32 %sub2.i
  store ptr %add.ptr4.i, ptr %dictBase.i, align 4
  %14 = ptrtoint ptr %.elt81 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %.elt81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %sub2.i)
  %cmp5.not.i = icmp ugt i32 %15, %sub2.i
  %sub8.i = sub i32 %15, %sub2.i
  %storemerge.i = select i1 %cmp5.not.i, i32 %sub8.i, i32 1
  %16 = ptrtoint ptr %.elt81 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %storemerge.i, ptr %.elt81, align 4
  %17 = ptrtoint ptr %.elt79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %.elt79, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sub2.i)
  %cmp9.not.i = icmp ugt i32 %18, %sub2.i
  %sub14.i = sub i32 %18, %sub2.i
  %storemerge1.i = select i1 %cmp9.not.i, i32 %sub14.i, i32 1
  %19 = ptrtoint ptr %.elt79 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge1.i, ptr %.elt79, align 4
  %20 = ptrtoint ptr %hashTable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hashTable, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %u.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then ]
  %arrayidx.i = getelementptr %struct.ldmEntry_t, ptr %21, i32 %u.014.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %23, i32 %sub2.i) #9
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %u.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %shl13
  br i1 %exitcond.not.i, label %ZSTD_ldm_reduceTable.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

ZSTD_ldm_reduceTable.exit:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %loadedDictEnd to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %loadedDictEnd, align 4
  br label %if.end

if.end:                                           ; preds = %ZSTD_ldm_reduceTable.exit, %for.body.if.end_crit_edge
  %27 = ptrtoint ptr %.elt75 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.elt75, align 4
  %sub.ptr.rhs.cast.i87 = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i88 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast.i87
  br i1 %cmp.not.i, label %if.end.cond.end.i_crit_edge, label %cond.true.i

if.end.cond.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %loadedDictEnd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %loadedDictEnd, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.cond.end.i_crit_edge
  %cond.i = phi i32 [ %30, %cond.true.i ], [ 0, %if.end.cond.end.i_crit_edge ]
  %add.i = add i32 %cond.i, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i88, i32 %add.i)
  %cmp1.i = icmp ugt i32 %sub.ptr.sub.i88, %add.i
  br i1 %cmp1.i, label %if.then.i, label %cond.end.i.ZSTD_window_enforceMaxDist.exit_crit_edge

cond.end.i.ZSTD_window_enforceMaxDist.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_window_enforceMaxDist.exit

if.then.i:                                        ; preds = %cond.end.i
  %sub.i = sub i32 %sub.ptr.sub.i88, %shl
  %31 = ptrtoint ptr %.elt81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %.elt81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %sub.i)
  %cmp2.i = icmp ult i32 %32, %sub.i
  br i1 %cmp2.i, label %if.then3.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %.elt81 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i, ptr %.elt81, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %34 = ptrtoint ptr %.elt79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %.elt79, align 4
  %36 = ptrtoint ptr %.elt81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %.elt81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp6.i = icmp ult i32 %35, %37
  br i1 %cmp6.i, label %if.then7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %.elt79 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %.elt79, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then7.i, %if.end.i.if.end10.i_crit_edge
  br i1 %cmp.not.i, label %if.end10.i.ZSTD_window_enforceMaxDist.exit_crit_edge, label %if.then11.i

if.end10.i.ZSTD_window_enforceMaxDist.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_window_enforceMaxDist.exit

if.then11.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %loadedDictEnd to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %loadedDictEnd, align 4
  br label %ZSTD_window_enforceMaxDist.exit

ZSTD_window_enforceMaxDist.exit:                  ; preds = %if.then11.i, %if.end10.i.ZSTD_window_enforceMaxDist.exit_crit_edge, %cond.end.i.ZSTD_window_enforceMaxDist.exit_crit_edge
  %40 = ptrtoint ptr %.elt79 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.unpack392.i = load i32, ptr %.elt79, align 4
  %41 = ptrtoint ptr %.elt81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.unpack394.i = load i32, ptr %.elt81, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack394.i, i32 %.unpack392.i)
  %cmp.i.not.i = icmp ult i32 %.unpack394.i, %.unpack392.i
  %42 = ptrtoint ptr %minMatchLength1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minMatchLength1.i, align 4
  %44 = ptrtoint ptr %bucketSizeLog.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bucketSizeLog.i, align 4
  %shl.i = shl nuw i32 1, %45
  %46 = ptrtoint ptr %hashLog to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hashLog, align 4
  %sub.i91 = sub i32 %47, %45
  br i1 %cmp.i.not.i, label %cond.true9.i, label %ZSTD_window_enforceMaxDist.exit.cond.end13.i_crit_edge

ZSTD_window_enforceMaxDist.exit.cond.end13.i_crit_edge: ; preds = %ZSTD_window_enforceMaxDist.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end13.i

cond.true9.i:                                     ; preds = %ZSTD_window_enforceMaxDist.exit
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %dictBase.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dictBase.i, align 4
  br label %cond.end13.i

cond.end13.i:                                     ; preds = %cond.true9.i, %ZSTD_window_enforceMaxDist.exit.cond.end13.i_crit_edge
  %cond491.i = phi i32 [ %.unpack394.i, %cond.true9.i ], [ %.unpack392.i, %ZSTD_window_enforceMaxDist.exit.cond.end13.i_crit_edge ]
  %cond14.i = phi ptr [ %49, %cond.true9.i ], [ null, %ZSTD_window_enforceMaxDist.exit.cond.end13.i_crit_edge ]
  %add.ptr.i92 = getelementptr i8, ptr %cond14.i, i32 %cond491.i
  %spec.select.i = select i1 %cmp.i.not.i, ptr %add.ptr.i92, ptr null
  %add.ptr22.i = getelementptr i8, ptr %cond14.i, i32 %.unpack392.i
  %cond25.i = select i1 %cmp.i.not.i, ptr %add.ptr22.i, ptr null
  %add.ptr26.i = getelementptr i8, ptr %28, i32 %.unpack392.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr5, i32 %sub.ptr.sub11
  %add.ptr28.i = getelementptr i8, ptr %add.ptr27.i, i32 -8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hashState.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %numSplits.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %sub.ptr.sub11)
  %cmp.i93 = icmp ugt i32 %43, %sub.ptr.sub11
  br i1 %cmp.i93, label %cond.end13.i.ZSTD_ldm_generateSequences_internal.exit_crit_edge, label %if.end.i94

cond.end13.i.ZSTD_ldm_generateSequences_internal.exit_crit_edge: ; preds = %cond.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_generateSequences_internal.exit

if.end.i94:                                       ; preds = %cond.end13.i
  %50 = tail call i32 @llvm.umin.i32(i32 %43, i32 64) #9
  %51 = ptrtoint ptr %hashRateLog2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hashRateLog2.i.i, align 4
  %53 = ptrtoint ptr %hashState.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 4294967295, ptr %hashState.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp3.not.i.i = icmp eq i32 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp4.not.i.i = icmp ult i32 %50, %52
  %or.cond.i.i = select i1 %cmp3.not.i.i, i1 true, i1 %cmp4.not.i.i
  %sh_prom8.i.i = zext i32 %52 to i64
  %notmask.i.i = shl nsw i64 -1, %sh_prom8.i.i
  %sub10.i.i = xor i64 %notmask.i.i, -1
  %sub5.i.i = sub i32 %50, %52
  %sh_prom6.i.i = zext i32 %sub5.i.i to i64
  %shl7.i.i = select i1 %or.cond.i.i, i64 0, i64 %sh_prom6.i.i
  %shl7.sink.i.i = shl i64 %sub10.i.i, %shl7.i.i
  %54 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %shl7.sink.i.i, ptr %2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp30511.not.i = icmp eq i32 %43, 0
  br i1 %cmp30511.not.i, label %if.end.i94.while.end.i_crit_edge, label %if.end.i94.while.body.i_crit_edge

if.end.i94.while.body.i_crit_edge:                ; preds = %if.end.i94
  br label %while.body.i

if.end.i94.while.end.i_crit_edge:                 ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i94.while.body.i_crit_edge
  %n.0512.i = phi i32 [ %add.i95, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.i94.while.body.i_crit_edge ]
  %55 = ptrtoint ptr %numSplits.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %numSplits.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %add.ptr5, i32 %n.0512.i
  %sub32.i = sub i32 %43, %n.0512.i
  %call33.i = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %hashState.i, ptr noundef %add.ptr31.i, i32 noundef %sub32.i, ptr noundef %splitIndices.i, ptr noundef nonnull %numSplits.i) #9
  %add.i95 = add i32 %call33.i, %n.0512.i
  %cmp30.i = icmp ugt i32 %43, %add.i95
  br i1 %cmp30.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end.i94.while.end.i_crit_edge
  %add.ptr34.i = getelementptr i8, ptr %add.ptr5, i32 %43
  %cmp36533.i = icmp ult ptr %add.ptr34.i, %add.ptr28.i
  br i1 %cmp36533.i, label %while.body37.lr.ph.i, label %while.end.i.while.end208.i_crit_edge

while.end.i.while.end208.i_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end208.i

while.body37.lr.ph.i:                             ; preds = %while.end.i
  %sub.ptr.lhs.cast39.i = ptrtoint ptr %add.ptr28.i to i32
  %idx.neg.i = sub i32 0, %43
  %notmask.i = shl nsw i32 -1, %sub.i91
  %sub48.i = xor i32 %notmask.i, -1
  %add.ptr.i454.i = getelementptr i8, ptr %add.ptr27.i, i32 -3
  %add.ptr33.i.i = getelementptr i8, ptr %add.ptr27.i, i32 -1
  %cmp114.i16.i.i = icmp ugt ptr %cond25.i, %spec.select.i
  br label %while.body37.i

while.body37.i:                                   ; preds = %cleanup204.i.while.body37.i_crit_edge, %while.body37.lr.ph.i
  %ip.0535.i = phi ptr [ %add.ptr34.i, %while.body37.lr.ph.i ], [ %add.ptr203.i, %cleanup204.i.while.body37.i_crit_edge ]
  %anchor.0534.i = phi ptr [ %add.ptr5, %while.body37.lr.ph.i ], [ %anchor.1.lcssa.i, %cleanup204.i.while.body37.i_crit_edge ]
  %56 = ptrtoint ptr %numSplits.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %numSplits.i, align 4
  %sub.ptr.rhs.cast40.i = ptrtoint ptr %ip.0535.i to i32
  %sub.ptr.sub41.i = sub i32 %sub.ptr.lhs.cast39.i, %sub.ptr.rhs.cast40.i
  %call42.i = call fastcc i32 @ZSTD_ldm_gear_feed(ptr noundef nonnull %hashState.i, ptr noundef %ip.0535.i, i32 noundef %sub.ptr.sub41.i, ptr noundef %splitIndices.i, ptr noundef nonnull %numSplits.i) #9
  %57 = ptrtoint ptr %numSplits.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %numSplits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp43513.not.i = icmp eq i32 %58, 0
  br i1 %cmp43513.not.i, label %while.body37.i.cleanup204.i_crit_edge, label %for.body.preheader.i

while.body37.i.cleanup204.i_crit_edge:            ; preds = %while.body37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204.i

for.body.preheader.i:                             ; preds = %while.body37.i
  %add.ptr44.i = getelementptr i8, ptr %ip.0535.i, i32 %idx.neg.i
  br label %for.body.i99

for.body.i99:                                     ; preds = %for.body.i99.for.body.i99_crit_edge, %for.body.preheader.i
  %n38.0514.i = phi i32 [ %inc.i97, %for.body.i99.for.body.i99_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i96 = getelementptr i32, ptr %splitIndices.i, i32 %n38.0514.i
  %59 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i96, align 4
  %add.ptr45.i = getelementptr i8, ptr %add.ptr44.i, i32 %60
  %call46.i = tail call i64 @xxh64(ptr noundef %add.ptr45.i, i32 noundef %43, i64 noundef 0) #9
  %61 = trunc i64 %call46.i to i32
  %conv49.i = and i32 %61, %sub48.i
  %arrayidx50.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.0514.i
  %62 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %add.ptr45.i, ptr %arrayidx50.i, align 4
  %hash53.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.0514.i, i32 1
  %63 = ptrtoint ptr %hash53.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %conv49.i, ptr %hash53.i, align 4
  %shr.i = lshr i64 %call46.i, 32
  %conv54.i = trunc i64 %shr.i to i32
  %checksum.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.0514.i, i32 2
  %64 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv54.i, ptr %checksum.i, align 4
  %65 = ptrtoint ptr %bucketSizeLog.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.unpack432.i = load i32, ptr %bucketSizeLog.i, align 4
  %66 = ptrtoint ptr %hashTable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hashTable, align 4
  %shl.i.i = shl i32 %conv49.i, %.unpack432.i
  %add.ptr.i.i = getelementptr %struct.ldmEntry_t, ptr %67, i32 %shl.i.i
  %bucket.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.0514.i, i32 3
  %68 = ptrtoint ptr %bucket.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i, ptr %bucket.i, align 4
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i.i, i32 0, i32 3, i32 1) #9
  %inc.i97 = add nuw i32 %n38.0514.i, 1
  %exitcond.not.i98 = icmp eq i32 %inc.i97, %58
  br i1 %exitcond.not.i98, label %for.body.i99.for.body63.i_crit_edge, label %for.body.i99.for.body.i99_crit_edge

for.body.i99.for.body.i99_crit_edge:              ; preds = %for.body.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i99

for.body.i99.for.body63.i_crit_edge:              ; preds = %for.body.i99
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.inc200.i.for.body63.i_crit_edge, %for.body.i99.for.body63.i_crit_edge
  %n38.1531.i = phi i32 [ %inc201.i, %for.inc200.i.for.body63.i_crit_edge ], [ 0, %for.body.i99.for.body63.i_crit_edge ]
  %anchor.1530.i = phi ptr [ %anchor.2.ph.i, %for.inc200.i.for.body63.i_crit_edge ], [ %anchor.0534.i, %for.body.i99.for.body63.i_crit_edge ]
  %arrayidx65.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.1531.i
  %69 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx65.i, align 4
  %checksum69.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.1531.i, i32 2
  %71 = ptrtoint ptr %checksum69.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %checksum69.i, align 4
  %hash72.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.1531.i, i32 1
  %73 = ptrtoint ptr %hash72.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hash72.i, align 4
  %bucket75.i = getelementptr %struct.ldmMatchCandidate_t, ptr %matchCandidates.i, i32 %n38.1531.i, i32 3
  %75 = ptrtoint ptr %bucket75.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %bucket75.i, align 4
  %sub.ptr.lhs.cast76.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub78.i = sub i32 %sub.ptr.lhs.cast76.i, %sub.ptr.rhs.cast.i87
  %cmp80.i = icmp ult ptr %70, %anchor.1530.i
  br i1 %cmp80.i, label %if.then82.i, label %for.cond84.preheader.i

for.cond84.preheader.i:                           ; preds = %for.body63.i
  %add.ptr85.i = getelementptr %struct.ldmEntry_t, ptr %76, i32 %shl.i
  %cmp86515.i = icmp ult ptr %76, %add.ptr85.i
  br i1 %cmp86515.i, label %for.body88.lr.ph.i, label %for.cond84.preheader.i.if.then158.i_crit_edge

for.cond84.preheader.i.if.then158.i_crit_edge:    ; preds = %for.cond84.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158.i

for.body88.lr.ph.i:                               ; preds = %for.cond84.preheader.i
  %cmp.i455.i = icmp ugt ptr %add.ptr.i454.i, %70
  %cmp13.i.i = icmp ugt ptr %70, %anchor.1530.i
  br label %for.body88.i

if.then82.i:                                      ; preds = %for.body63.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %bucketSizeLog.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.unpack421.i = load i32, ptr %bucketSizeLog.i, align 4
  %78 = ptrtoint ptr %bucketOffsets.i476.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bucketOffsets.i476.i, align 4
  %add.ptr.i439.i = getelementptr i8, ptr %79, i32 %74
  %80 = ptrtoint ptr %add.ptr.i439.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %add.ptr.i439.i, align 1
  %conv.i440.i = zext i8 %81 to i32
  %82 = ptrtoint ptr %hashTable to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hashTable, align 4
  %shl.i.i.i = shl i32 %74, %.unpack421.i
  %add.ptr.i.i.i = getelementptr %struct.ldmEntry_t, ptr %83, i32 %shl.i.i.i
  %add.ptr3.i.i = getelementptr %struct.ldmEntry_t, ptr %add.ptr.i.i.i, i32 %conv.i440.i
  %84 = ptrtoint ptr %add.ptr3.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %sub.ptr.sub78.i, ptr %add.ptr3.i.i, align 4
  %entry2.sroa.2.0.add.ptr3.sroa_idx.i.i = getelementptr inbounds i8, ptr %add.ptr3.i.i, i32 4
  %85 = ptrtoint ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %72, ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i.i, align 4
  %add.i.i = add nuw nsw i32 %conv.i440.i, 1
  %notmask.i441.i = shl nsw i32 -1, %.unpack421.i
  %sub.i.i = xor i32 %notmask.i441.i, -1
  %and.i.i = and i32 %add.i.i, %sub.i.i
  %conv4.i.i = trunc i32 %and.i.i to i8
  store i8 %conv4.i.i, ptr %add.ptr.i439.i, align 1
  br label %for.inc200.i

for.body88.i:                                     ; preds = %cleanup149.i.for.body88.i_crit_edge, %for.body88.lr.ph.i
  %bestEntry.0524.i = phi ptr [ null, %for.body88.lr.ph.i ], [ %bestEntry.2.i, %cleanup149.i.for.body88.i_crit_edge ]
  %cur.0522.i = phi ptr [ %76, %for.body88.lr.ph.i ], [ %incdec.ptr.i, %cleanup149.i.for.body88.i_crit_edge ]
  %bestMatchLength.0520.i = phi i32 [ 0, %for.body88.lr.ph.i ], [ %bestMatchLength.2.i, %cleanup149.i.for.body88.i_crit_edge ]
  %backwardMatchLength.0518.i = phi i32 [ 0, %for.body88.lr.ph.i ], [ %backwardMatchLength.2.i, %cleanup149.i.for.body88.i_crit_edge ]
  %forwardMatchLength.0516.i = phi i32 [ 0, %for.body88.lr.ph.i ], [ %forwardMatchLength.2.i, %cleanup149.i.for.body88.i_crit_edge ]
  %checksum89.i = getelementptr inbounds %struct.ldmEntry_t, ptr %cur.0522.i, i32 0, i32 1
  %86 = ptrtoint ptr %checksum89.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %checksum89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %72)
  %cmp90.not.i = icmp eq i32 %87, %72
  br i1 %cmp90.not.i, label %lor.lhs.false.i, label %for.body88.i.cleanup149.i_crit_edge

for.body88.i.cleanup149.i_crit_edge:              ; preds = %for.body88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

lor.lhs.false.i:                                  ; preds = %for.body88.i
  %88 = ptrtoint ptr %cur.0522.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cur.0522.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %cond491.i)
  %cmp93.not.i = icmp ugt i32 %89, %cond491.i
  br i1 %cmp93.not.i, label %if.end96.i, label %lor.lhs.false.i.cleanup149.i_crit_edge

lor.lhs.false.i.cleanup149.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

if.end96.i:                                       ; preds = %lor.lhs.false.i
  br i1 %cmp.i.not.i, label %if.then98.i, label %if.else.i

if.then98.i:                                      ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %.unpack392.i)
  %cmp100.i = icmp ult i32 %89, %.unpack392.i
  %cond14..i = select i1 %cmp100.i, ptr %cond14.i, ptr %28
  %add.ptr107.i = getelementptr i8, ptr %cond14..i, i32 %89
  %cond114.i = select i1 %cmp100.i, ptr %cond25.i, ptr %add.ptr27.i
  %cond121.i = select i1 %cmp100.i, ptr %spec.select.i, ptr %add.ptr26.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %cond114.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr107.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i442.i = getelementptr i8, ptr %70, i32 %sub.ptr.sub.i.i
  %cmp.i443.i = icmp ult ptr %add.ptr.i442.i, %add.ptr27.i
  %add.ptr.iEnd.i.i = select i1 %cmp.i443.i, ptr %add.ptr.i442.i, ptr %add.ptr27.i
  %add.ptr.i.i444.i = getelementptr i8, ptr %add.ptr.iEnd.i.i, i32 -3
  %cmp.i.i.i = icmp ugt ptr %add.ptr.i.i444.i, %70
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then98.i.if.end20.i.i.i_crit_edge

if.then98.i.if.end20.i.i.i_crit_edge:             ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

if.then.i.i.i:                                    ; preds = %if.then98.i
  %90 = ptrtoint ptr %add.ptr107.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %91 = load i32, ptr %add.ptr107.i, align 1
  %92 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load i32, ptr %70, align 1
  %xor.i.i.i = xor i32 %93, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %xor.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.while.cond.i.i.i_crit_edge, label %cleanup.i.i.i

if.then.i.i.i.while.cond.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %while.cond.i.i.i

cleanup.i.i.i:                                    ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i.i, i1 true) #9, !range !12
  %95 = lshr i32 %94, 3
  br label %ZSTD_count.exit.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %if.then.i.i.i.while.cond.i.i.i_crit_edge
  %pIn.pn.i.i.i = phi ptr [ %pIn.addr.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %70, %if.then.i.i.i.while.cond.i.i.i_crit_edge ]
  %pMatch.pn.i.i.i = phi ptr [ %pMatch.addr.0.i.i.i, %while.body.i.i.i.while.cond.i.i.i_crit_edge ], [ %add.ptr107.i, %if.then.i.i.i.while.cond.i.i.i_crit_edge ]
  %pMatch.addr.0.i.i.i = getelementptr i8, ptr %pMatch.pn.i.i.i, i32 4
  %pIn.addr.0.i.i.i = getelementptr i8, ptr %pIn.pn.i.i.i, i32 4
  %cmp6.i.i.i = icmp ult ptr %pIn.addr.0.i.i.i, %add.ptr.i.i444.i
  br i1 %cmp6.i.i.i, label %while.body.i.i.i, label %while.cond.i.i.i.if.end20.i.i.i_crit_edge

while.cond.i.i.i.if.end20.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %96 = ptrtoint ptr %pMatch.addr.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %pMatch.addr.0.i.i.i, align 1
  %98 = ptrtoint ptr %pIn.addr.0.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %pIn.addr.0.i.i.i, align 1
  %xor10.i.i.i = xor i32 %99, %97
  %tobool11.not.i.i.i = icmp eq i32 %xor10.i.i.i, 0
  br i1 %tobool11.not.i.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge, label %cleanup18.thread.i.i.i

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i.i

cleanup18.thread.i.i.i:                           ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i.i, i1 true) #9, !range !12
  %101 = lshr i32 %100, 3
  %add.ptr17.i.i.i = getelementptr i8, ptr %pIn.addr.0.i.i.i, i32 %101
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr17.i.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.lhs.cast76.i
  br label %ZSTD_count.exit.i.i

if.end20.i.i.i:                                   ; preds = %while.cond.i.i.i.if.end20.i.i.i_crit_edge, %if.then98.i.if.end20.i.i.i_crit_edge
  %pIn.addr.2.i.i.i = phi ptr [ %70, %if.then98.i.if.end20.i.i.i_crit_edge ], [ %pIn.addr.0.i.i.i, %while.cond.i.i.i.if.end20.i.i.i_crit_edge ]
  %pMatch.addr.2.i.i.i = phi ptr [ %add.ptr107.i, %if.then98.i.if.end20.i.i.i_crit_edge ], [ %pMatch.addr.0.i.i.i, %while.cond.i.i.i.if.end20.i.i.i_crit_edge ]
  %add.ptr33.i.i.i = getelementptr i8, ptr %add.ptr.iEnd.i.i, i32 -1
  %cmp34.i.i.i = icmp ult ptr %pIn.addr.2.i.i.i, %add.ptr33.i.i.i
  br i1 %cmp34.i.i.i, label %land.lhs.true35.i.i.i, label %if.end20.i.i.i.if.end44.i.i.i_crit_edge

if.end20.i.i.i.if.end44.i.i.i_crit_edge:          ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i.i

land.lhs.true35.i.i.i:                            ; preds = %if.end20.i.i.i
  %102 = ptrtoint ptr %pMatch.addr.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 2)
  %103 = load i16, ptr %pMatch.addr.2.i.i.i, align 1
  %104 = ptrtoint ptr %pIn.addr.2.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %104, i32 2)
  %105 = load i16, ptr %pIn.addr.2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %103, i16 %105)
  %cmp39.i.i.i = icmp eq i16 %103, %105
  br i1 %cmp39.i.i.i, label %if.then41.i.i.i, label %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge

land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge:   ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i.i

if.then41.i.i.i:                                  ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr42.i.i.i = getelementptr i8, ptr %pIn.addr.2.i.i.i, i32 2
  %add.ptr43.i.i.i = getelementptr i8, ptr %pMatch.addr.2.i.i.i, i32 2
  br label %if.end44.i.i.i

if.end44.i.i.i:                                   ; preds = %if.then41.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge, %if.end20.i.i.i.if.end44.i.i.i_crit_edge
  %pIn.addr.4.i.i.i = phi ptr [ %add.ptr42.i.i.i, %if.then41.i.i.i ], [ %pIn.addr.2.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge ], [ %pIn.addr.2.i.i.i, %if.end20.i.i.i.if.end44.i.i.i_crit_edge ]
  %pMatch.addr.4.i.i.i = phi ptr [ %add.ptr43.i.i.i, %if.then41.i.i.i ], [ %pMatch.addr.2.i.i.i, %land.lhs.true35.i.i.i.if.end44.i.i.i_crit_edge ], [ %pMatch.addr.2.i.i.i, %if.end20.i.i.i.if.end44.i.i.i_crit_edge ]
  %cmp45.i.i.i = icmp ult ptr %pIn.addr.4.i.i.i, %add.ptr.iEnd.i.i
  br i1 %cmp45.i.i.i, label %land.lhs.true47.i.i.i, label %if.end44.i.i.i.if.end53.i.i.i_crit_edge

if.end44.i.i.i.if.end53.i.i.i_crit_edge:          ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i.i

land.lhs.true47.i.i.i:                            ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %pMatch.addr.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pMatch.addr.4.i.i.i, align 1
  %108 = ptrtoint ptr %pIn.addr.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pIn.addr.4.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %107, i8 %109)
  %cmp50.i.i.i = icmp eq i8 %107, %109
  %spec.select.idx.i.i.i = zext i1 %cmp50.i.i.i to i32
  %spec.select.i.i.i = getelementptr i8, ptr %pIn.addr.4.i.i.i, i32 %spec.select.idx.i.i.i
  br label %if.end53.i.i.i

if.end53.i.i.i:                                   ; preds = %land.lhs.true47.i.i.i, %if.end44.i.i.i.if.end53.i.i.i_crit_edge
  %pIn.addr.5.i.i.i = phi ptr [ %pIn.addr.4.i.i.i, %if.end44.i.i.i.if.end53.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true47.i.i.i ]
  %sub.ptr.lhs.cast54.i.i.i = ptrtoint ptr %pIn.addr.5.i.i.i to i32
  %sub.ptr.sub56.i.i.i = sub i32 %sub.ptr.lhs.cast54.i.i.i, %sub.ptr.lhs.cast76.i
  br label %ZSTD_count.exit.i.i

ZSTD_count.exit.i.i:                              ; preds = %if.end53.i.i.i, %cleanup18.thread.i.i.i, %cleanup.i.i.i
  %retval.3.i.i.i = phi i32 [ %sub.ptr.sub56.i.i.i, %if.end53.i.i.i ], [ %95, %cleanup.i.i.i ], [ %sub.ptr.sub.i.i.i, %cleanup18.thread.i.i.i ]
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr107.i, i32 %retval.3.i.i.i
  %cmp6.not.i.i = icmp eq ptr %add.ptr5.i.i, %cond114.i
  br i1 %cmp6.not.i.i, label %if.end.i.i, label %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge

ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge: ; preds = %ZSTD_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_count_2segments.exit.i

if.end.i.i:                                       ; preds = %ZSTD_count.exit.i.i
  %add.ptr7.i.i = getelementptr i8, ptr %70, i32 %retval.3.i.i.i
  %cmp.i24.i.i = icmp ugt ptr %add.ptr.i454.i, %add.ptr7.i.i
  br i1 %cmp.i24.i.i, label %if.then.i27.i.i, label %if.end.i.i.if.end20.i47.i.i_crit_edge

if.end.i.i.if.end20.i47.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i47.i.i

if.then.i27.i.i:                                  ; preds = %if.end.i.i
  %110 = ptrtoint ptr %add.ptr26.i to i32
  call void @__asan_loadN_noabort(i32 %110, i32 4)
  %111 = load i32, ptr %add.ptr26.i, align 1
  %112 = ptrtoint ptr %add.ptr7.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %add.ptr7.i.i, align 1
  %xor.i25.i.i = xor i32 %113, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i25.i.i)
  %tobool.not.i26.i.i = icmp eq i32 %xor.i25.i.i, 0
  br i1 %tobool.not.i26.i.i, label %if.then.i27.i.i.while.cond.i34.i.i_crit_edge, label %cleanup.i28.i.i

if.then.i27.i.i.while.cond.i34.i.i_crit_edge:     ; preds = %if.then.i27.i.i
  br label %while.cond.i34.i.i

cleanup.i28.i.i:                                  ; preds = %if.then.i27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %114 = tail call i32 @llvm.ctlz.i32(i32 %xor.i25.i.i, i1 true) #9, !range !12
  %115 = lshr i32 %114, 3
  br label %ZSTD_count.exit67.i.i

while.cond.i34.i.i:                               ; preds = %while.body.i37.i.i.while.cond.i34.i.i_crit_edge, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge
  %pIn.pn.i29.i.i = phi ptr [ %pIn.addr.0.i32.i.i, %while.body.i37.i.i.while.cond.i34.i.i_crit_edge ], [ %add.ptr7.i.i, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge ]
  %pMatch.pn.i30.i.i = phi ptr [ %pMatch.addr.0.i31.i.i, %while.body.i37.i.i.while.cond.i34.i.i_crit_edge ], [ %add.ptr26.i, %if.then.i27.i.i.while.cond.i34.i.i_crit_edge ]
  %pMatch.addr.0.i31.i.i = getelementptr i8, ptr %pMatch.pn.i30.i.i, i32 4
  %pIn.addr.0.i32.i.i = getelementptr i8, ptr %pIn.pn.i29.i.i, i32 4
  %cmp6.i33.i.i = icmp ult ptr %pIn.addr.0.i32.i.i, %add.ptr.i454.i
  br i1 %cmp6.i33.i.i, label %while.body.i37.i.i, label %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge

while.cond.i34.i.i.if.end20.i47.i.i_crit_edge:    ; preds = %while.cond.i34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i47.i.i

while.body.i37.i.i:                               ; preds = %while.cond.i34.i.i
  %116 = ptrtoint ptr %pMatch.addr.0.i31.i.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 4)
  %117 = load i32, ptr %pMatch.addr.0.i31.i.i, align 1
  %118 = ptrtoint ptr %pIn.addr.0.i32.i.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %119 = load i32, ptr %pIn.addr.0.i32.i.i, align 1
  %xor10.i35.i.i = xor i32 %119, %117
  %tobool11.not.i36.i.i = icmp eq i32 %xor10.i35.i.i, 0
  br i1 %tobool11.not.i36.i.i, label %while.body.i37.i.i.while.cond.i34.i.i_crit_edge, label %cleanup18.thread.i42.i.i

while.body.i37.i.i.while.cond.i34.i.i_crit_edge:  ; preds = %while.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i34.i.i

cleanup18.thread.i42.i.i:                         ; preds = %while.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i35.i.i, i1 true) #9, !range !12
  %121 = lshr i32 %120, 3
  %add.ptr17.i38.i.i = getelementptr i8, ptr %pIn.addr.0.i32.i.i, i32 %121
  %sub.ptr.lhs.cast.i39.i.i = ptrtoint ptr %add.ptr17.i38.i.i to i32
  %sub.ptr.rhs.cast.i40.i.i = ptrtoint ptr %add.ptr7.i.i to i32
  %sub.ptr.sub.i41.i.i = sub i32 %sub.ptr.lhs.cast.i39.i.i, %sub.ptr.rhs.cast.i40.i.i
  br label %ZSTD_count.exit67.i.i

if.end20.i47.i.i:                                 ; preds = %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge, %if.end.i.i.if.end20.i47.i.i_crit_edge
  %pIn.addr.2.i43.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i.if.end20.i47.i.i_crit_edge ], [ %pIn.addr.0.i32.i.i, %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge ]
  %pMatch.addr.2.i44.i.i = phi ptr [ %add.ptr26.i, %if.end.i.i.if.end20.i47.i.i_crit_edge ], [ %pMatch.addr.0.i31.i.i, %while.cond.i34.i.i.if.end20.i47.i.i_crit_edge ]
  %cmp34.i46.i.i = icmp ult ptr %pIn.addr.2.i43.i.i, %add.ptr33.i.i
  br i1 %cmp34.i46.i.i, label %land.lhs.true35.i49.i.i, label %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge

if.end20.i47.i.i.if.end44.i56.i.i_crit_edge:      ; preds = %if.end20.i47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i56.i.i

land.lhs.true35.i49.i.i:                          ; preds = %if.end20.i47.i.i
  %122 = ptrtoint ptr %pMatch.addr.2.i44.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 2)
  %123 = load i16, ptr %pMatch.addr.2.i44.i.i, align 1
  %124 = ptrtoint ptr %pIn.addr.2.i43.i.i to i32
  call void @__asan_loadN_noabort(i32 %124, i32 2)
  %125 = load i16, ptr %pIn.addr.2.i43.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %123, i16 %125)
  %cmp39.i48.i.i = icmp eq i16 %123, %125
  br i1 %cmp39.i48.i.i, label %if.then41.i52.i.i, label %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge

land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge: ; preds = %land.lhs.true35.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i56.i.i

if.then41.i52.i.i:                                ; preds = %land.lhs.true35.i49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr42.i50.i.i = getelementptr i8, ptr %pIn.addr.2.i43.i.i, i32 2
  %add.ptr43.i51.i.i = getelementptr i8, ptr %pMatch.addr.2.i44.i.i, i32 2
  br label %if.end44.i56.i.i

if.end44.i56.i.i:                                 ; preds = %if.then41.i52.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge
  %pIn.addr.4.i53.i.i = phi ptr [ %add.ptr42.i50.i.i, %if.then41.i52.i.i ], [ %pIn.addr.2.i43.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge ], [ %pIn.addr.2.i43.i.i, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge ]
  %pMatch.addr.4.i54.i.i = phi ptr [ %add.ptr43.i51.i.i, %if.then41.i52.i.i ], [ %pMatch.addr.2.i44.i.i, %land.lhs.true35.i49.i.i.if.end44.i56.i.i_crit_edge ], [ %pMatch.addr.2.i44.i.i, %if.end20.i47.i.i.if.end44.i56.i.i_crit_edge ]
  %cmp45.i55.i.i = icmp ult ptr %pIn.addr.4.i53.i.i, %add.ptr27.i
  br i1 %cmp45.i55.i.i, label %land.lhs.true47.i60.i.i, label %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge

if.end44.i56.i.i.if.end53.i65.i.i_crit_edge:      ; preds = %if.end44.i56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i65.i.i

land.lhs.true47.i60.i.i:                          ; preds = %if.end44.i56.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %126 = ptrtoint ptr %pMatch.addr.4.i54.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pMatch.addr.4.i54.i.i, align 1
  %128 = ptrtoint ptr %pIn.addr.4.i53.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %pIn.addr.4.i53.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %127, i8 %129)
  %cmp50.i57.i.i = icmp eq i8 %127, %129
  %spec.select.idx.i58.i.i = zext i1 %cmp50.i57.i.i to i32
  %spec.select.i59.i.i = getelementptr i8, ptr %pIn.addr.4.i53.i.i, i32 %spec.select.idx.i58.i.i
  br label %if.end53.i65.i.i

if.end53.i65.i.i:                                 ; preds = %land.lhs.true47.i60.i.i, %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge
  %pIn.addr.5.i61.i.i = phi ptr [ %pIn.addr.4.i53.i.i, %if.end44.i56.i.i.if.end53.i65.i.i_crit_edge ], [ %spec.select.i59.i.i, %land.lhs.true47.i60.i.i ]
  %sub.ptr.lhs.cast54.i62.i.i = ptrtoint ptr %pIn.addr.5.i61.i.i to i32
  %sub.ptr.rhs.cast55.i63.i.i = ptrtoint ptr %add.ptr7.i.i to i32
  %sub.ptr.sub56.i64.i.i = sub i32 %sub.ptr.lhs.cast54.i62.i.i, %sub.ptr.rhs.cast55.i63.i.i
  br label %ZSTD_count.exit67.i.i

ZSTD_count.exit67.i.i:                            ; preds = %if.end53.i65.i.i, %cleanup18.thread.i42.i.i, %cleanup.i28.i.i
  %retval.3.i66.i.i = phi i32 [ %sub.ptr.sub56.i64.i.i, %if.end53.i65.i.i ], [ %115, %cleanup.i28.i.i ], [ %sub.ptr.sub.i41.i.i, %cleanup18.thread.i42.i.i ]
  %add.i445.i = add i32 %retval.3.i66.i.i, %retval.3.i.i.i
  br label %ZSTD_count_2segments.exit.i

ZSTD_count_2segments.exit.i:                      ; preds = %ZSTD_count.exit67.i.i, %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i445.i, %ZSTD_count.exit67.i.i ], [ %retval.3.i.i.i, %ZSTD_count.exit.i.i.ZSTD_count_2segments.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %43)
  %cmp123.i = icmp ult i32 %retval.0.i.i, %43
  br i1 %cmp123.i, label %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge, label %if.end126.i

ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge: ; preds = %ZSTD_count_2segments.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

if.end126.i:                                      ; preds = %ZSTD_count_2segments.exit.i
  %cmp114.i.i.i = icmp ugt ptr %add.ptr107.i, %cond121.i
  %or.cond15.i.i.i = and i1 %cmp13.i.i, %cmp114.i.i.i
  br i1 %or.cond15.i.i.i, label %if.end126.i.land.rhs.i.i.i_crit_edge, label %if.end126.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge

if.end126.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge: ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit.i.i

if.end126.i.land.rhs.i.i.i_crit_edge:             ; preds = %if.end126.i
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %while.body.i.i447.i.land.rhs.i.i.i_crit_edge, %if.end126.i.land.rhs.i.i.i_crit_edge
  %matchLength.018.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i447.i.land.rhs.i.i.i_crit_edge ], [ 0, %if.end126.i.land.rhs.i.i.i_crit_edge ]
  %pIn.addr.017.i.i.i = phi ptr [ %arrayidx.i.i.i, %while.body.i.i447.i.land.rhs.i.i.i_crit_edge ], [ %70, %if.end126.i.land.rhs.i.i.i_crit_edge ]
  %pMatch.addr.016.i.i.i = phi ptr [ %arrayidx2.i.i.i, %while.body.i.i447.i.land.rhs.i.i.i_crit_edge ], [ %add.ptr107.i, %if.end126.i.land.rhs.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %pIn.addr.017.i.i.i, i32 -1
  %130 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i.i, align 1
  %arrayidx2.i.i.i = getelementptr i8, ptr %pMatch.addr.016.i.i.i, i32 -1
  %132 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx2.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %131, i8 %133)
  %cmp4.i.i.i = icmp eq i8 %131, %133
  br i1 %cmp4.i.i.i, label %while.body.i.i447.i, label %land.rhs.i.i.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge

land.rhs.i.i.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit.i.i

while.body.i.i447.i:                              ; preds = %land.rhs.i.i.i
  %inc.i.i.i = add i32 %matchLength.018.i.i.i, 1
  %cmp.i.i446.i = icmp ugt ptr %arrayidx.i.i.i, %anchor.1530.i
  %cmp1.i.i.i = icmp ugt ptr %arrayidx2.i.i.i, %cond121.i
  %or.cond.i.i.i = and i1 %cmp.i.i446.i, %cmp1.i.i.i
  br i1 %or.cond.i.i.i, label %while.body.i.i447.i.land.rhs.i.i.i_crit_edge, label %while.body.i.i447.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge

while.body.i.i447.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge: ; preds = %while.body.i.i447.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit.i.i

while.body.i.i447.i.land.rhs.i.i.i_crit_edge:     ; preds = %while.body.i.i447.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i.i

ZSTD_ldm_countBackwardsMatch.exit.i.i:            ; preds = %while.body.i.i447.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge, %land.rhs.i.i.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge, %if.end126.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge
  %matchLength.0.lcssa.i.i.i = phi i32 [ 0, %if.end126.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge ], [ %matchLength.018.i.i.i, %land.rhs.i.i.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i447.i.ZSTD_ldm_countBackwardsMatch.exit.i.i_crit_edge ]
  %idx.neg.i.i = sub i32 0, %matchLength.0.lcssa.i.i.i
  %add.ptr.i448.i = getelementptr i8, ptr %add.ptr107.i, i32 %idx.neg.i.i
  %cmp.not.i.i = icmp ne ptr %add.ptr.i448.i, %cond121.i
  %cmp1.i.i = icmp eq ptr %cond121.i, %spec.select.i
  %or.cond.i449.i = or i1 %cmp1.i.i, %cmp.not.i.i
  br i1 %or.cond.i449.i, label %ZSTD_ldm_countBackwardsMatch.exit.i.i.if.end143.i_crit_edge, label %if.end.i451.i

ZSTD_ldm_countBackwardsMatch.exit.i.i.if.end143.i_crit_edge: ; preds = %ZSTD_ldm_countBackwardsMatch.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

if.end.i451.i:                                    ; preds = %ZSTD_ldm_countBackwardsMatch.exit.i.i
  %add.ptr3.i450.i = getelementptr i8, ptr %70, i32 %idx.neg.i.i
  %cmp13.i15.i.i = icmp ugt ptr %add.ptr3.i450.i, %anchor.1530.i
  %or.cond15.i17.i.i = and i1 %cmp114.i16.i.i, %cmp13.i15.i.i
  br i1 %or.cond15.i17.i.i, label %if.end.i451.i.land.rhs.i24.i.i_crit_edge, label %if.end.i451.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge

if.end.i451.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge: ; preds = %if.end.i451.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit31.i.i

if.end.i451.i.land.rhs.i24.i.i_crit_edge:         ; preds = %if.end.i451.i
  br label %land.rhs.i24.i.i

land.rhs.i24.i.i:                                 ; preds = %while.body.i29.i.i.land.rhs.i24.i.i_crit_edge, %if.end.i451.i.land.rhs.i24.i.i_crit_edge
  %matchLength.018.i18.i.i = phi i32 [ %inc.i25.i.i, %while.body.i29.i.i.land.rhs.i24.i.i_crit_edge ], [ 0, %if.end.i451.i.land.rhs.i24.i.i_crit_edge ]
  %pIn.addr.017.i19.i.i = phi ptr [ %arrayidx.i21.i.i, %while.body.i29.i.i.land.rhs.i24.i.i_crit_edge ], [ %add.ptr3.i450.i, %if.end.i451.i.land.rhs.i24.i.i_crit_edge ]
  %pMatch.addr.016.i20.i.i = phi ptr [ %arrayidx2.i22.i.i, %while.body.i29.i.i.land.rhs.i24.i.i_crit_edge ], [ %cond25.i, %if.end.i451.i.land.rhs.i24.i.i_crit_edge ]
  %arrayidx.i21.i.i = getelementptr i8, ptr %pIn.addr.017.i19.i.i, i32 -1
  %134 = ptrtoint ptr %arrayidx.i21.i.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i21.i.i, align 1
  %arrayidx2.i22.i.i = getelementptr i8, ptr %pMatch.addr.016.i20.i.i, i32 -1
  %136 = ptrtoint ptr %arrayidx2.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx2.i22.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %135, i8 %137)
  %cmp4.i23.i.i = icmp eq i8 %135, %137
  br i1 %cmp4.i23.i.i, label %while.body.i29.i.i, label %land.rhs.i24.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge

land.rhs.i24.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge: ; preds = %land.rhs.i24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit31.i.i

while.body.i29.i.i:                               ; preds = %land.rhs.i24.i.i
  %inc.i25.i.i = add i32 %matchLength.018.i18.i.i, 1
  %cmp.i26.i.i = icmp ugt ptr %arrayidx.i21.i.i, %anchor.1530.i
  %cmp1.i27.i.i = icmp ugt ptr %arrayidx2.i22.i.i, %spec.select.i
  %or.cond.i28.i.i = and i1 %cmp.i26.i.i, %cmp1.i27.i.i
  br i1 %or.cond.i28.i.i, label %while.body.i29.i.i.land.rhs.i24.i.i_crit_edge, label %while.body.i29.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge

while.body.i29.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge: ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_countBackwardsMatch.exit31.i.i

while.body.i29.i.i.land.rhs.i24.i.i_crit_edge:    ; preds = %while.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i24.i.i

ZSTD_ldm_countBackwardsMatch.exit31.i.i:          ; preds = %while.body.i29.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge, %land.rhs.i24.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge, %if.end.i451.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge
  %matchLength.0.lcssa.i30.i.i = phi i32 [ 0, %if.end.i451.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge ], [ %matchLength.018.i18.i.i, %land.rhs.i24.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge ], [ %inc.i25.i.i, %while.body.i29.i.i.ZSTD_ldm_countBackwardsMatch.exit31.i.i_crit_edge ]
  %add.i452.i = add i32 %matchLength.0.lcssa.i30.i.i, %matchLength.0.lcssa.i.i.i
  br label %if.end143.i

if.else.i:                                        ; preds = %if.end96.i
  %add.ptr133.i = getelementptr i8, ptr %28, i32 %89
  br i1 %cmp.i455.i, label %if.then.i.i, label %if.else.i.if.end20.i.i_crit_edge

if.else.i.if.end20.i.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

if.then.i.i:                                      ; preds = %if.else.i
  %138 = ptrtoint ptr %add.ptr133.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %add.ptr133.i, align 1
  %140 = ptrtoint ptr %70 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %141 = load i32, ptr %70, align 1
  %xor.i.i = xor i32 %141, %139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor.i.i)
  %tobool.not.i.i = icmp eq i32 %xor.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.while.cond.i.i_crit_edge, label %cleanup.i.i

if.then.i.i.while.cond.i.i_crit_edge:             ; preds = %if.then.i.i
  br label %while.cond.i.i

cleanup.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %142 = tail call i32 @llvm.ctlz.i32(i32 %xor.i.i, i1 true) #9, !range !12
  %143 = lshr i32 %142, 3
  br label %ZSTD_count.exit.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.then.i.i.while.cond.i.i_crit_edge
  %pIn.pn.i.i = phi ptr [ %pIn.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %70, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.pn.i.i = phi ptr [ %pMatch.addr.0.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %add.ptr133.i, %if.then.i.i.while.cond.i.i_crit_edge ]
  %pMatch.addr.0.i.i = getelementptr i8, ptr %pMatch.pn.i.i, i32 4
  %pIn.addr.0.i.i = getelementptr i8, ptr %pIn.pn.i.i, i32 4
  %cmp6.i.i = icmp ult ptr %pIn.addr.0.i.i, %add.ptr.i454.i
  br i1 %cmp6.i.i, label %while.body.i.i, label %while.cond.i.i.if.end20.i.i_crit_edge

while.cond.i.i.if.end20.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %144 = ptrtoint ptr %pMatch.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %pMatch.addr.0.i.i, align 1
  %146 = ptrtoint ptr %pIn.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %pIn.addr.0.i.i, align 1
  %xor10.i.i = xor i32 %147, %145
  %tobool11.not.i.i = icmp eq i32 %xor10.i.i, 0
  br i1 %tobool11.not.i.i, label %while.body.i.i.while.cond.i.i_crit_edge, label %cleanup18.thread.i.i

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i.i

cleanup18.thread.i.i:                             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %148 = tail call i32 @llvm.ctlz.i32(i32 %xor10.i.i, i1 true) #9, !range !12
  %149 = lshr i32 %148, 3
  %add.ptr17.i.i = getelementptr i8, ptr %pIn.addr.0.i.i, i32 %149
  %sub.ptr.lhs.cast.i456.i = ptrtoint ptr %add.ptr17.i.i to i32
  %sub.ptr.sub.i458.i = sub i32 %sub.ptr.lhs.cast.i456.i, %sub.ptr.lhs.cast76.i
  br label %ZSTD_count.exit.i

if.end20.i.i:                                     ; preds = %while.cond.i.i.if.end20.i.i_crit_edge, %if.else.i.if.end20.i.i_crit_edge
  %pIn.addr.2.i.i = phi ptr [ %70, %if.else.i.if.end20.i.i_crit_edge ], [ %pIn.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %pMatch.addr.2.i.i = phi ptr [ %add.ptr133.i, %if.else.i.if.end20.i.i_crit_edge ], [ %pMatch.addr.0.i.i, %while.cond.i.i.if.end20.i.i_crit_edge ]
  %cmp34.i.i = icmp ult ptr %pIn.addr.2.i.i, %add.ptr33.i.i
  br i1 %cmp34.i.i, label %land.lhs.true35.i.i, label %if.end20.i.i.if.end44.i.i_crit_edge

if.end20.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

land.lhs.true35.i.i:                              ; preds = %if.end20.i.i
  %150 = ptrtoint ptr %pMatch.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %150, i32 2)
  %151 = load i16, ptr %pMatch.addr.2.i.i, align 1
  %152 = ptrtoint ptr %pIn.addr.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %pIn.addr.2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %151, i16 %153)
  %cmp39.i.i = icmp eq i16 %151, %153
  br i1 %cmp39.i.i, label %if.then41.i.i, label %land.lhs.true35.i.i.if.end44.i.i_crit_edge

land.lhs.true35.i.i.if.end44.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr42.i.i = getelementptr i8, ptr %pIn.addr.2.i.i, i32 2
  %add.ptr43.i.i = getelementptr i8, ptr %pMatch.addr.2.i.i, i32 2
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %if.then41.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge, %if.end20.i.i.if.end44.i.i_crit_edge
  %pIn.addr.4.i.i = phi ptr [ %add.ptr42.i.i, %if.then41.i.i ], [ %pIn.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pIn.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %pMatch.addr.4.i.i = phi ptr [ %add.ptr43.i.i, %if.then41.i.i ], [ %pMatch.addr.2.i.i, %land.lhs.true35.i.i.if.end44.i.i_crit_edge ], [ %pMatch.addr.2.i.i, %if.end20.i.i.if.end44.i.i_crit_edge ]
  %cmp45.i.i = icmp ult ptr %pIn.addr.4.i.i, %add.ptr27.i
  br i1 %cmp45.i.i, label %land.lhs.true47.i.i, label %if.end44.i.i.if.end53.i.i_crit_edge

if.end44.i.i.if.end53.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53.i.i

land.lhs.true47.i.i:                              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %pMatch.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %pMatch.addr.4.i.i, align 1
  %156 = ptrtoint ptr %pIn.addr.4.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %pIn.addr.4.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %155, i8 %157)
  %cmp50.i.i = icmp eq i8 %155, %157
  %spec.select.idx.i.i = zext i1 %cmp50.i.i to i32
  %spec.select.i.i = getelementptr i8, ptr %pIn.addr.4.i.i, i32 %spec.select.idx.i.i
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %land.lhs.true47.i.i, %if.end44.i.i.if.end53.i.i_crit_edge
  %pIn.addr.5.i.i = phi ptr [ %pIn.addr.4.i.i, %if.end44.i.i.if.end53.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true47.i.i ]
  %sub.ptr.lhs.cast54.i.i = ptrtoint ptr %pIn.addr.5.i.i to i32
  %sub.ptr.sub56.i.i = sub i32 %sub.ptr.lhs.cast54.i.i, %sub.ptr.lhs.cast76.i
  br label %ZSTD_count.exit.i

ZSTD_count.exit.i:                                ; preds = %if.end53.i.i, %cleanup18.thread.i.i, %cleanup.i.i
  %retval.3.i.i = phi i32 [ %sub.ptr.sub56.i.i, %if.end53.i.i ], [ %143, %cleanup.i.i ], [ %sub.ptr.sub.i458.i, %cleanup18.thread.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.3.i.i, i32 %43)
  %cmp135.i = icmp ult i32 %retval.3.i.i, %43
  br i1 %cmp135.i, label %ZSTD_count.exit.i.cleanup149.i_crit_edge, label %if.end138.i

ZSTD_count.exit.i.cleanup149.i_crit_edge:         ; preds = %ZSTD_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

if.end138.i:                                      ; preds = %ZSTD_count.exit.i
  %cmp114.i.i = icmp ugt ptr %add.ptr133.i, %add.ptr26.i
  %or.cond15.i.i = and i1 %cmp13.i.i, %cmp114.i.i
  br i1 %or.cond15.i.i, label %if.end138.i.land.rhs.i.i_crit_edge, label %if.end138.i.if.end143.i_crit_edge

if.end138.i.if.end143.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

if.end138.i.land.rhs.i.i_crit_edge:               ; preds = %if.end138.i
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.body.i462.i.land.rhs.i.i_crit_edge, %if.end138.i.land.rhs.i.i_crit_edge
  %matchLength.018.i.i = phi i32 [ %inc.i.i, %while.body.i462.i.land.rhs.i.i_crit_edge ], [ 0, %if.end138.i.land.rhs.i.i_crit_edge ]
  %pIn.addr.017.i.i = phi ptr [ %arrayidx.i.i, %while.body.i462.i.land.rhs.i.i_crit_edge ], [ %70, %if.end138.i.land.rhs.i.i_crit_edge ]
  %pMatch.addr.016.i.i = phi ptr [ %arrayidx2.i.i, %while.body.i462.i.land.rhs.i.i_crit_edge ], [ %add.ptr133.i, %if.end138.i.land.rhs.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %pIn.addr.017.i.i, i32 -1
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i.i, align 1
  %arrayidx2.i.i = getelementptr i8, ptr %pMatch.addr.016.i.i, i32 -1
  %160 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %161)
  %cmp4.i.i = icmp eq i8 %159, %161
  br i1 %cmp4.i.i, label %while.body.i462.i, label %land.rhs.i.i.if.end143.i_crit_edge

land.rhs.i.i.if.end143.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

while.body.i462.i:                                ; preds = %land.rhs.i.i
  %inc.i.i = add i32 %matchLength.018.i.i, 1
  %cmp.i459.i = icmp ugt ptr %arrayidx.i.i, %anchor.1530.i
  %cmp1.i460.i = icmp ugt ptr %arrayidx2.i.i, %add.ptr26.i
  %or.cond.i461.i = and i1 %cmp.i459.i, %cmp1.i460.i
  br i1 %or.cond.i461.i, label %while.body.i462.i.land.rhs.i.i_crit_edge, label %while.body.i462.i.if.end143.i_crit_edge

while.body.i462.i.if.end143.i_crit_edge:          ; preds = %while.body.i462.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end143.i

while.body.i462.i.land.rhs.i.i_crit_edge:         ; preds = %while.body.i462.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

if.end143.i:                                      ; preds = %while.body.i462.i.if.end143.i_crit_edge, %land.rhs.i.i.if.end143.i_crit_edge, %if.end138.i.if.end143.i_crit_edge, %ZSTD_ldm_countBackwardsMatch.exit31.i.i, %ZSTD_ldm_countBackwardsMatch.exit.i.i.if.end143.i_crit_edge
  %curForwardMatchLength.0.i = phi i32 [ %retval.3.i.i, %if.end138.i.if.end143.i_crit_edge ], [ %retval.0.i.i, %ZSTD_ldm_countBackwardsMatch.exit31.i.i ], [ %retval.0.i.i, %ZSTD_ldm_countBackwardsMatch.exit.i.i.if.end143.i_crit_edge ], [ %retval.3.i.i, %land.rhs.i.i.if.end143.i_crit_edge ], [ %retval.3.i.i, %while.body.i462.i.if.end143.i_crit_edge ]
  %curBackwardMatchLength.2.i = phi i32 [ 0, %if.end138.i.if.end143.i_crit_edge ], [ %add.i452.i, %ZSTD_ldm_countBackwardsMatch.exit31.i.i ], [ %matchLength.0.lcssa.i.i.i, %ZSTD_ldm_countBackwardsMatch.exit.i.i.if.end143.i_crit_edge ], [ %inc.i.i, %while.body.i462.i.if.end143.i_crit_edge ], [ %matchLength.018.i.i, %land.rhs.i.i.if.end143.i_crit_edge ]
  %add144.i = add i32 %curBackwardMatchLength.2.i, %curForwardMatchLength.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add144.i, i32 %bestMatchLength.0520.i)
  %cmp145.i = icmp ugt i32 %add144.i, %bestMatchLength.0520.i
  br i1 %cmp145.i, label %if.then147.i, label %if.end143.i.cleanup149.i_crit_edge

if.end143.i.cleanup149.i_crit_edge:               ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

if.then147.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup149.i

cleanup149.i:                                     ; preds = %if.then147.i, %if.end143.i.cleanup149.i_crit_edge, %ZSTD_count.exit.i.cleanup149.i_crit_edge, %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge, %lor.lhs.false.i.cleanup149.i_crit_edge, %for.body88.i.cleanup149.i_crit_edge
  %forwardMatchLength.2.i = phi i32 [ %forwardMatchLength.0516.i, %lor.lhs.false.i.cleanup149.i_crit_edge ], [ %forwardMatchLength.0516.i, %for.body88.i.cleanup149.i_crit_edge ], [ %curForwardMatchLength.0.i, %if.then147.i ], [ %forwardMatchLength.0516.i, %if.end143.i.cleanup149.i_crit_edge ], [ %forwardMatchLength.0516.i, %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge ], [ %forwardMatchLength.0516.i, %ZSTD_count.exit.i.cleanup149.i_crit_edge ]
  %backwardMatchLength.2.i = phi i32 [ %backwardMatchLength.0518.i, %lor.lhs.false.i.cleanup149.i_crit_edge ], [ %backwardMatchLength.0518.i, %for.body88.i.cleanup149.i_crit_edge ], [ %curBackwardMatchLength.2.i, %if.then147.i ], [ %backwardMatchLength.0518.i, %if.end143.i.cleanup149.i_crit_edge ], [ %backwardMatchLength.0518.i, %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge ], [ %backwardMatchLength.0518.i, %ZSTD_count.exit.i.cleanup149.i_crit_edge ]
  %bestMatchLength.2.i = phi i32 [ %bestMatchLength.0520.i, %lor.lhs.false.i.cleanup149.i_crit_edge ], [ %bestMatchLength.0520.i, %for.body88.i.cleanup149.i_crit_edge ], [ %add144.i, %if.then147.i ], [ %bestMatchLength.0520.i, %if.end143.i.cleanup149.i_crit_edge ], [ %bestMatchLength.0520.i, %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge ], [ %bestMatchLength.0520.i, %ZSTD_count.exit.i.cleanup149.i_crit_edge ]
  %bestEntry.2.i = phi ptr [ %bestEntry.0524.i, %lor.lhs.false.i.cleanup149.i_crit_edge ], [ %bestEntry.0524.i, %for.body88.i.cleanup149.i_crit_edge ], [ %cur.0522.i, %if.then147.i ], [ %bestEntry.0524.i, %if.end143.i.cleanup149.i_crit_edge ], [ %bestEntry.0524.i, %ZSTD_count_2segments.exit.i.cleanup149.i_crit_edge ], [ %bestEntry.0524.i, %ZSTD_count.exit.i.cleanup149.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.ldmEntry_t, ptr %cur.0522.i, i32 1
  %cmp86.i = icmp ult ptr %incdec.ptr.i, %add.ptr85.i
  br i1 %cmp86.i, label %cleanup149.i.for.body88.i_crit_edge, label %for.end155.i

cleanup149.i.for.body88.i_crit_edge:              ; preds = %cleanup149.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88.i

for.end155.i:                                     ; preds = %cleanup149.i
  %cmp156.i = icmp eq ptr %bestEntry.2.i, null
  br i1 %cmp156.i, label %for.end155.i.if.then158.i_crit_edge, label %if.end159.i

for.end155.i.if.then158.i_crit_edge:              ; preds = %for.end155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then158.i

if.then158.i:                                     ; preds = %for.end155.i.if.then158.i_crit_edge, %for.cond84.preheader.i.if.then158.i_crit_edge
  %162 = ptrtoint ptr %bucketSizeLog.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %.unpack410.i = load i32, ptr %bucketSizeLog.i, align 4
  %163 = ptrtoint ptr %bucketOffsets.i476.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %bucketOffsets.i476.i, align 4
  %add.ptr.i464.i = getelementptr i8, ptr %164, i32 %74
  %165 = ptrtoint ptr %add.ptr.i464.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %add.ptr.i464.i, align 1
  %conv.i465.i = zext i8 %166 to i32
  %167 = ptrtoint ptr %hashTable to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %hashTable, align 4
  %shl.i.i467.i = shl i32 %74, %.unpack410.i
  %add.ptr.i.i468.i = getelementptr %struct.ldmEntry_t, ptr %168, i32 %shl.i.i467.i
  %add.ptr3.i469.i = getelementptr %struct.ldmEntry_t, ptr %add.ptr.i.i468.i, i32 %conv.i465.i
  %169 = ptrtoint ptr %add.ptr3.i469.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %sub.ptr.sub78.i, ptr %add.ptr3.i469.i, align 4
  %entry2.sroa.2.0.add.ptr3.sroa_idx.i470.i = getelementptr inbounds i8, ptr %add.ptr3.i469.i, i32 4
  %170 = ptrtoint ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i470.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %72, ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i470.i, align 4
  %add.i471.i = add nuw nsw i32 %conv.i465.i, 1
  %notmask.i472.i = shl nsw i32 -1, %.unpack410.i
  %sub.i473.i = xor i32 %notmask.i472.i, -1
  %and.i474.i = and i32 %add.i471.i, %sub.i473.i
  %conv4.i475.i = trunc i32 %and.i474.i to i8
  store i8 %conv4.i475.i, ptr %add.ptr.i464.i, align 1
  br label %for.inc200.i

if.end159.i:                                      ; preds = %for.end155.i
  %171 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %size, align 4
  %173 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %capacity, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %172, i32 %174)
  %cmp170.i = icmp eq i32 %172, %174
  br i1 %cmp170.i, label %ZSTD_ldm_generateSequences_internal.exit.thread, label %if.end173.i

ZSTD_ldm_generateSequences_internal.exit.thread:  ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numSplits.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hashState.i) #9
  br label %cleanup35

if.end173.i:                                      ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %sequences to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sequences, align 4
  %add.ptr168.i = getelementptr %struct.rawSeq, ptr %176, i32 %172
  %177 = ptrtoint ptr %bestEntry.2.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %bestEntry.2.i, align 4
  %sub166.i = sub i32 %sub.ptr.sub78.i, %178
  %add160.i = add i32 %backwardMatchLength.2.i, %forwardMatchLength.2.i
  %idx.neg174.i = sub i32 0, %backwardMatchLength.2.i
  %add.ptr175.i = getelementptr i8, ptr %70, i32 %idx.neg174.i
  %sub.ptr.lhs.cast176.i = ptrtoint ptr %add.ptr175.i to i32
  %sub.ptr.rhs.cast177.i = ptrtoint ptr %anchor.1530.i to i32
  %sub.ptr.sub178.i = sub i32 %sub.ptr.lhs.cast176.i, %sub.ptr.rhs.cast177.i
  %litLength.i = getelementptr %struct.rawSeq, ptr %176, i32 %172, i32 1
  %179 = ptrtoint ptr %litLength.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %sub.ptr.sub178.i, ptr %litLength.i, align 4
  %matchLength.i = getelementptr %struct.rawSeq, ptr %176, i32 %172, i32 2
  %180 = ptrtoint ptr %matchLength.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %add160.i, ptr %matchLength.i, align 4
  %181 = ptrtoint ptr %add.ptr168.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %sub166.i, ptr %add.ptr168.i, align 4
  %182 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %size, align 4
  %inc181.i = add i32 %183, 1
  store i32 %inc181.i, ptr %size, align 4
  %184 = ptrtoint ptr %bucketSizeLog.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %.unpack399.i = load i32, ptr %bucketSizeLog.i, align 4
  %185 = ptrtoint ptr %bucketOffsets.i476.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %bucketOffsets.i476.i, align 4
  %add.ptr.i477.i = getelementptr i8, ptr %186, i32 %74
  %187 = ptrtoint ptr %add.ptr.i477.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %add.ptr.i477.i, align 1
  %conv.i478.i = zext i8 %188 to i32
  %189 = ptrtoint ptr %hashTable to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hashTable, align 4
  %shl.i.i480.i = shl i32 %74, %.unpack399.i
  %add.ptr.i.i481.i = getelementptr %struct.ldmEntry_t, ptr %190, i32 %shl.i.i480.i
  %add.ptr3.i482.i = getelementptr %struct.ldmEntry_t, ptr %add.ptr.i.i481.i, i32 %conv.i478.i
  %191 = ptrtoint ptr %add.ptr3.i482.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %sub.ptr.sub78.i, ptr %add.ptr3.i482.i, align 4
  %entry2.sroa.2.0.add.ptr3.sroa_idx.i483.i = getelementptr inbounds i8, ptr %add.ptr3.i482.i, i32 4
  %192 = ptrtoint ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i483.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %72, ptr %entry2.sroa.2.0.add.ptr3.sroa_idx.i483.i, align 4
  %add.i484.i = add nuw nsw i32 %conv.i478.i, 1
  %notmask.i485.i = shl nsw i32 -1, %.unpack399.i
  %sub.i486.i = xor i32 %notmask.i485.i, -1
  %and.i487.i = and i32 %add.i484.i, %sub.i486.i
  %conv4.i488.i = trunc i32 %and.i487.i to i8
  store i8 %conv4.i488.i, ptr %add.ptr.i477.i, align 1
  %add.ptr186.i = getelementptr i8, ptr %70, i32 %forwardMatchLength.2.i
  br label %for.inc200.i

for.inc200.i:                                     ; preds = %if.end173.i, %if.then158.i, %if.then82.i
  %anchor.2.ph.i = phi ptr [ %add.ptr186.i, %if.end173.i ], [ %anchor.1530.i, %if.then158.i ], [ %anchor.1530.i, %if.then82.i ]
  %inc201.i = add nuw i32 %n38.1531.i, 1
  %exitcond543.not.i = icmp eq i32 %inc201.i, %58
  br i1 %exitcond543.not.i, label %for.inc200.i.cleanup204.i_crit_edge, label %for.inc200.i.for.body63.i_crit_edge

for.inc200.i.for.body63.i_crit_edge:              ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63.i

for.inc200.i.cleanup204.i_crit_edge:              ; preds = %for.inc200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup204.i

cleanup204.i:                                     ; preds = %for.inc200.i.cleanup204.i_crit_edge, %while.body37.i.cleanup204.i_crit_edge
  %anchor.1.lcssa.i = phi ptr [ %anchor.0534.i, %while.body37.i.cleanup204.i_crit_edge ], [ %anchor.2.ph.i, %for.inc200.i.cleanup204.i_crit_edge ]
  %add.ptr203.i = getelementptr i8, ptr %ip.0535.i, i32 %call42.i
  %cmp36.i = icmp ult ptr %add.ptr203.i, %add.ptr28.i
  br i1 %cmp36.i, label %cleanup204.i.while.body37.i_crit_edge, label %while.end208.i.loopexit

cleanup204.i.while.body37.i_crit_edge:            ; preds = %cleanup204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body37.i

while.end208.i.loopexit:                          ; preds = %cleanup204.i
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = ptrtoint ptr %anchor.1.lcssa.i to i32
  br label %while.end208.i

while.end208.i:                                   ; preds = %while.end208.i.loopexit, %while.end.i.while.end208.i_crit_edge
  %sub.ptr.rhs.cast210.i.pre-phi = phi i32 [ %.pre, %while.end208.i.loopexit ], [ %sub.ptr.rhs.cast, %while.end.i.while.end208.i_crit_edge ]
  %sub.ptr.lhs.cast209.i = ptrtoint ptr %add.ptr27.i to i32
  %sub.ptr.sub211.i = sub i32 %sub.ptr.lhs.cast209.i, %sub.ptr.rhs.cast210.i.pre-phi
  br label %ZSTD_ldm_generateSequences_internal.exit

ZSTD_ldm_generateSequences_internal.exit:         ; preds = %while.end208.i, %cond.end13.i.ZSTD_ldm_generateSequences_internal.exit_crit_edge
  %retval.5.i = phi i32 [ %sub.ptr.sub211.i, %while.end208.i ], [ %sub.ptr.sub11, %cond.end13.i.ZSTD_ldm_generateSequences_internal.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %numSplits.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hashState.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -119, i32 %retval.5.i)
  %cmp.i100 = icmp ult i32 %retval.5.i, -119
  br i1 %cmp.i100, label %if.end22, label %ZSTD_ldm_generateSequences_internal.exit.cleanup35_crit_edge

ZSTD_ldm_generateSequences_internal.exit.cleanup35_crit_edge: ; preds = %ZSTD_ldm_generateSequences_internal.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

if.end22:                                         ; preds = %ZSTD_ldm_generateSequences_internal.exit
  %193 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %194)
  %cmp24 = icmp ult i32 %4, %194
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %195 = ptrtoint ptr %sequences to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %sequences, align 4
  %litLength = getelementptr %struct.rawSeq, ptr %196, i32 %4, i32 1
  %197 = ptrtoint ptr %litLength to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %litLength, align 4
  %add27 = add i32 %198, %leftoverSize.0120
  store i32 %add27, ptr %litLength, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %add28 = add i32 %sub.ptr.sub11, %leftoverSize.0120
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then26
  %leftoverSize.2.ph = phi i32 [ %add28, %if.else ], [ %retval.5.i, %if.then26 ]
  %inc = add nuw nsw i32 %chunk.0119, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.cleanup35_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.inc.cleanup35_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup35

cleanup35:                                        ; preds = %for.inc.cleanup35_crit_edge, %ZSTD_ldm_generateSequences_internal.exit.cleanup35_crit_edge, %ZSTD_ldm_generateSequences_internal.exit.thread, %land.rhs.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ -70, %ZSTD_ldm_generateSequences_internal.exit.thread ], [ 0, %entry.cleanup35_crit_edge ], [ 0, %for.inc.cleanup35_crit_edge ], [ 0, %land.rhs.cleanup35_crit_edge ], [ %retval.5.i, %ZSTD_ldm_generateSequences_internal.exit.cleanup35_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_skipSequences(ptr nocapture noundef %rawSeqStore, i32 noundef %srcSize, i32 noundef %minMatch) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %srcSize)
  %cmp.not72 = icmp eq i32 %srcSize, 0
  br i1 %cmp.not72, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 1
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 3
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %srcSize.addr.073 = phi i32 [ %srcSize, %land.rhs.lr.ph ], [ %sub29, %cleanup.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 4
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp1 = icmp ult i32 %1, %3
  br i1 %cmp1, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = ptrtoint ptr %rawSeqStore to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rawSeqStore, align 4
  %litLength = getelementptr %struct.rawSeq, ptr %5, i32 %1, i32 1
  %6 = ptrtoint ptr %litLength to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %litLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.073, i32 %7)
  %cmp4.not = icmp ugt i32 %srcSize.addr.073, %7
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %7, %srcSize.addr.073
  %8 = ptrtoint ptr %litLength to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %litLength, align 4
  br label %while.end

if.end:                                           ; preds = %while.body
  %sub7 = sub i32 %srcSize.addr.073, %7
  %9 = ptrtoint ptr %litLength to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %litLength, align 4
  %matchLength = getelementptr %struct.rawSeq, ptr %5, i32 %1, i32 2
  %10 = ptrtoint ptr %matchLength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %matchLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7, i32 %11)
  %cmp9 = icmp ult i32 %sub7, %11
  br i1 %cmp9, label %if.then10, label %cleanup

if.then10:                                        ; preds = %if.end
  %add.ptr.le = getelementptr %struct.rawSeq, ptr %5, i32 %1
  %sub12 = sub i32 %11, %sub7
  %12 = ptrtoint ptr %matchLength to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub12, ptr %matchLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12, i32 %minMatch)
  %cmp14 = icmp ult i32 %sub12, %minMatch
  br i1 %cmp14, label %if.then15, label %if.then10.while.end_crit_edge

if.then10.while.end_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.then15:                                        ; preds = %if.then10
  %13 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pos, align 4
  %add = add i32 %14, 1
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %16)
  %cmp18 = icmp ult i32 %add, %16
  br i1 %cmp18, label %if.then19, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21 = getelementptr %struct.rawSeq, ptr %add.ptr.le, i32 1
  %litLength22 = getelementptr inbounds %struct.rawSeq, ptr %arrayidx21, i32 0, i32 1
  %17 = ptrtoint ptr %litLength22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %litLength22, align 4
  %add23 = add i32 %18, %sub12
  store i32 %add23, ptr %litLength22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then15.if.end24_crit_edge
  %19 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pos, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %pos, align 4
  br label %while.end

cleanup:                                          ; preds = %if.end
  %sub29 = sub i32 %sub7, %11
  %21 = ptrtoint ptr %matchLength to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %matchLength, align 4
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 4
  %inc32 = add i32 %23, 1
  store i32 %inc32, ptr %pos, align 4
  %cmp.not = icmp eq i32 %sub29, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end24, %if.then10.while.end_crit_edge, %if.then, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ZSTD_ldm_skipRawSeqStoreBytes(ptr nocapture noundef %rawSeqStore, i32 noundef %nbBytes) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %posInSequence = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 2
  %0 = ptrtoint ptr %posInSequence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %posInSequence, align 4
  %add = add i32 %1, %nbBytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not38 = icmp eq i32 %add, 0
  br i1 %tobool.not38, label %entry.if.then13_crit_edge, label %land.rhs.lr.ph

entry.if.then13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

land.rhs.lr.ph:                                   ; preds = %entry
  %pos = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 1
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %currPos.039 = phi i32 [ %add, %land.rhs.lr.ph ], [ %sub, %cleanup.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp = icmp ult i32 %5, %3
  br i1 %cmp, label %while.body, label %land.rhs.lor.lhs.false_crit_edge

land.rhs.lor.lhs.false_crit_edge:                 ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %rawSeqStore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rawSeqStore, align 4
  %arrayidx = getelementptr %struct.rawSeq, ptr %7, i32 %5
  %currSeq.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %8 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %currSeq.sroa.4.0.copyload = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %9 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %currSeq.sroa.7.0.copyload = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx, align 4
  %add2 = add i32 %currSeq.sroa.7.0.copyload, %currSeq.sroa.4.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039, i32 %add2)
  %cmp3.not = icmp ult i32 %currPos.039, %add2
  br i1 %cmp3.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %currPos.039, ptr %posInSequence, align 4
  br label %lor.lhs.false

cleanup:                                          ; preds = %while.body
  %sub = sub i32 %currPos.039, %add2
  %inc = add nuw i32 %5, 1
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %pos, align 4
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup.if.then13_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

cleanup.if.then13_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

lor.lhs.false:                                    ; preds = %cleanup.thread, %land.rhs.lor.lhs.false_crit_edge
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp12 = icmp eq i32 %13, %15
  br i1 %cmp12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %cleanup.if.then13_crit_edge, %entry.if.then13_crit_edge
  %16 = ptrtoint ptr %posInSequence to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %posInSequence, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ZSTD_ldm_blockCompress(ptr noundef %rawSeqStore, ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %minMatch2 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 4
  %0 = ptrtoint ptr %minMatch2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minMatch2, align 4
  %strategy = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 10, i32 6
  %2 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %strategy, align 4
  %.elt14.i = getelementptr inbounds [5 x i32], ptr %ms, i32 0, i32 3
  %4 = ptrtoint ptr %.elt14.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack15.i = load i32, ptr %.elt14.i, align 4
  %.elt16.i = getelementptr inbounds [5 x i32], ptr %ms, i32 0, i32 4
  %5 = ptrtoint ptr %.elt16.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack17.i = load i32, ptr %.elt16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack17.i, i32 %.unpack15.i)
  %cmp.i.not.i = icmp ult i32 %.unpack17.i, %.unpack15.i
  br i1 %cmp.i.not.i, label %entry.ZSTD_matchState_dictMode.exit_crit_edge, label %cond.false.i

entry.ZSTD_matchState_dictMode.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_matchState_dictMode.exit

cond.false.i:                                     ; preds = %entry
  %dictMatchState.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 9
  %6 = ptrtoint ptr %dictMatchState.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dictMatchState.i, align 4
  %cmp.not.i83 = icmp eq ptr %7, null
  br i1 %cmp.not.i83, label %cond.false.i.ZSTD_matchState_dictMode.exit_crit_edge, label %cond.true1.i

cond.false.i.ZSTD_matchState_dictMode.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_matchState_dictMode.exit

cond.true1.i:                                     ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %dedicatedDictSearch.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %dedicatedDictSearch.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dedicatedDictSearch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  %cond.i = select i1 %tobool3.not.i, i32 2, i32 3
  br label %ZSTD_matchState_dictMode.exit

ZSTD_matchState_dictMode.exit:                    ; preds = %cond.true1.i, %cond.false.i.ZSTD_matchState_dictMode.exit_crit_edge, %entry.ZSTD_matchState_dictMode.exit_crit_edge
  %cond7.i = phi i32 [ 1, %entry.ZSTD_matchState_dictMode.exit_crit_edge ], [ %cond.i, %cond.true1.i ], [ 0, %cond.false.i.ZSTD_matchState_dictMode.exit_crit_edge ]
  %call3 = tail call ptr @ZSTD_selectBlockCompressor(i32 noundef %3, i32 noundef %cond7.i) #9
  %add.ptr = getelementptr i8, ptr %src, i32 %srcSize
  %10 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %strategy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %cmp = icmp ugt i32 %11, 6
  br i1 %cmp, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %ZSTD_matchState_dictMode.exit
  %pos = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 1
  %size = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 3
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pos, align 4
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6152 = icmp ult i32 %13, %15
  %cmp7153 = icmp ugt ptr %add.ptr, %src
  %or.cond154 = and i1 %cmp6152, %cmp7153
  br i1 %or.cond154, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %base.i = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %nextToUpdate.i = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 -32
  %lit7.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 3
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %longLengthID.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 9
  %sequences.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 1
  %longLengthPos.i = getelementptr inbounds %struct.seqStore_t, ptr %seqStore, i32 0, i32 10
  %uglygep = getelementptr i8, ptr %rep, i32 4
  br label %while.body

if.then:                                          ; preds = %ZSTD_matchState_dictMode.exit
  %ldmSeqStore = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 11
  %16 = ptrtoint ptr %ldmSeqStore to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %rawSeqStore, ptr %ldmSeqStore, align 4
  %call5 = tail call i32 %call3(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %src, i32 noundef %srcSize) #9
  %posInSequence.i = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 2
  %17 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %posInSequence.i, align 4
  %add.i84 = add i32 %18, %srcSize
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i84)
  %tobool.not38.i = icmp eq i32 %add.i84, 0
  br i1 %tobool.not38.i, label %if.then.if.then13.i_crit_edge, label %land.rhs.lr.ph.i

if.then.if.then13.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

land.rhs.lr.ph.i:                                 ; preds = %if.then
  %pos.i = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 1
  %size.i = getelementptr inbounds %struct.rawSeqStore_t, ptr %rawSeqStore, i32 0, i32 3
  %19 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size.i, align 4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %cleanup.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %currPos.039.i = phi i32 [ %add.i84, %land.rhs.lr.ph.i ], [ %sub.i85, %cleanup.i.land.rhs.i_crit_edge ]
  %21 = ptrtoint ptr %pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp.i = icmp ult i32 %22, %20
  br i1 %cmp.i, label %while.body.i, label %land.rhs.i.lor.lhs.false.i_crit_edge

land.rhs.i.lor.lhs.false.i_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

while.body.i:                                     ; preds = %land.rhs.i
  %23 = ptrtoint ptr %rawSeqStore to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rawSeqStore, align 4
  %arrayidx.i = getelementptr %struct.rawSeq, ptr %24, i32 %22
  %currSeq.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %25 = ptrtoint ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %currSeq.sroa.4.0.copyload.i = load i32, ptr %currSeq.sroa.4.0.arrayidx.sroa_idx.i, align 4
  %currSeq.sroa.7.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %26 = ptrtoint ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %currSeq.sroa.7.0.copyload.i = load i32, ptr %currSeq.sroa.7.0.arrayidx.sroa_idx.i, align 4
  %add2.i = add i32 %currSeq.sroa.7.0.copyload.i, %currSeq.sroa.4.0.copyload.i
  call void @__sanitizer_cov_trace_cmp4(i32 %currPos.039.i, i32 %add2.i)
  %cmp3.not.i = icmp ult i32 %currPos.039.i, %add2.i
  br i1 %cmp3.not.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %currPos.039.i, ptr %posInSequence.i, align 4
  br label %lor.lhs.false.i

cleanup.i:                                        ; preds = %while.body.i
  %sub.i85 = sub i32 %currPos.039.i, %add2.i
  %inc.i = add nuw i32 %22, 1
  %28 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc.i, ptr %pos.i, align 4
  %tobool.not.i = icmp eq i32 %sub.i85, 0
  br i1 %tobool.not.i, label %cleanup.i.if.then13.i_crit_edge, label %cleanup.i.land.rhs.i_crit_edge

cleanup.i.land.rhs.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i

cleanup.i.if.then13.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %cleanup.thread.i, %land.rhs.i.lor.lhs.false.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp12.i = icmp eq i32 %22, %20
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %lor.lhs.false.i.cleanup30_crit_edge

lor.lhs.false.i.cleanup30_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup30

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %cleanup.i.if.then13.i_crit_edge, %if.then.if.then13.i_crit_edge
  %29 = ptrtoint ptr %posInSequence.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %posInSequence.i, align 4
  br label %cleanup30

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %30 = phi i32 [ %13, %while.body.lr.ph ], [ %113, %cleanup.while.body_crit_edge ]
  %ip.0155 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr23, %cleanup.while.body_crit_edge ]
  %sub.ptr.rhs.cast = ptrtoint ptr %ip.0155 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = ptrtoint ptr %rawSeqStore to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rawSeqStore, align 4, !noalias !13
  %arrayidx.i87 = getelementptr %struct.rawSeq, ptr %32, i32 %30
  %33 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %sequence.sroa.0.0.copyload = load i32, ptr %arrayidx.i87, align 4
  %sequence.sroa.8.0.arrayidx.i87.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i87, i32 4
  %34 = ptrtoint ptr %sequence.sroa.8.0.arrayidx.i87.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %sequence.sroa.8.0.copyload = load i32, ptr %sequence.sroa.8.0.arrayidx.i87.sroa_idx, align 4
  %sequence.sroa.12.0.arrayidx.i87.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i87, i32 8
  %35 = ptrtoint ptr %sequence.sroa.12.0.arrayidx.i87.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %sequence.sroa.12.0.copyload = load i32, ptr %sequence.sroa.12.0.arrayidx.i87.sroa_idx, align 4
  %add.i88 = add i32 %sequence.sroa.12.0.copyload, %sequence.sroa.8.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i88, i32 %sub.ptr.sub)
  %cmp.not.i89 = icmp ugt i32 %add.i88, %sub.ptr.sub
  br i1 %cmp.not.i89, label %if.end.i, label %if.then.i91

if.then.i91:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i90 = add nuw i32 %30, 1
  %36 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %inc.i90, ptr %pos, align 4, !noalias !13
  br label %maybeSplitSequence.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %sequence.sroa.8.0.copyload)
  %cmp3.not.i92 = icmp ugt i32 %sub.ptr.sub, %sequence.sroa.8.0.copyload
  br i1 %cmp3.not.i92, label %if.then9.i, label %if.end18.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i93 = sub i32 %sub.ptr.sub, %sequence.sroa.8.0.copyload
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i93, i32 %1)
  %cmp13.i = icmp ult i32 %sub.i93, %1
  %spec.select = select i1 %cmp13.i, i32 0, i32 %sequence.sroa.0.0.copyload
  br label %land.rhs.lr.ph.i.i

if.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp.not72.i.i = icmp eq i32 %sub.ptr.sub, 0
  br i1 %cmp.not72.i.i, label %if.end18.i.while.end_crit_edge, label %if.end18.i.land.rhs.lr.ph.i.i_crit_edge

if.end18.i.land.rhs.lr.ph.i.i_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.lr.ph.i.i

if.end18.i.while.end_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph.i.i:                               ; preds = %if.end18.i.land.rhs.lr.ph.i.i_crit_edge, %if.then9.i
  %sequence.sroa.12.0 = phi i32 [ %sequence.sroa.12.0.copyload, %if.end18.i.land.rhs.lr.ph.i.i_crit_edge ], [ %sub.i93, %if.then9.i ]
  %sequence.sroa.0.0 = phi i32 [ 0, %if.end18.i.land.rhs.lr.ph.i.i_crit_edge ], [ %spec.select, %if.then9.i ]
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %cleanup.i.i.land.rhs.i.i_crit_edge, %land.rhs.lr.ph.i.i
  %srcSize.addr.073.i.i = phi i32 [ %sub.ptr.sub, %land.rhs.lr.ph.i.i ], [ %sub29.i.i, %cleanup.i.i.land.rhs.i.i_crit_edge ]
  %37 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pos, align 4, !noalias !13
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4, !noalias !13
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp1.i.i = icmp ult i32 %38, %40
  br i1 %cmp1.i.i, label %while.body.i.i94, label %land.rhs.i.i.maybeSplitSequence.exit_crit_edge

land.rhs.i.i.maybeSplitSequence.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %maybeSplitSequence.exit

while.body.i.i94:                                 ; preds = %land.rhs.i.i
  %41 = ptrtoint ptr %rawSeqStore to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rawSeqStore, align 4, !noalias !13
  %litLength.i.i = getelementptr %struct.rawSeq, ptr %42, i32 %38, i32 1
  %43 = ptrtoint ptr %litLength.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %litLength.i.i, align 4, !noalias !13
  call void @__sanitizer_cov_trace_cmp4(i32 %srcSize.addr.073.i.i, i32 %44)
  %cmp4.not.i.i = icmp ugt i32 %srcSize.addr.073.i.i, %44
  br i1 %cmp4.not.i.i, label %if.end.i.i96, label %if.then.i.i95

if.then.i.i95:                                    ; preds = %while.body.i.i94
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %44, %srcSize.addr.073.i.i
  %45 = ptrtoint ptr %litLength.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.i.i, ptr %litLength.i.i, align 4, !noalias !13
  br label %maybeSplitSequence.exit

if.end.i.i96:                                     ; preds = %while.body.i.i94
  %sub7.i.i = sub i32 %srcSize.addr.073.i.i, %44
  %46 = ptrtoint ptr %litLength.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %litLength.i.i, align 4, !noalias !13
  %matchLength.i.i = getelementptr %struct.rawSeq, ptr %42, i32 %38, i32 2
  %47 = ptrtoint ptr %matchLength.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %matchLength.i.i, align 4, !noalias !13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i.i, i32 %48)
  %cmp9.i.i = icmp ult i32 %sub7.i.i, %48
  br i1 %cmp9.i.i, label %if.then10.i.i, label %cleanup.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i96
  %add.ptr.le.i.i = getelementptr %struct.rawSeq, ptr %42, i32 1
  %sub12.i.i = sub i32 %48, %sub7.i.i
  %49 = ptrtoint ptr %matchLength.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub12.i.i, ptr %matchLength.i.i, align 4, !noalias !13
  call void @__sanitizer_cov_trace_cmp4(i32 %sub12.i.i, i32 %1)
  %cmp14.i.i = icmp ult i32 %sub12.i.i, %1
  br i1 %cmp14.i.i, label %if.then15.i.i, label %if.then10.i.i.maybeSplitSequence.exit_crit_edge

if.then10.i.i.maybeSplitSequence.exit_crit_edge:  ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %maybeSplitSequence.exit

if.then15.i.i:                                    ; preds = %if.then10.i.i
  %50 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pos, align 4, !noalias !13
  %add.i.i = add i32 %51, 1
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4, !noalias !13
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %53)
  %cmp18.i.i = icmp ult i32 %add.i.i, %53
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.then15.i.i.if.end24.i.i_crit_edge

if.then15.i.i.if.end24.i.i_crit_edge:             ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.then19.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx21.i.i = getelementptr %struct.rawSeq, ptr %add.ptr.le.i.i, i32 %38
  %litLength22.i.i = getelementptr inbounds %struct.rawSeq, ptr %arrayidx21.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %litLength22.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %litLength22.i.i, align 4, !noalias !13
  %add23.i.i = add i32 %55, %sub12.i.i
  store i32 %add23.i.i, ptr %litLength22.i.i, align 4, !noalias !13
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then19.i.i, %if.then15.i.i.if.end24.i.i_crit_edge
  %56 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pos, align 4, !noalias !13
  %inc.i.i = add i32 %57, 1
  store i32 %inc.i.i, ptr %pos, align 4, !noalias !13
  br label %maybeSplitSequence.exit

cleanup.i.i:                                      ; preds = %if.end.i.i96
  %sub29.i.i = sub i32 %sub7.i.i, %48
  %58 = ptrtoint ptr %matchLength.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %matchLength.i.i, align 4, !noalias !13
  %59 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %pos, align 4, !noalias !13
  %inc32.i.i = add i32 %60, 1
  store i32 %inc32.i.i, ptr %pos, align 4, !noalias !13
  %cmp.not.i.i97 = icmp eq i32 %sub29.i.i, 0
  br i1 %cmp.not.i.i97, label %cleanup.i.i.maybeSplitSequence.exit_crit_edge, label %cleanup.i.i.land.rhs.i.i_crit_edge

cleanup.i.i.land.rhs.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs.i.i

cleanup.i.i.maybeSplitSequence.exit_crit_edge:    ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %maybeSplitSequence.exit

maybeSplitSequence.exit:                          ; preds = %cleanup.i.i.maybeSplitSequence.exit_crit_edge, %if.end24.i.i, %if.then10.i.i.maybeSplitSequence.exit_crit_edge, %if.then.i.i95, %land.rhs.i.i.maybeSplitSequence.exit_crit_edge, %if.then.i91
  %sequence.sroa.12.1 = phi i32 [ %sequence.sroa.12.0, %if.end24.i.i ], [ %sequence.sroa.12.0, %if.then10.i.i.maybeSplitSequence.exit_crit_edge ], [ %sequence.sroa.12.0, %if.then.i.i95 ], [ %sequence.sroa.12.0.copyload, %if.then.i91 ], [ %sequence.sroa.12.0, %cleanup.i.i.maybeSplitSequence.exit_crit_edge ], [ %sequence.sroa.12.0, %land.rhs.i.i.maybeSplitSequence.exit_crit_edge ]
  %sequence.sroa.0.1 = phi i32 [ %sequence.sroa.0.0, %if.end24.i.i ], [ %sequence.sroa.0.0, %if.then10.i.i.maybeSplitSequence.exit_crit_edge ], [ %sequence.sroa.0.0, %if.then.i.i95 ], [ %sequence.sroa.0.0.copyload, %if.then.i91 ], [ %sequence.sroa.0.0, %cleanup.i.i.maybeSplitSequence.exit_crit_edge ], [ %sequence.sroa.0.0, %land.rhs.i.i.maybeSplitSequence.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sequence.sroa.0.1)
  %cmp8 = icmp eq i32 %sequence.sroa.0.1, 0
  br i1 %cmp8, label %maybeSplitSequence.exit.while.end_crit_edge, label %if.end10

maybeSplitSequence.exit.while.end_crit_edge:      ; preds = %maybeSplitSequence.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end10:                                         ; preds = %maybeSplitSequence.exit
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %sub.ptr.rhs.cast.i99 = ptrtoint ptr %62 to i32
  %sub.ptr.sub.i100 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast.i99
  %63 = ptrtoint ptr %nextToUpdate.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nextToUpdate.i, align 4
  %add.i101 = add i32 %64, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i100, i32 %add.i101)
  %cmp.i102 = icmp ugt i32 %sub.ptr.sub.i100, %add.i101
  br i1 %cmp.i102, label %if.then.i104, label %if.end10.ZSTD_ldm_limitTableUpdate.exit_crit_edge

if.end10.ZSTD_ldm_limitTableUpdate.exit_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_limitTableUpdate.exit

if.then.i104:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i103 = sub i32 -1024, %64
  %sub2.i = add i32 %sub.i103, %sub.ptr.sub.i100
  %65 = tail call i32 @llvm.umin.i32(i32 %sub2.i, i32 512) #9
  %sub7.i = sub i32 %sub.ptr.sub.i100, %65
  %66 = ptrtoint ptr %nextToUpdate.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub7.i, ptr %nextToUpdate.i, align 4
  br label %ZSTD_ldm_limitTableUpdate.exit

ZSTD_ldm_limitTableUpdate.exit:                   ; preds = %if.then.i104, %if.end10.ZSTD_ldm_limitTableUpdate.exit_crit_edge
  %67 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %strategy, align 4
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values)
  switch i32 %68, label %ZSTD_ldm_limitTableUpdate.exit.ZSTD_ldm_fillFastTables.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
  ]

ZSTD_ldm_limitTableUpdate.exit.ZSTD_ldm_fillFastTables.exit_crit_edge: ; preds = %ZSTD_ldm_limitTableUpdate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_fillFastTables.exit

sw.bb.i:                                          ; preds = %ZSTD_ldm_limitTableUpdate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ZSTD_fillHashTable(ptr noundef %ms, ptr noundef %ip.0155, i32 noundef 0) #9
  br label %ZSTD_ldm_fillFastTables.exit

sw.bb1.i:                                         ; preds = %ZSTD_ldm_limitTableUpdate.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef %ms, ptr noundef %ip.0155, i32 noundef 0) #9
  br label %ZSTD_ldm_fillFastTables.exit

ZSTD_ldm_fillFastTables.exit:                     ; preds = %sw.bb1.i, %sw.bb.i, %ZSTD_ldm_limitTableUpdate.exit.ZSTD_ldm_fillFastTables.exit_crit_edge
  %call12 = tail call i32 %call3(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %ip.0155, i32 noundef %sequence.sroa.8.0.copyload) #9
  %70 = ptrtoint ptr %rep to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %71 = load i64, ptr %rep, align 4
  %72 = ptrtoint ptr %uglygep to i32
  call void @__asan_storeN_noabort(i32 %72, i32 8)
  store i64 %71, ptr %uglygep, align 4
  %add.ptr14 = getelementptr i8, ptr %ip.0155, i32 %sequence.sroa.8.0.copyload
  store i32 %sequence.sroa.0.1, ptr %rep, align 4
  %idx.neg = sub i32 0, %call12
  %add.ptr19 = getelementptr i8, ptr %add.ptr14, i32 %idx.neg
  %sub21 = add i32 %sequence.sroa.12.1, -3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr19, i32 %call12
  %cmp.not.i = icmp ugt ptr %add.ptr1.i, %add.ptr.i
  %73 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lit7.i, align 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %ZSTD_ldm_fillFastTables.exit
  %75 = call ptr @memcpy(ptr %74, ptr %add.ptr19, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call12)
  %cmp2.i = icmp ugt i32 %call12, 16
  %76 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %lit7.i, align 4
  br i1 %cmp2.i, label %if.then3.i, label %if.end8.thread.i

if.end8.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr1062.i = getelementptr i8, ptr %77, i32 %call12
  %78 = ptrtoint ptr %lit7.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr1062.i, ptr %lit7.i, align 4
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then.i
  %add.ptr5.i = getelementptr i8, ptr %77, i32 16
  %add.ptr6.i = getelementptr i8, ptr %add.ptr19, i32 16
  %sub.i = add i32 %call12, -16
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %call12
  %79 = call ptr @memcpy(ptr %add.ptr5.i, ptr %add.ptr6.i, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.i)
  %cmp5.i.i = icmp slt i32 %sub.i, 17
  br i1 %cmp5.i.i, label %if.then3.i.if.end8.i_crit_edge, label %if.end.i.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end.i.i:                                       ; preds = %if.then3.i
  %add.ptr7.i.i = getelementptr i8, ptr %77, i32 32
  br label %do.body9.i.i

do.body9.i.i:                                     ; preds = %do.body9.i.i.do.body9.i.i_crit_edge, %if.end.i.i
  %src.pn.i.i = phi ptr [ %add.ptr6.i, %if.end.i.i ], [ %add.ptr11.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %op.1.i.i = phi ptr [ %add.ptr7.i.i, %if.end.i.i ], [ %add.ptr12.i.i, %do.body9.i.i.do.body9.i.i_crit_edge ]
  %ip.1.i.i = getelementptr i8, ptr %src.pn.i.i, i32 16
  %80 = call ptr @memcpy(ptr %op.1.i.i, ptr %ip.1.i.i, i32 16)
  %add.ptr10.i.i = getelementptr i8, ptr %op.1.i.i, i32 16
  %add.ptr11.i.i = getelementptr i8, ptr %src.pn.i.i, i32 32
  %81 = call ptr @memcpy(ptr %add.ptr10.i.i, ptr %add.ptr11.i.i, i32 16)
  %add.ptr12.i.i = getelementptr i8, ptr %op.1.i.i, i32 32
  %cmp15.i.i = icmp ult ptr %add.ptr12.i.i, %add.ptr.i.i
  br i1 %cmp15.i.i, label %do.body9.i.i.do.body9.i.i_crit_edge, label %do.body9.i.i.if.end8.i_crit_edge

do.body9.i.i.if.end8.i_crit_edge:                 ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

do.body9.i.i.do.body9.i.i_crit_edge:              ; preds = %do.body9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i

if.else.i:                                        ; preds = %ZSTD_ldm_fillFastTables.exit
  %iend19.i.i = ptrtoint ptr %add.ptr1.i to i32
  %cmp.not.i.i = icmp ult ptr %add.ptr.i, %add.ptr19
  br i1 %cmp.not.i.i, label %if.else.i.if.end.i60.i_crit_edge, label %if.then.i.i

if.else.i.if.end.i60.i_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60.i

if.then.i.i:                                      ; preds = %if.else.i
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr19 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 %sub.ptr.sub.i.i
  %82 = call ptr @memcpy(ptr %74, ptr %add.ptr19, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %sub.ptr.sub.i.i)
  %cmp5.i.i.i = icmp slt i32 %sub.ptr.sub.i.i, 17
  br i1 %cmp5.i.i.i, label %if.then.i.i.if.end.i60.i_crit_edge, label %if.end.i.i.i

if.then.i.i.if.end.i60.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  %add.ptr7.i.i.i = getelementptr i8, ptr %74, i32 16
  br label %do.body9.i.i.i

do.body9.i.i.i:                                   ; preds = %do.body9.i.i.i.do.body9.i.i.i_crit_edge, %if.end.i.i.i
  %src.pn.i.i.i = phi ptr [ %add.ptr19, %if.end.i.i.i ], [ %add.ptr11.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ]
  %op.1.i.i.i = phi ptr [ %add.ptr7.i.i.i, %if.end.i.i.i ], [ %add.ptr12.i.i.i, %do.body9.i.i.i.do.body9.i.i.i_crit_edge ]
  %ip.1.i.i.i = getelementptr i8, ptr %src.pn.i.i.i, i32 16
  %83 = call ptr @memcpy(ptr %op.1.i.i.i, ptr %ip.1.i.i.i, i32 16)
  %add.ptr10.i.i.i = getelementptr i8, ptr %op.1.i.i.i, i32 16
  %add.ptr11.i.i.i = getelementptr i8, ptr %src.pn.i.i.i, i32 32
  %84 = call ptr @memcpy(ptr %add.ptr10.i.i.i, ptr %add.ptr11.i.i.i, i32 16)
  %add.ptr12.i.i.i = getelementptr i8, ptr %op.1.i.i.i, i32 32
  %cmp15.i.i.i = icmp ult ptr %add.ptr12.i.i.i, %add.ptr.i.i.i
  br i1 %cmp15.i.i.i, label %do.body9.i.i.i.do.body9.i.i.i_crit_edge, label %do.body9.i.i.i.if.end.i60.i_crit_edge

do.body9.i.i.i.if.end.i60.i_crit_edge:            ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60.i

do.body9.i.i.i.do.body9.i.i.i_crit_edge:          ; preds = %do.body9.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body9.i.i.i

if.end.i60.i:                                     ; preds = %do.body9.i.i.i.if.end.i60.i_crit_edge, %if.then.i.i.if.end.i60.i_crit_edge, %if.else.i.if.end.i60.i_crit_edge
  %ip.addr.0.i.i = phi ptr [ %add.ptr.i, %if.then.i.i.if.end.i60.i_crit_edge ], [ %add.ptr19, %if.else.i.if.end.i60.i_crit_edge ], [ %add.ptr.i, %do.body9.i.i.i.if.end.i60.i_crit_edge ]
  %op.addr.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.then.i.i.if.end.i60.i_crit_edge ], [ %74, %if.else.i.if.end.i60.i_crit_edge ], [ %add.ptr.i.i.i, %do.body9.i.i.i.if.end.i60.i_crit_edge ]
  %cmp416.i.i = icmp ult ptr %ip.addr.0.i.i, %add.ptr1.i
  br i1 %cmp416.i.i, label %while.body.preheader.i.i, label %if.end.i60.i.if.end8.i_crit_edge

if.end.i60.i.if.end8.i_crit_edge:                 ; preds = %if.end.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

while.body.preheader.i.i:                         ; preds = %if.end.i60.i
  %ip.addr.020.i.i = ptrtoint ptr %ip.addr.0.i.i to i32
  %85 = sub i32 %iend19.i.i, %ip.addr.020.i.i
  %uglygep.i.i = getelementptr i8, ptr %ip.addr.0.i.i, i32 %85
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %op.addr.118.i.i = phi ptr [ %incdec.ptr5.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %op.addr.0.i.i, %while.body.preheader.i.i ]
  %ip.addr.117.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %ip.addr.0.i.i, %while.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %ip.addr.117.i.i, i32 1
  %86 = ptrtoint ptr %ip.addr.117.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ip.addr.117.i.i, align 1
  %incdec.ptr5.i.i = getelementptr i8, ptr %op.addr.118.i.i, i32 1
  %88 = ptrtoint ptr %op.addr.118.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %op.addr.118.i.i, align 1
  %exitcond.not.i.i = icmp eq ptr %incdec.ptr.i.i, %uglygep.i.i
  br i1 %exitcond.not.i.i, label %while.body.i.i.if.end8.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i.if.end8.i_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %while.body.i.i.if.end8.i_crit_edge, %if.end.i60.i.if.end8.i_crit_edge, %do.body9.i.i.if.end8.i_crit_edge, %if.then3.i.if.end8.i_crit_edge
  %89 = ptrtoint ptr %lit7.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %lit7.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %90, i32 %call12
  store ptr %add.ptr10.i, ptr %lit7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call12)
  %cmp11.i = icmp ugt i32 %call12, 65535
  br i1 %cmp11.i, label %if.then12.i, label %if.end8.i.if.end13.i_crit_edge

if.end8.i.if.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %longLengthID.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %longLengthID.i, align 4
  %92 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sequences.i, align 4
  %94 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %seqStore, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i32 %sub.ptr.sub.i, 3
  %96 = ptrtoint ptr %longLengthPos.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %sub.ptr.div.i, ptr %longLengthPos.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then12.i, %if.end8.i.if.end13.i_crit_edge, %if.end8.thread.i
  %conv.i = trunc i32 %call12 to i16
  %97 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sequences.i, align 4
  %litLength15.i = getelementptr inbounds %struct.seqDef_s, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %litLength15.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i, ptr %litLength15.i, align 4
  %add.i = add i32 %sequence.sroa.0.1, 3
  %100 = load ptr, ptr %sequences.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %add.i, ptr %100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub21)
  %cmp18.i = icmp ugt i32 %sub21, 65535
  br i1 %cmp18.i, label %if.then20.i, label %if.end13.i.cleanup_crit_edge

if.end13.i.cleanup_crit_edge:                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %longLengthID.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %longLengthID.i, align 4
  %103 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sequences.i, align 4
  %105 = ptrtoint ptr %seqStore to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %seqStore, align 4
  %sub.ptr.lhs.cast24.i = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast25.i = ptrtoint ptr %106 to i32
  %sub.ptr.sub26.i = sub i32 %sub.ptr.lhs.cast24.i, %sub.ptr.rhs.cast25.i
  %sub.ptr.div27.i = ashr exact i32 %sub.ptr.sub26.i, 3
  %107 = ptrtoint ptr %longLengthPos.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub.ptr.div27.i, ptr %longLengthPos.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i, %if.end13.i.cleanup_crit_edge
  %conv30.i = trunc i32 %sub21 to i16
  %108 = ptrtoint ptr %sequences.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sequences.i, align 4
  %matchLength.i = getelementptr inbounds %struct.seqDef_s, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %matchLength.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv30.i, ptr %matchLength.i, align 2
  %111 = load ptr, ptr %sequences.i, align 4
  %incdec.ptr.i = getelementptr %struct.seqDef_s, ptr %111, i32 1
  store ptr %incdec.ptr.i, ptr %sequences.i, align 4
  %add.ptr23 = getelementptr i8, ptr %add.ptr14, i32 %sequence.sroa.12.1
  %112 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pos, align 4
  %114 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp6 = icmp ult i32 %113, %115
  %cmp7 = icmp ult ptr %add.ptr23, %add.ptr
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  br i1 %or.cond, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %maybeSplitSequence.exit.while.end_crit_edge, %if.end18.i.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %ip.0.lcssa = phi ptr [ %src, %while.cond.preheader.while.end_crit_edge ], [ %ip.0155, %if.end18.i.while.end_crit_edge ], [ %ip.0155, %maybeSplitSequence.exit.while.end_crit_edge ], [ %add.ptr23, %cleanup.while.end_crit_edge ]
  %base.i106 = getelementptr inbounds %struct.ZSTD_window_t, ptr %ms, i32 0, i32 1
  %116 = ptrtoint ptr %base.i106 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i106, align 4
  %sub.ptr.lhs.cast.i107 = ptrtoint ptr %ip.0.lcssa to i32
  %sub.ptr.rhs.cast.i108 = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i109 = sub i32 %sub.ptr.lhs.cast.i107, %sub.ptr.rhs.cast.i108
  %nextToUpdate.i110 = getelementptr inbounds %struct.ZSTD_matchState_t, ptr %ms, i32 0, i32 2
  %118 = ptrtoint ptr %nextToUpdate.i110 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nextToUpdate.i110, align 4
  %add.i111 = add i32 %119, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i109, i32 %add.i111)
  %cmp.i112 = icmp ugt i32 %sub.ptr.sub.i109, %add.i111
  br i1 %cmp.i112, label %if.then.i116, label %while.end.ZSTD_ldm_limitTableUpdate.exit118_crit_edge

while.end.ZSTD_ldm_limitTableUpdate.exit118_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_limitTableUpdate.exit118

if.then.i116:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i113 = sub i32 -1024, %119
  %sub2.i114 = add i32 %sub.i113, %sub.ptr.sub.i109
  %120 = tail call i32 @llvm.umin.i32(i32 %sub2.i114, i32 512) #9
  %sub7.i115 = sub i32 %sub.ptr.sub.i109, %120
  %121 = ptrtoint ptr %nextToUpdate.i110 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %sub7.i115, ptr %nextToUpdate.i110, align 4
  br label %ZSTD_ldm_limitTableUpdate.exit118

ZSTD_ldm_limitTableUpdate.exit118:                ; preds = %if.then.i116, %while.end.ZSTD_ldm_limitTableUpdate.exit118_crit_edge
  %122 = ptrtoint ptr %strategy to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %strategy, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %123, label %ZSTD_ldm_limitTableUpdate.exit118.ZSTD_ldm_fillFastTables.exit122_crit_edge [
    i32 1, label %sw.bb.i120
    i32 2, label %sw.bb1.i121
  ]

ZSTD_ldm_limitTableUpdate.exit118.ZSTD_ldm_fillFastTables.exit122_crit_edge: ; preds = %ZSTD_ldm_limitTableUpdate.exit118
  call void @__sanitizer_cov_trace_pc() #11
  br label %ZSTD_ldm_fillFastTables.exit122

sw.bb.i120:                                       ; preds = %ZSTD_ldm_limitTableUpdate.exit118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ZSTD_fillHashTable(ptr noundef %ms, ptr noundef %ip.0.lcssa, i32 noundef 0) #9
  br label %ZSTD_ldm_fillFastTables.exit122

sw.bb1.i121:                                      ; preds = %ZSTD_ldm_limitTableUpdate.exit118
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ZSTD_fillDoubleHashTable(ptr noundef %ms, ptr noundef %ip.0.lcssa, i32 noundef 0) #9
  br label %ZSTD_ldm_fillFastTables.exit122

ZSTD_ldm_fillFastTables.exit122:                  ; preds = %sw.bb1.i121, %sw.bb.i120, %ZSTD_ldm_limitTableUpdate.exit118.ZSTD_ldm_fillFastTables.exit122_crit_edge
  %sub.ptr.lhs.cast26 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub28 = sub i32 %sub.ptr.lhs.cast26, %sub.ptr.lhs.cast.i107
  %call29 = tail call i32 %call3(ptr noundef %ms, ptr noundef %seqStore, ptr noundef %rep, ptr noundef %ip.0.lcssa, i32 noundef %sub.ptr.sub28) #9
  br label %cleanup30

cleanup30:                                        ; preds = %ZSTD_ldm_fillFastTables.exit122, %if.then13.i, %lor.lhs.false.i.cleanup30_crit_edge
  %retval.0 = phi i32 [ %call29, %ZSTD_ldm_fillFastTables.exit122 ], [ %call5, %lor.lhs.false.i.cleanup30_crit_edge ], [ %call5, %if.then13.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ZSTD_selectBlockCompressor(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ZSTD_fillDoubleHashTable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @ZSTD_ldm_gearTab, !1, !"ZSTD_ldm_gearTab", i1 false, i1 false}
!1 = !{!"../lib/zstd/compress/zstd_ldm_geartab.h", i32 14, i32 12}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i32 0, i32 33}
!13 = !{!14}
!14 = distinct !{!14, !15, !"maybeSplitSequence: %agg.result"}
!15 = distinct !{!15, !"maybeSplitSequence"}
