; ModuleID = '/llk/IR_all_yes/net/ceph/crush/mapper.c_pt.bc'
source_filename = "../net/ceph/crush/mapper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.crush_map = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.crush_rule = type { i32, %struct.crush_rule_mask, [0 x %struct.crush_rule_step] }
%struct.crush_rule_mask = type { i8, i8, i8, i8 }
%struct.crush_rule_step = type { i32, i32, i32 }
%struct.crush_work_bucket = type { i32, i32, ptr }
%struct.crush_bucket = type { i32, i16, i8, i8, i32, i32, ptr }
%struct.crush_choose_arg = type { ptr, i32, ptr, i32 }
%struct.crush_bucket_list = type { %struct.crush_bucket, ptr, ptr }
%struct.crush_bucket_tree = type { %struct.crush_bucket, i8, ptr }
%struct.crush_bucket_straw = type { %struct.crush_bucket, ptr, ptr }
%struct.crush_bucket_straw2 = type { %struct.crush_bucket, ptr }
%struct.crush_weight_set = type { ptr, i32 }

@__RH_LH_tbl = internal unnamed_addr constant [258 x i64] [i64 281474976710656, i64 0, i64 279293000147008, i64 3160191458785, i64 277144592453569, i64 6295979651252, i64 275028984877588, i64 9407738579354, i64 272945431961849, i64 12495833712510, i64 270893210668903, i64 15560622245205, i64 268871619544508, i64 18602453344927, i64 266879977918252, i64 21621668390897, i64 264917625139441, i64 24618601203987, i64 262983919846453, i64 27593578268211, i64 261078239267855, i64 30546918944171, i64 259199978553698, i64 33478935674789, i64 257348550135457, i64 36389934183667, i64 255523383113220, i64 39280213666390, i64 253723922668761, i64 42150066975068, i64 251949629503245, i64 44999780796398, i64 250199979298361, i64 47829635823533, i64 248474462199752, i64 50639906921988, i64 246772582321672, i64 53430863289863, i64 245093857271864, i64 56202768612577, i64 243437817695703, i64 58955881212377, i64 241804006838685, i64 61690454192795, i64 240191980126427, i64 64406735578290, i64 238601304761351, i64 67104968449236, i64 237031559335290, i64 69785391072464, i64 235482333457281, i64 72448237027520, i64 233953227395870, i64 75093735328813, i64 232443851735252, i64 77722110543809, i64 230953827044641, i64 80333582907420, i64 229482783560281, i64 82928368432746, i64 228030360879519, i64 85506679018295, i64 226596207666441, i64 88068722551825, i64 225179981368525, i64 90614703010926, i64 223781347943876, i64 93144820560474, i64 222399981598544, i64 95659271647066, i64 221035564533522, i64 98158249090542, i64 219687786701000, i64 100641942172723, i64 218356345569479, i64 103110536723436, i64 217040945897374, i64 105564215203953, i64 215741299514755, i64 108003156787912, i64 214457125112881, i64 110427537439836, i64 213188148041207, i64 112837529991308, i64 211934100111553, i64 115233304214913, i64 210694719409147, i64 117615026895997, i64 209469750110256, i64 119982861902346, i64 208258942306151, i64 122336970251840, i64 207062051833127, i64 124677510178157, i64 205878840108366, i64 127004637194593, i64 204709073971387, i64 129318504156072, i64 203552525530870, i64 131619261319385, i64 202408972016652, i64 133907056401747, i64 201278195636671, i64 136182034637704, i64 200159983438689, i64 138444338834459, i64 199054127176597, i64 140694109425662, i64 197960423181121, i64 142931484523723, i64 196878672234776, i64 145156599970689, i64 195808679450892, i64 147369589387733, i64 194750254156562, i64 149570584223303, i64 193703209779377, i64 151759713799978, i64 192667363737776, i64 153937105360059, i64 191642537334915, i64 156102884109952, i64 190628555655895, i64 158257173263369, i64 189625247468232, i64 160400094083390, i64 188632445125466, i64 162531765923423, i64 187649984473771, i64 164652306267094, i64 186677704761472, i64 166761830767097, i64 185715448551361, i64 168860453283045, i64 184763061635713, i64 170948285918347, i64 183820392953898, i64 173025439056139, i64 182887294512508, i64 175092021394304, i64 181963621307899, i64 177148139979605, i64 181049231251076, i64 179193900240953, i64 180143985094820, i64 181229406021852, i64 179247746363005, i64 183254759612022, i64 178360381282000, i64 185270061778247, i64 177481758714109, i64 187275411794460, i64 176611750092961, i64 189270907471081, i64 175750229360800, i64 191256645183649, i64 174897072907593, i64 193232719900749, i64 174052159511904, i64 195199225211266, i64 173215370283481, i64 197156253350982, i64 172386588607484, i64 199103895228536, i64 171565700090305, i64 201042240450762, i64 170752592506939, i64 202971377347427, i64 169947155749831, i64 204891392995386, i64 169149281779174, i64 206802373242162, i64 168358864574598, i64 208704402728983, i64 167575800088205, i64 210597564913272, i64 166799986198908, i64 212481942090627, i64 166031322668037, i64 214357615416281, i64 165269711096165, i64 216224664926076, i64 164515054881115, i64 218083169556957, i64 163767259177109, i64 219933207166998, i64 163026230855041, i64 221774854554969, i64 162291878463802, i64 223608187479471, i64 161564112192664, i64 225433280677634, i64 160842843834661, i64 227250207883397, i64 160127986750951, i64 229059041845385, i64 159419455836124, i64 230859854344384, i64 158717167484423, i64 232652716210438, i64 158021039556860, i64 234437697339558, i64 157330991349188, i64 236214866710081, i64 156646943560713, i64 237984292398659, i64 155968818263914, i64 239746041595908, i64 155296538874845, i64 241500180621718, i64 154630030124309, i64 243246774940235, i64 153969218029761, i64 244985889174515, i64 153314029867932, i64 246717587120878, i64 152664394148153, i64 248441931762946, i64 152020240586346, i64 250158985285390, i64 151381500079681, i64 251868809087384, i64 150748104681858, i64 253571463795784, i64 150119987579017, i64 255267009278020, i64 149497083066241, i64 256955504654734, i64 148879326524645, i64 258637008312144, i64 148266654399029, i64 260311577914160, i64 147659004176082, i64 261979270414251, i64 147056314363119, i64 263640142067065, i64 146458524467334, i64 265294248439818, i64 145865574975563, i64 266941644423446, i64 145277407334533, i64 268582384243539, i64 144693963931583, i64 270216521471047, i64 144115188075856, i64 271844109032778, i64 143541023979937, i64 273465199221681, i64 142971416741921, i64 275079843706930, i64 142406312327921, i64 276688093543805, i64 141845657554977, i64 278289999183377, i64 141289400074369, i64 279885610482007, i64 140737488355328, i64 281470681743360], align 8
@__LL_tbl = internal unnamed_addr constant [256 x i64] [i64 0, i64 12392466944, i64 30278045381, i64 42669756007, i64 55061088509, i64 67452042908, i64 79842619230, i64 92232817496, i64 104622637729, i64 117012079954, i64 129401144192, i64 141789830467, i64 154178138802, i64 166566069220, i64 178953621744, i64 191340796397, i64 203727593202, i64 216114012183, i64 228500053361, i64 240885716762, i64 253271002406, i64 265655910318, i64 278040440520, i64 290424593036, i64 302808367888, i64 315191765100, i64 327574784694, i64 339957426694, i64 352339691122, i64 364721578003, i64 377103087357, i64 389484219210, i64 401864973583, i64 414245350500, i64 426625349984, i64 439004972058, i64 451384216744, i64 463763084066, i64 476141574047, i64 488519686709, i64 500897422077, i64 513274780172, i64 525651761018, i64 538028364638, i64 550404591054, i64 562780440291, i64 575155912370, i64 587531007314, i64 599905725148, i64 612280065893, i64 624654029573, i64 637027616211, i64 649400825829, i64 661773658451, i64 674146114099, i64 686518192797, i64 698745828440, i64 711261219434, i64 723632167419, i64 736002738544, i64 748372932835, i64 760742750313, i64 773112191000, i64 785481254922, i64 797849942099, i64 810218252556, i64 822586186314, i64 834953743398, i64 847320923830, i64 859687727633, i64 872054154829, i64 884420205442, i64 896785879496, i64 909151177011, i64 921516098013, i64 933880642523, i64 946244810564, i64 958608602160, i64 970972017333, i64 983335056106, i64 995697718502, i64 1008060004545, i64 1020421914256, i64 1032783447660, i64 1045144604778, i64 1057505385634, i64 1069865790250, i64 1082225818650, i64 1094585470856, i64 1106944746892, i64 1119303646780, i64 1131662170543, i64 1144020318204, i64 1156378089786, i64 1168735485311, i64 1181092504804, i64 1193449148286, i64 1205805415780, i64 1218161307309, i64 1230516822897, i64 1242871962566, i64 1255226726339, i64 1267581114239, i64 1279935126288, i64 1292288762510, i64 1304642022927, i64 1316994907562, i64 1329347416439, i64 1341699549580, i64 1354051307007, i64 1366402688745, i64 1378753694814, i64 1391104325240, i64 1403454580043, i64 1415804459248, i64 1428153962876, i64 1440503090952, i64 1452851843497, i64 1465200220534, i64 1477548222087, i64 1489895848178, i64 1502243098830, i64 1514589974065, i64 1526936473908, i64 1539282598380, i64 1551628347504, i64 1563973721303, i64 1571803503037, i64 1588663343018, i64 1601007590980, i64 1613351463708, i64 1625694961225, i64 1638038083554, i64 1650380830718, i64 1660818502744, i64 1675065199641, i64 1687406821446, i64 1699748068178, i64 1712088939858, i64 1724429436509, i64 1736769558155, i64 1749109304818, i64 1761448676522, i64 1773787673288, i64 1786126295139, i64 1798464542099, i64 1810802414190, i64 1823139911435, i64 1835477033856, i64 1847813781477, i64 1860150154320, i64 1872486152409, i64 1884821775765, i64 1897157024411, i64 1909491898371, i64 1921826397667, i64 1934160522321, i64 1946494272357, i64 1958827647798, i64 1971160648665, i64 1983493274983, i64 1995825526773, i64 2008157404058, i64 2020488906861, i64 2032820035206, i64 2045150789113, i64 2057481168607, i64 2069811173710, i64 2082140804445, i64 2094470060835, i64 2106798942901, i64 2119127450667, i64 2131455584157, i64 2143783343391, i64 2156110728394, i64 2168437739187, i64 2180764375795, i64 2193090638238, i64 2205416526540, i64 2217742040724, i64 2230067180813, i64 2240906420754, i64 2254716338794, i64 2267040356732, i64 2279293793368, i64 2291687270616, i64 2304010166608, i64 2316332688663, i64 2325363271567, i64 2340976611054, i64 2353298011436, i64 2365619037971, i64 2377939690683, i64 2388595809102, i64 2402579874728, i64 2414899406107, i64 2427218563753, i64 2439537347689, i64 2448873426596, i64 2461350658139, i64 2474805633567, i64 2488808746789, i64 2501125662517, i64 2507948715006, i64 2525758373272, i64 2538074168346, i64 2550389589913, i64 2562256555365, i64 2575019312622, i64 2587333613808, i64 2598789611611, i64 2611961095958, i64 2622451169410, i64 2636587084627, i64 2648899518963, i64 2661211579998, i64 2668029778089, i64 2685834582251, i64 2698145523515, i64 2710456091568, i64 2722766286431, i64 2735076108129, i64 2741892067019, i64 2759694632115, i64 2772003334450, i64 2782027272789, i64 2796619619914, i64 2804948041819, i64 2818403017247, i64 2828609599618, i64 2845847714657, i64 2856197520043, i64 2870459524297, i64 2877271380099, i64 2895069842357, i64 2906742873441, i64 2919466226261, i64 2926489033468, i64 2938792514799, i64 2951095623370, i64 2966048553090, i64 2979904280591, i64 2993496202419, i64 3000304330515, i64 3012605575628, i64 3024906448118, i64 3037206948006, i64 3049869184844, i64 3061806830070, i64 3074106212290, i64 3086405221998, i64 3098703859219, i64 3111002123974, i64 3123300016285, i64 3135597536176, i64 3147894683668], align 8
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5]
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crush_find_rule(ptr nocapture noundef readonly %map, i32 noundef %ruleset, i32 noundef %type, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %max_rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %max_rules to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 1
  %2 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rules, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.042
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mask = getelementptr inbounds %struct.crush_rule, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 4
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ruleset)
  %cmp4 = icmp eq i32 %conv, %ruleset
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true6:                                   ; preds = %land.lhs.true
  %type10 = getelementptr inbounds %struct.crush_rule, ptr %5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %type10, align 1
  %conv11 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11, i32 %type)
  %cmp12 = icmp eq i32 %conv11, %type
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true6.for.inc_crit_edge

land.lhs.true6.for.inc_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true6
  %min_size = getelementptr inbounds %struct.crush_rule, ptr %5, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %min_size to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min_size, align 2
  %conv18 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18, i32 %size)
  %cmp19.not = icmp sgt i32 %conv18, %size
  br i1 %cmp19.not, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true21

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true14
  %max_size = getelementptr inbounds %struct.crush_rule, ptr %5, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %max_size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_size, align 1
  %conv25 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %size)
  %cmp26.not = icmp slt i32 %conv25, %size
  br i1 %cmp26.not, label %land.lhs.true21.for.inc_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true21.for.inc_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true21.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true6.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ], [ %i.042, %land.lhs.true21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @crush_init_workspace(ptr nocapture noundef readonly %map, ptr noundef %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 12
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %v, align 4
  %max_buckets = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 2
  %1 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_buckets, align 4
  %mul = shl i32 %2, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp54 = icmp sgt i32 %2, 0
  br i1 %cmp54, label %entry.for.body_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %b.056 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %v.addr.055 = phi ptr [ %v.addr.1, %for.inc.for.body_crit_edge ], [ %add.ptr1, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %b.056
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v, align 4
  %arrayidx4 = getelementptr ptr, ptr %8, i32 %b.056
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %v.addr.055, ptr %arrayidx4, align 4
  %add.ptr7 = getelementptr i8, ptr %v.addr.055, i32 12
  %10 = load ptr, ptr %v, align 4
  %arrayidx9 = getelementptr ptr, ptr %10, i32 %b.056
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = load ptr, ptr %v, align 4
  %arrayidx11 = getelementptr ptr, ptr %14, i32 %b.056
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  %perm_n = getelementptr inbounds %struct.crush_work_bucket, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %perm_n to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %perm_n, align 4
  %18 = load ptr, ptr %v, align 4
  %arrayidx13 = getelementptr ptr, ptr %18, i32 %b.056
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx13, align 4
  %perm = getelementptr inbounds %struct.crush_work_bucket, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr7, ptr %perm, align 4
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 4
  %arrayidx15 = getelementptr ptr, ptr %23, i32 %b.056
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %size = getelementptr inbounds %struct.crush_bucket, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  %mul16 = shl i32 %27, 2
  %add.ptr17 = getelementptr i8, ptr %add.ptr7, i32 %mul16
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %v.addr.1 = phi ptr [ %add.ptr17, %if.end ], [ %v.addr.055, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %b.056, 1
  %28 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_buckets, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %v.addr.0.lcssa = phi ptr [ %add.ptr1, %entry.do.body_crit_edge ], [ %v.addr.1, %for.inc.do.body_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %v.addr.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %v to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %working_size = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 11
  %30 = ptrtoint ptr %working_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %working_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %31)
  %cmp18.not = icmp eq i32 %sub.ptr.sub, %31
  br i1 %cmp18.not, label %do.end29, label %do.body23, !prof !13

do.body23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/crush/mapper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 879, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

do.end29:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crush_do_rule(ptr nocapture noundef readonly %map, i32 noundef %ruleno, i32 noundef %x, ptr nocapture noundef writeonly %result, i32 noundef %result_max, ptr nocapture noundef readonly %weight, i32 noundef %weight_max, ptr noundef %cwin, ptr noundef %choose_args) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %working_size = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 11
  %0 = ptrtoint ptr %working_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %working_size, align 4
  %add.ptr = getelementptr i8, ptr %cwin, i32 %1
  %add.ptr1 = getelementptr i32, ptr %add.ptr, i32 %result_max
  %add.ptr2 = getelementptr i32, ptr %add.ptr1, i32 %result_max
  %max_rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_rules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_rules, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ruleno)
  %cmp.not = icmp ugt i32 %3, %ruleno
  br i1 %cmp.not, label %if.end, label %entry.cleanup159_crit_edge

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup159

if.end:                                           ; preds = %entry
  %rules = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 1
  %4 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rules, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %ruleno
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp5315.not = icmp eq i32 %9, 0
  br i1 %cmp5315.not, label %if.end.cleanup159_crit_edge, label %for.body.lr.ph

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup159

for.body.lr.ph:                                   ; preds = %if.end
  %choose_total_tries = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 7
  %10 = ptrtoint ptr %choose_total_tries to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %choose_total_tries, align 4
  %add = add i32 %11, 1
  %choose_local_tries = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 5
  %12 = ptrtoint ptr %choose_local_tries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %choose_local_tries, align 4
  %choose_local_fallback_tries = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 6
  %14 = ptrtoint ptr %choose_local_fallback_tries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %choose_local_fallback_tries, align 4
  %chooseleaf_vary_r = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 9
  %16 = ptrtoint ptr %chooseleaf_vary_r to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chooseleaf_vary_r, align 4
  %conv = zext i8 %17 to i32
  %chooseleaf_stable = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 10
  %18 = ptrtoint ptr %chooseleaf_stable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chooseleaf_stable, align 1
  %conv3 = zext i8 %19 to i32
  %max_buckets102 = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 2
  %chooseleaf_descend_once = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 8
  %max_devices = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %stable.0336 = phi i32 [ %conv3, %for.body.lr.ph ], [ %stable.1, %sw.epilog.for.body_crit_edge ]
  %vary_r.0334 = phi i32 [ %conv, %for.body.lr.ph ], [ %vary_r.1, %sw.epilog.for.body_crit_edge ]
  %choose_local_fallback_retries.0332 = phi i32 [ %15, %for.body.lr.ph ], [ %choose_local_fallback_retries.1, %sw.epilog.for.body_crit_edge ]
  %choose_local_retries.0330 = phi i32 [ %13, %for.body.lr.ph ], [ %choose_local_retries.1, %sw.epilog.for.body_crit_edge ]
  %choose_leaf_tries.0328 = phi i32 [ 0, %for.body.lr.ph ], [ %choose_leaf_tries.1, %sw.epilog.for.body_crit_edge ]
  %choose_tries.0326 = phi i32 [ %add, %for.body.lr.ph ], [ %choose_tries.1, %sw.epilog.for.body_crit_edge ]
  %step.0323 = phi i32 [ 0, %for.body.lr.ph ], [ %inc157, %sw.epilog.for.body_crit_edge ]
  %wsize.0322 = phi i32 [ 0, %for.body.lr.ph ], [ %wsize.1, %sw.epilog.for.body_crit_edge ]
  %o.0320 = phi ptr [ %add.ptr1, %for.body.lr.ph ], [ %o.1, %sw.epilog.for.body_crit_edge ]
  %w.0318 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %w.1, %sw.epilog.for.body_crit_edge ]
  %result_len.0316 = phi i32 [ 0, %for.body.lr.ph ], [ %result_len.2, %sw.epilog.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %for.body.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb29
    i32 9, label %sw.bb36
    i32 10, label %sw.bb43
    i32 11, label %sw.bb50
    i32 12, label %sw.bb57
    i32 13, label %sw.bb64
    i32 6, label %for.body.sw.bb71_crit_edge
    i32 2, label %for.body.sw.bb71_crit_edge339
    i32 7, label %for.body.sw.bb72_crit_edge
    i32 3, label %for.body.sw.bb72_crit_edge340
    i32 4, label %for.cond144.preheader
  ]

for.body.sw.bb72_crit_edge340:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb72

for.body.sw.bb72_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb72

for.body.sw.bb71_crit_edge339:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb71

for.body.sw.bb71_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb71

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond144.preheader:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.0322)
  %cmp145306 = icmp sgt i32 %wsize.0322, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %result_len.0316, i32 %result_max)
  %cmp147307 = icmp slt i32 %result_len.0316, %result_max
  %or.cond308 = select i1 %cmp145306, i1 %cmp147307, i1 false
  br i1 %or.cond308, label %for.cond144.preheader.for.body149_crit_edge, label %for.cond144.preheader.sw.epilog_crit_edge

for.cond144.preheader.sw.epilog_crit_edge:        ; preds = %for.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.cond144.preheader.for.body149_crit_edge:      ; preds = %for.cond144.preheader
  br label %for.body149

sw.bb:                                            ; preds = %for.body
  %arg1 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %23 = ptrtoint ptr %arg1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp8 = icmp sgt i32 %24, -1
  br i1 %cmp8, label %land.lhs.true, label %land.lhs.true16

land.lhs.true:                                    ; preds = %sw.bb
  %25 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_devices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp11 = icmp slt i32 %24, %26
  br i1 %cmp11, label %land.lhs.true.if.then25_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true16:                                  ; preds = %sw.bb
  %sub299 = xor i32 %24, -1
  %27 = ptrtoint ptr %max_buckets102 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_buckets102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %sub299)
  %cmp19 = icmp sgt i32 %28, %sub299
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true16.sw.epilog_crit_edge

land.lhs.true16.sw.epilog_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true21:                                  ; preds = %land.lhs.true16
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 4
  %arrayidx24 = getelementptr ptr, ptr %30, i32 %sub299
  %31 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx24, align 4
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %land.lhs.true21.sw.epilog_crit_edge, label %land.lhs.true21.if.then25_crit_edge

land.lhs.true21.if.then25_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true21.sw.epilog_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then25:                                        ; preds = %land.lhs.true21.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge
  %33 = ptrtoint ptr %w.0318 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %24, ptr %w.0318, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg130 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %34 = ptrtoint ptr %arg130 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arg130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp31 = icmp sgt i32 %35, 0
  %spec.select = select i1 %cmp31, i32 %35, i32 %choose_tries.0326
  br label %sw.epilog

sw.bb36:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg137 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %36 = ptrtoint ptr %arg137 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arg137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp38 = icmp sgt i32 %37, 0
  %spec.select293 = select i1 %cmp38, i32 %37, i32 %choose_leaf_tries.0328
  br label %sw.epilog

sw.bb43:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg144 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %38 = ptrtoint ptr %arg144 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arg144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp45305 = icmp slt i32 %39, 0
  %spec.select294 = select i1 %cmp45305, i32 %choose_local_retries.0330, i32 %39
  br label %sw.epilog

sw.bb50:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg151 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %40 = ptrtoint ptr %arg151 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arg151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp52304 = icmp slt i32 %41, 0
  %spec.select295 = select i1 %cmp52304, i32 %choose_local_fallback_retries.0332, i32 %41
  br label %sw.epilog

sw.bb57:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg158 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %42 = ptrtoint ptr %arg158 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arg158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp59303 = icmp slt i32 %43, 0
  %spec.select296 = select i1 %cmp59303, i32 %vary_r.0334, i32 %43
  br label %sw.epilog

sw.bb64:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arg165 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  %44 = ptrtoint ptr %arg165 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arg165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp66302 = icmp slt i32 %45, 0
  %spec.select297 = select i1 %cmp66302, i32 %stable.0336, i32 %45
  br label %sw.epilog

sw.bb71:                                          ; preds = %for.body.sw.bb71_crit_edge, %for.body.sw.bb71_crit_edge339
  br label %sw.bb72

sw.bb72:                                          ; preds = %sw.bb71, %for.body.sw.bb72_crit_edge, %for.body.sw.bb72_crit_edge340
  %tobool107.not = phi i1 [ true, %for.body.sw.bb72_crit_edge ], [ true, %for.body.sw.bb72_crit_edge340 ], [ false, %sw.bb71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.0322)
  %cmp73 = icmp eq i32 %wsize.0322, 0
  br i1 %cmp73, label %sw.bb72.sw.epilog_crit_edge, label %if.end76

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end76:                                         ; preds = %sw.bb72
  %46 = and i32 %21, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %46)
  %47 = icmp eq i32 %46, 6
  %lor.ext = zext i1 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wsize.0322)
  %cmp84311 = icmp sgt i32 %wsize.0322, 0
  br i1 %cmp84311, label %for.body86.lr.ph, label %if.end76.for.end_crit_edge

if.end76.for.end_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body86.lr.ph:                                 ; preds = %if.end76
  %arg187 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %choose_leaf_tries.0328)
  %tobool109.not = icmp eq i32 %choose_leaf_tries.0328, 0
  %arg2 = getelementptr %struct.crush_rule, ptr %7, i32 0, i32 2, i32 %step.0323, i32 2
  %cond136 = select i1 %tobool109.not, i32 1, i32 %choose_leaf_tries.0328
  br label %for.body86

for.body86:                                       ; preds = %cleanup.for.body86_crit_edge, %for.body86.lr.ph
  %i.0313 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc, %cleanup.for.body86_crit_edge ]
  %osize.0312 = phi i32 [ 0, %for.body86.lr.ph ], [ %osize.2, %cleanup.for.body86_crit_edge ]
  %48 = ptrtoint ptr %arg187 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arg187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %cmp88 = icmp slt i32 %49, 1
  br i1 %cmp88, label %if.then90, label %for.body86.if.end96_crit_edge

for.body86.if.end96_crit_edge:                    ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then90:                                        ; preds = %for.body86
  %add91 = add i32 %49, %result_max
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add91)
  %cmp92 = icmp slt i32 %add91, 1
  br i1 %cmp92, label %if.then90.cleanup_crit_edge, label %if.then90.if.end96_crit_edge

if.then90.if.end96_crit_edge:                     ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then90.cleanup_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end96:                                         ; preds = %if.then90.if.end96_crit_edge, %for.body86.if.end96_crit_edge
  %numrep.0 = phi i32 [ %add91, %if.then90.if.end96_crit_edge ], [ %49, %for.body86.if.end96_crit_edge ]
  %arrayidx97 = getelementptr i32, ptr %w.0318, i32 %i.0313
  %50 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx97, align 4
  %sub98 = xor i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp99 = icmp sgt i32 %51, -1
  br i1 %cmp99, label %if.end96.cleanup_crit_edge, label %lor.lhs.false101

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false101:                                 ; preds = %if.end96
  %52 = ptrtoint ptr %max_buckets102 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_buckets102, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub98)
  %cmp103.not = icmp sgt i32 %53, %sub98
  br i1 %cmp103.not, label %if.end106, label %lor.lhs.false101.cleanup_crit_edge

lor.lhs.false101.cleanup_crit_edge:               ; preds = %lor.lhs.false101
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end106:                                        ; preds = %lor.lhs.false101
  br i1 %tobool107.not, label %if.else123, label %if.then108

if.then108:                                       ; preds = %if.end106
  br i1 %tobool109.not, label %if.else111, label %if.then108.if.end116_crit_edge

if.then108.if.end116_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end116

if.else111:                                       ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %chooseleaf_descend_once to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chooseleaf_descend_once, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool112.not = icmp eq i32 %55, 0
  %choose_tries.0. = select i1 %tobool112.not, i32 %choose_tries.0326, i32 1
  br label %if.end116

if.end116:                                        ; preds = %if.else111, %if.then108.if.end116_crit_edge
  %recurse_tries.0 = phi i32 [ %choose_leaf_tries.0328, %if.then108.if.end116_crit_edge ], [ %choose_tries.0., %if.else111 ]
  %56 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map, align 4
  %arrayidx118 = getelementptr ptr, ptr %57, i32 %sub98
  %58 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx118, align 4
  %60 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arg2, align 4
  %add.ptr119 = getelementptr i32, ptr %o.0320, i32 %osize.0312
  %sub120 = sub i32 %result_max, %osize.0312
  %add.ptr121 = getelementptr i32, ptr %add.ptr2, i32 %osize.0312
  %call = tail call fastcc i32 @crush_choose_firstn(ptr noundef %map, ptr noundef %cwin, ptr noundef %59, ptr noundef %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef %numrep.0, i32 noundef %61, ptr noundef %add.ptr119, i32 noundef 0, i32 noundef %sub120, i32 noundef %choose_tries.0326, i32 noundef %recurse_tries.0, i32 noundef %choose_local_retries.0330, i32 noundef %choose_local_fallback_retries.0332, i32 noundef %lor.ext, i32 noundef %vary_r.0334, i32 noundef %stable.0336, ptr noundef %add.ptr121, i32 noundef 0, ptr noundef %choose_args)
  br label %if.end139

if.else123:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  %sub124 = sub i32 %result_max, %osize.0312
  %62 = tail call i32 @llvm.smin.i32(i32 %numrep.0, i32 %sub124)
  %63 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map, align 4
  %arrayidx129 = getelementptr ptr, ptr %64, i32 %sub98
  %65 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx129, align 4
  %67 = ptrtoint ptr %arg2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arg2, align 4
  %add.ptr131 = getelementptr i32, ptr %o.0320, i32 %osize.0312
  %add.ptr137 = getelementptr i32, ptr %add.ptr2, i32 %osize.0312
  tail call fastcc void @crush_choose_indep(ptr noundef %map, ptr noundef %cwin, ptr noundef %66, ptr noundef %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef %62, i32 noundef %numrep.0, i32 noundef %68, ptr noundef %add.ptr131, i32 noundef 0, i32 noundef %choose_tries.0326, i32 noundef %cond136, i32 noundef %lor.ext, ptr noundef %add.ptr137, i32 noundef 0, ptr noundef %choose_args)
  br label %if.end139

if.end139:                                        ; preds = %if.else123, %if.end116
  %call.pn = phi i32 [ %call, %if.end116 ], [ %62, %if.else123 ]
  %osize.1 = add i32 %call.pn, %osize.0312
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %lor.lhs.false101.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.then90.cleanup_crit_edge
  %osize.2 = phi i32 [ %osize.1, %if.end139 ], [ %osize.0312, %if.then90.cleanup_crit_edge ], [ %osize.0312, %lor.lhs.false101.cleanup_crit_edge ], [ %osize.0312, %if.end96.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0313, 1
  %exitcond.not = icmp eq i32 %inc, %wsize.0322
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body86_crit_edge

cleanup.for.body86_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body86

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end76.for.end_crit_edge
  %osize.0.lcssa = phi i32 [ 0, %if.end76.for.end_crit_edge ], [ %osize.2, %cleanup.for.end_crit_edge ]
  br i1 %47, label %if.then141, label %for.end.sw.epilog_crit_edge

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then141:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %osize.0.lcssa, 2
  %69 = call ptr @memcpy(ptr %o.0320, ptr %add.ptr2, i32 %mul)
  br label %sw.epilog

for.body149:                                      ; preds = %for.body149.for.body149_crit_edge, %for.cond144.preheader.for.body149_crit_edge
  %i.1310 = phi i32 [ %inc154, %for.body149.for.body149_crit_edge ], [ 0, %for.cond144.preheader.for.body149_crit_edge ]
  %result_len.1309 = phi i32 [ %inc152, %for.body149.for.body149_crit_edge ], [ %result_len.0316, %for.cond144.preheader.for.body149_crit_edge ]
  %arrayidx150 = getelementptr i32, ptr %w.0318, i32 %i.1310
  %70 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx150, align 4
  %arrayidx151 = getelementptr i32, ptr %result, i32 %result_len.1309
  %72 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx151, align 4
  %inc152 = add nsw i32 %result_len.1309, 1
  %inc154 = add nuw nsw i32 %i.1310, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc154, i32 %wsize.0322)
  %cmp145 = icmp slt i32 %inc154, %wsize.0322
  call void @__sanitizer_cov_trace_cmp4(i32 %inc152, i32 %result_max)
  %cmp147 = icmp slt i32 %inc152, %result_max
  %or.cond = select i1 %cmp145, i1 %cmp147, i1 false
  br i1 %or.cond, label %for.body149.for.body149_crit_edge, label %for.body149.sw.epilog_crit_edge

for.body149.sw.epilog_crit_edge:                  ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body149.for.body149_crit_edge:                ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body149

sw.epilog:                                        ; preds = %for.body149.sw.epilog_crit_edge, %if.then141, %for.end.sw.epilog_crit_edge, %sw.bb72.sw.epilog_crit_edge, %sw.bb64, %sw.bb57, %sw.bb50, %sw.bb43, %sw.bb36, %sw.bb29, %if.then25, %land.lhs.true21.sw.epilog_crit_edge, %land.lhs.true16.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %for.cond144.preheader.sw.epilog_crit_edge, %for.body.sw.epilog_crit_edge
  %result_len.2 = phi i32 [ %result_len.0316, %for.body.sw.epilog_crit_edge ], [ %result_len.0316, %sw.bb72.sw.epilog_crit_edge ], [ %result_len.0316, %if.then25 ], [ %result_len.0316, %land.lhs.true21.sw.epilog_crit_edge ], [ %result_len.0316, %land.lhs.true16.sw.epilog_crit_edge ], [ %result_len.0316, %sw.bb29 ], [ %result_len.0316, %sw.bb36 ], [ %result_len.0316, %sw.bb43 ], [ %result_len.0316, %sw.bb50 ], [ %result_len.0316, %sw.bb57 ], [ %result_len.0316, %sw.bb64 ], [ %result_len.0316, %for.end.sw.epilog_crit_edge ], [ %result_len.0316, %if.then141 ], [ %result_len.0316, %land.lhs.true.sw.epilog_crit_edge ], [ %result_len.0316, %for.cond144.preheader.sw.epilog_crit_edge ], [ %inc152, %for.body149.sw.epilog_crit_edge ]
  %w.1 = phi ptr [ %w.0318, %for.body.sw.epilog_crit_edge ], [ %w.0318, %sw.bb72.sw.epilog_crit_edge ], [ %w.0318, %if.then25 ], [ %w.0318, %land.lhs.true21.sw.epilog_crit_edge ], [ %w.0318, %land.lhs.true16.sw.epilog_crit_edge ], [ %w.0318, %sw.bb29 ], [ %w.0318, %sw.bb36 ], [ %w.0318, %sw.bb43 ], [ %w.0318, %sw.bb50 ], [ %w.0318, %sw.bb57 ], [ %w.0318, %sw.bb64 ], [ %o.0320, %for.end.sw.epilog_crit_edge ], [ %o.0320, %if.then141 ], [ %w.0318, %land.lhs.true.sw.epilog_crit_edge ], [ %w.0318, %for.cond144.preheader.sw.epilog_crit_edge ], [ %w.0318, %for.body149.sw.epilog_crit_edge ]
  %o.1 = phi ptr [ %o.0320, %for.body.sw.epilog_crit_edge ], [ %o.0320, %sw.bb72.sw.epilog_crit_edge ], [ %o.0320, %if.then25 ], [ %o.0320, %land.lhs.true21.sw.epilog_crit_edge ], [ %o.0320, %land.lhs.true16.sw.epilog_crit_edge ], [ %o.0320, %sw.bb29 ], [ %o.0320, %sw.bb36 ], [ %o.0320, %sw.bb43 ], [ %o.0320, %sw.bb50 ], [ %o.0320, %sw.bb57 ], [ %o.0320, %sw.bb64 ], [ %w.0318, %for.end.sw.epilog_crit_edge ], [ %w.0318, %if.then141 ], [ %o.0320, %land.lhs.true.sw.epilog_crit_edge ], [ %o.0320, %for.cond144.preheader.sw.epilog_crit_edge ], [ %o.0320, %for.body149.sw.epilog_crit_edge ]
  %wsize.1 = phi i32 [ %wsize.0322, %for.body.sw.epilog_crit_edge ], [ 0, %sw.bb72.sw.epilog_crit_edge ], [ 1, %if.then25 ], [ %wsize.0322, %land.lhs.true21.sw.epilog_crit_edge ], [ %wsize.0322, %land.lhs.true16.sw.epilog_crit_edge ], [ %wsize.0322, %sw.bb29 ], [ %wsize.0322, %sw.bb36 ], [ %wsize.0322, %sw.bb43 ], [ %wsize.0322, %sw.bb50 ], [ %wsize.0322, %sw.bb57 ], [ %wsize.0322, %sw.bb64 ], [ %osize.0.lcssa, %for.end.sw.epilog_crit_edge ], [ %osize.0.lcssa, %if.then141 ], [ %wsize.0322, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %for.cond144.preheader.sw.epilog_crit_edge ], [ 0, %for.body149.sw.epilog_crit_edge ]
  %choose_tries.1 = phi i32 [ %choose_tries.0326, %for.body.sw.epilog_crit_edge ], [ %choose_tries.0326, %sw.bb72.sw.epilog_crit_edge ], [ %choose_tries.0326, %if.then25 ], [ %choose_tries.0326, %land.lhs.true21.sw.epilog_crit_edge ], [ %choose_tries.0326, %land.lhs.true16.sw.epilog_crit_edge ], [ %spec.select, %sw.bb29 ], [ %choose_tries.0326, %sw.bb36 ], [ %choose_tries.0326, %sw.bb43 ], [ %choose_tries.0326, %sw.bb50 ], [ %choose_tries.0326, %sw.bb57 ], [ %choose_tries.0326, %sw.bb64 ], [ %choose_tries.0326, %for.end.sw.epilog_crit_edge ], [ %choose_tries.0326, %if.then141 ], [ %choose_tries.0326, %land.lhs.true.sw.epilog_crit_edge ], [ %choose_tries.0326, %for.cond144.preheader.sw.epilog_crit_edge ], [ %choose_tries.0326, %for.body149.sw.epilog_crit_edge ]
  %choose_leaf_tries.1 = phi i32 [ %choose_leaf_tries.0328, %for.body.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %sw.bb72.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %if.then25 ], [ %choose_leaf_tries.0328, %land.lhs.true21.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %land.lhs.true16.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %sw.bb29 ], [ %spec.select293, %sw.bb36 ], [ %choose_leaf_tries.0328, %sw.bb43 ], [ %choose_leaf_tries.0328, %sw.bb50 ], [ %choose_leaf_tries.0328, %sw.bb57 ], [ %choose_leaf_tries.0328, %sw.bb64 ], [ %choose_leaf_tries.0328, %for.end.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %if.then141 ], [ %choose_leaf_tries.0328, %land.lhs.true.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %for.cond144.preheader.sw.epilog_crit_edge ], [ %choose_leaf_tries.0328, %for.body149.sw.epilog_crit_edge ]
  %choose_local_retries.1 = phi i32 [ %choose_local_retries.0330, %for.body.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %sw.bb72.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %if.then25 ], [ %choose_local_retries.0330, %land.lhs.true21.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %land.lhs.true16.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %sw.bb29 ], [ %choose_local_retries.0330, %sw.bb36 ], [ %spec.select294, %sw.bb43 ], [ %choose_local_retries.0330, %sw.bb50 ], [ %choose_local_retries.0330, %sw.bb57 ], [ %choose_local_retries.0330, %sw.bb64 ], [ %choose_local_retries.0330, %for.end.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %if.then141 ], [ %choose_local_retries.0330, %land.lhs.true.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %for.cond144.preheader.sw.epilog_crit_edge ], [ %choose_local_retries.0330, %for.body149.sw.epilog_crit_edge ]
  %choose_local_fallback_retries.1 = phi i32 [ %choose_local_fallback_retries.0332, %for.body.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %sw.bb72.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %if.then25 ], [ %choose_local_fallback_retries.0332, %land.lhs.true21.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %land.lhs.true16.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %sw.bb29 ], [ %choose_local_fallback_retries.0332, %sw.bb36 ], [ %choose_local_fallback_retries.0332, %sw.bb43 ], [ %spec.select295, %sw.bb50 ], [ %choose_local_fallback_retries.0332, %sw.bb57 ], [ %choose_local_fallback_retries.0332, %sw.bb64 ], [ %choose_local_fallback_retries.0332, %for.end.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %if.then141 ], [ %choose_local_fallback_retries.0332, %land.lhs.true.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %for.cond144.preheader.sw.epilog_crit_edge ], [ %choose_local_fallback_retries.0332, %for.body149.sw.epilog_crit_edge ]
  %vary_r.1 = phi i32 [ %vary_r.0334, %for.body.sw.epilog_crit_edge ], [ %vary_r.0334, %sw.bb72.sw.epilog_crit_edge ], [ %vary_r.0334, %if.then25 ], [ %vary_r.0334, %land.lhs.true21.sw.epilog_crit_edge ], [ %vary_r.0334, %land.lhs.true16.sw.epilog_crit_edge ], [ %vary_r.0334, %sw.bb29 ], [ %vary_r.0334, %sw.bb36 ], [ %vary_r.0334, %sw.bb43 ], [ %vary_r.0334, %sw.bb50 ], [ %spec.select296, %sw.bb57 ], [ %vary_r.0334, %sw.bb64 ], [ %vary_r.0334, %for.end.sw.epilog_crit_edge ], [ %vary_r.0334, %if.then141 ], [ %vary_r.0334, %land.lhs.true.sw.epilog_crit_edge ], [ %vary_r.0334, %for.cond144.preheader.sw.epilog_crit_edge ], [ %vary_r.0334, %for.body149.sw.epilog_crit_edge ]
  %stable.1 = phi i32 [ %stable.0336, %for.body.sw.epilog_crit_edge ], [ %stable.0336, %sw.bb72.sw.epilog_crit_edge ], [ %stable.0336, %if.then25 ], [ %stable.0336, %land.lhs.true21.sw.epilog_crit_edge ], [ %stable.0336, %land.lhs.true16.sw.epilog_crit_edge ], [ %stable.0336, %sw.bb29 ], [ %stable.0336, %sw.bb36 ], [ %stable.0336, %sw.bb43 ], [ %stable.0336, %sw.bb50 ], [ %stable.0336, %sw.bb57 ], [ %spec.select297, %sw.bb64 ], [ %stable.0336, %for.end.sw.epilog_crit_edge ], [ %stable.0336, %if.then141 ], [ %stable.0336, %land.lhs.true.sw.epilog_crit_edge ], [ %stable.0336, %for.cond144.preheader.sw.epilog_crit_edge ], [ %stable.0336, %for.body149.sw.epilog_crit_edge ]
  %inc157 = add nuw i32 %step.0323, 1
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %7, align 4
  %cmp5 = icmp ult i32 %inc157, %74
  br i1 %cmp5, label %sw.epilog.for.body_crit_edge, label %sw.epilog.cleanup159_crit_edge

sw.epilog.cleanup159_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup159

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup159:                                       ; preds = %sw.epilog.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup159_crit_edge ], [ 0, %if.end.cleanup159_crit_edge ], [ %result_len.2, %sw.epilog.cleanup159_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crush_choose_firstn(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %work, ptr noundef %bucket, ptr nocapture noundef readonly %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef %numrep, i32 noundef %type, ptr nocapture noundef %out, i32 noundef %outpos, i32 noundef %out_size, i32 noundef %tries, i32 noundef %recurse_tries, i32 noundef %local_retries, i32 noundef %local_fallback_retries, i32 noundef %recurse_to_leaf, i32 noundef %vary_r, i32 noundef %stable, ptr nocapture noundef %out2, i32 noundef %parent_r, ptr noundef %choose_args) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stable)
  %tobool.not = icmp eq i32 %stable, 0
  %spec.select = select i1 %tobool.not, i32 %outpos, i32 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %numrep)
  %cmp255 = icmp slt i32 %spec.select, %numrep
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out_size)
  %cmp1256 = icmp sgt i32 %out_size, 0
  %or.cond257 = and i1 %cmp255, %cmp1256
  br i1 %or.cond257, label %do.body.preheader.lr.ph, label %entry.for.end141_crit_edge

entry.for.end141_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end141

do.body.preheader.lr.ph:                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_fallback_retries)
  %cmp5.not = icmp ne i32 %local_fallback_retries, 0
  %tobool16.not = icmp eq ptr %choose_args, null
  %max_devices = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 4
  %max_buckets = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recurse_to_leaf)
  %tobool61.not = icmp eq i32 %recurse_to_leaf, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vary_r)
  %tobool66.not = icmp eq i32 %vary_r, 0
  %sub68 = add i32 %vary_r, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %local_fallback_retries)
  %cmp113.not = icmp eq i32 %local_fallback_retries, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp94 = icmp eq i32 %type, 0
  br label %do.body.preheader

do.body.preheader:                                ; preds = %for.inc139.do.body.preheader_crit_edge, %do.body.preheader.lr.ph
  %count.0261 = phi i32 [ %out_size, %do.body.preheader.lr.ph ], [ %count.1, %for.inc139.do.body.preheader_crit_edge ]
  %item.0260 = phi i32 [ 0, %do.body.preheader.lr.ph ], [ %item.6289293, %for.inc139.do.body.preheader_crit_edge ]
  %rep.0259 = phi i32 [ %spec.select, %do.body.preheader.lr.ph ], [ %inc140, %for.inc139.do.body.preheader_crit_edge ]
  %outpos.addr.0258 = phi i32 [ %outpos, %do.body.preheader.lr.ph ], [ %outpos.addr.1, %for.inc139.do.body.preheader_crit_edge ]
  %add = add i32 %rep.0259, %parent_r
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outpos.addr.0258)
  %cmp51253 = icmp sgt i32 %outpos.addr.0258, 0
  %arrayidx87 = getelementptr i32, ptr %out2, i32 %outpos.addr.0258
  %add78 = add i32 %outpos.addr.0258, 1
  %cond80 = select i1 %tobool.not, i32 %add78, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond131.do.body_crit_edge, %do.body.preheader
  %ftotal.0 = phi i32 [ %inc105280, %do.cond131.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %skip_rep.0 = phi i32 [ %spec.select250, %do.cond131.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %item.1 = phi i32 [ %item.4239278, %do.cond131.do.body_crit_edge ], [ %item.0260, %do.body.preheader ]
  br label %do.body2.outer

do.body2.outer:                                   ; preds = %do.body2.outer.backedge, %do.body
  %ftotal.1.ph = phi i32 [ %ftotal.0, %do.body ], [ %ftotal.1.ph.be, %do.body2.outer.backedge ]
  %flocal.0.ph = phi i32 [ 0, %do.body ], [ %flocal.0.ph.be, %do.body2.outer.backedge ]
  %in.0.ph = phi ptr [ %bucket, %do.body ], [ %in.0, %do.body2.outer.backedge ]
  %item.2.ph = phi i32 [ %item.1, %do.body ], [ %item.2.ph.be, %do.body2.outer.backedge ]
  %add3 = add i32 %add, %ftotal.1.ph
  call void @__sanitizer_cov_trace_cmp4(i32 %flocal.0.ph, i32 %local_fallback_retries)
  %cmp9 = icmp ugt i32 %flocal.0.ph, %local_fallback_retries
  br label %do.body2

do.body2:                                         ; preds = %if.end45, %do.body2.outer
  %in.0 = phi ptr [ %21, %if.end45 ], [ %in.0.ph, %do.body2.outer ]
  %item.2 = phi i32 [ %item.3, %if.end45 ], [ %item.2.ph, %do.body2.outer ]
  %size = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %if.then104.thread.loopexit, label %if.end

if.end:                                           ; preds = %do.body2
  %shr = lshr i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %flocal.0.ph, i32 %shr)
  %cmp7.not = icmp uge i32 %flocal.0.ph, %shr
  %or.cond216 = select i1 %cmp5.not, i1 %cmp7.not, i1 false
  %or.cond217 = select i1 %or.cond216, i1 %cmp9, i1 false
  %2 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work, align 4
  %4 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %in.0, align 4
  %sub = xor i32 %5, -1
  %arrayidx = getelementptr ptr, ptr %3, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br i1 %or.cond217, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @bucket_perm_choose(ptr noundef %in.0, ptr noundef %7, i32 noundef %x, i32 noundef %add3)
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx20 = getelementptr %struct.crush_choose_arg, ptr %choose_args, i32 %sub
  %spec.select218 = select i1 %tobool16.not, ptr null, ptr %arrayidx20
  %call24 = tail call fastcc i32 @crush_bucket_choose(ptr noundef %in.0, ptr noundef %7, i32 noundef %x, i32 noundef %add3, ptr noundef %spec.select218, i32 noundef %outpos.addr.0258)
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then10
  %item.3 = phi i32 [ %call, %if.then10 ], [ %call24, %if.else ]
  %8 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_devices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %item.3, i32 %9)
  %cmp26.not = icmp slt i32 %item.3, %9
  br i1 %cmp26.not, label %if.end28, label %if.end25.for.inc139_crit_edge

if.end25.for.inc139_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc139

if.end28:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %item.3)
  %cmp29 = icmp slt i32 %item.3, 0
  br i1 %cmp29, label %if.then30, label %if.end28.if.end35_crit_edge

if.end28.if.end35_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %sub31 = xor i32 %item.3, -1
  %arrayidx32 = getelementptr ptr, ptr %11, i32 %sub31
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx32, align 4
  %type33 = getelementptr inbounds %struct.crush_bucket, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %type33 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type33, align 4
  %conv = zext i16 %15 to i32
  br label %if.end35

if.end35:                                         ; preds = %if.then30, %if.end28.if.end35_crit_edge
  %itemtype.0 = phi i32 [ %conv, %if.then30 ], [ 0, %if.end28.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %itemtype.0, i32 %type)
  %cmp36.not = icmp eq i32 %itemtype.0, %type
  br i1 %cmp36.not, label %for.cond50.preheader, label %if.then38

for.cond50.preheader:                             ; preds = %if.end35
  %size.le = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 5
  br i1 %cmp51253, label %for.cond50.preheader.for.body53_crit_edge, label %for.cond50.preheader.for.end_crit_edge

for.cond50.preheader.for.end_crit_edge:           ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.cond50.preheader.for.body53_crit_edge:        ; preds = %for.cond50.preheader
  br label %for.body53

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %item.3)
  %cmp39 = icmp sgt i32 %item.3, -1
  br i1 %cmp39, label %if.then38.for.inc139_crit_edge, label %lor.lhs.false

if.then38.for.inc139_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc139

lor.lhs.false:                                    ; preds = %if.then38
  %sub41 = xor i32 %item.3, -1
  %16 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_buckets, align 4
  %cmp42.not = icmp sgt i32 %17, %sub41
  br i1 %cmp42.not, label %if.end45, label %lor.lhs.false.for.inc139_crit_edge

lor.lhs.false.for.inc139_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc139

if.end45:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %arrayidx48 = getelementptr ptr, ptr %19, i32 %sub41
  %20 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx48, align 4
  br label %do.body2

for.cond50:                                       ; preds = %for.body53
  %inc = add nuw nsw i32 %i.0254, 1
  %exitcond.not = icmp eq i32 %inc, %outpos.addr.0258
  br i1 %exitcond.not, label %for.cond50.for.end_crit_edge, label %for.cond50.for.body53_crit_edge

for.cond50.for.body53_crit_edge:                  ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body53

for.cond50.for.end_crit_edge:                     ; preds = %for.cond50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body53:                                       ; preds = %for.cond50.for.body53_crit_edge, %for.cond50.preheader.for.body53_crit_edge
  %i.0254 = phi i32 [ %inc, %for.cond50.for.body53_crit_edge ], [ 0, %for.cond50.preheader.for.body53_crit_edge ]
  %arrayidx54 = getelementptr i32, ptr %out, i32 %i.0254
  %22 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %item.3)
  %cmp55 = icmp eq i32 %23, %item.3
  br i1 %cmp55, label %for.body53.if.then104_crit_edge, label %for.cond50

for.body53.if.then104_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104

for.end:                                          ; preds = %for.cond50.for.end_crit_edge, %for.cond50.preheader.for.end_crit_edge
  br i1 %tobool61.not, label %for.end.if.then93_crit_edge, label %if.then62

for.end.if.then93_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93

if.then62:                                        ; preds = %for.end
  br i1 %cmp29, label %if.end89, label %if.else86

if.else86:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %item.3, ptr %arrayidx87, align 4
  br label %if.then93

if.end89:                                         ; preds = %if.then62
  %shr69 = ashr i32 %add3, %sub68
  %sub_r.0 = select i1 %tobool66.not, i32 0, i32 %shr69
  %25 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map, align 4
  %sub73 = xor i32 %item.3, -1
  %arrayidx74 = getelementptr ptr, ptr %26, i32 %sub73
  %27 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx74, align 4
  %call81 = tail call fastcc i32 @crush_choose_firstn(ptr noundef %map, ptr noundef %work, ptr noundef %28, ptr noundef %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef %cond80, i32 noundef 0, ptr noundef %out2, i32 noundef %outpos.addr.0258, i32 noundef %count.0261, i32 noundef %recurse_tries, i32 noundef 0, i32 noundef %local_retries, i32 noundef %local_fallback_retries, i32 noundef 0, i32 noundef %vary_r, i32 noundef %stable, ptr noundef null, i32 noundef %sub_r.0, ptr noundef %choose_args)
  call void @__sanitizer_cov_trace_cmp4(i32 %call81, i32 %outpos.addr.0258)
  %cmp82.not.not = icmp sgt i32 %call81, %outpos.addr.0258
  br i1 %cmp82.not.not, label %if.end89.if.then93_crit_edge, label %reject100.thread

if.end89.if.then93_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then93

reject100.thread:                                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #6
  %tobool103.not270 = xor i1 %cmp82.not.not, true
  br label %if.then104

if.then93:                                        ; preds = %if.end89.if.then93_crit_edge, %if.else86, %for.end.if.then93_crit_edge
  br i1 %cmp94, label %if.then96, label %if.then93.reject100_crit_edge

if.then93.reject100_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #6
  br label %reject100

if.then96:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_cmp4(i32 %item.3, i32 %weight_max)
  %cmp.not.i = icmp slt i32 %item.3, %weight_max
  br i1 %cmp.not.i, label %if.end.i, label %if.then96.if.then104.thread_crit_edge

if.then96.if.then104.thread_crit_edge:            ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104.thread

if.end.i:                                         ; preds = %if.then96
  %arrayidx.i = getelementptr i32, ptr %weight, i32 %item.3
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %30)
  %cmp1.i = icmp ugt i32 %30, 65535
  br i1 %cmp1.i, label %if.end.i.reject100_crit_edge, label %if.end3.i

if.end.i.reject100_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %reject100

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp5.i = icmp eq i32 %30, 0
  br i1 %cmp5.i, label %if.end3.i.if.then104.thread_crit_edge, label %if.end7.i

if.end3.i.if.then104.thread_crit_edge:            ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104.thread

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 @crush_hash32_2(i32 noundef 0, i32 noundef %x, i32 noundef %item.3) #4
  %and.i = and i32 %call.i, 65535
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %32)
  %cmp9.i = icmp uge i32 %and.i, %32
  %..i = zext i1 %cmp9.i to i32
  br label %reject100

reject100:                                        ; preds = %if.end7.i, %if.end.i.reject100_crit_edge, %if.then93.reject100_crit_edge
  %reject.2 = phi i32 [ 0, %if.then93.reject100_crit_edge ], [ 0, %if.end.i.reject100_crit_edge ], [ %..i, %if.end7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reject.2)
  %tobool101.not = icmp eq i32 %reject.2, 0
  br i1 %tobool101.not, label %reject100.do.end133_crit_edge, label %reject100.if.then104_crit_edge

reject100.if.then104_crit_edge:                   ; preds = %reject100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then104

reject100.do.end133_crit_edge:                    ; preds = %reject100
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end133

if.then104.thread.loopexit:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  %size.le338 = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 5
  br label %if.then104.thread

if.then104.thread:                                ; preds = %if.then104.thread.loopexit, %if.end3.i.if.then104.thread_crit_edge, %if.then96.if.then104.thread_crit_edge
  %size323 = phi ptr [ %size.le, %if.then96.if.then104.thread_crit_edge ], [ %size.le, %if.end3.i.if.then104.thread_crit_edge ], [ %size.le338, %if.then104.thread.loopexit ]
  %item.4239.ph = phi i32 [ %item.3, %if.then96.if.then104.thread_crit_edge ], [ %item.3, %if.end3.i.if.then104.thread_crit_edge ], [ %item.2, %if.then104.thread.loopexit ]
  %inc105274 = add i32 %ftotal.1.ph, 1
  %inc106275 = add i32 %flocal.0.ph, 1
  br label %if.else112

if.then104:                                       ; preds = %reject100.if.then104_crit_edge, %reject100.thread, %for.body53.if.then104_crit_edge
  %tobool103.not241 = phi i1 [ true, %reject100.if.then104_crit_edge ], [ %tobool103.not270, %reject100.thread ], [ false, %for.body53.if.then104_crit_edge ]
  %inc105 = add i32 %ftotal.1.ph, 1
  %inc106 = add i32 %flocal.0.ph, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc106, i32 %local_retries)
  %cmp109.not = icmp ugt i32 %inc106, %local_retries
  %or.cond221 = select i1 %tobool103.not241, i1 true, i1 %cmp109.not
  br i1 %or.cond221, label %if.then104.if.else112_crit_edge, label %if.then104.do.body2.outer.backedge_crit_edge

if.then104.do.body2.outer.backedge_crit_edge:     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2.outer.backedge

if.then104.if.else112_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else112

do.body2.outer.backedge:                          ; preds = %land.lhs.true115.do.body2.outer.backedge_crit_edge, %if.then104.do.body2.outer.backedge_crit_edge
  %ftotal.1.ph.be = phi i32 [ %inc105280, %land.lhs.true115.do.body2.outer.backedge_crit_edge ], [ %inc105, %if.then104.do.body2.outer.backedge_crit_edge ]
  %flocal.0.ph.be = phi i32 [ %inc106282, %land.lhs.true115.do.body2.outer.backedge_crit_edge ], [ %inc106, %if.then104.do.body2.outer.backedge_crit_edge ]
  %item.2.ph.be = phi i32 [ %item.4239278, %land.lhs.true115.do.body2.outer.backedge_crit_edge ], [ %item.3, %if.then104.do.body2.outer.backedge_crit_edge ]
  br label %do.body2.outer

if.else112:                                       ; preds = %if.then104.if.else112_crit_edge, %if.then104.thread
  %size322 = phi ptr [ %size323, %if.then104.thread ], [ %size.le, %if.then104.if.else112_crit_edge ]
  %inc106282 = phi i32 [ %inc106275, %if.then104.thread ], [ %inc106, %if.then104.if.else112_crit_edge ]
  %inc105280 = phi i32 [ %inc105274, %if.then104.thread ], [ %inc105, %if.then104.if.else112_crit_edge ]
  %item.4239278 = phi i32 [ %item.4239.ph, %if.then104.thread ], [ %item.3, %if.then104.if.else112_crit_edge ]
  br i1 %cmp113.not, label %if.else112.do.cond131_crit_edge, label %land.lhs.true115

if.else112.do.cond131_crit_edge:                  ; preds = %if.else112
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond131

land.lhs.true115:                                 ; preds = %if.else112
  %33 = ptrtoint ptr %size322 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size322, align 4
  %add117 = add i32 %34, %local_fallback_retries
  call void @__sanitizer_cov_trace_cmp4(i32 %inc106282, i32 %add117)
  %cmp118.not = icmp ugt i32 %inc106282, %add117
  br i1 %cmp118.not, label %land.lhs.true115.do.cond131_crit_edge, label %land.lhs.true115.do.body2.outer.backedge_crit_edge

land.lhs.true115.do.body2.outer.backedge_crit_edge: ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body2.outer.backedge

land.lhs.true115.do.cond131_crit_edge:            ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond131

do.cond131:                                       ; preds = %land.lhs.true115.do.cond131_crit_edge, %if.else112.do.cond131_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc105280, i32 %tries)
  %cmp122 = icmp ult i32 %inc105280, %tries
  %spec.select250 = select i1 %cmp122, i32 %skip_rep.0, i32 1
  br i1 %cmp122, label %do.cond131.do.body_crit_edge, label %do.cond131.do.end133_crit_edge

do.cond131.do.end133_crit_edge:                   ; preds = %do.cond131
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end133

do.cond131.do.body_crit_edge:                     ; preds = %do.cond131
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end133:                                        ; preds = %do.cond131.do.end133_crit_edge, %reject100.do.end133_crit_edge
  %item.6289 = phi i32 [ %item.3, %reject100.do.end133_crit_edge ], [ %item.4239278, %do.cond131.do.end133_crit_edge ]
  %skip_rep.3288 = phi i32 [ %skip_rep.0, %reject100.do.end133_crit_edge ], [ %spec.select250, %do.cond131.do.end133_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %skip_rep.3288)
  %tobool134.not = icmp eq i32 %skip_rep.3288, 0
  br i1 %tobool134.not, label %if.end136, label %do.end133.for.inc139_crit_edge

do.end133.for.inc139_crit_edge:                   ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc139

if.end136:                                        ; preds = %do.end133
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx137 = getelementptr i32, ptr %out, i32 %outpos.addr.0258
  %35 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %item.6289, ptr %arrayidx137, align 4
  %dec = add i32 %count.0261, -1
  br label %for.inc139

for.inc139:                                       ; preds = %if.end136, %do.end133.for.inc139_crit_edge, %lor.lhs.false.for.inc139_crit_edge, %if.then38.for.inc139_crit_edge, %if.end25.for.inc139_crit_edge
  %item.6289293 = phi i32 [ %item.6289, %do.end133.for.inc139_crit_edge ], [ %item.6289, %if.end136 ], [ %item.3, %if.end25.for.inc139_crit_edge ], [ %item.3, %lor.lhs.false.for.inc139_crit_edge ], [ %item.3, %if.then38.for.inc139_crit_edge ]
  %outpos.addr.1 = phi i32 [ %outpos.addr.0258, %do.end133.for.inc139_crit_edge ], [ %add78, %if.end136 ], [ %outpos.addr.0258, %if.end25.for.inc139_crit_edge ], [ %outpos.addr.0258, %lor.lhs.false.for.inc139_crit_edge ], [ %outpos.addr.0258, %if.then38.for.inc139_crit_edge ]
  %count.1 = phi i32 [ %count.0261, %do.end133.for.inc139_crit_edge ], [ %dec, %if.end136 ], [ %count.0261, %if.end25.for.inc139_crit_edge ], [ %count.0261, %lor.lhs.false.for.inc139_crit_edge ], [ %count.0261, %if.then38.for.inc139_crit_edge ]
  %inc140 = add nsw i32 %rep.0259, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc140, i32 %numrep)
  %cmp = icmp slt i32 %inc140, %numrep
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1)
  %cmp1 = icmp sgt i32 %count.1, 0
  %or.cond = select i1 %cmp, i1 %cmp1, i1 false
  br i1 %or.cond, label %for.inc139.do.body.preheader_crit_edge, label %for.inc139.for.end141_crit_edge

for.inc139.for.end141_crit_edge:                  ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end141

for.inc139.do.body.preheader_crit_edge:           ; preds = %for.inc139
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.preheader

for.end141:                                       ; preds = %for.inc139.for.end141_crit_edge, %entry.for.end141_crit_edge
  %outpos.addr.0.lcssa = phi i32 [ %outpos, %entry.for.end141_crit_edge ], [ %outpos.addr.1, %for.inc139.for.end141_crit_edge ]
  ret i32 %outpos.addr.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @crush_choose_indep(ptr nocapture noundef readonly %map, ptr nocapture noundef readonly %work, ptr noundef %bucket, ptr nocapture noundef readonly %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef %left, i32 noundef %numrep, i32 noundef %type, ptr nocapture noundef %out, i32 noundef %outpos, i32 noundef %tries, i32 noundef %recurse_tries, i32 noundef %recurse_to_leaf, ptr noundef %out2, i32 noundef %parent_r, ptr noundef %choose_args) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %outpos, %left
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %outpos)
  %cmp250 = icmp sgt i32 %add, %outpos
  br i1 %cmp250, label %for.body.lr.ph, label %entry.for.cond2.preheader_crit_edge

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %out2, null
  br label %for.body

for.cond2.preheader:                              ; preds = %for.inc.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %cmp3261 = icmp sgt i32 %left, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries)
  %cmp4262 = icmp ne i32 %tries, 0
  %or.cond263 = and i1 %cmp3261, %cmp4262
  br i1 %or.cond263, label %for.cond6.preheader.lr.ph, label %for.cond2.preheader.for.cond122.preheader_crit_edge

for.cond2.preheader.for.cond122.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond122.preheader

for.cond6.preheader.lr.ph:                        ; preds = %for.cond2.preheader
  %add20 = add i32 %numrep, 1
  %tobool32.not = icmp eq ptr %choose_args, null
  %max_devices = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 4
  %max_buckets = getelementptr inbounds %struct.crush_map, ptr %map, i32 0, i32 2
  %tobool40.not = icmp eq ptr %out2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recurse_to_leaf)
  %tobool89.not = icmp eq i32 %recurse_to_leaf, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp106 = icmp eq i32 %type, 0
  br label %for.cond6.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %rep.0251 = phi i32 [ %outpos, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %out, i32 %rep.0251
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2147483646, ptr %arrayidx, align 4
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1 = getelementptr i32, ptr %out2, i32 %rep.0251
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2147483646, ptr %arrayidx1, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nsw i32 %rep.0251, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.inc.for.cond2.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.cond2.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond2.preheader

for.cond6.preheader:                              ; preds = %for.inc119.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %ftotal.0265 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc120, %for.inc119.for.cond6.preheader_crit_edge ]
  %left.addr.0264 = phi i32 [ %left, %for.cond6.preheader.lr.ph ], [ %left.addr.1.lcssa, %for.inc119.for.cond6.preheader_crit_edge ]
  br i1 %cmp250, label %for.cond6.preheader.for.body8_crit_edge, label %for.cond6.preheader.for.inc119_crit_edge

for.cond6.preheader.for.inc119_crit_edge:         ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc119

for.cond6.preheader.for.body8_crit_edge:          ; preds = %for.cond6.preheader
  br label %for.body8

for.cond122.preheader:                            ; preds = %for.inc119.for.cond122.preheader_crit_edge, %for.cond2.preheader.for.cond122.preheader_crit_edge
  br i1 %cmp250, label %for.body125.lr.ph, label %for.cond122.preheader.for.end142_crit_edge

for.cond122.preheader.for.end142_crit_edge:       ; preds = %for.cond122.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end142

for.body125.lr.ph:                                ; preds = %for.cond122.preheader
  %tobool132.not = icmp eq ptr %out2, null
  br label %for.body125

for.body8:                                        ; preds = %for.inc116.for.body8_crit_edge, %for.cond6.preheader.for.body8_crit_edge
  %rep.1260 = phi i32 [ %inc117, %for.inc116.for.body8_crit_edge ], [ %outpos, %for.cond6.preheader.for.body8_crit_edge ]
  %left.addr.1256 = phi i32 [ %left.addr.2, %for.inc116.for.body8_crit_edge ], [ %left.addr.0264, %for.cond6.preheader.for.body8_crit_edge ]
  %arrayidx9 = getelementptr i32, ptr %out, i32 %rep.1260
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %3)
  %cmp10.not = icmp eq i32 %3, 2147483646
  br i1 %cmp10.not, label %for.cond13.preheader, label %for.body8.for.inc116_crit_edge

for.body8.for.inc116_crit_edge:                   ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

for.cond13.preheader:                             ; preds = %for.body8
  %add14 = add i32 %rep.1260, %parent_r
  br label %for.cond13

for.cond13:                                       ; preds = %if.end69, %for.cond13.preheader
  %in.0 = phi ptr [ %33, %if.end69 ], [ %bucket, %for.cond13.preheader ]
  %alg = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 2
  %4 = ptrtoint ptr %alg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %alg, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp15 = icmp eq i8 %5, 1
  br i1 %cmp15, label %land.lhs.true, label %for.cond13.if.else_crit_edge

for.cond13.if.else_crit_edge:                     ; preds = %for.cond13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %for.cond13
  %size = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %rem = urem i32 %7, %numrep
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp17 = icmp eq i32 %rem, 0
  br i1 %cmp17, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.cond13.if.else_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else, %land.lhs.true.if.end24_crit_edge
  %numrep.pn = phi i32 [ %numrep, %if.else ], [ %add20, %land.lhs.true.if.end24_crit_edge ]
  %mul.pn = mul i32 %ftotal.0265, %numrep.pn
  %r.0 = add i32 %add14, %mul.pn
  %size25 = getelementptr inbounds %struct.crush_bucket, ptr %in.0, i32 0, i32 5
  %8 = ptrtoint ptr %size25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp26 = icmp eq i32 %9, 0
  br i1 %cmp26, label %if.end24.for.inc116_crit_edge, label %if.end29

if.end24.for.inc116_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

if.end29:                                         ; preds = %if.end24
  %10 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %work, align 4
  %12 = ptrtoint ptr %in.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %in.0, align 4
  %sub = xor i32 %13, -1
  %arrayidx31 = getelementptr ptr, ptr %11, i32 %sub
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx31, align 4
  %arrayidx35 = getelementptr %struct.crush_choose_arg, ptr %choose_args, i32 %sub
  %spec.select = select i1 %tobool32.not, ptr null, ptr %arrayidx35
  %call = tail call fastcc i32 @crush_bucket_choose(ptr noundef %in.0, ptr noundef %15, i32 noundef %x, i32 noundef %r.0, ptr noundef %spec.select, i32 noundef %outpos)
  %16 = ptrtoint ptr %max_devices to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_devices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %17)
  %cmp36.not = icmp slt i32 %call, %17
  br i1 %cmp36.not, label %if.end44, label %if.then38

if.then38:                                        ; preds = %if.end29
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2147483647, ptr %arrayidx9, align 4
  br i1 %tobool40.not, label %if.then38.if.end43_crit_edge, label %if.then41

if.then38.if.end43_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx42 = getelementptr i32, ptr %out2, i32 %rep.1260
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2147483647, ptr %arrayidx42, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.then38.if.end43_crit_edge
  %dec = add i32 %left.addr.1256, -1
  br label %for.inc116

if.end44:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp45 = icmp slt i32 %call, 0
  br i1 %cmp45, label %if.then47, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map, align 4
  %sub48 = xor i32 %call, -1
  %arrayidx49 = getelementptr ptr, ptr %21, i32 %sub48
  %22 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx49, align 4
  %type50 = getelementptr inbounds %struct.crush_bucket, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %type50 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type50, align 4
  %conv51 = zext i16 %25 to i32
  br label %if.end53

if.end53:                                         ; preds = %if.then47, %if.end44.if.end53_crit_edge
  %itemtype.0 = phi i32 [ %conv51, %if.then47 ], [ 0, %if.end44.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %itemtype.0, i32 %type)
  %cmp54.not = icmp eq i32 %itemtype.0, %type
  br i1 %cmp54.not, label %if.end53.for.body77_crit_edge, label %if.then56

if.end53.for.body77_crit_edge:                    ; preds = %if.end53
  br label %for.body77

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp57 = icmp sgt i32 %call, -1
  br i1 %cmp57, label %if.then56.if.then62_crit_edge, label %lor.lhs.false

if.then56.if.then62_crit_edge:                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

lor.lhs.false:                                    ; preds = %if.then56
  %sub59 = xor i32 %call, -1
  %26 = ptrtoint ptr %max_buckets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_buckets, align 4
  %cmp60.not = icmp sgt i32 %27, %sub59
  br i1 %cmp60.not, label %if.end69, label %lor.lhs.false.if.then62_crit_edge

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %if.then56.if.then62_crit_edge
  %28 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2147483647, ptr %arrayidx9, align 4
  br i1 %tobool40.not, label %if.then62.if.end67_crit_edge, label %if.then65

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end67

if.then65:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx66 = getelementptr i32, ptr %out2, i32 %rep.1260
  %29 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2147483647, ptr %arrayidx66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.then62.if.end67_crit_edge
  %dec68 = add i32 %left.addr.1256, -1
  br label %for.inc116

if.end69:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %arrayidx72 = getelementptr ptr, ptr %31, i32 %sub59
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx72, align 4
  br label %for.cond13

for.cond74:                                       ; preds = %for.body77
  %inc84 = add i32 %i.0254, 1
  %exitcond279.not = icmp eq i32 %inc84, %add
  br i1 %exitcond279.not, label %if.end88.critedge, label %for.cond74.for.body77_crit_edge

for.cond74.for.body77_crit_edge:                  ; preds = %for.cond74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body77

for.body77:                                       ; preds = %for.cond74.for.body77_crit_edge, %if.end53.for.body77_crit_edge
  %i.0254 = phi i32 [ %inc84, %for.cond74.for.body77_crit_edge ], [ %outpos, %if.end53.for.body77_crit_edge ]
  %arrayidx78 = getelementptr i32, ptr %out, i32 %i.0254
  %34 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %call)
  %cmp79 = icmp eq i32 %35, %call
  br i1 %cmp79, label %for.body77.for.inc116_crit_edge, label %for.cond74

for.body77.for.inc116_crit_edge:                  ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

if.end88.critedge:                                ; preds = %for.cond74
  br i1 %tobool89.not, label %if.end88.critedge.if.end105_crit_edge, label %if.then90

if.end88.critedge.if.end105_crit_edge:            ; preds = %if.end88.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then90:                                        ; preds = %if.end88.critedge
  br i1 %cmp45, label %if.then93, label %if.else102

if.then93:                                        ; preds = %if.then90
  %36 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map, align 4
  %sub95 = xor i32 %call, -1
  %arrayidx96 = getelementptr ptr, ptr %37, i32 %sub95
  %38 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx96, align 4
  tail call fastcc void @crush_choose_indep(ptr noundef %map, ptr noundef %work, ptr noundef %39, ptr noundef %weight, i32 noundef %weight_max, i32 noundef %x, i32 noundef 1, i32 noundef %numrep, i32 noundef 0, ptr noundef %out2, i32 noundef %rep.1260, i32 noundef %recurse_tries, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %r.0, ptr noundef %choose_args)
  %arrayidx97 = getelementptr i32, ptr %out2, i32 %rep.1260
  %40 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %41)
  %cmp98 = icmp eq i32 %41, 2147483647
  br i1 %cmp98, label %if.then93.for.inc116_crit_edge, label %if.then93.if.end105_crit_edge

if.then93.if.end105_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then93.for.inc116_crit_edge:                   ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

if.else102:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx103 = getelementptr i32, ptr %out2, i32 %rep.1260
  %42 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call, ptr %arrayidx103, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.then93.if.end105_crit_edge, %if.end88.critedge.if.end105_crit_edge
  br i1 %cmp106, label %land.lhs.true108, label %if.end105.if.end112_crit_edge

if.end105.if.end112_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

land.lhs.true108:                                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %weight_max)
  %cmp.not.i = icmp slt i32 %call, %weight_max
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true108.for.inc116_crit_edge

land.lhs.true108.for.inc116_crit_edge:            ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

if.end.i:                                         ; preds = %land.lhs.true108
  %arrayidx.i = getelementptr i32, ptr %weight, i32 %call
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %44)
  %cmp1.i = icmp ugt i32 %44, 65535
  br i1 %cmp1.i, label %if.end.i.if.end112_crit_edge, label %if.end3.i

if.end.i.if.end112_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5.i = icmp eq i32 %44, 0
  br i1 %cmp5.i, label %if.end3.i.for.inc116_crit_edge, label %is_out.exit

if.end3.i.for.inc116_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

is_out.exit:                                      ; preds = %if.end3.i
  %call.i = tail call i32 @crush_hash32_2(i32 noundef 0, i32 noundef %x, i32 noundef %call) #4
  %and.i = and i32 %call.i, 65535
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %46)
  %cmp9.i.not = icmp ult i32 %and.i, %46
  br i1 %cmp9.i.not, label %is_out.exit.if.end112_crit_edge, label %is_out.exit.for.inc116_crit_edge

is_out.exit.for.inc116_crit_edge:                 ; preds = %is_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc116

is_out.exit.if.end112_crit_edge:                  ; preds = %is_out.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end112

if.end112:                                        ; preds = %is_out.exit.if.end112_crit_edge, %if.end.i.if.end112_crit_edge, %if.end105.if.end112_crit_edge
  %47 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call, ptr %arrayidx9, align 4
  %dec114 = add i32 %left.addr.1256, -1
  br label %for.inc116

for.inc116:                                       ; preds = %if.end112, %is_out.exit.for.inc116_crit_edge, %if.end3.i.for.inc116_crit_edge, %land.lhs.true108.for.inc116_crit_edge, %if.then93.for.inc116_crit_edge, %for.body77.for.inc116_crit_edge, %if.end67, %if.end43, %if.end24.for.inc116_crit_edge, %for.body8.for.inc116_crit_edge
  %left.addr.2 = phi i32 [ %left.addr.1256, %for.body8.for.inc116_crit_edge ], [ %dec, %if.end43 ], [ %dec68, %if.end67 ], [ %left.addr.1256, %if.then93.for.inc116_crit_edge ], [ %left.addr.1256, %is_out.exit.for.inc116_crit_edge ], [ %dec114, %if.end112 ], [ %left.addr.1256, %land.lhs.true108.for.inc116_crit_edge ], [ %left.addr.1256, %if.end3.i.for.inc116_crit_edge ], [ %left.addr.1256, %for.body77.for.inc116_crit_edge ], [ %left.addr.1256, %if.end24.for.inc116_crit_edge ]
  %inc117 = add nsw i32 %rep.1260, 1
  %exitcond280.not = icmp eq i32 %inc117, %add
  br i1 %exitcond280.not, label %for.inc116.for.inc119_crit_edge, label %for.inc116.for.body8_crit_edge

for.inc116.for.body8_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8

for.inc116.for.inc119_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc119

for.inc119:                                       ; preds = %for.inc116.for.inc119_crit_edge, %for.cond6.preheader.for.inc119_crit_edge
  %left.addr.1.lcssa = phi i32 [ %left.addr.0264, %for.cond6.preheader.for.inc119_crit_edge ], [ %left.addr.2, %for.inc116.for.inc119_crit_edge ]
  %inc120 = add nuw i32 %ftotal.0265, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.addr.1.lcssa)
  %cmp3 = icmp sgt i32 %left.addr.1.lcssa, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc120, i32 %tries)
  %cmp4 = icmp ult i32 %inc120, %tries
  %or.cond = select i1 %cmp3, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.inc119.for.cond6.preheader_crit_edge, label %for.inc119.for.cond122.preheader_crit_edge

for.inc119.for.cond122.preheader_crit_edge:       ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond122.preheader

for.inc119.for.cond6.preheader_crit_edge:         ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond6.preheader

for.body125:                                      ; preds = %for.inc140.for.body125_crit_edge, %for.body125.lr.ph
  %rep.2268 = phi i32 [ %outpos, %for.body125.lr.ph ], [ %inc141, %for.inc140.for.body125_crit_edge ]
  %arrayidx126 = getelementptr i32, ptr %out, i32 %rep.2268
  %48 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %49)
  %cmp127 = icmp eq i32 %49, 2147483646
  br i1 %cmp127, label %if.then129, label %for.body125.if.end131_crit_edge

for.body125.if.end131_crit_edge:                  ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end131

if.then129:                                       ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2147483647, ptr %arrayidx126, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %for.body125.if.end131_crit_edge
  br i1 %tobool132.not, label %if.end131.for.inc140_crit_edge, label %land.lhs.true133

if.end131.for.inc140_crit_edge:                   ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc140

land.lhs.true133:                                 ; preds = %if.end131
  %arrayidx134 = getelementptr i32, ptr %out2, i32 %rep.2268
  %51 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483646, i32 %52)
  %cmp135 = icmp eq i32 %52, 2147483646
  br i1 %cmp135, label %if.then137, label %land.lhs.true133.for.inc140_crit_edge

land.lhs.true133.for.inc140_crit_edge:            ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc140

if.then137:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2147483647, ptr %arrayidx134, align 4
  br label %for.inc140

for.inc140:                                       ; preds = %if.then137, %land.lhs.true133.for.inc140_crit_edge, %if.end131.for.inc140_crit_edge
  %inc141 = add nsw i32 %rep.2268, 1
  %exitcond281.not = icmp eq i32 %inc141, %add
  br i1 %exitcond281.not, label %for.inc140.for.end142_crit_edge, label %for.inc140.for.body125_crit_edge

for.inc140.for.body125_crit_edge:                 ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body125

for.inc140.for.end142_crit_edge:                  ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end142

for.end142:                                       ; preds = %for.inc140.for.end142_crit_edge, %for.cond122.preheader.for.end142_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bucket_perm_choose(ptr nocapture noundef readonly %bucket, ptr nocapture noundef %work, i32 noundef %x, i32 noundef %r) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.crush_bucket, ptr %bucket, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %rem = urem i32 %r, %1
  %2 = ptrtoint ptr %work to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %work, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %x)
  %cmp.not = icmp eq i32 %3, %x
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %perm_n = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 1
  %4 = ptrtoint ptr %perm_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perm_n, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %5, label %lor.lhs.false.if.end34_crit_edge [
    i32 0, label %lor.lhs.false.if.then_crit_edge
    i32 65535, label %for.cond18.preheader
  ]

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false.if.end34_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

for.cond18.preheader:                             ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp20141 = icmp ugt i32 %8, 1
  br i1 %cmp20141, label %for.body22.lr.ph, label %for.cond18.preheader.for.end27_crit_edge

for.cond18.preheader.for.end27_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end27

for.body22.lr.ph:                                 ; preds = %for.cond18.preheader
  %perm23 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  br label %for.body22

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %x, ptr %work, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp9143.not = icmp eq i32 %11, 0
  br i1 %cmp9143.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %perm11 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  br label %for.body

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %hash = getelementptr inbounds %struct.crush_bucket, ptr %bucket, i32 0, i32 3
  %12 = ptrtoint ptr %hash to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hash, align 1
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bucket, align 4
  %call = tail call i32 @crush_hash32_3(i32 noundef %conv, i32 noundef %x, i32 noundef %15, i32 noundef 0) #4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %rem6 = urem i32 %call, %17
  %perm = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  %18 = ptrtoint ptr %perm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %perm, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem6, ptr %19, align 4
  %perm_n7 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 1
  %21 = ptrtoint ptr %perm_n7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %perm_n7, align 4
  br label %out

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0144 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %perm11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %perm11, align 4
  %arrayidx12 = getelementptr i32, ptr %23, i32 %i.0144
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %i.0144, ptr %arrayidx12, align 4
  %inc = add nuw i32 %i.0144, 1
  %25 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size, align 4
  %cmp9 = icmp ult i32 %inc, %26
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %perm_n13 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 1
  %27 = ptrtoint ptr %perm_n13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %perm_n13, align 4
  br label %if.end34

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.lr.ph
  %i.1142 = phi i32 [ 1, %for.body22.lr.ph ], [ %inc26, %for.body22.for.body22_crit_edge ]
  %28 = ptrtoint ptr %perm23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %perm23, align 4
  %arrayidx24 = getelementptr i32, ptr %29, i32 %i.1142
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.1142, ptr %arrayidx24, align 4
  %inc26 = add nuw i32 %i.1142, 1
  %31 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size, align 4
  %cmp20 = icmp ult i32 %inc26, %32
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.body22.for.end27_crit_edge

for.body22.for.end27_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end27

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22

for.end27:                                        ; preds = %for.body22.for.end27_crit_edge, %for.cond18.preheader.for.end27_crit_edge
  %perm28 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  %33 = ptrtoint ptr %perm28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %perm28, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %arrayidx31 = getelementptr i32, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %arrayidx31, align 4
  %38 = ptrtoint ptr %perm_n to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %perm_n, align 4
  br label %if.end34

if.end34:                                         ; preds = %for.end27, %for.end, %lor.lhs.false.if.end34_crit_edge
  %perm_n36.le = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 1
  %39 = ptrtoint ptr %perm_n36.le to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %perm_n36.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %rem)
  %cmp44.not145 = icmp ugt i32 %40, %rem
  br i1 %cmp44.not145, label %if.end34.for.cond72.preheader_crit_edge, label %while.body.lr.ph

if.end34.for.cond72.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond72.preheader

while.body.lr.ph:                                 ; preds = %if.end34
  %hash51 = getelementptr inbounds %struct.crush_bucket, ptr %bucket, i32 0, i32 3
  %perm59 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  br label %while.body

for.cond72.preheader:                             ; preds = %if.end69.for.cond72.preheader_crit_edge, %if.end34.for.cond72.preheader_crit_edge
  %perm80 = getelementptr inbounds %struct.crush_work_bucket, ptr %work, i32 0, i32 2
  %41 = ptrtoint ptr %perm80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %perm80, align 4
  %arrayidx81 = getelementptr i32, ptr %42, i32 %rem
  %43 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx81, align 4
  br label %out

while.body:                                       ; preds = %if.end69.while.body_crit_edge, %while.body.lr.ph
  %45 = phi i32 [ %40, %while.body.lr.ph ], [ %inc71, %if.end69.while.body_crit_edge ]
  %46 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size, align 4
  %sub = add i32 %47, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %sub)
  %cmp48 = icmp ult i32 %45, %sub
  br i1 %cmp48, label %if.then50, label %while.body.if.end69_crit_edge

while.body.if.end69_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then50:                                        ; preds = %while.body
  %48 = ptrtoint ptr %hash51 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hash51, align 1
  %conv52 = zext i8 %49 to i32
  %50 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bucket, align 4
  %call54 = tail call i32 @crush_hash32_3(i32 noundef %conv52, i32 noundef %x, i32 noundef %51, i32 noundef %45) #4
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 4
  %sub56 = sub i32 %53, %45
  %rem57 = urem i32 %call54, %sub56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem57)
  %tobool.not = icmp eq i32 %rem57, 0
  br i1 %tobool.not, label %if.then50.if.end69_crit_edge, label %if.then58

if.then50.if.end69_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then58:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #6
  %54 = ptrtoint ptr %perm59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %perm59, align 4
  %add = add i32 %rem57, %45
  %arrayidx60 = getelementptr i32, ptr %55, i32 %add
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx60, align 4
  %arrayidx62 = getelementptr i32, ptr %55, i32 %45
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx62, align 4
  store i32 %59, ptr %arrayidx60, align 4
  %60 = load ptr, ptr %perm59, align 4
  %arrayidx67 = getelementptr i32, ptr %60, i32 %45
  %61 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %57, ptr %arrayidx67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %if.then50.if.end69_crit_edge, %while.body.if.end69_crit_edge
  %62 = ptrtoint ptr %perm_n36.le to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %perm_n36.le, align 4
  %inc71 = add i32 %63, 1
  store i32 %inc71, ptr %perm_n36.le, align 4
  %cmp44.not = icmp ugt i32 %inc71, %rem
  br i1 %cmp44.not, label %if.end69.for.cond72.preheader_crit_edge, label %if.end69.while.body_crit_edge

if.end69.while.body_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end69.for.cond72.preheader_crit_edge:          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond72.preheader

out:                                              ; preds = %for.cond72.preheader, %if.then4
  %s.0 = phi i32 [ %rem6, %if.then4 ], [ %44, %for.cond72.preheader ]
  %items = getelementptr inbounds %struct.crush_bucket, ptr %bucket, i32 0, i32 6
  %64 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %items, align 4
  %arrayidx82 = getelementptr i32, ptr %65, i32 %s.0
  %66 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx82, align 4
  ret i32 %67
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crush_bucket_choose(ptr noundef readonly %in, ptr nocapture noundef %work, i32 noundef %x, i32 noundef %r, ptr noundef readonly %arg, i32 noundef %position) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.body2, label %do.end5, !prof !15

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/crush/mapper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #4, !srcloc !16
  unreachable

do.end5:                                          ; preds = %entry
  %alg = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 2
  %2 = ptrtoint ptr %alg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alg, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %3, label %sw.default [
    i8 1, label %sw.bb
    i8 2, label %sw.bb6
    i8 3, label %sw.bb8
    i8 4, label %for.body.lr.ph.i
    i8 5, label %sw.bb12
  ]

sw.bb:                                            ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call fastcc i32 @bucket_perm_choose(ptr noundef %in, ptr noundef %work, i32 noundef %x, i32 noundef %r) #4
  br label %return

sw.bb6:                                           ; preds = %do.end5
  %hash.i = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 3
  %items.i = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %sum_weights.i = getelementptr inbounds %struct.crush_bucket_list, ptr %in, i32 0, i32 2
  %item_weights.i = getelementptr inbounds %struct.crush_bucket_list, ptr %in, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb6
  %i.0.in.i = phi i32 [ %1, %sw.bb6 ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %5 = ptrtoint ptr %hash.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hash.i, align 1
  %conv.i = zext i8 %6 to i32
  %7 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %items.i, align 4
  %arrayidx.i = getelementptr i32, ptr %8, i32 %i.0.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %in, align 4
  %call.i29 = tail call i32 @crush_hash32_4(i32 noundef %conv.i, i32 noundef %x, i32 noundef %10, i32 noundef %r, i32 noundef %12) #4
  %13 = and i32 %call.i29, 65535
  %and.i = zext i32 %13 to i64
  %14 = ptrtoint ptr %sum_weights.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sum_weights.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %15, i32 %i.0.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5.i, align 4
  %conv6.i = zext i32 %17 to i64
  %mul.i = mul nuw nsw i64 %conv6.i, %and.i
  %shr.i = lshr i64 %mul.i, 16
  %18 = ptrtoint ptr %item_weights.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %item_weights.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %19, i32 %i.0.i
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7.i, align 4
  %conv8.i = zext i32 %21 to i64
  %cmp9.i = icmp ult i64 %shr.i, %conv8.i
  br i1 %cmp9.i, label %cleanup.thread.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %items.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %23, i32 %i.0.i
  br label %bucket_list_choose.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %items.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %items.i, align 4
  br label %bucket_list_choose.exit

bucket_list_choose.exit:                          ; preds = %for.end.i, %cleanup.thread.i
  %retval.2.in.i = phi ptr [ %25, %for.end.i ], [ %arrayidx13.i, %cleanup.thread.i ]
  %26 = ptrtoint ptr %retval.2.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %retval.2.i = load i32, ptr %retval.2.in.i, align 4
  br label %return

sw.bb8:                                           ; preds = %do.end5
  %num_nodes.i = getelementptr inbounds %struct.crush_bucket_tree, ptr %in, i32 0, i32 1
  %27 = ptrtoint ptr %num_nodes.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_nodes.i, align 4
  %29 = lshr i8 %28, 1
  %30 = zext i8 %29 to i32
  %and.i37.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.not38.i = icmp eq i32 %and.i37.i, 0
  br i1 %tobool.not38.i, label %while.body.lr.ph.i, label %sw.bb8.bucket_tree_choose.exit_crit_edge

sw.bb8.bucket_tree_choose.exit_crit_edge:         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %bucket_tree_choose.exit

while.body.lr.ph.i:                               ; preds = %sw.bb8
  %node_weights.i = getelementptr inbounds %struct.crush_bucket_tree, ptr %in, i32 0, i32 2
  %hash.i30 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 3
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %n.039.i = phi i32 [ %30, %while.body.lr.ph.i ], [ %n.1.i, %if.end.i.while.body.i_crit_edge ]
  %31 = ptrtoint ptr %node_weights.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %node_weights.i, align 4
  %arrayidx.i31 = getelementptr i32, ptr %32, i32 %n.039.i
  %33 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i31, align 4
  %35 = ptrtoint ptr %hash.i30 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hash.i30, align 1
  %conv1.i = zext i8 %36 to i32
  %37 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %in, align 4
  %call3.i = tail call i32 @crush_hash32_4(i32 noundef %conv1.i, i32 noundef %x, i32 noundef %n.039.i, i32 noundef %r, i32 noundef %38) #4
  %conv5.i = zext i32 %34 to i64
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.body.i
  %h.06.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ 0, %while.body.i ]
  %n.addr.05.i.i.i = phi i32 [ %shr.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %n.039.i, %while.body.i ]
  %inc.i.i.i = add i32 %h.06.i.i.i, 1
  %shr.i.i.i = ashr i32 %n.addr.05.i.i.i, 1
  %39 = and i32 %n.addr.05.i.i.i, 2
  %cmp.i.i.i = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i, label %while.body.i.i.i.while.body.i.i.i_crit_edge, label %left.exit.i

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i.i

left.exit.i:                                      ; preds = %while.body.i.i.i
  %conv4.i = zext i32 %call3.i to i64
  %mul.i32 = mul nuw i64 %conv4.i, %conv5.i
  %shr6.i = lshr i64 %mul.i32, 32
  %shl.neg.i.i = shl nsw i32 -1, %h.06.i.i.i
  %sub1.i.i = add i32 %shl.neg.i.i, %n.039.i
  %40 = ptrtoint ptr %node_weights.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %node_weights.i, align 4
  %arrayidx9.i = getelementptr i32, ptr %41, i32 %sub1.i.i
  %42 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i, align 4
  %conv10.i = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %shr6.i, i64 %conv10.i)
  %cmp.i33 = icmp ult i64 %shr6.i, %conv10.i
  br i1 %cmp.i33, label %left.exit.i.if.end.i_crit_edge, label %left.exit.i.while.body.i.i35.i_crit_edge

left.exit.i.while.body.i.i35.i_crit_edge:         ; preds = %left.exit.i
  br label %while.body.i.i35.i

left.exit.i.if.end.i_crit_edge:                   ; preds = %left.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

while.body.i.i35.i:                               ; preds = %while.body.i.i35.i.while.body.i.i35.i_crit_edge, %left.exit.i.while.body.i.i35.i_crit_edge
  %h.06.i.i30.i = phi i32 [ %inc.i.i32.i, %while.body.i.i35.i.while.body.i.i35.i_crit_edge ], [ 0, %left.exit.i.while.body.i.i35.i_crit_edge ]
  %n.addr.05.i.i31.i = phi i32 [ %shr.i.i33.i, %while.body.i.i35.i.while.body.i.i35.i_crit_edge ], [ %n.039.i, %left.exit.i.while.body.i.i35.i_crit_edge ]
  %inc.i.i32.i = add i32 %h.06.i.i30.i, 1
  %shr.i.i33.i = ashr i32 %n.addr.05.i.i31.i, 1
  %44 = and i32 %n.addr.05.i.i31.i, 2
  %cmp.i.i34.i = icmp eq i32 %44, 0
  br i1 %cmp.i.i34.i, label %while.body.i.i35.i.while.body.i.i35.i_crit_edge, label %right.exit.i

while.body.i.i35.i.while.body.i.i35.i_crit_edge:  ; preds = %while.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i35.i

right.exit.i:                                     ; preds = %while.body.i.i35.i
  call void @__sanitizer_cov_trace_pc() #6
  %shl.i.i = shl nuw i32 1, %h.06.i.i30.i
  %add.i.i = add i32 %shl.i.i, %n.039.i
  br label %if.end.i

if.end.i:                                         ; preds = %right.exit.i, %left.exit.i.if.end.i_crit_edge
  %n.1.i = phi i32 [ %add.i.i, %right.exit.i ], [ %sub1.i.i, %left.exit.i.if.end.i_crit_edge ]
  %and.i.i = and i32 %n.1.i, 1
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.bucket_tree_choose.exit_crit_edge

if.end.i.bucket_tree_choose.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %bucket_tree_choose.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

bucket_tree_choose.exit:                          ; preds = %if.end.i.bucket_tree_choose.exit_crit_edge, %sw.bb8.bucket_tree_choose.exit_crit_edge
  %n.0.lcssa.i = phi i32 [ %30, %sw.bb8.bucket_tree_choose.exit_crit_edge ], [ %n.1.i, %if.end.i.bucket_tree_choose.exit_crit_edge ]
  %items.i34 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %45 = ptrtoint ptr %items.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %items.i34, align 4
  %shr14.i = ashr i32 %n.0.lcssa.i, 1
  %arrayidx15.i = getelementptr i32, ptr %46, i32 %shr14.i
  %47 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15.i, align 4
  br label %return

for.body.lr.ph.i:                                 ; preds = %do.end5
  %hash.i36 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 3
  %items.i37 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %straws.i = getelementptr inbounds %struct.crush_bucket_straw, ptr %in, i32 0, i32 2
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %for.body.lr.ph.i
  %high_draw.028.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %high_draw.1.i, %for.body.i45.for.body.i45_crit_edge ]
  %high.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %high.1.i, %for.body.i45.for.body.i45_crit_edge ]
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i45.for.body.i45_crit_edge ]
  %49 = ptrtoint ptr %hash.i36 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hash.i36, align 1
  %conv.i38 = zext i8 %50 to i32
  %51 = ptrtoint ptr %items.i37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %items.i37, align 4
  %arrayidx.i39 = getelementptr i32, ptr %52, i32 %i.026.i
  %53 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i39, align 4
  %call.i40 = tail call i32 @crush_hash32_3(i32 noundef %conv.i38, i32 noundef %x, i32 noundef %54, i32 noundef %r) #4
  %55 = and i32 %call.i40, 65535
  %and.i41 = zext i32 %55 to i64
  %56 = ptrtoint ptr %straws.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %straws.i, align 4
  %arrayidx4.i = getelementptr i32, ptr %57, i32 %i.026.i
  %58 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx4.i, align 4
  %conv5.i42 = zext i32 %59 to i64
  %mul.i43 = mul nuw nsw i64 %conv5.i42, %and.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.026.i)
  %cmp6.i = icmp eq i32 %i.026.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %mul.i43, i64 %high_draw.028.i)
  %cmp8.i = icmp ugt i64 %mul.i43, %high_draw.028.i
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %cmp8.i
  %high.1.i = select i1 %or.cond.i, i32 %i.026.i, i32 %high.027.i
  %high_draw.1.i = select i1 %or.cond.i, i64 %mul.i43, i64 %high_draw.028.i
  %inc.i = add nuw i32 %i.026.i, 1
  %60 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %size, align 4
  %cmp.i44 = icmp ult i32 %inc.i, %61
  br i1 %cmp.i44, label %for.body.i45.for.body.i45_crit_edge, label %bucket_straw_choose.exit

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i45

bucket_straw_choose.exit:                         ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %items.i37 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %items.i37, align 4
  %arrayidx12.i = getelementptr i32, ptr %63, i32 %high.1.i
  %64 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx12.i, align 4
  br label %return

sw.bb12:                                          ; preds = %do.end5
  %tobool.not.i.i = icmp eq ptr %arg, null
  br i1 %tobool.not.i.i, label %get_choose_arg_weights.exit.thread46.i, label %lor.lhs.false.i.i

get_choose_arg_weights.exit.thread46.i:           ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights.i47.i = getelementptr inbounds %struct.crush_bucket_straw2, ptr %in, i32 0, i32 1
  %66 = ptrtoint ptr %item_weights.i47.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %retval.0.i48.i = load ptr, ptr %item_weights.i47.i, align 4
  br label %if.then.i34.i

lor.lhs.false.i.i:                                ; preds = %sw.bb12
  %weight_set.i.i = getelementptr inbounds %struct.crush_choose_arg, ptr %arg, i32 0, i32 2
  %67 = ptrtoint ptr %weight_set.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %weight_set.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %68, null
  br i1 %tobool1.not.i.i, label %get_choose_arg_weights.exit.i, label %get_choose_arg_weights.exit.thread.i

get_choose_arg_weights.exit.thread.i:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %weight_set_size.i.i = getelementptr inbounds %struct.crush_choose_arg, ptr %arg, i32 0, i32 3
  %69 = ptrtoint ptr %weight_set_size.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %weight_set_size.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %position)
  %cmp.not.i.i = icmp ugt i32 %70, %position
  %sub.i.i = add i32 %70, -1
  %spec.select.i.i = select i1 %cmp.not.i.i, i32 %position, i32 %sub.i.i
  %arrayidx.i.i = getelementptr %struct.crush_weight_set, ptr %68, i32 %spec.select.i.i
  br label %lor.lhs.false.i33.i

get_choose_arg_weights.exit.i:                    ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %item_weights.i.i = getelementptr inbounds %struct.crush_bucket_straw2, ptr %in, i32 0, i32 1
  br label %lor.lhs.false.i33.i

lor.lhs.false.i33.i:                              ; preds = %get_choose_arg_weights.exit.i, %get_choose_arg_weights.exit.thread.i
  %retval.0.i45.in.i = phi ptr [ %arrayidx.i.i, %get_choose_arg_weights.exit.thread.i ], [ %item_weights.i.i, %get_choose_arg_weights.exit.i ]
  %71 = ptrtoint ptr %retval.0.i45.in.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %retval.0.i45.i = load ptr, ptr %retval.0.i45.in.i, align 4
  %72 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arg, align 4
  %tobool1.not.i32.i = icmp eq ptr %73, null
  br i1 %tobool1.not.i32.i, label %lor.lhs.false.i33.i.if.then.i34.i_crit_edge, label %lor.lhs.false.i33.i.for.body.lr.ph.i49_crit_edge

lor.lhs.false.i33.i.for.body.lr.ph.i49_crit_edge: ; preds = %lor.lhs.false.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.lr.ph.i49

lor.lhs.false.i33.i.if.then.i34.i_crit_edge:      ; preds = %lor.lhs.false.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i34.i

if.then.i34.i:                                    ; preds = %lor.lhs.false.i33.i.if.then.i34.i_crit_edge, %get_choose_arg_weights.exit.thread46.i
  %retval.0.i44.i = phi ptr [ %retval.0.i45.i, %lor.lhs.false.i33.i.if.then.i34.i_crit_edge ], [ %retval.0.i48.i, %get_choose_arg_weights.exit.thread46.i ]
  %items.i.i = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %74 = ptrtoint ptr %items.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %items.i.i, align 4
  br label %for.body.lr.ph.i49

for.body.lr.ph.i49:                               ; preds = %if.then.i34.i, %lor.lhs.false.i33.i.for.body.lr.ph.i49_crit_edge
  %retval.0.i43.i = phi ptr [ %retval.0.i44.i, %if.then.i34.i ], [ %retval.0.i45.i, %lor.lhs.false.i33.i.for.body.lr.ph.i49_crit_edge ]
  %retval.0.i35.i = phi ptr [ %75, %if.then.i34.i ], [ %73, %lor.lhs.false.i33.i.for.body.lr.ph.i49_crit_edge ]
  %hash.i48 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 3
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i64.for.body.i52_crit_edge, %for.body.lr.ph.i49
  %high_draw.052.i = phi i64 [ 0, %for.body.lr.ph.i49 ], [ %high_draw.1.i61, %if.end.i64.for.body.i52_crit_edge ]
  %high.051.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %high.1.i60, %if.end.i64.for.body.i52_crit_edge ]
  %i.050.i = phi i32 [ 0, %for.body.lr.ph.i49 ], [ %inc.i62, %if.end.i64.for.body.i52_crit_edge ]
  %arrayidx.i50 = getelementptr i32, ptr %retval.0.i43.i, i32 %i.050.i
  %76 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i51 = icmp eq i32 %77, 0
  br i1 %tobool.not.i51, label %for.body.i52.if.end.i64_crit_edge, label %if.then.i

for.body.i52.if.end.i64_crit_edge:                ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i64

if.then.i:                                        ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #6
  %78 = ptrtoint ptr %hash.i48 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %hash.i48, align 1
  %conv.i53 = zext i8 %79 to i32
  %arrayidx3.i = getelementptr i32, ptr %retval.0.i35.i, i32 %i.050.i
  %80 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx3.i, align 4
  %call4.i = tail call i32 @crush_hash32_3(i32 noundef %conv.i53, i32 noundef %x, i32 noundef %81, i32 noundef %r) #4
  %and.i54 = and i32 %call4.i, 65535
  %inc.i.i = add nuw nsw i32 %and.i54, 1
  %and.i.i55 = and i32 %inc.i.i, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i36.i = icmp eq i32 %and.i.i55, 0
  %82 = tail call i32 @llvm.ctlz.i32(i32 %inc.i.i, i1 true) #4, !range !17
  %sub.i37.i = add nsw i32 %82, -16
  %sub2.i.i = xor i32 %82, 31
  %iexpon.0.i.i = select i1 %tobool.not.i36.i, i32 %sub2.i.i, i32 15
  %shl.i.i56 = select i1 %tobool.not.i36.i, i32 %sub.i37.i, i32 0
  %x.0.i.i = shl i32 %inc.i.i, %shl.i.i56
  %83 = lshr i32 %x.0.i.i, 7
  %shl3.i.i = and i32 %83, 33554430
  %sub4.i.i = add nsw i32 %shl3.i.i, -256
  %arrayidx.i39.i = getelementptr [258 x i64], ptr @__RH_LH_tbl, i32 0, i32 %sub4.i.i
  %84 = ptrtoint ptr %arrayidx.i39.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %arrayidx.i39.i, align 8
  %add.i.i57 = or i32 %83, 1
  %sub5.i.i = add nsw i32 %add.i.i57, -256
  %arrayidx6.i.i = getelementptr [258 x i64], ptr @__RH_LH_tbl, i32 0, i32 %sub5.i.i
  %86 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx6.i.i, align 8
  %conv.i.i = zext i32 %x.0.i.i to i64
  %mul.i.i = mul i64 %85, %conv.i.i
  %shr7.i.i = lshr i64 %mul.i.i, 48
  %conv828.i.i = zext i32 %iexpon.0.i.i to i64
  %shl9.i.i = shl nuw nsw i64 %conv828.i.i, 44
  %88 = trunc i64 %shr7.i.i to i32
  %conv11.i.i = and i32 %88, 255
  %arrayidx12.i.i = getelementptr [256 x i64], ptr @__LL_tbl, i32 0, i32 %conv11.i.i
  %89 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx12.i.i, align 8
  %add13.i.i = add i64 %90, %87
  %shr14.i.i = lshr i64 %add13.i.i, 4
  %add15.i.i = add nsw i64 %shr14.i.i, -281474976710656
  %sub.i = add nsw i64 %add15.i.i, %shl9.i.i
  %91 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i50, align 4
  %conv7.i = zext i32 %92 to i64
  %call8.i = tail call i64 @div64_s64(i64 noundef %sub.i, i64 noundef %conv7.i) #4
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then.i, %for.body.i52.if.end.i64_crit_edge
  %draw.0.i = phi i64 [ %call8.i, %if.then.i ], [ -9223372036854775808, %for.body.i52.if.end.i64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.050.i)
  %cmp9.i58 = icmp eq i32 %i.050.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %draw.0.i, i64 %high_draw.052.i)
  %cmp11.i = icmp sgt i64 %draw.0.i, %high_draw.052.i
  %or.cond.i59 = select i1 %cmp9.i58, i1 true, i1 %cmp11.i
  %high.1.i60 = select i1 %or.cond.i59, i32 %i.050.i, i32 %high.051.i
  %high_draw.1.i61 = select i1 %or.cond.i59, i64 %draw.0.i, i64 %high_draw.052.i
  %inc.i62 = add nuw i32 %i.050.i, 1
  %93 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size, align 4
  %cmp.i63 = icmp ult i32 %inc.i62, %94
  br i1 %cmp.i63, label %if.end.i64.for.body.i52_crit_edge, label %bucket_straw2_choose.exit

if.end.i64.for.body.i52_crit_edge:                ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i52

bucket_straw2_choose.exit:                        ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #6
  %items.i66 = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %95 = ptrtoint ptr %items.i66 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %items.i66, align 4
  %arrayidx16.i = getelementptr i32, ptr %96, i32 %high.1.i60
  %97 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx16.i, align 4
  br label %return

sw.default:                                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %items = getelementptr inbounds %struct.crush_bucket, ptr %in, i32 0, i32 6
  %99 = ptrtoint ptr %items to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %items, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %100, align 4
  br label %return

return:                                           ; preds = %sw.default, %bucket_straw2_choose.exit, %bucket_straw_choose.exit, %bucket_tree_choose.exit, %bucket_list_choose.exit, %sw.bb
  %retval.0 = phi i32 [ %102, %sw.default ], [ %98, %bucket_straw2_choose.exit ], [ %65, %bucket_straw_choose.exit ], [ %48, %bucket_tree_choose.exit ], [ %retval.2.i, %bucket_list_choose.exit ], [ %call.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crush_hash32_3(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crush_hash32_4(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crush_hash32_2(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__RH_LH_tbl, !1, !"__RH_LH_tbl", i1 false, i1 false}
!1 = !{!"../net/ceph/crush/crush_ln_table.h", i32 26, i32 14}
!2 = !{ptr @__LL_tbl, !3, !"__LL_tbl", i1 false, i1 false}
!3 = !{!"../net/ceph/crush/crush_ln_table.h", i32 97, i32 14}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i64 2152086201, i64 2152086689, i64 2152086238, i64 2152086294, i64 2152086328, i64 2152086352, i64 2152086393, i64 2152086414, i64 2152086442, i64 2152086476}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2152084383, i64 2152084871, i64 2152084420, i64 2152084476, i64 2152084510, i64 2152084534, i64 2152084575, i64 2152084596, i64 2152084624, i64 2152084658}
!17 = !{i32 15, i32 33}
