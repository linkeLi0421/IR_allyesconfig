; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_psi.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_psi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vidtv_psi_table_pat_program = type { i16, i16, ptr }
%struct.vidtv_psi_table_pmt_stream = type <{ i8, i16, i16, ptr, ptr }>
%struct.vidtv_psi_desc_service = type <{ ptr, i8, i8, i8, i8, ptr, i8, ptr }>
%struct.vidtv_psi_desc_registration = type <{ ptr, i8, i8, i32, [0 x i8] }>
%struct.vidtv_psi_desc_network_name = type <{ ptr, i8, i8, ptr }>
%struct.vidtv_psi_desc_service_list = type <{ ptr, i8, i8, ptr }>
%struct.vidtv_psi_desc_service_list_entry = type <{ i16, i8, ptr }>
%struct.vidtv_psi_desc_short_event = type <{ ptr, i8, i8, ptr, i8, ptr, i8, ptr }>
%struct.vidtv_psi_desc = type <{ ptr, i8, i8, [0 x i8] }>
%struct.vidtv_psi_table_header = type <{ i8, i16, i16, i8, i8, i8 }>
%struct.vidtv_psi_table_pmt = type { %struct.vidtv_psi_table_header, i16, i16, ptr, ptr }
%struct.vidtv_psi_table_sdt = type <{ %struct.vidtv_psi_table_header, i16, i8, ptr }>
%struct.vidtv_psi_table_sdt_service = type <{ i16, i8, i16, ptr, ptr }>
%struct.vidtv_psi_table_pat = type { %struct.vidtv_psi_table_header, i16, i16, ptr }
%struct.psi_write_args = type { ptr, ptr, i32, i32, i16, i8, ptr, i8, i32, ptr }
%struct.crc32_write_args = type { ptr, i32, i32, i16, ptr, i32 }
%struct.vidtv_psi_pat_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_mpeg_ts = type <{ i8, i16, %struct.anon }>
%struct.anon = type { i8 }
%struct.desc_write_args = type { ptr, i32, ptr, i16, ptr, i32, ptr }
%struct.vidtv_psi_pmt_write_args = type { ptr, i32, ptr, i16, i32, ptr, i16 }
%struct.vidtv_psi_sdt_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_psi_table_nit = type <{ %struct.vidtv_psi_table_header, i16, ptr, i16, ptr }>
%struct.vidtv_psi_table_transport = type <{ i16, i16, i16, ptr, ptr }>
%struct.vidtv_psi_nit_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_psi_table_eit = type <{ %struct.vidtv_psi_table_header, i16, i16, i8, i8, ptr }>
%struct.vidtv_psi_table_eit_event = type { i16, [5 x i8], [3 x i8], i16, ptr, ptr }
%struct.vidtv_psi_eit_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"eng\00", [28 x i8] zeroinitializer }, align 32
@vidtv_psi_desc_destroy._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_psi_desc_destroy = private unnamed_addr constant [23 x i8] c"vidtv_psi_desc_destroy\00", align 1
@vidtv_psi_desc_destroy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.vidtv_psi_desc_destroy, ptr @.str.3, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014dvb_vidtv_bridge:%s, %d: Possible leak: not handling descriptor type %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/test-drivers/vidtv/vidtv_psi.c\00", [51 x i8] zeroinitializer }, align 32
@vidtv_psi_desc_destroy._entry_ptr = internal global ptr @vidtv_psi_desc_destroy._entry, section ".printk_index", align 4
@__const.vidtv_psi_eit_event_init.DURATION = private unnamed_addr constant [3 x i8] c"#YY", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_psi_set_sec_len._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_psi_set_sec_len = private unnamed_addr constant [22 x i8] c"vidtv_psi_set_sec_len\00", align 1
@vidtv_psi_set_sec_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.vidtv_psi_set_sec_len, ptr @.str.3, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014dvb_vidtv_bridge:%s, %d: section length: %d > %d, old len was %d\0A\00", [60 x i8] zeroinitializer }, align 32
@vidtv_psi_set_sec_len._entry_ptr = internal global ptr @vidtv_psi_set_sec_len._entry, section ".printk_index", align 4
@vidtv_psi_ts_psi_write_into._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_psi_ts_psi_write_into = private unnamed_addr constant [28 x i8] c"vidtv_psi_ts_psi_write_into\00", align 1
@vidtv_psi_ts_psi_write_into._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.vidtv_psi_ts_psi_write_into, ptr @.str.3, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014dvb_vidtv_bridge:%s, %d: Missing CRC for chunk\0A\00", [46 x i8] zeroinitializer }, align 32
@vidtv_psi_ts_psi_write_into._entry_ptr = internal global ptr @vidtv_psi_ts_psi_write_into._entry, section ".printk_index", align 4
@vidtv_psi_ts_psi_write_into._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@vidtv_psi_ts_psi_write_into._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.vidtv_psi_ts_psi_write_into, ptr @.str.3, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014dvb_vidtv_bridge:%s, %d: Cannot write a new PSI section in a misaligned buffer\0A\00", [46 x i8] zeroinitializer }, align 32
@vidtv_psi_ts_psi_write_into._entry_ptr.9 = internal global ptr @vidtv_psi_ts_psi_write_into._entry.7, section ".printk_index", align 4
@CRC_LUT = internal constant { [256 x i32], [256 x i8] } { [256 x i32] [i32 0, i32 79764919, i32 159529838, i32 222504665, i32 319059676, i32 398814059, i32 445009330, i32 507990021, i32 638119352, i32 583659535, i32 797628118, i32 726387553, i32 890018660, i32 835552979, i32 1015980042, i32 944750013, i32 1276238704, i32 1221641927, i32 1167319070, i32 1095957929, i32 1595256236, i32 1540665371, i32 1452775106, i32 1381403509, i32 1780037320, i32 1859660671, i32 1671105958, i32 1733955601, i32 2031960084, i32 2111593891, i32 1889500026, i32 1952343757, i32 -1742489888, i32 -1662866601, i32 -1851683442, i32 -1788833735, i32 -1960329156, i32 -1880695413, i32 -2103051438, i32 -2040207643, i32 -1104454824, i32 -1159051537, i32 -1213636554, i32 -1284997759, i32 -1389417084, i32 -1444007885, i32 -1532160278, i32 -1603531939, i32 -734892656, i32 -789352409, i32 -575645954, i32 -646886583, i32 -952755380, i32 -1007220997, i32 -827056094, i32 -898286187, i32 -231047128, i32 -151282273, i32 -71779514, i32 -8804623, i32 -515967244, i32 -436212925, i32 -390279782, i32 -327299027, i32 881225847, i32 809987520, i32 1023691545, i32 969234094, i32 662832811, i32 591600412, i32 771767749, i32 717299826, i32 311336399, i32 374308984, i32 453813921, i32 533576470, i32 25881363, i32 88864420, i32 134795389, i32 214552010, i32 2023205639, i32 2086057648, i32 1897238633, i32 1976864222, i32 1804852699, i32 1867694188, i32 1645340341, i32 1724971778, i32 1587496639, i32 1516133128, i32 1461550545, i32 1406951526, i32 1302016099, i32 1230646740, i32 1142491917, i32 1087903418, i32 -1398421865, i32 -1469785312, i32 -1524105735, i32 -1578704818, i32 -1079922613, i32 -1151291908, i32 -1239184603, i32 -1293773166, i32 -1968362705, i32 -1905510760, i32 -2094067647, i32 -2014441994, i32 -1716953613, i32 -1654112188, i32 -1876203875, i32 -1796572374, i32 -525066777, i32 -462094256, i32 -382327159, i32 -302564546, i32 -206542021, i32 -143559028, i32 -97365931, i32 -17609246, i32 -960696225, i32 -1031934488, i32 -817968335, i32 -872425850, i32 -709327229, i32 -780559564, i32 -600130067, i32 -654598054, i32 1762451694, i32 1842216281, i32 1619975040, i32 1682949687, i32 2047383090, i32 2127137669, i32 1938468188, i32 2001449195, i32 1325665622, i32 1271206113, i32 1183200824, i32 1111960463, i32 1543535498, i32 1489069629, i32 1434599652, i32 1363369299, i32 622672798, i32 568075817, i32 748617968, i32 677256519, i32 907627842, i32 853037301, i32 1067152940, i32 995781531, i32 51762726, i32 131386257, i32 177728840, i32 240578815, i32 269590778, i32 349224269, i32 429104020, i32 491947555, i32 -248556018, i32 -168932423, i32 -122852000, i32 -60002089, i32 -500490030, i32 -420856475, i32 -341238852, i32 -278395381, i32 -685261898, i32 -739858943, i32 -559578920, i32 -630940305, i32 -1004286614, i32 -1058877219, i32 -845023740, i32 -916395085, i32 -1119974018, i32 -1174433591, i32 -1262701040, i32 -1333941337, i32 -1371866206, i32 -1426332139, i32 -1481064244, i32 -1552294533, i32 -1690935098, i32 -1611170447, i32 -1833673816, i32 -1770699233, i32 -2009983462, i32 -1930228819, i32 -2119160460, i32 -2056179517, i32 1569362073, i32 1498123566, i32 1409854455, i32 1355396672, i32 1317987909, i32 1246755826, i32 1192025387, i32 1137557660, i32 2072149281, i32 2135122070, i32 1912620623, i32 1992383480, i32 1753615357, i32 1816598090, i32 1627664531, i32 1707420964, i32 295390185, i32 358241886, i32 404320391, i32 483945776, i32 43990325, i32 106832002, i32 186451547, i32 266083308, i32 932423249, i32 861060070, i32 1041341759, i32 986742920, i32 613929101, i32 542559546, i32 756411363, i32 701822548, i32 -978770311, i32 -1050133554, i32 -869589737, i32 -924188512, i32 -693284699, i32 -764654318, i32 -550540341, i32 -605129092, i32 -475935807, i32 -413084042, i32 -366743377, i32 -287118056, i32 -257573603, i32 -194731862, i32 -114850189, i32 -35218492, i32 -1984365303, i32 -1921392450, i32 -2143631769, i32 -2063868976, i32 -1698919467, i32 -1635936670, i32 -1824608069, i32 -1744851700, i32 -1347415887, i32 -1418654458, i32 -1506661409, i32 -1561119128, i32 -1129027987, i32 -1200260134, i32 -1254728445, i32 -1309196108], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 64, i64 65, i64 72, i64 77]
@__sancov_gen_cov_switch_values.10 = internal global [7 x i64] [i64 5, i64 8, i64 5, i64 64, i64 65, i64 72, i64 77]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 8, i64 64, i64 65, i64 72, i64 77]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 442, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 564, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 144, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 175, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 181, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"CRC_LUT\00", align 1
@___asan_gen_.58 = private constant [48 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_psi.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 34, i32 18 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @vidtv_psi_desc_destroy._entry, ptr @vidtv_psi_desc_destroy._entry_ptr, ptr @vidtv_psi_set_sec_len._entry, ptr @vidtv_psi_set_sec_len._entry_ptr, ptr @vidtv_psi_ts_psi_write_into._entry, ptr @vidtv_psi_ts_psi_write_into._entry.7, ptr @vidtv_psi_ts_psi_write_into._entry_ptr, ptr @vidtv_psi_ts_psi_write_into._entry_ptr.9, ptr @.str, ptr @vidtv_psi_desc_destroy._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vidtv_psi_set_sec_len._rs, ptr @.str.4, ptr @vidtv_psi_ts_psi_write_into._rs, ptr @.str.5, ptr @vidtv_psi_ts_psi_write_into._rs.6, ptr @.str.8, ptr @CRC_LUT], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_desc_destroy._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_desc_destroy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_set_sec_len._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_set_sec_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_ts_psi_write_into._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_ts_psi_write_into._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_ts_psi_write_into._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_psi_ts_psi_write_into._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CRC_LUT to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @vidtv_psi_get_pat_program_pid(ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %bitfield to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %bitfield, align 1
  %2 = and i16 %1, 8191
  ret i16 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @vidtv_psi_pmt_stream_get_elem_pid(ptr nocapture noundef readonly %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s, i32 0, i32 1
  %0 = ptrtoint ptr %bitfield to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %bitfield, align 1
  %2 = and i16 %1, 8191
  ret i16 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_service_desc_init(ptr noundef %head, i32 noundef %service_type, ptr noundef %service_name, ptr noundef %provider_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %service_name, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef nonnull %service_name) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tobool1.not = icmp eq ptr %provider_name, null
  br i1 %tobool1.not, label %cond.end.cond.end5_crit_edge, label %cond.true2

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end5

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @strlen(ptr noundef nonnull %provider_name) #14
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true2, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %call3, %cond.true2 ], [ 0, %cond.end.cond.end5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 17) #15
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %cond.end5.cleanup_crit_edge, label %if.end

cond.end5.cleanup_crit_edge:                      ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end5
  %type = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 72, ptr %type, align 4
  %add9 = add i32 %cond, 3
  %add10 = add i32 %add9, %cond6
  %conv = trunc i32 %add10 to i8
  %length = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %length, align 1
  %conv11 = trunc i32 %service_type to i8
  %service_type12 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %service_type12 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv11, ptr %service_type12, align 2
  %conv13 = trunc i32 %cond to i8
  %service_name_len14 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %service_name_len14 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv13, ptr %service_name_len14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool16.not = icmp eq i32 %cond, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %if.end.if.end20_crit_edge, label %if.then17

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call noalias ptr @kstrdup(ptr noundef nonnull %service_name, i32 noundef 3264) #11
  %service_name19 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %service_name19 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store ptr %call18, ptr %service_name19, align 1
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end.if.end20_crit_edge
  %conv21 = trunc i32 %cond6 to i8
  %provider_name_len22 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %provider_name_len22 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %provider_name_len22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond6)
  %tobool25.not = icmp eq i32 %cond6, 0
  %or.cond51 = select i1 %tobool1.not, i1 true, i1 %tobool25.not
  br i1 %or.cond51, label %if.end20.if.end29_crit_edge, label %if.then26

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call27 = tail call noalias ptr @kstrdup(ptr noundef nonnull %provider_name, i32 noundef 3264) #11
  %provider_name28 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %provider_name28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %provider_name28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end20.if.end29_crit_edge
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %if.end29.cleanup_crit_edge, label %if.end29.while.cond.i_crit_edge

if.end29.while.cond.i_crit_edge:                  ; preds = %if.end29
  br label %while.cond.i

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end29.while.cond.i_crit_edge
  %head.addr.0.i = phi ptr [ %9, %while.cond.i.while.cond.i_crit_edge ], [ %head, %if.end29.while.cond.i_crit_edge ]
  %8 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %head.addr.0.i, align 1
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %call7.i.i, ptr %head.addr.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %if.end29.cleanup_crit_edge, %cond.end5.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_registration_desc_init(ptr noundef %head, i32 noundef %format_id, ptr noundef readonly %additional_ident_info, i32 noundef %additional_info_len) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %additional_info_len, 14
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.vidtv_psi_desc_registration, ptr %call9.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %type, align 4
  %1 = trunc i32 %additional_info_len to i8
  %conv = add i8 %1, 4
  %length = getelementptr inbounds %struct.vidtv_psi_desc_registration, ptr %call9.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %length, align 1
  %format_id2 = getelementptr inbounds %struct.vidtv_psi_desc_registration, ptr %call9.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %format_id2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %format_id, ptr %format_id2, align 2
  %tobool3.not = icmp eq ptr %additional_ident_info, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %additional_info_len)
  %tobool4.not = icmp eq i32 %additional_info_len, 0
  %or.cond = or i1 %tobool3.not, %tobool4.not
  br i1 %or.cond, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %additional_identification_info = getelementptr inbounds %struct.vidtv_psi_desc_registration, ptr %call9.i.i, i32 0, i32 4
  %4 = call ptr @memcpy(ptr %additional_identification_info, ptr %additional_ident_info, i32 %additional_info_len)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %if.end6.cleanup_crit_edge, label %if.end6.while.cond.i_crit_edge

if.end6.while.cond.i_crit_edge:                   ; preds = %if.end6
  br label %while.cond.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end6.while.cond.i_crit_edge
  %head.addr.0.i = phi ptr [ %6, %while.cond.i.while.cond.i_crit_edge ], [ %head, %if.end6.while.cond.i_crit_edge ]
  %5 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %head.addr.0.i, align 1
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store ptr %call9.i.i, ptr %head.addr.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end6.cleanup_crit_edge ], [ %call9.i.i, %while.end.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_network_name_desc_init(ptr noundef %head, ptr noundef %network_name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %network_name, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef nonnull %network_name) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 10) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %type = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 64, ptr %type, align 4
  %conv = trunc i32 %cond to i8
  %length = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool4.not = icmp eq i32 %cond, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call noalias ptr @kstrdup(ptr noundef nonnull %network_name, i32 noundef 3264) #11
  %network_name7 = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %network_name7 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store ptr %call6, ptr %network_name7, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %if.end8.cleanup_crit_edge, label %if.end8.while.cond.i_crit_edge

if.end8.while.cond.i_crit_edge:                   ; preds = %if.end8
  br label %while.cond.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end8.while.cond.i_crit_edge
  %head.addr.0.i = phi ptr [ %5, %while.cond.i.while.cond.i_crit_edge ], [ %head, %if.end8.while.cond.i_crit_edge ]
  %4 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %head.addr.0.i, align 1
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store ptr %call7.i.i, ptr %head.addr.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %if.end8.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_service_list_desc_init(ptr noundef %head, ptr noundef readonly %entry1) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 10) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 65, ptr %type, align 4
  %tobool2.not52 = icmp eq ptr %entry1, null
  br i1 %tobool2.not52, label %if.end.while.end21_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end21_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end21

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %if.end.while.body_crit_edge
  %length.056 = phi i16 [ %add, %if.end19.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %prev_e.055 = phi ptr [ %call7.i.i49, %if.end19.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %head_e.054 = phi ptr [ %spec.select, %if.end19.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %entry.addr.053 = phi ptr [ %13, %if.end19.while.body_crit_edge ], [ %entry1, %if.end.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 7) #15
  %tobool4.not = icmp eq ptr %call7.i.i49, null
  br i1 %tobool4.not, label %while.cond6.preheader, label %if.end9

while.cond6.preheader:                            ; preds = %while.body
  %tobool7.not58 = icmp eq ptr %head_e.054, null
  br i1 %tobool7.not58, label %while.cond6.preheader.while.end_crit_edge, label %while.cond6.preheader.while.body8_crit_edge

while.cond6.preheader.while.body8_crit_edge:      ; preds = %while.cond6.preheader
  br label %while.body8

while.cond6.preheader.while.end_crit_edge:        ; preds = %while.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond6.preheader.while.body8_crit_edge
  %head_e.159 = phi ptr [ %4, %while.body8.while.body8_crit_edge ], [ %head_e.054, %while.cond6.preheader.while.body8_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %head_e.159, i32 0, i32 2
  %3 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load ptr, ptr %next, align 1
  tail call void @kfree(ptr noundef nonnull %head_e.159) #11
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %while.body8.while.end_crit_edge, label %while.body8.while.body8_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body8

while.body8.while.end_crit_edge:                  ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body8.while.end_crit_edge, %while.cond6.preheader.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end9:                                          ; preds = %while.body
  %5 = ptrtoint ptr %entry.addr.053 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %entry.addr.053, align 1
  %7 = ptrtoint ptr %call7.i.i49 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %call7.i.i49, align 8
  %service_type = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %entry.addr.053, i32 0, i32 1
  %8 = ptrtoint ptr %service_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %service_type, align 1
  %service_type11 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %call7.i.i49, i32 0, i32 1
  %10 = ptrtoint ptr %service_type11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %service_type11, align 2
  %add = add i16 %length.056, 3
  %tobool13.not = icmp eq ptr %head_e.054, null
  %spec.select = select i1 %tobool13.not, ptr %call7.i.i49, ptr %head_e.054
  %tobool16.not = icmp eq ptr %prev_e.055, null
  br i1 %tobool16.not, label %if.end9.if.end19_crit_edge, label %if.then17

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %next18 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %prev_e.055, i32 0, i32 2
  %11 = ptrtoint ptr %next18 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store ptr %call7.i.i49, ptr %next18, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end9.if.end19_crit_edge
  %next20 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %entry.addr.053, i32 0, i32 2
  %12 = ptrtoint ptr %next20 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load ptr, ptr %next20, align 1
  %tobool2.not = icmp eq ptr %13, null
  br i1 %tobool2.not, label %while.end21.loopexit, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end21.loopexit:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %extract.t = trunc i16 %add to i8
  br label %while.end21

while.end21:                                      ; preds = %while.end21.loopexit, %if.end.while.end21_crit_edge
  %head_e.0.lcssa = phi ptr [ null, %if.end.while.end21_crit_edge ], [ %spec.select, %while.end21.loopexit ]
  %length.0.lcssa.off0 = phi i8 [ 0, %if.end.while.end21_crit_edge ], [ %extract.t, %while.end21.loopexit ]
  %length23 = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %length23 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %length.0.lcssa.off0, ptr %length23, align 1
  %service_list = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %service_list to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store ptr %head_e.0.lcssa, ptr %service_list, align 2
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %while.end21.cleanup_crit_edge, label %while.end21.while.cond.i_crit_edge

while.end21.while.cond.i_crit_edge:               ; preds = %while.end21
  br label %while.cond.i

while.end21.cleanup_crit_edge:                    ; preds = %while.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.end21.while.cond.i_crit_edge
  %head.addr.0.i = phi ptr [ %17, %while.cond.i.while.cond.i_crit_edge ], [ %head, %while.end21.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load ptr, ptr %head.addr.0.i, align 1
  %tobool1.not.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store ptr %call7.i.i, ptr %head.addr.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %while.end21.cleanup_crit_edge, %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %while.end ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %while.end21.cleanup_crit_edge ], [ %call7.i.i, %while.end.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_short_event_desc_init(ptr noundef %head, ptr noundef %iso_language_code, ptr noundef %event_name, ptr noundef %text) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iso_language_code, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef nonnull %iso_language_code) #14
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %tobool1.not = icmp eq ptr %event_name, null
  br i1 %tobool1.not, label %cond.end.cond.end5_crit_edge, label %cond.true2

cond.end.cond.end5_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end5

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @strlen(ptr noundef nonnull %event_name) #14
  br label %cond.end5

cond.end5:                                        ; preds = %cond.true2, %cond.end.cond.end5_crit_edge
  %cond6 = phi i32 [ %call3, %cond.true2 ], [ 0, %cond.end.cond.end5_crit_edge ]
  %tobool7.not = icmp eq ptr %text, null
  br i1 %tobool7.not, label %cond.end5.cond.end11_crit_edge, label %cond.true8

cond.end5.cond.end11_crit_edge:                   ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end11

cond.true8:                                       ; preds = %cond.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 @strlen(ptr noundef nonnull %text) #14
  br label %cond.end11

cond.end11:                                       ; preds = %cond.true8, %cond.end5.cond.end11_crit_edge
  %cond12 = phi i32 [ %call9, %cond.true8 ], [ 0, %cond.end5.cond.end11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #15
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %cond.end11.cleanup_crit_edge, label %if.end

cond.end11.cleanup_crit_edge:                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %cond.end11
  %type = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 77, ptr %type, align 4
  %add15 = add i32 %cond6, 5
  %add16 = add i32 %add15, %cond12
  %conv = trunc i32 %add16 to i8
  %length = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %length, align 1
  %conv17 = trunc i32 %cond6 to i8
  %event_name_len18 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %event_name_len18 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv17, ptr %event_name_len18, align 2
  %conv19 = trunc i32 %cond12 to i8
  %text_len20 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %text_len20 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv19, ptr %text_len20, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond)
  %cmp.not = icmp eq i32 %cond, 3
  %spec.select = select i1 %cmp.not, ptr %iso_language_code, ptr @.str
  %call24 = tail call noalias ptr @kstrdup(ptr noundef %spec.select, i32 noundef 3264) #11
  %iso_language_code25 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %iso_language_code25 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store ptr %call24, ptr %iso_language_code25, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond6)
  %tobool27.not = icmp eq i32 %cond6, 0
  %or.cond = select i1 %tobool1.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %if.end.if.end31_crit_edge, label %if.then28

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call29 = tail call noalias ptr @kstrdup(ptr noundef nonnull %event_name, i32 noundef 3264) #11
  %event_name30 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %event_name30 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store ptr %call29, ptr %event_name30, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end.if.end31_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond12)
  %tobool34.not = icmp eq i32 %cond12, 0
  %or.cond63 = select i1 %tobool7.not, i1 true, i1 %tobool34.not
  br i1 %or.cond63, label %if.end31.if.end38_crit_edge, label %if.then35

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call noalias ptr @kstrdup(ptr noundef nonnull %text, i32 noundef 3264) #11
  %text37 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %text37 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call36, ptr %text37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %tobool.not.i = icmp eq ptr %head, null
  br i1 %tobool.not.i, label %if.end38.cleanup_crit_edge, label %if.end38.while.cond.i_crit_edge

if.end38.while.cond.i_crit_edge:                  ; preds = %if.end38
  br label %while.cond.i

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end38.while.cond.i_crit_edge
  %head.addr.0.i = phi ptr [ %9, %while.cond.i.while.cond.i_crit_edge ], [ %head, %if.end38.while.cond.i_crit_edge ]
  %8 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %head.addr.0.i, align 1
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %head.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store ptr %call7.i.i, ptr %head.addr.0.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.i, %if.end38.cleanup_crit_edge, %cond.end11.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_desc_clone(ptr noundef %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not58 = icmp eq ptr %desc, null
  br i1 %tobool.not58, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %entry.while.body_crit_edge
  %prev.064 = phi ptr [ %curr.054, %if.end21.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %head.061 = phi ptr [ %spec.select, %if.end21.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %desc.addr.059 = phi ptr [ %31, %if.end21.while.body_crit_edge ], [ %desc, %entry.while.body_crit_edge ]
  %type = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.059, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 72, label %sw.bb
    i8 64, label %sw.bb2
    i8 65, label %sw.bb4
    i8 77, label %sw.bb6
  ]

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %service_type = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %desc.addr.059, i32 0, i32 3
  %3 = ptrtoint ptr %service_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %service_type, align 1
  %conv1 = zext i8 %4 to i32
  %service_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %desc.addr.059, i32 0, i32 7
  %5 = ptrtoint ptr %service_name to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %service_name, align 1
  %provider_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %desc.addr.059, i32 0, i32 5
  %7 = ptrtoint ptr %provider_name to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %provider_name, align 1
  %call = tail call ptr @vidtv_psi_service_desc_init(ptr noundef %head.061, i32 noundef %conv1, ptr noundef %6, ptr noundef %8)
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %network_name = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %desc.addr.059, i32 0, i32 3
  %9 = ptrtoint ptr %network_name to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load ptr, ptr %network_name, align 1
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %sw.bb2.cond.end.i_crit_edge, label %cond.true.i

sw.bb2.cond.end.i_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @strlen(ptr noundef nonnull %10) #17
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %sw.bb2.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ 0, %sw.bb2.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 10) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %cond.end.i.cleanup_crit_edge, label %if.end.i

cond.end.i.cleanup_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %cond.end.i
  %type.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 64, ptr %type.i, align 4
  %conv.i = trunc i32 %cond.i to i8
  %length.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool4.not.i = icmp eq i32 %cond.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.end.i.if.end8.i_crit_edge, label %if.then5.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %10, i32 noundef 3264) #11
  %network_name7.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %network_name7.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store ptr %call6.i, ptr %network_name7.i, align 2
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %tobool.not.i.i = icmp eq ptr %head.061, null
  br i1 %tobool.not.i.i, label %if.end8.i.if.end14_crit_edge, label %if.end8.i.while.cond.i.i_crit_edge

if.end8.i.while.cond.i.i_crit_edge:               ; preds = %if.end8.i
  br label %while.cond.i.i

if.end8.i.if.end14_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end8.i.while.cond.i.i_crit_edge
  %head.addr.0.i.i = phi ptr [ %16, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %head.061, %if.end8.i.while.cond.i.i_crit_edge ]
  %15 = ptrtoint ptr %head.addr.0.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %head.addr.0.i.i, align 1
  %tobool1.not.i.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %head.addr.0.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store ptr %call7.i.i.i, ptr %head.addr.0.i.i, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %service_list = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %desc.addr.059, i32 0, i32 3
  %18 = ptrtoint ptr %service_list to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load ptr, ptr %service_list, align 1
  %call5 = tail call ptr @vidtv_psi_service_list_desc_init(ptr noundef %head.061, ptr noundef %19)
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %iso_language_code = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %desc.addr.059, i32 0, i32 3
  %20 = ptrtoint ptr %iso_language_code to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %iso_language_code, align 1
  %event_name = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %desc.addr.059, i32 0, i32 5
  %22 = ptrtoint ptr %event_name to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %event_name, align 1
  %text = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %desc.addr.059, i32 0, i32 7
  %24 = ptrtoint ptr %text to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %text, align 1
  %call7 = tail call ptr @vidtv_psi_short_event_desc_init(ptr noundef %head.061, ptr noundef %21, ptr noundef %23, ptr noundef %25)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %length = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.059, i32 0, i32 2
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %length, align 1
  %conv9 = zext i8 %27 to i32
  %add = add nuw nsw i32 %conv9, 6
  %call10 = tail call ptr @kmemdup(ptr noundef nonnull %desc.addr.059, i32 noundef %add, i32 noundef 3264) #11
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %sw.default.cleanup_crit_edge, label %sw.default.if.end14_crit_edge

sw.default.if.end14_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %while.end.i.i, %sw.bb
  %curr.0 = phi ptr [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call, %sw.bb ], [ %call7.i.i.i, %while.end.i.i ]
  %tobool12.not = icmp eq ptr %curr.0, null
  br i1 %tobool12.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end14_crit_edge

sw.epilog.if.end14_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog.if.end14_crit_edge, %sw.default.if.end14_crit_edge, %if.end8.i.if.end14_crit_edge
  %curr.054 = phi ptr [ %curr.0, %sw.epilog.if.end14_crit_edge ], [ %call7.i.i.i, %if.end8.i.if.end14_crit_edge ], [ %call10, %sw.default.if.end14_crit_edge ]
  %28 = ptrtoint ptr %curr.054 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store ptr null, ptr %curr.054, align 1
  %tobool15.not = icmp eq ptr %head.061, null
  %spec.select = select i1 %tobool15.not, ptr %curr.054, ptr %head.061
  %tobool18.not = icmp eq ptr %prev.064, null
  br i1 %tobool18.not, label %if.end14.if.end21_crit_edge, label %if.then19

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %prev.064 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store ptr %curr.054, ptr %prev.064, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end14.if.end21_crit_edge
  %30 = ptrtoint ptr %desc.addr.059 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load ptr, ptr %desc.addr.059, align 1
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %if.end21.cleanup_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %cond.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %cond.end.i.cleanup_crit_edge ], [ %spec.select, %if.end21.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %sw.default.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_desc_destroy(ptr noundef %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not29 = icmp eq ptr %desc, null
  br i1 %tobool.not29, label %entry.while.end13_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end13_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end13

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %curr.030 = phi ptr [ %1, %sw.epilog.while.body_crit_edge ], [ %desc, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %curr.030 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %curr.030, align 1
  %type = getelementptr inbounds %struct.vidtv_psi_desc, ptr %curr.030, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %3, label %sw.default [
    i8 72, label %sw.bb
    i8 5, label %while.body.sw.epilog_crit_edge
    i8 64, label %sw.bb1
    i8 65, label %sw.bb2
    i8 77, label %sw.bb7
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %provider_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %curr.030, i32 0, i32 5
  %5 = ptrtoint ptr %provider_name to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %provider_name, align 1
  tail call void @kfree(ptr noundef %6) #11
  %service_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %curr.030, i32 0, i32 7
  %7 = ptrtoint ptr %service_name to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %service_name, align 1
  tail call void @kfree(ptr noundef %8) #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %network_name = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %curr.030, i32 0, i32 3
  %9 = ptrtoint ptr %network_name to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load ptr, ptr %network_name, align 1
  tail call void @kfree(ptr noundef %10) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %service_list = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %curr.030, i32 0, i32 3
  %11 = ptrtoint ptr %service_list to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %service_list, align 1
  %tobool4.not27 = icmp eq ptr %12, null
  br i1 %tobool4.not27, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.while.body5_crit_edge

sw.bb2.while.body5_crit_edge:                     ; preds = %sw.bb2
  br label %while.body5

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %sw.bb2.while.body5_crit_edge
  %sl_entry.028 = phi ptr [ %14, %while.body5.while.body5_crit_edge ], [ %12, %sw.bb2.while.body5_crit_edge ]
  %next6 = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %sl_entry.028, i32 0, i32 2
  %13 = ptrtoint ptr %next6 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load ptr, ptr %next6, align 1
  tail call void @kfree(ptr noundef nonnull %sl_entry.028) #11
  %tobool4.not = icmp eq ptr %14, null
  br i1 %tobool4.not, label %while.body5.sw.epilog_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body5

while.body5.sw.epilog_crit_edge:                  ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %iso_language_code = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %curr.030, i32 0, i32 3
  %15 = ptrtoint ptr %iso_language_code to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %iso_language_code, align 1
  tail call void @kfree(ptr noundef %16) #11
  %event_name = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %curr.030, i32 0, i32 5
  %17 = ptrtoint ptr %event_name to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load ptr, ptr %event_name, align 1
  tail call void @kfree(ptr noundef %18) #11
  %text = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %curr.030, i32 0, i32 7
  %19 = ptrtoint ptr %text to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load ptr, ptr %text, align 1
  tail call void @kfree(ptr noundef %20) #11
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_desc_destroy._rs, ptr noundef nonnull @__func__.vidtv_psi_desc_destroy) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %sw.default.sw.epilog_crit_edge, label %do.end

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %type, align 1
  %conv11 = zext i8 %22 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.vidtv_psi_desc_destroy, i32 noundef 565, i32 noundef %conv11) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.default.sw.epilog_crit_edge, %sw.bb7, %while.body5.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %while.body.sw.epilog_crit_edge
  tail call void @kfree(ptr noundef nonnull %curr.030) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %sw.epilog.while.end13_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

sw.epilog.while.end13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end13

while.end13:                                      ; preds = %sw.epilog.while.end13_crit_edge, %entry.while.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_desc_assign(ptr nocapture noundef %to, ptr noundef %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to, align 4
  %cmp = icmp eq ptr %1, %desc
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vidtv_psi_desc_destroy(ptr noundef nonnull %1)
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %to, align 4
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_pmt_desc_assign(ptr nocapture noundef %pmt, ptr nocapture noundef %to, ptr noundef %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to, align 4
  %cmp.i = icmp eq ptr %1, %desc
  br i1 %cmp.i, label %entry.vidtv_psi_desc_assign.exit_crit_edge, label %if.end.i

entry.vidtv_psi_desc_assign.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_assign.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vidtv_psi_desc_destroy(ptr noundef nonnull %1) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %to, align 4
  br label %vidtv_psi_desc_assign.exit

vidtv_psi_desc_assign.exit:                       ; preds = %if.end2.i, %entry.vidtv_psi_desc_assign.exit_crit_edge
  tail call void @vidtv_psi_pmt_table_update_sec_len(ptr noundef %pmt)
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pmt, i32 0, i32 1
  %3 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bitfield.i, align 1
  %5 = and i16 %4, 4094
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %5)
  %cmp = icmp ugt i16 %5, 1021
  br i1 %cmp, label %if.then, label %vidtv_psi_desc_assign.exit.if.end_crit_edge

vidtv_psi_desc_assign.exit.if.end_crit_edge:      ; preds = %vidtv_psi_desc_assign.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %vidtv_psi_desc_assign.exit
  %6 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %to, align 4
  %cmp.i6 = icmp eq ptr %7, null
  br i1 %cmp.i6, label %if.then.if.end_crit_edge, label %if.end2.i10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end2.i10:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vidtv_psi_desc_destroy(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %to, align 4
  br label %if.end

if.end:                                           ; preds = %if.end2.i10, %if.then.if.end_crit_edge, %vidtv_psi_desc_assign.exit.if.end_crit_edge
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pmt, i32 0, i32 3
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %version.i, align 1
  %10 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %10, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pmt_table_update_sec_len(ptr nocapture noundef %pmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 4
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %stream, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 3
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %4 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %5 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %6 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %conv5.i, %while.end.i ], [ 0, %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 2
  %8 = ptrtoint ptr %bitfield2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bitfield2, align 2
  %10 = and i16 %9, -1024
  %conv7.i = or i16 %10, %retval.0.i
  store i16 %conv7.i, ptr %bitfield2, align 2
  %add4 = add i16 %retval.0.i, 9
  %tobool.not48 = icmp eq ptr %1, null
  br i1 %tobool.not48, label %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge, label %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  br label %while.body

vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %vidtv_psi_desc_comp_loop_len.exit45.while.body_crit_edge, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge
  %length.050 = phi i16 [ %add14, %vidtv_psi_desc_comp_loop_len.exit45.while.body_crit_edge ], [ %add4, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ]
  %s.049 = phi ptr [ %21, %vidtv_psi_desc_comp_loop_len.exit45.while.body_crit_edge ], [ %1, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ]
  %add7 = add i16 %length.050, 5
  %descriptor9 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s.049, i32 0, i32 3
  %11 = ptrtoint ptr %descriptor9 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %descriptor9, align 1
  %tobool.not.i33 = icmp eq ptr %12, null
  br i1 %tobool.not.i33, label %while.body.vidtv_psi_desc_comp_loop_len.exit45_crit_edge, label %while.body.while.body.i41_crit_edge

while.body.while.body.i41_crit_edge:              ; preds = %while.body
  br label %while.body.i41

while.body.vidtv_psi_desc_comp_loop_len.exit45_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit45

while.body.i41:                                   ; preds = %while.body.i41.while.body.i41_crit_edge, %while.body.while.body.i41_crit_edge
  %length.014.i34 = phi i32 [ %add4.i39, %while.body.i41.while.body.i41_crit_edge ], [ 0, %while.body.while.body.i41_crit_edge ]
  %desc.addr.013.i35 = phi ptr [ %16, %while.body.i41.while.body.i41_crit_edge ], [ %12, %while.body.while.body.i41_crit_edge ]
  %add2.i36 = add i32 %length.014.i34, 2
  %length3.i37 = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i35, i32 0, i32 2
  %13 = ptrtoint ptr %length3.i37 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length3.i37, align 1
  %conv.i38 = zext i8 %14 to i32
  %add4.i39 = add i32 %add2.i36, %conv.i38
  %15 = ptrtoint ptr %desc.addr.013.i35 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %desc.addr.013.i35, align 1
  %tobool1.not.i40 = icmp eq ptr %16, null
  br i1 %tobool1.not.i40, label %while.end.i43, label %while.body.i41.while.body.i41_crit_edge

while.body.i41.while.body.i41_crit_edge:          ; preds = %while.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i41

while.end.i43:                                    ; preds = %while.body.i41
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i42 = trunc i32 %add4.i39 to i16
  br label %vidtv_psi_desc_comp_loop_len.exit45

vidtv_psi_desc_comp_loop_len.exit45:              ; preds = %while.end.i43, %while.body.vidtv_psi_desc_comp_loop_len.exit45_crit_edge
  %retval.0.i44 = phi i16 [ %conv5.i42, %while.end.i43 ], [ 0, %while.body.vidtv_psi_desc_comp_loop_len.exit45_crit_edge ]
  %bitfield211 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s.049, i32 0, i32 2
  %17 = ptrtoint ptr %bitfield211 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bitfield211, align 2
  %19 = and i16 %18, -1024
  %conv7.i46 = or i16 %19, %retval.0.i44
  store i16 %conv7.i46, ptr %bitfield211, align 2
  %add14 = add i16 %add7, %retval.0.i44
  %next = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %s.049, i32 0, i32 4
  %20 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %vidtv_psi_desc_comp_loop_len.exit45.while.end_crit_edge, label %vidtv_psi_desc_comp_loop_len.exit45.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit45.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

vidtv_psi_desc_comp_loop_len.exit45.while.end_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %vidtv_psi_desc_comp_loop_len.exit45.while.end_crit_edge, %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge
  %length.0.lcssa = phi i16 [ %add4, %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge ], [ %add14, %vidtv_psi_desc_comp_loop_len.exit45.while.end_crit_edge ]
  %add17 = add i16 %length.0.lcssa, 4
  %bitfield.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pmt, i32 0, i32 1
  %22 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %bitfield.i.i, align 1
  %24 = and i16 %23, 4095
  %conv2.i = zext i16 %add17 to i32
  %conv4.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %24)
  %cmp.i = icmp ugt i16 %24, 1021
  br i1 %cmp.i, label %if.then.i, label %while.end.vidtv_psi_set_sec_len.exit_crit_edge

while.end.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

if.then.i:                                        ; preds = %while.end
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i47 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i47, label %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, label %do.end.i

if.then.i.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i, i32 noundef 1021, i32 noundef %conv4.i) #18
  br label %vidtv_psi_set_sec_len.exit

vidtv_psi_set_sec_len.exit:                       ; preds = %do.end.i, %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, %while.end.vidtv_psi_set_sec_len.exit_crit_edge
  %25 = and i16 %23, -8192
  %or17.i = or i16 %25, %add17
  %26 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 %or17.i, ptr %bitfield.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_sdt_desc_assign(ptr nocapture noundef %sdt, ptr nocapture noundef %to, ptr noundef %desc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %to, align 4
  %cmp.i = icmp eq ptr %1, %desc
  br i1 %cmp.i, label %entry.vidtv_psi_desc_assign.exit_crit_edge, label %if.end.i

entry.vidtv_psi_desc_assign.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_assign.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i.if.end2.i_crit_edge, label %if.then1.i

if.end.i.if.end2.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vidtv_psi_desc_destroy(ptr noundef nonnull %1) #11
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %if.end.i.if.end2.i_crit_edge
  %2 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %desc, ptr %to, align 4
  br label %vidtv_psi_desc_assign.exit

vidtv_psi_desc_assign.exit:                       ; preds = %if.end2.i, %entry.vidtv_psi_desc_assign.exit_crit_edge
  tail call void @vidtv_psi_sdt_table_update_sec_len(ptr noundef %sdt)
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %sdt, i32 0, i32 1
  %3 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bitfield.i, align 1
  %5 = and i16 %4, 4094
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %5)
  %cmp = icmp ugt i16 %5, 1021
  br i1 %cmp, label %if.then, label %vidtv_psi_desc_assign.exit.if.end_crit_edge

vidtv_psi_desc_assign.exit.if.end_crit_edge:      ; preds = %vidtv_psi_desc_assign.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %vidtv_psi_desc_assign.exit
  %6 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %to, align 4
  %cmp.i6 = icmp eq ptr %7, null
  br i1 %cmp.i6, label %if.then.if.end_crit_edge, label %if.end2.i10

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end2.i10:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @vidtv_psi_desc_destroy(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %to to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %to, align 4
  br label %if.end

if.end:                                           ; preds = %if.end2.i10, %if.then.if.end_crit_edge, %vidtv_psi_desc_assign.exit.if.end_crit_edge
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %sdt, i32 0, i32 3
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %version.i, align 1
  %10 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %10, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_sdt_table_update_sec_len(ptr nocapture noundef %sdt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %service = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %sdt, i32 0, i32 3
  %0 = ptrtoint ptr %service to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %s.022 = load ptr, ptr %service, align 1
  %tobool.not23 = icmp eq ptr %s.022, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %s.025 = phi ptr [ %s.0, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ], [ %s.022, %entry.while.body_crit_edge ]
  %length.024 = phi i32 [ %phi.cast, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ], [ 8, %entry.while.body_crit_edge ]
  %conv4 = add nuw nsw i32 %length.024, 5
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %s.025, i32 0, i32 3
  %1 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load ptr, ptr %descriptor, align 1
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %2, %while.body.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %3 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %4 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %5 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %conv5.i, %while.end.i ], [ 0, %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %s.025, i32 0, i32 2
  %7 = ptrtoint ptr %bitfield to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bitfield, align 2
  %9 = and i16 %8, -4096
  %conv7.i = or i16 %9, %retval.0.i
  store i16 %conv7.i, ptr %bitfield, align 2
  %conv5 = zext i16 %retval.0.i to i32
  %add7 = add nuw nsw i32 %conv4, %conv5
  %next = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %s.025, i32 0, i32 4
  %phi.cast = and i32 %add7, 65535
  %10 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %s.0 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %s.0, null
  br i1 %tobool.not, label %while.end.loopexit, label %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.loopexit:                               ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast26 = trunc i32 %add7 to i16
  %phi.bo = add i16 %phi.cast26, 4
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %length.0.lcssa = phi i16 [ 12, %entry.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %bitfield.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %sdt, i32 0, i32 1
  %11 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %bitfield.i.i, align 1
  %13 = and i16 %12, 4095
  %conv2.i = zext i16 %length.0.lcssa to i32
  %conv4.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %13)
  %cmp.i = icmp ugt i16 %13, 1021
  br i1 %cmp.i, label %if.then.i, label %while.end.vidtv_psi_set_sec_len.exit_crit_edge

while.end.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

if.then.i:                                        ; preds = %while.end
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i21 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i21, label %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, label %do.end.i

if.then.i.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i, i32 noundef 1021, i32 noundef %conv4.i) #18
  br label %vidtv_psi_set_sec_len.exit

vidtv_psi_set_sec_len.exit:                       ; preds = %do.end.i, %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, %while.end.vidtv_psi_set_sec_len.exit_crit_edge
  %14 = and i16 %12, -8192
  %or17.i = or i16 %14, %length.0.lcssa
  %15 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %or17.i, ptr %bitfield.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pat_table_update_sec_len(ptr nocapture noundef %pat) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pat = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 1
  %0 = ptrtoint ptr %num_pat to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %num_pat, align 1
  %conv2 = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp15.not = icmp eq i16 %1, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %length.016 = phi i32 [ %phi.bo, %for.body.for.body_crit_edge ], [ 9, %entry.for.body_crit_edge ]
  %inc = add nuw nsw i32 %i.017, 1
  %phi.cast = and i32 %length.016, 65535
  %phi.bo = add nuw nsw i32 %phi.cast, 4
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %length.0.lcssa = phi i32 [ 9, %entry.for.end_crit_edge ], [ %phi.bo, %for.body.for.end_crit_edge ]
  %bitfield.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pat, i32 0, i32 1
  %2 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %bitfield.i.i, align 1
  %4 = and i16 %3, 4095
  %conv2.i = and i32 %length.0.lcssa, 65535
  %conv4.i = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %4)
  %cmp.i = icmp ugt i16 %4, 1021
  br i1 %cmp.i, label %if.then.i, label %for.end.vidtv_psi_set_sec_len.exit_crit_edge

for.end.vidtv_psi_set_sec_len.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

if.then.i:                                        ; preds = %for.end
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i, label %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, label %do.end.i

if.then.i.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i, i32 noundef 1021, i32 noundef %conv4.i) #18
  br label %vidtv_psi_set_sec_len.exit

vidtv_psi_set_sec_len.exit:                       ; preds = %do.end.i, %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, %for.end.vidtv_psi_set_sec_len.exit_crit_edge
  %conv9 = trunc i32 %length.0.lcssa to i16
  %5 = and i16 %3, -8192
  %or17.i = or i16 %5, %conv9
  %6 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %or17.i, ptr %bitfield.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_pat_program_init(ptr noundef %head, i16 noundef zeroext %service_id, i16 noundef zeroext %program_map_pid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %service_id, ptr %call7.i.i, align 8
  %2 = or i16 %program_map_pid, -8192
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bitfield to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %bitfield, align 2
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %next, align 4
  %tobool3.not = icmp eq ptr %head, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %head.addr.0 = phi ptr [ %6, %while.cond.while.cond_crit_edge ], [ %head, %if.end.while.cond_crit_edge ]
  %next5 = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %head.addr.0, i32 0, i32 2
  %5 = ptrtoint ptr %next5 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %next5, align 1
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %next5.le = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %head.addr.0, i32 0, i32 2
  %7 = ptrtoint ptr %next5.le to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store ptr %call7.i.i, ptr %next5.le, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pat_program_destroy(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not3 = icmp eq ptr %p, null
  br i1 %tobool.not3, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %curr.04 = phi ptr [ %1, %while.body.while.body_crit_edge ], [ %p, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %curr.04, i32 0, i32 2
  %0 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %next, align 1
  tail call void @kfree(ptr noundef nonnull %curr.04) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pat_program_assign(ptr nocapture noundef %pat, ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %program1 = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 3
  %num_pat = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 1
  %bitfield.i.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pat, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %vidtv_psi_pat_table_update_sec_len.exit.do.body_crit_edge, %entry
  %p.addr.0 = phi ptr [ %p, %entry ], [ null, %vidtv_psi_pat_table_update_sec_len.exit.do.body_crit_edge ]
  %0 = ptrtoint ptr %program1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %program1, align 1
  %cmp = icmp eq ptr %p.addr.0, %1
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %while.cond.preheader

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %do.body
  %tobool.not16 = icmp eq ptr %p.addr.0, null
  br i1 %tobool.not16, label %while.end.thread, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.end.thread:                                 ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %num_pat to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 0, ptr %num_pat, align 1
  %3 = ptrtoint ptr %program1 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store ptr %p.addr.0, ptr %program1, align 1
  br label %for.end.i

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %program_count.018 = phi i16 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %program.017 = phi ptr [ %5, %while.body.while.body_crit_edge ], [ %p.addr.0, %while.cond.preheader.while.body_crit_edge ]
  %inc = add i16 %program_count.018, 1
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %program.017, i32 0, i32 2
  %4 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  %6 = ptrtoint ptr %num_pat to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %inc, ptr %num_pat, align 1
  %7 = ptrtoint ptr %program1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store ptr %p.addr.0, ptr %program1, align 1
  %conv2.i = zext i16 %inc to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %inc)
  %cmp15.not.i = icmp eq i16 %inc, 0
  br i1 %cmp15.not.i, label %while.end.for.end.i_crit_edge, label %while.end.for.body.i_crit_edge

while.end.for.body.i_crit_edge:                   ; preds = %while.end
  br label %for.body.i

while.end.for.end.i_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %while.end.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %while.end.for.body.i_crit_edge ]
  %length.016.i = phi i32 [ %phi.bo.i, %for.body.i.for.body.i_crit_edge ], [ 9, %while.end.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %phi.cast.i = and i32 %length.016.i, 65535
  %phi.bo.i = add nuw nsw i32 %phi.cast.i, 4
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %while.end.for.end.i_crit_edge, %while.end.thread
  %length.0.lcssa.i = phi i32 [ 9, %while.end.for.end.i_crit_edge ], [ 9, %while.end.thread ], [ %phi.bo.i, %for.body.i.for.end.i_crit_edge ]
  %8 = ptrtoint ptr %bitfield.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %bitfield.i.i.i, align 1
  %10 = and i16 %9, 4095
  %conv2.i.i = and i32 %length.0.lcssa.i, 65535
  %conv4.i.i = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %10)
  %cmp.i.i = icmp ugt i16 %10, 1021
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge

for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_table_update_sec_len.exit

if.then.i.i:                                      ; preds = %for.end.i
  %call6.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge, label %do.end.i.i

if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_table_update_sec_len.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i.i, i32 noundef 1021, i32 noundef %conv4.i.i) #18
  br label %vidtv_psi_pat_table_update_sec_len.exit

vidtv_psi_pat_table_update_sec_len.exit:          ; preds = %do.end.i.i, %if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge, %for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge
  %conv9.i = trunc i32 %length.0.lcssa.i to i16
  %11 = and i16 %9, -8192
  %or17.i.i = or i16 %11, %conv9.i
  %12 = ptrtoint ptr %bitfield.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %or17.i.i, ptr %bitfield.i.i.i, align 1
  %13 = and i16 %conv9.i, 4094
  %cmp3 = icmp ugt i16 %13, 1021
  br i1 %cmp3, label %vidtv_psi_pat_table_update_sec_len.exit.do.body_crit_edge, label %do.end

vidtv_psi_pat_table_update_sec_len.exit.do.body_crit_edge: ; preds = %vidtv_psi_pat_table_update_sec_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %vidtv_psi_pat_table_update_sec_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pat, i32 0, i32 3
  %14 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %version.i, align 1
  %15 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %15, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vidtv_psi_pat_table_init(i16 noundef zeroext %transport_stream_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call7.i.i, align 8
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 1
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 %transport_stream_id, ptr %id, align 1
  %current_next = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %current_next to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %current_next, align 1
  %section_id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %section_id to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %section_id, align 2
  %last_section = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %last_section to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %last_section, align 1
  %num_pat.i = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %num_pat.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pat.i, align 8
  %conv2.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp15.not.i = icmp eq i16 %7, 0
  br i1 %cmp15.not.i, label %if.end.vidtv_psi_pat_table_update_sec_len.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.vidtv_psi_pat_table_update_sec_len.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_table_update_sec_len.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %length.016.i = phi i32 [ %phi.bo.i, %for.body.i.for.body.i_crit_edge ], [ 9, %if.end.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %phi.cast.i = and i32 %length.016.i, 65535
  %phi.bo.i = add nuw nsw i32 %phi.cast.i, 4
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %vidtv_psi_pat_table_update_sec_len.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

vidtv_psi_pat_table_update_sec_len.exit.loopexit: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = trunc i32 %phi.bo.i to i16
  %phi.bo = or i16 %phi.cast, -24576
  br label %vidtv_psi_pat_table_update_sec_len.exit

vidtv_psi_pat_table_update_sec_len.exit:          ; preds = %vidtv_psi_pat_table_update_sec_len.exit.loopexit, %if.end.vidtv_psi_pat_table_update_sec_len.exit_crit_edge
  %length.0.lcssa.i = phi i16 [ -24567, %if.end.vidtv_psi_pat_table_update_sec_len.exit_crit_edge ], [ %phi.bo, %vidtv_psi_pat_table_update_sec_len.exit.loopexit ]
  %8 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %length.0.lcssa.i, ptr %bitfield, align 1
  br label %cleanup

cleanup:                                          ; preds = %vidtv_psi_pat_table_update_sec_len.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_psi_pat_write_into(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %psi_args.i63 = alloca %struct.psi_write_args, align 4
  %psi_args.i = alloca %struct.psi_write_args, align 4
  %psi_args = alloca %struct.psi_write_args, align 4
  %c_args = alloca %struct.crc32_write_args, align 4
  %crc20 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pat = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %pat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pat, align 4
  %program = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %program to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %program, align 1
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args, align 4
  %offset = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %args, i32 0, i32 1
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %continuity_counter2 = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %args, i32 0, i32 4
  %8 = ptrtoint ptr %continuity_counter2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %continuity_counter2, align 4
  %buf_sz = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %args, i32 0, i32 3
  %10 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_sz, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %12 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %13 = call ptr @memset(ptr %12, i32 255, i32 20)
  %14 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %dest_offset5 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %continuity_counter7 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %15 = call ptr @memset(ptr %from, i32 0, i32 15)
  %16 = ptrtoint ptr %continuity_counter7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %9, ptr %continuity_counter7, align 4
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %17 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz9 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %18 = ptrtoint ptr %dest_buf_sz9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %11, ptr %dest_buf_sz9, align 4
  %crc11 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_args) #11
  %19 = getelementptr inbounds i8, ptr %c_args, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %19, align 4
  %21 = ptrtoint ptr %c_args to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %c_args, align 4
  %dest_offset14 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 1
  %22 = ptrtoint ptr %dest_offset14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dest_offset14, align 4
  %crc15 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 2
  %23 = ptrtoint ptr %crc15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %crc15, align 4
  %pid16 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 3
  %24 = ptrtoint ptr %pid16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %pid16, align 4
  %continuity_counter17 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 4
  %25 = ptrtoint ptr %continuity_counter17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %continuity_counter17, align 4
  %dest_buf_sz18 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 5
  %26 = ptrtoint ptr %dest_buf_sz18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %11, ptr %dest_buf_sz18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc20) #11
  %27 = ptrtoint ptr %crc20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %crc20, align 4
  %num_pat.i = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %num_pat.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %num_pat.i, align 1
  %conv2.i = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp15.not.i = icmp eq i16 %29, 0
  br i1 %cmp15.not.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %length.016.i = phi i32 [ %phi.bo.i, %for.body.i.for.body.i_crit_edge ], [ 9, %entry.for.body.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %phi.cast.i = and i32 %length.016.i, 65535
  %phi.bo.i = add nuw nsw i32 %phi.cast.i, 4
  %exitcond.not.i = icmp eq i32 %inc.i, %conv2.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %length.0.lcssa.i = phi i32 [ 9, %entry.for.end.i_crit_edge ], [ %phi.bo.i, %for.body.i.for.end.i_crit_edge ]
  %bitfield.i.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %bitfield.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %bitfield.i.i.i, align 1
  %32 = and i16 %31, 4095
  %conv2.i.i = and i32 %length.0.lcssa.i, 65535
  %conv4.i.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %32)
  %cmp.i.i = icmp ugt i16 %32, 1021
  br i1 %cmp.i.i, label %if.then.i.i, label %for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge

for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_table_update_sec_len.exit

if.then.i.i:                                      ; preds = %for.end.i
  %call6.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge, label %do.end.i.i

if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_table_update_sec_len.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i.i, i32 noundef 1021, i32 noundef %conv4.i.i) #18
  br label %vidtv_psi_pat_table_update_sec_len.exit

vidtv_psi_pat_table_update_sec_len.exit:          ; preds = %do.end.i.i, %if.then.i.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge, %for.end.i.vidtv_psi_pat_table_update_sec_len.exit_crit_edge
  %conv9.i = trunc i32 %length.0.lcssa.i to i16
  %33 = and i16 %31, -8192
  %or17.i.i = or i16 %33, %conv9.i
  %34 = ptrtoint ptr %bitfield.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %or17.i.i, ptr %bitfield.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i) #11
  %35 = getelementptr inbounds i8, ptr %psi_args.i, i32 16
  %36 = call ptr @memset(ptr %35, i32 255, i32 12)
  %37 = ptrtoint ptr %psi_args.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %5, ptr %psi_args.i, align 4
  %from.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 1
  %38 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %1, ptr %from.i, align 4
  %len.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 2
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %len.i, align 4
  %dest_offset.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 3
  %40 = ptrtoint ptr %dest_offset.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %7, ptr %dest_offset.i, align 4
  %41 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %35, align 4
  %new_psi_section.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 5
  %42 = ptrtoint ptr %new_psi_section.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %new_psi_section.i, align 2
  %continuity_counter.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 6
  %43 = ptrtoint ptr %continuity_counter.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %9, ptr %continuity_counter.i, align 4
  %is_crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 7
  %44 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %is_crc.i, align 4
  %dest_buf_sz.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 8
  %45 = ptrtoint ptr %dest_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %11, ptr %dest_buf_sz.i, align 4
  %crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 9
  %46 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %crc20, ptr %crc.i, align 4
  %call.i = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i) #11
  %47 = ptrtoint ptr %crc11 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %crc20, ptr %crc11, align 4
  %tobool.not80 = icmp eq ptr %3, null
  br i1 %tobool.not80, label %vidtv_psi_pat_table_update_sec_len.exit.while.end_crit_edge, label %vidtv_psi_pat_table_update_sec_len.exit.while.body_crit_edge

vidtv_psi_pat_table_update_sec_len.exit.while.body_crit_edge: ; preds = %vidtv_psi_pat_table_update_sec_len.exit
  br label %while.body

vidtv_psi_pat_table_update_sec_len.exit.while.end_crit_edge: ; preds = %vidtv_psi_pat_table_update_sec_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %vidtv_psi_pat_table_update_sec_len.exit.while.body_crit_edge
  %nbytes.082 = phi i32 [ %add32, %while.body.while.body_crit_edge ], [ %call.i, %vidtv_psi_pat_table_update_sec_len.exit.while.body_crit_edge ]
  %p.081 = phi ptr [ %57, %while.body.while.body_crit_edge ], [ %3, %vidtv_psi_pat_table_update_sec_len.exit.while.body_crit_edge ]
  %48 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %p.081, ptr %from, align 4
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %len, align 4
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  %add27 = add i32 %51, %nbytes.082
  %52 = ptrtoint ptr %dest_offset5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add27, ptr %dest_offset5, align 4
  %53 = ptrtoint ptr %continuity_counter2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %continuity_counter2, align 4
  %55 = ptrtoint ptr %continuity_counter7 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %continuity_counter7, align 4
  %call31 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add32 = add i32 %call31, %nbytes.082
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %p.081, i32 0, i32 2
  %56 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %57 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %57, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %vidtv_psi_pat_table_update_sec_len.exit.while.end_crit_edge
  %nbytes.0.lcssa = phi i32 [ %call.i, %vidtv_psi_pat_table_update_sec_len.exit.while.end_crit_edge ], [ %add32, %while.body.while.end_crit_edge ]
  %58 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %offset, align 4
  %add34 = add i32 %59, %nbytes.0.lcssa
  %60 = ptrtoint ptr %dest_offset14 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add34, ptr %dest_offset14, align 4
  %61 = ptrtoint ptr %continuity_counter2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %continuity_counter2, align 4
  %63 = ptrtoint ptr %continuity_counter17 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %continuity_counter17, align 4
  %64 = ptrtoint ptr %crc20 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %crc20, align 4
  %66 = ptrtoint ptr %crc15 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %crc15, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i63) #11
  %67 = getelementptr inbounds i8, ptr %psi_args.i63, i32 16
  %68 = call ptr @memset(ptr %67, i32 255, i32 12)
  %69 = ptrtoint ptr %c_args to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %c_args, align 4
  %71 = ptrtoint ptr %psi_args.i63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %psi_args.i63, align 4
  %from.i64 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 1
  %72 = ptrtoint ptr %from.i64 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %crc15, ptr %from.i64, align 4
  %len.i66 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 2
  %73 = ptrtoint ptr %len.i66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %len.i66, align 4
  %dest_offset.i67 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 3
  %74 = ptrtoint ptr %dest_offset.i67 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %add34, ptr %dest_offset.i67, align 4
  %75 = ptrtoint ptr %pid16 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %pid16, align 4
  %77 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %67, align 4
  %new_psi_section.i71 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 5
  %78 = ptrtoint ptr %new_psi_section.i71 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %new_psi_section.i71, align 2
  %continuity_counter.i72 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 6
  %79 = ptrtoint ptr %continuity_counter.i72 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %62, ptr %continuity_counter.i72, align 4
  %is_crc.i74 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 7
  %80 = ptrtoint ptr %is_crc.i74 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 1, ptr %is_crc.i74, align 4
  %dest_buf_sz.i75 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 8
  %81 = ptrtoint ptr %dest_buf_sz18 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dest_buf_sz18, align 4
  %83 = ptrtoint ptr %dest_buf_sz.i75 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %dest_buf_sz.i75, align 4
  %crc6.i77 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i63, i32 0, i32 9
  %84 = ptrtoint ptr %crc6.i77 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %crc6.i77, align 4
  %call.i78 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i63) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i63) #11
  %add40 = add i32 %call.i78, %nbytes.0.lcssa
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc20) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_args) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  ret i32 %add40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidtv_psi_ts_psi_write_into(ptr nocapture noundef readonly %args) unnamed_addr #2 align 64 {
entry:
  %ts_header = alloca %struct.vidtv_mpeg_ts, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ts_header) #11
  %0 = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header, i32 0, i32 1
  %1 = getelementptr inbounds %struct.vidtv_mpeg_ts, ptr %ts_header, i32 0, i32 2
  %2 = ptrtoint ptr %ts_header to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 71, ptr %ts_header, align 1
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 5
  %3 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %new_psi_section, align 2, !range !38
  %5 = zext i8 %4 to i16
  %shl = shl nuw nsw i16 %5, 14
  %pid = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 4
  %6 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pid, align 4
  %or = or i16 %shl, %7
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %or, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %1, align 1
  %dest_offset = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 3
  %10 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dest_offset, align 4
  %rem = urem i32 %11, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  %len = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %crc = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 9
  %14 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crc, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.lhs.true, label %entry.if.then21_crit_edge

entry.if.then21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then21

land.lhs.true:                                    ; preds = %entry
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 7
  %16 = ptrtoint ptr %is_crc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_crc, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.then, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_ts_psi_write_into._rs, ptr noundef nonnull @__func__.vidtv_psi_ts_psi_write_into) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.then.if.end18_crit_edge, label %do.end

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vidtv_psi_ts_psi_write_into, i32 noundef 175) #18
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.then.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %18 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %crc, align 4
  %tobool20.not = icmp eq ptr %.pr, null
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21thread-pre-split

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21thread-pre-split:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr166 = load i32, ptr %len, align 4
  br label %if.then21

if.then21:                                        ; preds = %if.then21thread-pre-split, %entry.if.then21_crit_edge
  %20 = phi i32 [ %.pr166, %if.then21thread-pre-split ], [ %13, %entry.if.then21_crit_edge ]
  %21 = phi ptr [ %.pr, %if.then21thread-pre-split ], [ %15, %entry.if.then21_crit_edge ]
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not4.i = icmp eq i32 %20, 0
  br i1 %tobool.not4.i, label %if.then21.dvb_crc32.exit_crit_edge, label %while.body.i.preheader

if.then21.dvb_crc32.exit_crit_edge:               ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_crc32.exit

while.body.i.preheader:                           ; preds = %if.then21
  %from = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 1
  %24 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %from, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %len.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %20, %while.body.i.preheader ]
  %data.addr.06.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %25, %while.body.i.preheader ]
  %crc.addr.05.i = phi i32 [ %xor1.i, %while.body.i.while.body.i_crit_edge ], [ %23, %while.body.i.preheader ]
  %dec.i = add i32 %len.addr.07.i, -1
  %shl.i = shl i32 %crc.addr.05.i, 8
  %shr.i = lshr i32 %crc.addr.05.i, 24
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.06.i, i32 1
  %26 = ptrtoint ptr %data.addr.06.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data.addr.06.i, align 1
  %conv.i = zext i8 %27 to i32
  %xor.i = xor i32 %shr.i, %conv.i
  %arrayidx.i = getelementptr [256 x i32], ptr @CRC_LUT, i32 0, i32 %xor.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %xor1.i = xor i32 %29, %shl.i
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.dvb_crc32.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.dvb_crc32.exit_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dvb_crc32.exit

dvb_crc32.exit:                                   ; preds = %while.body.i.dvb_crc32.exit_crit_edge, %if.then21.dvb_crc32.exit_crit_edge
  %crc.addr.0.lcssa.i = phi i32 [ %23, %if.then21.dvb_crc32.exit_crit_edge ], [ %xor1.i, %while.body.i.dvb_crc32.exit_crit_edge ]
  %30 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %crc.addr.0.lcssa.i, ptr %21, align 4
  br label %if.end26

if.end26:                                         ; preds = %dvb_crc32.exit, %if.end18.if.end26_crit_edge
  %31 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %new_psi_section, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.not = icmp eq i8 %32, 0
  %brmerge = select i1 %tobool28.not, i1 true, i1 %cmp
  br i1 %brmerge, label %if.end26.if.end45_crit_edge, label %if.then32

if.end26.if.end45_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end45

if.then32:                                        ; preds = %if.end26
  %call33 = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_ts_psi_write_into._rs.6, ptr noundef nonnull @__func__.vidtv_psi_ts_psi_write_into) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then32.if.end41_crit_edge, label %do.end38

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

do.end38:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #13
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.vidtv_psi_ts_psi_write_into, i32 noundef 181) #18
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %if.then32.if.end41_crit_edge
  %33 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args, align 4
  %35 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dest_offset, align 4
  %dest_buf_sz = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 8
  %37 = ptrtoint ptr %dest_buf_sz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dest_buf_sz, align 4
  %sub = sub nuw nsw i32 188, %rem
  %call43 = tail call i32 @vidtv_memset(ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 255, i32 noundef %sub) #11
  br label %if.end45

if.end45:                                         ; preds = %if.end41, %if.end26.if.end45_crit_edge
  %nbytes.0 = phi i32 [ %call43, %if.end41 ], [ 0, %if.end26.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool46.not167 = icmp eq i32 %13, 0
  br i1 %tobool46.not167, label %if.end45.while.end_crit_edge, label %while.body.lr.ph

if.end45.while.end_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end45
  %continuity_counter = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 6
  %dest_buf_sz61 = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 8
  %from87 = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %while.body.lr.ph
  %remaining_len.0170 = phi i32 [ %13, %while.body.lr.ph ], [ %sub90, %if.end75.while.body_crit_edge ]
  %nbytes.1169 = phi i32 [ %nbytes.0, %while.body.lr.ph ], [ %add89, %if.end75.while.body_crit_edge ]
  %payload_offset.0168 = phi i32 [ 0, %while.body.lr.ph ], [ %add91, %if.end75.while.body_crit_edge ]
  %39 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dest_offset, align 4
  %add48 = add i32 %40, %nbytes.1169
  %rem49 = urem i32 %add48, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem49)
  %cmp50 = icmp eq i32 %rem49, 0
  br i1 %cmp50, label %if.then54, label %while.body.if.end65_crit_edge

while.body.if.end65_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65

if.then54:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %continuity_counter to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %continuity_counter, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %42, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load55 = load i8, ptr %1, align 1
  %bf.shl = shl i8 %44, 4
  %bf.clear56 = and i8 %bf.load55, 15
  %bf.set57 = or i8 %bf.clear56, %bf.shl
  store i8 %bf.set57, ptr %1, align 1
  %46 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %args, align 4
  %48 = ptrtoint ptr %dest_buf_sz61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dest_buf_sz61, align 4
  %call62 = call i32 @vidtv_memcpy(ptr noundef %47, i32 noundef %add48, i32 noundef %49, ptr noundef nonnull %ts_header, i32 noundef 4) #11
  %add63 = add i32 %call62, %nbytes.1169
  %50 = ptrtoint ptr %continuity_counter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %continuity_counter, align 4
  call void @vidtv_ts_inc_cc(ptr noundef %51) #11
  br label %if.end65

if.end65:                                         ; preds = %if.then54, %while.body.if.end65_crit_edge
  %nbytes.2 = phi i32 [ %add63, %if.then54 ], [ %nbytes.1169, %while.body.if.end65_crit_edge ]
  %52 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %new_psi_section, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool67.not = icmp eq i8 %53, 0
  br i1 %tobool67.not, label %if.end65.if.end75_crit_edge, label %if.then68

if.end65.if.end75_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args, align 4
  %56 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dest_offset, align 4
  %add71 = add i32 %57, %nbytes.2
  %58 = ptrtoint ptr %dest_buf_sz61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dest_buf_sz61, align 4
  %call73 = call i32 @vidtv_memset(ptr noundef %55, i32 noundef %add71, i32 noundef %59, i32 noundef 0, i32 noundef 1) #11
  %add74 = add i32 %call73, %nbytes.2
  br label %if.end75

if.end75:                                         ; preds = %if.then68, %if.end65.if.end75_crit_edge
  %nbytes.3 = phi i32 [ %add74, %if.then68 ], [ %nbytes.2, %if.end65.if.end75_crit_edge ]
  %60 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dest_offset, align 4
  %add77 = add i32 %61, %nbytes.3
  %rem78 = urem i32 %add77, 188
  %sub79 = sub nuw nsw i32 188, %rem78
  %62 = call i32 @llvm.umin.i32(i32 %sub79, i32 %remaining_len.0170)
  %63 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %args, align 4
  %65 = ptrtoint ptr %dest_buf_sz61 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dest_buf_sz61, align 4
  %67 = ptrtoint ptr %from87 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %from87, align 4
  %add.ptr = getelementptr i8, ptr %68, i32 %payload_offset.0168
  %call88 = call i32 @vidtv_memcpy(ptr noundef %64, i32 noundef %add77, i32 noundef %66, ptr noundef %add.ptr, i32 noundef %62) #11
  %add89 = add i32 %call88, %nbytes.3
  %sub90 = sub i32 %remaining_len.0170, %62
  %add91 = add i32 %62, %payload_offset.0168
  %tobool46.not = icmp eq i32 %sub90, 0
  br i1 %tobool46.not, label %if.end75.while.end_crit_edge, label %if.end75.while.body_crit_edge

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end75.while.end_crit_edge, %if.end45.while.end_crit_edge
  %nbytes.1.lcssa = phi i32 [ %nbytes.0, %if.end45.while.end_crit_edge ], [ %add89, %if.end75.while.end_crit_edge ]
  %is_crc95 = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 7
  %69 = ptrtoint ptr %is_crc95 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_crc95, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool96.not = icmp eq i8 %70, 0
  br i1 %tobool96.not, label %while.end.if.end105_crit_edge, label %if.then97

while.end.if.end105_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then97:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %dest_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dest_offset, align 4
  %add93 = add i32 %72, %nbytes.1.lcssa
  %rem94 = urem i32 %add93, 188
  %73 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %args, align 4
  %dest_buf_sz101 = getelementptr inbounds %struct.psi_write_args, ptr %args, i32 0, i32 8
  %75 = ptrtoint ptr %dest_buf_sz101 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dest_buf_sz101, align 4
  %sub102 = sub nuw nsw i32 188, %rem94
  %call103 = call i32 @vidtv_memset(ptr noundef %74, i32 noundef %add93, i32 noundef %76, i32 noundef 255, i32 noundef %sub102) #11
  %add104 = add i32 %call103, %nbytes.1.lcssa
  br label %if.end105

if.end105:                                        ; preds = %if.then97, %while.end.if.end105_crit_edge
  %nbytes.4 = phi i32 [ %add104, %if.then97 ], [ %nbytes.1.lcssa, %while.end.if.end105_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ts_header) #11
  ret i32 %nbytes.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pat_table_destroy(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %program = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %program to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %program, align 1
  %tobool.not3.i = icmp eq ptr %1, null
  br i1 %tobool.not3.i, label %entry.vidtv_psi_pat_program_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_pat_program_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_program_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %curr.04.i = phi ptr [ %3, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %curr.04.i, i32 0, i32 2
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %next.i, align 1
  tail call void @kfree(ptr noundef nonnull %curr.04.i) #11
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_psi_pat_program_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.vidtv_psi_pat_program_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pat_program_destroy.exit

vidtv_psi_pat_program_destroy.exit:               ; preds = %while.body.i.vidtv_psi_pat_program_destroy.exit_crit_edge, %entry.vidtv_psi_pat_program_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %p) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_pmt_stream_init(ptr noundef %head, i32 noundef %stream_type, i16 noundef zeroext %es_pid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 13) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %stream_type to i8
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %call7.i.i, align 8
  %2 = or i16 %es_pid, -8192
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %2, ptr %bitfield, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %descriptor, align 1
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %9, %while.body.i.while.body.i_crit_edge ], [ %5, %if.end.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %6 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %7 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %8 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  %phi.bo = or i16 %conv5.i, -4096
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo, %while.end.i ], [ -4096, %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %bitfield2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %retval.0.i, ptr %bitfield2, align 1
  %next = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %next to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store ptr null, ptr %next, align 1
  %tobool7.not = icmp eq ptr %head, null
  br i1 %tobool7.not, label %vidtv_psi_desc_comp_loop_len.exit.cleanup_crit_edge, label %vidtv_psi_desc_comp_loop_len.exit.while.cond_crit_edge

vidtv_psi_desc_comp_loop_len.exit.while.cond_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  br label %while.cond

vidtv_psi_desc_comp_loop_len.exit.cleanup_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %vidtv_psi_desc_comp_loop_len.exit.while.cond_crit_edge
  %head.addr.0 = phi ptr [ %13, %while.cond.while.cond_crit_edge ], [ %head, %vidtv_psi_desc_comp_loop_len.exit.while.cond_crit_edge ]
  %next9 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %head.addr.0, i32 0, i32 4
  %12 = ptrtoint ptr %next9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load ptr, ptr %next9, align 1
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %next9.le = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %head.addr.0, i32 0, i32 4
  %14 = ptrtoint ptr %next9.le to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store ptr %call7.i.i, ptr %next9.le, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %vidtv_psi_desc_comp_loop_len.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pmt_stream_destroy(ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not4 = icmp eq ptr %s, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %curr_stream.05 = phi ptr [ %1, %while.body.while.body_crit_edge ], [ %s, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05, i32 0, i32 4
  %0 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %next, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05, i32 0, i32 3
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %3)
  tail call void @kfree(ptr noundef nonnull %curr_stream.05) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pmt_stream_assign(ptr nocapture noundef %pmt, ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 4
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pmt, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %s.addr.0 = phi ptr [ %s, %entry ], [ null, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %stream, align 1
  %cmp = icmp eq ptr %s.addr.0, %1
  br i1 %cmp, label %do.body.return_crit_edge, label %if.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store ptr %s.addr.0, ptr %stream, align 1
  tail call void @vidtv_psi_pmt_table_update_sec_len(ptr noundef %pmt)
  %3 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bitfield.i, align 1
  %5 = and i16 %4, 4094
  %cmp2 = icmp ugt i16 %5, 1021
  br i1 %cmp2, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %pmt, i32 0, i32 3
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %version.i, align 1
  %7 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %7, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @vidtv_psi_pmt_get_pid(ptr nocapture noundef readonly %section, ptr nocapture noundef readonly %pat) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %program1 = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 3
  %0 = ptrtoint ptr %program1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %program.08 = load ptr, ptr %program1, align 1
  %tobool.not9 = icmp eq ptr %program.08, null
  br i1 %tobool.not9, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %section, i32 0, i32 2
  %1 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %id, align 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %program.010 = phi ptr [ %program.08, %while.body.lr.ph ], [ %program.0, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %program.010 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %program.010, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %2)
  %cmp = icmp eq i16 %4, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %program.010, i32 0, i32 1
  %5 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %bitfield.i, align 1
  %7 = and i16 %6, 8191
  br label %cleanup

if.end:                                           ; preds = %while.body
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %program.010, i32 0, i32 2
  %8 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %program.0 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %program.0, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.then ], [ 8192, %entry.cleanup_crit_edge ], [ 8192, %if.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vidtv_psi_pmt_table_init(i16 noundef zeroext %program_number, i16 noundef zeroext %pcr_pid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pcr_pid)
  %tobool1.not = icmp eq i16 %pcr_pid, 0
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %call7.i.i, align 8
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -20480, ptr %bitfield, align 1
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %program_number, ptr %id, align 1
  %current_next = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %current_next to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %current_next, align 1
  %section_id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %section_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %section_id, align 2
  %last_section = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %last_section to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_section, align 1
  %pcr_pid.op = or i16 %pcr_pid, -8192
  %7 = select i1 %tobool1.not, i16 -1, i16 %pcr_pid.op
  %bitfield18 = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bitfield18 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %bitfield18, align 8
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %descriptor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %descriptor, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.end.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %14, %while.body.i.while.body.i_crit_edge ], [ %10, %if.end.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %11 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %12 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %13 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %14, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  %phi.bo = or i16 %conv5.i, -4096
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.bo, %while.end.i ], [ -4096, %if.end.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %bitfield2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %retval.0.i, ptr %bitfield2, align 2
  tail call void @vidtv_psi_pmt_table_update_sec_len(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %vidtv_psi_desc_comp_loop_len.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_psi_pmt_write_into(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %psi_args.i136 = alloca %struct.psi_write_args, align 4
  %psi_args.i = alloca %struct.psi_write_args, align 4
  %crc = alloca i32, align 4
  %psi_args = alloca %struct.psi_write_args, align 4
  %d_args = alloca %struct.desc_write_args, align 4
  %c_args = alloca %struct.crc32_write_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pmt = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %pmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmt, align 4
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  %stream2 = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %stream2 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %stream2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #11
  %6 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %crc, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args, align 4
  %offset = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %args, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset, align 4
  %pid4 = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %args, i32 0, i32 3
  %11 = ptrtoint ptr %pid4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pid4, align 4
  %continuity_counter5 = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %args, i32 0, i32 5
  %13 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %continuity_counter5, align 4
  %buf_sz = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %args, i32 0, i32 4
  %15 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buf_sz, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %17 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %18 = call ptr @memset(ptr %17, i32 255, i32 12)
  %19 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %8, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %bitfield, ptr %from, align 4
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %len, align 4
  %dest_offset10 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %pid11 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 4
  %22 = ptrtoint ptr %pid11 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %12, ptr %pid11, align 4
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 5
  %23 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %new_psi_section, align 2
  %continuity_counter13 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %24 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz14 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %25 = ptrtoint ptr %dest_buf_sz14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %16, ptr %dest_buf_sz14, align 4
  %crc16 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  %26 = ptrtoint ptr %crc16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %crc, ptr %crc16, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %d_args) #11
  %27 = getelementptr inbounds i8, ptr %d_args, i32 12
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %27, align 4
  %29 = ptrtoint ptr %d_args to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %8, ptr %d_args, align 4
  %dest_offset19 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 1
  %30 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dest_offset19, align 4
  %desc = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 2
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %desc, align 4
  %pid20 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 3
  %32 = ptrtoint ptr %pid20 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %12, ptr %pid20, align 4
  %continuity_counter22 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 4
  %33 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %continuity_counter22, align 4
  %dest_buf_sz23 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 5
  %34 = ptrtoint ptr %dest_buf_sz23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %16, ptr %dest_buf_sz23, align 4
  %crc25 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 6
  %35 = ptrtoint ptr %crc25 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %crc25, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_args) #11
  %36 = getelementptr inbounds i8, ptr %c_args, i32 12
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %36, align 4
  %38 = ptrtoint ptr %c_args to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %8, ptr %c_args, align 4
  %dest_offset28 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 1
  %39 = ptrtoint ptr %dest_offset28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %dest_offset28, align 4
  %crc29 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 2
  %40 = ptrtoint ptr %crc29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %crc29, align 4
  %pid30 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 3
  %41 = ptrtoint ptr %pid30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %12, ptr %pid30, align 4
  %continuity_counter32 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 4
  %42 = ptrtoint ptr %continuity_counter32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %continuity_counter32, align 4
  %dest_buf_sz33 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 5
  %43 = ptrtoint ptr %dest_buf_sz33 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %16, ptr %dest_buf_sz33, align 4
  call void @vidtv_psi_pmt_table_update_sec_len(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i) #11
  %44 = getelementptr inbounds i8, ptr %psi_args.i, i32 16
  %45 = call ptr @memset(ptr %44, i32 255, i32 12)
  %46 = ptrtoint ptr %psi_args.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %8, ptr %psi_args.i, align 4
  %from.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 1
  %47 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %1, ptr %from.i, align 4
  %len.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 2
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %len.i, align 4
  %dest_offset.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 3
  %49 = ptrtoint ptr %dest_offset.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %10, ptr %dest_offset.i, align 4
  %50 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %12, ptr %44, align 4
  %new_psi_section.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 5
  %51 = ptrtoint ptr %new_psi_section.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %new_psi_section.i, align 2
  %continuity_counter.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 6
  %52 = ptrtoint ptr %continuity_counter.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %14, ptr %continuity_counter.i, align 4
  %is_crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 7
  %53 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %is_crc.i, align 4
  %dest_buf_sz.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 8
  %54 = ptrtoint ptr %dest_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %16, ptr %dest_buf_sz.i, align 4
  %crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 9
  %55 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %crc, ptr %crc.i, align 4
  %call.i = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i) #11
  %56 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %offset, align 4
  %add38 = add i32 %57, %call.i
  %58 = ptrtoint ptr %dest_offset10 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add38, ptr %dest_offset10, align 4
  %59 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %continuity_counter5, align 4
  %61 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %continuity_counter13, align 4
  %call42 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add43 = add i32 %call42, %call.i
  %tobool.not153 = icmp eq ptr %3, null
  br i1 %tobool.not153, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %nbytes.0155 = phi i32 [ %add51, %while.body.while.body_crit_edge ], [ %add43, %entry.while.body_crit_edge ]
  %table_descriptor.0154 = phi ptr [ %70, %while.body.while.body_crit_edge ], [ %3, %entry.while.body_crit_edge ]
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %add45 = add i32 %63, %nbytes.0155
  %64 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add45, ptr %dest_offset19, align 4
  %65 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %continuity_counter5, align 4
  %67 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %continuity_counter22, align 4
  %68 = ptrtoint ptr %crc25 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %crc, ptr %crc25, align 4
  %call50 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add51 = add i32 %call50, %nbytes.0155
  %69 = ptrtoint ptr %table_descriptor.0154 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %70 = load ptr, ptr %table_descriptor.0154, align 1
  %tobool.not = icmp eq ptr %70, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %nbytes.0.lcssa = phi i32 [ %add43, %entry.while.end_crit_edge ], [ %add51, %while.body.while.end_crit_edge ]
  %71 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 5, ptr %len, align 4
  %tobool55.not161 = icmp eq ptr %5, null
  br i1 %tobool55.not161, label %while.end.while.end81_crit_edge, label %while.end.while.body56_crit_edge

while.end.while.body56_crit_edge:                 ; preds = %while.end
  br label %while.body56

while.end.while.end81_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end81

while.body56:                                     ; preds = %while.end79.while.body56_crit_edge, %while.end.while.body56_crit_edge
  %nbytes.1163 = phi i32 [ %nbytes.2.lcssa, %while.end79.while.body56_crit_edge ], [ %nbytes.0.lcssa, %while.end.while.body56_crit_edge ]
  %stream.0162 = phi ptr [ %90, %while.end79.while.body56_crit_edge ], [ %5, %while.end.while.body56_crit_edge ]
  %72 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %stream.0162, ptr %from, align 4
  %73 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %offset, align 4
  %add59 = add i32 %74, %nbytes.1163
  %75 = ptrtoint ptr %dest_offset10 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add59, ptr %dest_offset10, align 4
  %76 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %continuity_counter5, align 4
  %78 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %continuity_counter13, align 4
  %call63 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add64 = add i32 %call63, %nbytes.1163
  %descriptor65 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %stream.0162, i32 0, i32 3
  %79 = ptrtoint ptr %descriptor65 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %stream_descriptor.0156 = load ptr, ptr %descriptor65, align 1
  %tobool67.not157 = icmp eq ptr %stream_descriptor.0156, null
  br i1 %tobool67.not157, label %while.body56.while.end79_crit_edge, label %while.body56.while.body68_crit_edge

while.body56.while.body68_crit_edge:              ; preds = %while.body56
  br label %while.body68

while.body56.while.end79_crit_edge:               ; preds = %while.body56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end79

while.body68:                                     ; preds = %while.body68.while.body68_crit_edge, %while.body56.while.body68_crit_edge
  %stream_descriptor.0159 = phi ptr [ %stream_descriptor.0, %while.body68.while.body68_crit_edge ], [ %stream_descriptor.0156, %while.body56.while.body68_crit_edge ]
  %nbytes.2158 = phi i32 [ %add77, %while.body68.while.body68_crit_edge ], [ %add64, %while.body56.while.body68_crit_edge ]
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %add70 = add i32 %81, %nbytes.2158
  %82 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add70, ptr %dest_offset19, align 4
  %83 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %stream_descriptor.0159, ptr %desc, align 4
  %84 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %continuity_counter5, align 4
  %86 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %continuity_counter22, align 4
  %87 = ptrtoint ptr %crc25 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %crc, ptr %crc25, align 4
  %call76 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add77 = add i32 %call76, %nbytes.2158
  %88 = ptrtoint ptr %stream_descriptor.0159 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %stream_descriptor.0 = load ptr, ptr %stream_descriptor.0159, align 1
  %tobool67.not = icmp eq ptr %stream_descriptor.0, null
  br i1 %tobool67.not, label %while.body68.while.end79_crit_edge, label %while.body68.while.body68_crit_edge

while.body68.while.body68_crit_edge:              ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body68

while.body68.while.end79_crit_edge:               ; preds = %while.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end79

while.end79:                                      ; preds = %while.body68.while.end79_crit_edge, %while.body56.while.end79_crit_edge
  %nbytes.2.lcssa = phi i32 [ %add64, %while.body56.while.end79_crit_edge ], [ %add77, %while.body68.while.end79_crit_edge ]
  %next80 = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %stream.0162, i32 0, i32 4
  %89 = ptrtoint ptr %next80 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load ptr, ptr %next80, align 1
  %tobool55.not = icmp eq ptr %90, null
  br i1 %tobool55.not, label %while.end79.while.end81_crit_edge, label %while.end79.while.body56_crit_edge

while.end79.while.body56_crit_edge:               ; preds = %while.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body56

while.end79.while.end81_crit_edge:                ; preds = %while.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end81

while.end81:                                      ; preds = %while.end79.while.end81_crit_edge, %while.end.while.end81_crit_edge
  %nbytes.1.lcssa = phi i32 [ %nbytes.0.lcssa, %while.end.while.end81_crit_edge ], [ %nbytes.2.lcssa, %while.end79.while.end81_crit_edge ]
  %91 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset, align 4
  %add83 = add i32 %92, %nbytes.1.lcssa
  %93 = ptrtoint ptr %dest_offset28 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add83, ptr %dest_offset28, align 4
  %94 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %crc, align 4
  %96 = ptrtoint ptr %crc29 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %crc29, align 4
  %97 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %continuity_counter5, align 4
  %99 = ptrtoint ptr %continuity_counter32 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %98, ptr %continuity_counter32, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i136) #11
  %100 = getelementptr inbounds i8, ptr %psi_args.i136, i32 16
  %101 = call ptr @memset(ptr %100, i32 255, i32 12)
  %102 = ptrtoint ptr %c_args to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %c_args, align 4
  %104 = ptrtoint ptr %psi_args.i136 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %103, ptr %psi_args.i136, align 4
  %from.i137 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 1
  %105 = ptrtoint ptr %from.i137 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %crc29, ptr %from.i137, align 4
  %len.i139 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 2
  %106 = ptrtoint ptr %len.i139 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 4, ptr %len.i139, align 4
  %dest_offset.i140 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 3
  %107 = ptrtoint ptr %dest_offset.i140 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add83, ptr %dest_offset.i140, align 4
  %108 = ptrtoint ptr %pid30 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %pid30, align 4
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %100, align 4
  %new_psi_section.i144 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 5
  %111 = ptrtoint ptr %new_psi_section.i144 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %new_psi_section.i144, align 2
  %continuity_counter.i145 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 6
  %112 = ptrtoint ptr %continuity_counter.i145 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %98, ptr %continuity_counter.i145, align 4
  %is_crc.i147 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 7
  %113 = ptrtoint ptr %is_crc.i147 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %is_crc.i147, align 4
  %dest_buf_sz.i148 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 8
  %114 = ptrtoint ptr %dest_buf_sz33 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dest_buf_sz33, align 4
  %116 = ptrtoint ptr %dest_buf_sz.i148 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %dest_buf_sz.i148, align 4
  %crc6.i150 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i136, i32 0, i32 9
  %117 = ptrtoint ptr %crc6.i150 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %crc6.i150, align 4
  %call.i151 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i136) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i136) #11
  %add89 = add i32 %call.i151, %nbytes.1.lcssa
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_args) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %d_args) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #11
  ret i32 %add89
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidtv_psi_desc_write_into(ptr nocapture noundef readonly %args) unnamed_addr #2 align 64 {
entry:
  %psi_args = alloca %struct.psi_write_args, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %0 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %4 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %desc = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 2
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %type = getelementptr inbounds %struct.vidtv_psi_desc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %type, ptr %from, align 4
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len, align 4
  %dest_offset = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %pid = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 4
  %pid2 = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 3
  %9 = ptrtoint ptr %pid2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pid2, align 4
  %11 = ptrtoint ptr %pid to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %pid, align 4
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 5
  %12 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %new_psi_section, align 2
  %continuity_counter = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %continuity_counter3 = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 4
  %13 = ptrtoint ptr %continuity_counter3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %continuity_counter3, align 4
  %15 = ptrtoint ptr %continuity_counter to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %continuity_counter, align 4
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %16 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %dest_buf_sz4 = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 5
  %17 = ptrtoint ptr %dest_buf_sz4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dest_buf_sz4, align 4
  %19 = ptrtoint ptr %dest_buf_sz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dest_buf_sz, align 4
  %crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  %crc5 = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 6
  %20 = ptrtoint ptr %crc5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crc5, align 4
  %22 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %crc, align 4
  %dest_offset6 = getelementptr inbounds %struct.desc_write_args, ptr %args, i32 0, i32 1
  %23 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dest_offset6, align 4
  %25 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dest_offset, align 4
  %call = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %type10 = getelementptr inbounds %struct.vidtv_psi_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %type10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type10, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %29, label %sw.default [
    i8 72, label %sw.bb
    i8 64, label %sw.bb48
    i8 65, label %sw.bb59
    i8 77, label %sw.bb68
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dest_offset6, align 4
  %add12 = add i32 %32, %call
  %33 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add12, ptr %dest_offset, align 4
  %34 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len, align 4
  %service_type = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %27, i32 0, i32 3
  %35 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %service_type, ptr %from, align 4
  %call17 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add18 = add i32 %call17, %call
  %36 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dest_offset6, align 4
  %add20 = add i32 %37, %add18
  %38 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %add20, ptr %dest_offset, align 4
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc, align 4
  %provider_name_len = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %provider_name_len to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %provider_name_len, align 1
  %conv23 = zext i8 %42 to i32
  %43 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv23, ptr %len, align 4
  %provider_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %40, i32 0, i32 5
  %44 = ptrtoint ptr %provider_name to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load ptr, ptr %provider_name, align 1
  %46 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %from, align 4
  %call27 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add28 = add i32 %call27, %add18
  %47 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dest_offset6, align 4
  %add30 = add i32 %48, %add28
  %49 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add30, ptr %dest_offset, align 4
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %len, align 4
  %51 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc, align 4
  %service_name_len = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %service_name_len, ptr %from, align 4
  %call35 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add36 = add i32 %call35, %add28
  %54 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dest_offset6, align 4
  %add38 = add i32 %55, %add36
  %56 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add38, ptr %dest_offset, align 4
  %57 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc, align 4
  %service_name_len41 = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %service_name_len41 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %service_name_len41, align 1
  %conv42 = zext i8 %60 to i32
  %61 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv42, ptr %len, align 4
  %service_name = getelementptr inbounds %struct.vidtv_psi_desc_service, ptr %58, i32 0, i32 7
  %62 = ptrtoint ptr %service_name to i32
  call void @__asan_loadN_noabort(i32 %62, i32 4)
  %63 = load ptr, ptr %service_name, align 1
  br label %sw.epilog.sink.split

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dest_offset6, align 4
  %add50 = add i32 %65, %call
  %66 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add50, ptr %dest_offset, align 4
  %length = getelementptr inbounds %struct.vidtv_psi_desc, ptr %27, i32 0, i32 2
  %67 = ptrtoint ptr %length to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %length, align 1
  %conv53 = zext i8 %68 to i32
  %69 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv53, ptr %len, align 4
  %network_name = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %27, i32 0, i32 3
  %70 = ptrtoint ptr %network_name to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %71 = load ptr, ptr %network_name, align 1
  br label %sw.epilog.sink.split

sw.bb59:                                          ; preds = %entry
  %service_list = getelementptr inbounds %struct.vidtv_psi_desc_service_list, ptr %27, i32 0, i32 3
  %72 = ptrtoint ptr %service_list to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %serv_list_entry.0192 = load ptr, ptr %service_list, align 1
  %tobool.not193 = icmp eq ptr %serv_list_entry.0192, null
  br i1 %tobool.not193, label %sw.bb59.sw.epilog_crit_edge, label %sw.bb59.while.body_crit_edge

sw.bb59.while.body_crit_edge:                     ; preds = %sw.bb59
  br label %while.body

sw.bb59.sw.epilog_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sw.bb59.while.body_crit_edge
  %serv_list_entry.0195 = phi ptr [ %serv_list_entry.0, %while.body.while.body_crit_edge ], [ %serv_list_entry.0192, %sw.bb59.while.body_crit_edge ]
  %nbytes.0194 = phi i32 [ %add67, %while.body.while.body_crit_edge ], [ %call, %sw.bb59.while.body_crit_edge ]
  %73 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dest_offset6, align 4
  %add62 = add i32 %74, %nbytes.0194
  %75 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add62, ptr %dest_offset, align 4
  %76 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3, ptr %len, align 4
  %77 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %serv_list_entry.0195, ptr %from, align 4
  %call66 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add67 = add i32 %call66, %nbytes.0194
  %next = getelementptr inbounds %struct.vidtv_psi_desc_service_list_entry, ptr %serv_list_entry.0195, i32 0, i32 2
  %78 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %serv_list_entry.0 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %serv_list_entry.0, null
  br i1 %tobool.not, label %while.body.sw.epilog_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dest_offset6, align 4
  %add70 = add i32 %80, %call
  %81 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add70, ptr %dest_offset, align 4
  %82 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %len, align 4
  %iso_language_code = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %27, i32 0, i32 3
  %83 = ptrtoint ptr %iso_language_code to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load ptr, ptr %iso_language_code, align 1
  %85 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %from, align 4
  %call75 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add76 = add i32 %call75, %call
  %86 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dest_offset6, align 4
  %add78 = add i32 %87, %add76
  %88 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add78, ptr %dest_offset, align 4
  %89 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %len, align 4
  %90 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc, align 4
  %event_name_len = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %91, i32 0, i32 4
  %92 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %event_name_len, ptr %from, align 4
  %call83 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add84 = add i32 %call83, %add76
  %93 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dest_offset6, align 4
  %add86 = add i32 %94, %add84
  %95 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add86, ptr %dest_offset, align 4
  %96 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %desc, align 4
  %event_name_len89 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %event_name_len89 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %event_name_len89, align 1
  %conv90 = zext i8 %99 to i32
  %100 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %conv90, ptr %len, align 4
  %event_name = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %97, i32 0, i32 5
  %101 = ptrtoint ptr %event_name to i32
  call void @__asan_loadN_noabort(i32 %101, i32 4)
  %102 = load ptr, ptr %event_name, align 1
  %103 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %from, align 4
  %call94 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add95 = add i32 %call94, %add84
  %104 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dest_offset6, align 4
  %add97 = add i32 %105, %add95
  %106 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add97, ptr %dest_offset, align 4
  %107 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %len, align 4
  %108 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %desc, align 4
  %text_len = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %109, i32 0, i32 6
  %110 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %text_len, ptr %from, align 4
  %call102 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add103 = add i32 %call102, %add95
  %111 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %dest_offset6, align 4
  %add105 = add i32 %112, %add103
  %113 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %add105, ptr %dest_offset, align 4
  %114 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc, align 4
  %text_len108 = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %text_len108 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %text_len108, align 1
  %conv109 = zext i8 %117 to i32
  %118 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %conv109, ptr %len, align 4
  %text = getelementptr inbounds %struct.vidtv_psi_desc_short_event, ptr %115, i32 0, i32 7
  %119 = ptrtoint ptr %text to i32
  call void @__asan_loadN_noabort(i32 %119, i32 4)
  %120 = load ptr, ptr %text, align 1
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %dest_offset6 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dest_offset6, align 4
  %add117 = add i32 %122, %call
  %123 = ptrtoint ptr %dest_offset to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %add117, ptr %dest_offset, align 4
  %length120 = getelementptr inbounds %struct.vidtv_psi_desc, ptr %27, i32 0, i32 2
  %124 = ptrtoint ptr %length120 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %length120, align 1
  %conv121 = zext i8 %125 to i32
  %126 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv121, ptr %len, align 4
  %data = getelementptr inbounds %struct.vidtv_psi_desc, ptr %27, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.default, %sw.bb68, %sw.bb48, %sw.bb
  %data.sink = phi ptr [ %data, %sw.default ], [ %120, %sw.bb68 ], [ %71, %sw.bb48 ], [ %63, %sw.bb ]
  %call.sink = phi i32 [ %call, %sw.default ], [ %add103, %sw.bb68 ], [ %call, %sw.bb48 ], [ %add36, %sw.bb ]
  %127 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %data.sink, ptr %from, align 4
  %call125 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add126 = add i32 %call125, %call.sink
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %while.body.sw.epilog_crit_edge, %sw.bb59.sw.epilog_crit_edge
  %nbytes.1 = phi i32 [ %call, %sw.bb59.sw.epilog_crit_edge ], [ %add126, %sw.epilog.sink.split ], [ %add67, %while.body.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  ret i32 %nbytes.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_pmt_table_destroy(ptr noundef %pmt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 3
  %0 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %descriptor, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %1)
  %stream = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %pmt, i32 0, i32 4
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %stream, align 1
  %tobool.not4.i = icmp eq ptr %3, null
  br i1 %tobool.not4.i, label %entry.vidtv_psi_pmt_stream_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_pmt_stream_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pmt_stream_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %curr_stream.05.i = phi ptr [ %5, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05.i, i32 0, i32 4
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %next.i, align 1
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05.i, i32 0, i32 3
  %6 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %descriptor.i, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %7) #11
  tail call void @kfree(ptr noundef nonnull %curr_stream.05.i) #11
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_psi_pmt_stream_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.vidtv_psi_pmt_stream_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pmt_stream_destroy.exit

vidtv_psi_pmt_stream_destroy.exit:                ; preds = %while.body.i.vidtv_psi_pmt_stream_destroy.exit_crit_edge, %entry.vidtv_psi_pmt_stream_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %pmt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vidtv_psi_sdt_table_init(i16 noundef zeroext %network_id, i16 noundef zeroext %transport_stream_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 15) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 66, ptr %call7.i.i, align 8
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -4096, ptr %bitfield, align 1
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %transport_stream_id, ptr %id, align 1
  %current_next = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %current_next to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %current_next, align 1
  %section_id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %section_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %section_id, align 2
  %last_section = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %last_section to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_section, align 1
  %network_id14 = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %network_id14 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %network_id, ptr %network_id14, align 8
  %reserved = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %reserved, align 2
  tail call void @vidtv_psi_sdt_table_update_sec_len(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_psi_sdt_write_into(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %psi_args.i108 = alloca %struct.psi_write_args, align 4
  %psi_args.i = alloca %struct.psi_write_args, align 4
  %psi_args = alloca %struct.psi_write_args, align 4
  %d_args = alloca %struct.desc_write_args, align 4
  %c_args = alloca %struct.crc32_write_args, align 4
  %crc27 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %offset = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %sdt = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %sdt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sdt, align 4
  %buf_sz = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_sz, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %8 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %len, align 4
  %dest_offset3 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %pid4 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 4
  %12 = ptrtoint ptr %pid4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 17, ptr %pid4, align 4
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 5
  %13 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %new_psi_section, align 2
  %continuity_counter5 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %14 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz6 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %15 = ptrtoint ptr %dest_buf_sz6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %dest_buf_sz6, align 4
  %crc8 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %d_args) #11
  %16 = getelementptr inbounds i8, ptr %d_args, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %d_args to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %d_args, align 4
  %dest_offset11 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 1
  %19 = ptrtoint ptr %dest_offset11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dest_offset11, align 4
  %desc = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 2
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %desc, align 4
  %pid12 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 3
  %21 = ptrtoint ptr %pid12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 17, ptr %pid12, align 4
  %continuity_counter13 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 4
  %22 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %continuity_counter13, align 4
  %dest_buf_sz14 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 5
  %23 = ptrtoint ptr %dest_buf_sz14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %7, ptr %dest_buf_sz14, align 4
  %crc16 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 6
  %24 = ptrtoint ptr %crc16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %crc16, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_args) #11
  %25 = getelementptr inbounds i8, ptr %c_args, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4
  %27 = ptrtoint ptr %c_args to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %c_args, align 4
  %dest_offset19 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 1
  %28 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dest_offset19, align 4
  %crc20 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 2
  %29 = ptrtoint ptr %crc20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %crc20, align 4
  %pid21 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 3
  %30 = ptrtoint ptr %pid21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 17, ptr %pid21, align 4
  %continuity_counter22 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 4
  %31 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %continuity_counter22, align 4
  %dest_buf_sz23 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 5
  %32 = ptrtoint ptr %dest_buf_sz23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %7, ptr %dest_buf_sz23, align 4
  %service26 = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %service26 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load ptr, ptr %service26, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc27) #11
  %35 = ptrtoint ptr %crc27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %crc27, align 4
  tail call void @vidtv_psi_sdt_table_update_sec_len(ptr noundef %5)
  %continuity_counter29 = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %args, i32 0, i32 4
  %36 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %continuity_counter29, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i) #11
  %38 = getelementptr inbounds i8, ptr %psi_args.i, i32 16
  %39 = call ptr @memset(ptr %38, i32 255, i32 12)
  %40 = ptrtoint ptr %psi_args.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %psi_args.i, align 4
  %from.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 1
  %41 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %5, ptr %from.i, align 4
  %len.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 2
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %len.i, align 4
  %dest_offset.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 3
  %43 = ptrtoint ptr %dest_offset.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %3, ptr %dest_offset.i, align 4
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 17, ptr %38, align 4
  %new_psi_section.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 5
  %45 = ptrtoint ptr %new_psi_section.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %new_psi_section.i, align 2
  %continuity_counter.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 6
  %46 = ptrtoint ptr %continuity_counter.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %continuity_counter.i, align 4
  %is_crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 7
  %47 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %is_crc.i, align 4
  %dest_buf_sz.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 8
  %48 = ptrtoint ptr %dest_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %7, ptr %dest_buf_sz.i, align 4
  %crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 9
  %49 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %crc27, ptr %crc.i, align 4
  %call.i = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i) #11
  %50 = ptrtoint ptr %sdt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sdt, align 4
  %network_id = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %network_id, ptr %from, align 4
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset, align 4
  %add35 = add i32 %54, %call.i
  %55 = ptrtoint ptr %dest_offset3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add35, ptr %dest_offset3, align 4
  %56 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %continuity_counter29, align 4
  %58 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %continuity_counter5, align 4
  %59 = ptrtoint ptr %crc8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %crc27, ptr %crc8, align 4
  %call40 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add41 = add i32 %call40, %call.i
  %60 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %len, align 4
  %tobool.not129 = icmp eq ptr %34, null
  br i1 %tobool.not129, label %entry.while.end64_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end64_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end64

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %nbytes.0131 = phi i32 [ %nbytes.1.lcssa, %while.end.while.body_crit_edge ], [ %add41, %entry.while.body_crit_edge ]
  %service.0130 = phi ptr [ %79, %while.end.while.body_crit_edge ], [ %34, %entry.while.body_crit_edge ]
  %61 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %service.0130, ptr %from, align 4
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %add45 = add i32 %63, %nbytes.0131
  %64 = ptrtoint ptr %dest_offset3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add45, ptr %dest_offset3, align 4
  %65 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %continuity_counter29, align 4
  %67 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %continuity_counter5, align 4
  %call49 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add50 = add i32 %call49, %nbytes.0131
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %service.0130, i32 0, i32 3
  %68 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %service_desc.0125 = load ptr, ptr %descriptor, align 1
  %tobool52.not126 = icmp eq ptr %service_desc.0125, null
  br i1 %tobool52.not126, label %while.body.while.end_crit_edge, label %while.body.while.body53_crit_edge

while.body.while.body53_crit_edge:                ; preds = %while.body
  br label %while.body53

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body53:                                     ; preds = %while.body53.while.body53_crit_edge, %while.body.while.body53_crit_edge
  %service_desc.0128 = phi ptr [ %service_desc.0, %while.body53.while.body53_crit_edge ], [ %service_desc.0125, %while.body.while.body53_crit_edge ]
  %nbytes.1127 = phi i32 [ %add62, %while.body53.while.body53_crit_edge ], [ %add50, %while.body.while.body53_crit_edge ]
  %69 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %offset, align 4
  %add55 = add i32 %70, %nbytes.1127
  %71 = ptrtoint ptr %dest_offset11 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add55, ptr %dest_offset11, align 4
  %72 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %service_desc.0128, ptr %desc, align 4
  %73 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %continuity_counter29, align 4
  %75 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %continuity_counter13, align 4
  %76 = ptrtoint ptr %crc16 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %crc27, ptr %crc16, align 4
  %call61 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add62 = add i32 %call61, %nbytes.1127
  %77 = ptrtoint ptr %service_desc.0128 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %service_desc.0 = load ptr, ptr %service_desc.0128, align 1
  %tobool52.not = icmp eq ptr %service_desc.0, null
  br i1 %tobool52.not, label %while.body53.while.end_crit_edge, label %while.body53.while.body53_crit_edge

while.body53.while.body53_crit_edge:              ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body53

while.body53.while.end_crit_edge:                 ; preds = %while.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body53.while.end_crit_edge, %while.body.while.end_crit_edge
  %nbytes.1.lcssa = phi i32 [ %add50, %while.body.while.end_crit_edge ], [ %add62, %while.body53.while.end_crit_edge ]
  %next63 = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %service.0130, i32 0, i32 4
  %78 = ptrtoint ptr %next63 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %79 = load ptr, ptr %next63, align 1
  %tobool.not = icmp eq ptr %79, null
  br i1 %tobool.not, label %while.end.while.end64_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.while.end64_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end64

while.end64:                                      ; preds = %while.end.while.end64_crit_edge, %entry.while.end64_crit_edge
  %nbytes.0.lcssa = phi i32 [ %add41, %entry.while.end64_crit_edge ], [ %nbytes.1.lcssa, %while.end.while.end64_crit_edge ]
  %80 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %offset, align 4
  %add66 = add i32 %81, %nbytes.0.lcssa
  %82 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add66, ptr %dest_offset19, align 4
  %83 = ptrtoint ptr %crc27 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %crc27, align 4
  %85 = ptrtoint ptr %crc20 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %crc20, align 4
  %86 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %continuity_counter29, align 4
  %88 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %continuity_counter22, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i108) #11
  %89 = getelementptr inbounds i8, ptr %psi_args.i108, i32 16
  %90 = call ptr @memset(ptr %89, i32 255, i32 12)
  %91 = ptrtoint ptr %c_args to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %c_args, align 4
  %93 = ptrtoint ptr %psi_args.i108 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %psi_args.i108, align 4
  %from.i109 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 1
  %94 = ptrtoint ptr %from.i109 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %crc20, ptr %from.i109, align 4
  %len.i111 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 2
  %95 = ptrtoint ptr %len.i111 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 4, ptr %len.i111, align 4
  %dest_offset.i112 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 3
  %96 = ptrtoint ptr %dest_offset.i112 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add66, ptr %dest_offset.i112, align 4
  %97 = ptrtoint ptr %pid21 to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %pid21, align 4
  %99 = ptrtoint ptr %89 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %89, align 4
  %new_psi_section.i116 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 5
  %100 = ptrtoint ptr %new_psi_section.i116 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %new_psi_section.i116, align 2
  %continuity_counter.i117 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 6
  %101 = ptrtoint ptr %continuity_counter.i117 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %87, ptr %continuity_counter.i117, align 4
  %is_crc.i119 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 7
  %102 = ptrtoint ptr %is_crc.i119 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %is_crc.i119, align 4
  %dest_buf_sz.i120 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 8
  %103 = ptrtoint ptr %dest_buf_sz23 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dest_buf_sz23, align 4
  %105 = ptrtoint ptr %dest_buf_sz.i120 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %dest_buf_sz.i120, align 4
  %crc6.i122 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i108, i32 0, i32 9
  %106 = ptrtoint ptr %crc6.i122 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %crc6.i122, align 4
  %call.i123 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i108) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i108) #11
  %add72 = add i32 %call.i123, %nbytes.0.lcssa
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc27) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_args) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %d_args) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  ret i32 %add72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_sdt_table_destroy(ptr noundef %sdt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %service = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %sdt, i32 0, i32 3
  %0 = ptrtoint ptr %service to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %service, align 1
  %tobool.not4.i = icmp eq ptr %1, null
  br i1 %tobool.not4.i, label %entry.vidtv_psi_sdt_service_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_sdt_service_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_sdt_service_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %curr.05.i = phi ptr [ %3, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.05.i, i32 0, i32 4
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %next.i, align 1
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.05.i, i32 0, i32 3
  %4 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %descriptor.i, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %5) #11
  tail call void @kfree(ptr noundef nonnull %curr.05.i) #11
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_psi_sdt_service_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.vidtv_psi_sdt_service_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_sdt_service_destroy.exit

vidtv_psi_sdt_service_destroy.exit:               ; preds = %while.body.i.vidtv_psi_sdt_service_destroy.exit_crit_edge, %entry.vidtv_psi_sdt_service_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %sdt) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_sdt_service_destroy(ptr noundef %service) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not4 = icmp eq ptr %service, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %curr.05 = phi ptr [ %1, %while.body.while.body_crit_edge ], [ %service, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.05, i32 0, i32 4
  %0 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %next, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %curr.05, i32 0, i32 3
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %3)
  tail call void @kfree(ptr noundef nonnull %curr.05) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_sdt_service_init(ptr noundef %head, i16 noundef zeroext %service_id, i1 noundef zeroext %eit_schedule, i1 noundef zeroext %eit_present_following) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 13) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %service_id, ptr %call7.i.i, align 8
  %EIT_schedule = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %call7.i.i, i32 0, i32 1
  %bf.shl8 = select i1 %eit_present_following, i8 -128, i8 0
  %bf.set10 = select i1 %eit_schedule, i8 127, i8 63
  %bf.set13 = or i8 %bf.set10, %bf.shl8
  %2 = ptrtoint ptr %EIT_schedule to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set13, ptr %EIT_schedule, align 2
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -32768, ptr %bitfield, align 1
  %tobool14.not = icmp eq ptr %head, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %head.addr.0 = phi ptr [ %5, %while.cond.while.cond_crit_edge ], [ %head, %if.end.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %head.addr.0, i32 0, i32 4
  %4 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %next, align 1
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %next.le = getelementptr inbounds %struct.vidtv_psi_table_sdt_service, ptr %head.addr.0, i32 0, i32 4
  %6 = ptrtoint ptr %next.le to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store ptr %call7.i.i, ptr %next.le, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_sdt_service_assign(ptr nocapture noundef %sdt, ptr noundef %service) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %service1 = getelementptr inbounds %struct.vidtv_psi_table_sdt, ptr %sdt, i32 0, i32 3
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %sdt, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %service.addr.0 = phi ptr [ %service, %entry ], [ null, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %service1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %service1, align 1
  %cmp = icmp eq ptr %service.addr.0, %1
  br i1 %cmp, label %do.body.return_crit_edge, label %if.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %service1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store ptr %service.addr.0, ptr %service1, align 1
  tail call void @vidtv_psi_sdt_table_update_sec_len(ptr noundef %sdt)
  %3 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bitfield.i, align 1
  %5 = and i16 %4, 4094
  %cmp3 = icmp ugt i16 %5, 1021
  br i1 %cmp3, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %sdt, i32 0, i32 3
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %version.i, align 1
  %7 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %7, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_pmt_create_sec_for_each_pat_entry(ptr nocapture noundef %pat, i16 noundef zeroext %pcr_pid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %program1 = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 3
  %0 = ptrtoint ptr %program1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %program.059 = load ptr, ptr %program1, align 1
  %tobool.not60 = icmp eq ptr %program.059, null
  br i1 %tobool.not60, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %program.062 = phi ptr [ %program.0, %while.body.while.body_crit_edge ], [ %program.059, %entry.while.body_crit_edge ]
  %num_pmt.061 = phi i32 [ %spec.select, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %1 = ptrtoint ptr %program.062 to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %program.062, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool2.not = icmp ne i16 %2, 0
  %inc = zext i1 %tobool2.not to i32
  %spec.select = add i32 %num_pmt.061, %inc
  %next = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %program.062, i32 0, i32 2
  %3 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %program.0 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %program.0, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %num_pmt.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %spec.select, %while.body.while.end_crit_edge ]
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_pmt.0.lcssa, i32 4) #11
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %while.end.cleanup_crit_edge, label %if.end7.i.i, !prof !39

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7.i.i:                                      ; preds = %while.end
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #16
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %program1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %program.163 = load ptr, ptr %program1, align 1
  %tobool7.not64 = icmp eq ptr %program.163, null
  br i1 %tobool7.not64, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %pcr_pid)
  %tobool1.not.i = icmp eq i16 %pcr_pid, 0
  %pcr_pid.op.i = or i16 %pcr_pid, -8192
  %8 = select i1 %tobool1.not.i, i16 -1, i16 %pcr_pid.op.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %program.167 = phi ptr [ %program.163, %for.body.lr.ph ], [ %program.1, %for.inc.for.body_crit_edge ]
  %i.065 = phi i32 [ 0, %for.body.lr.ph ], [ %i.2, %for.inc.for.body_crit_edge ]
  %9 = ptrtoint ptr %program.167 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %program.167, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool9.not = icmp eq i16 %10, 0
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %if.end11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end11:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i47 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i47, null
  br i1 %tobool.not.i, label %while.cond17.preheader, label %if.end.i

if.end.i:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %call7.i.i.i47 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %call7.i.i.i47, align 8
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i.i47, i32 0, i32 1
  %13 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 -20480, ptr %bitfield.i, align 1
  %id.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i.i47, i32 0, i32 2
  %14 = ptrtoint ptr %id.i to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %10, ptr %id.i, align 1
  %current_next.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i.i47, i32 0, i32 3
  %15 = ptrtoint ptr %current_next.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %current_next.i, align 1
  %section_id.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i.i47, i32 0, i32 4
  %16 = ptrtoint ptr %section_id.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %section_id.i, align 2
  %last_section.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i.i47, i32 0, i32 5
  %17 = ptrtoint ptr %last_section.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %last_section.i, align 1
  %bitfield18.i = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i.i47, i32 0, i32 1
  %18 = ptrtoint ptr %bitfield18.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %8, ptr %bitfield18.i, align 8
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i.i47, i32 0, i32 3
  %19 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %descriptor.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end21_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.if.end21_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %length.014.i.i = phi i32 [ %add4.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %if.end.i.while.body.i.i_crit_edge ]
  %desc.addr.013.i.i = phi ptr [ %24, %while.body.i.i.while.body.i.i_crit_edge ], [ %20, %if.end.i.while.body.i.i_crit_edge ]
  %add2.i.i = add i32 %length.014.i.i, 2
  %length3.i.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %length3.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %length3.i.i, align 1
  %conv.i.i = zext i8 %22 to i32
  %add4.i.i = add i32 %add2.i.i, %conv.i.i
  %23 = ptrtoint ptr %desc.addr.013.i.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load ptr, ptr %desc.addr.013.i.i, align 1
  %tobool1.not.i.i = icmp eq ptr %24, null
  br i1 %tobool1.not.i.i, label %while.end.i.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i.i = trunc i32 %add4.i.i to i16
  %phi.bo.i = or i16 %conv5.i.i, -4096
  br label %if.end21

while.cond17.preheader:                           ; preds = %if.end11
  %arrayidx.c = getelementptr ptr, ptr %call8.i.i, i32 %i.065
  %25 = ptrtoint ptr %arrayidx.c to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx.c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.065)
  %cmp.not68 = icmp eq i32 %i.065, 0
  br i1 %cmp.not68, label %while.cond17.preheader.cleanup_crit_edge, label %while.cond17.preheader.while.body18_crit_edge

while.cond17.preheader.while.body18_crit_edge:    ; preds = %while.cond17.preheader
  br label %while.body18

while.cond17.preheader.cleanup_crit_edge:         ; preds = %while.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body18:                                     ; preds = %vidtv_psi_pmt_table_destroy.exit.while.body18_crit_edge, %while.cond17.preheader.while.body18_crit_edge
  %i.169 = phi i32 [ %dec, %vidtv_psi_pmt_table_destroy.exit.while.body18_crit_edge ], [ %i.065, %while.cond17.preheader.while.body18_crit_edge ]
  %dec = add i32 %i.169, -1
  %arrayidx19 = getelementptr ptr, ptr %call8.i.i, i32 %dec
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx19, align 4
  %descriptor.i49 = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %descriptor.i49 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load ptr, ptr %descriptor.i49, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %29) #11
  %stream.i = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %27, i32 0, i32 4
  %30 = ptrtoint ptr %stream.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %31 = load ptr, ptr %stream.i, align 1
  %tobool.not4.i.i = icmp eq ptr %31, null
  br i1 %tobool.not4.i.i, label %while.body18.vidtv_psi_pmt_table_destroy.exit_crit_edge, label %while.body18.while.body.i.i51_crit_edge

while.body18.while.body.i.i51_crit_edge:          ; preds = %while.body18
  br label %while.body.i.i51

while.body18.vidtv_psi_pmt_table_destroy.exit_crit_edge: ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pmt_table_destroy.exit

while.body.i.i51:                                 ; preds = %while.body.i.i51.while.body.i.i51_crit_edge, %while.body18.while.body.i.i51_crit_edge
  %curr_stream.05.i.i = phi ptr [ %33, %while.body.i.i51.while.body.i.i51_crit_edge ], [ %31, %while.body18.while.body.i.i51_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %next.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 4)
  %33 = load ptr, ptr %next.i.i, align 1
  %descriptor.i.i = getelementptr inbounds %struct.vidtv_psi_table_pmt_stream, ptr %curr_stream.05.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %descriptor.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %descriptor.i.i, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %35) #11
  tail call void @kfree(ptr noundef nonnull %curr_stream.05.i.i) #11
  %tobool.not.i.i50 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i50, label %while.body.i.i51.vidtv_psi_pmt_table_destroy.exit_crit_edge, label %while.body.i.i51.while.body.i.i51_crit_edge

while.body.i.i51.while.body.i.i51_crit_edge:      ; preds = %while.body.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i51

while.body.i.i51.vidtv_psi_pmt_table_destroy.exit_crit_edge: ; preds = %while.body.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_pmt_table_destroy.exit

vidtv_psi_pmt_table_destroy.exit:                 ; preds = %while.body.i.i51.vidtv_psi_pmt_table_destroy.exit_crit_edge, %while.body18.vidtv_psi_pmt_table_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %27) #11
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %vidtv_psi_pmt_table_destroy.exit.cleanup_crit_edge, label %vidtv_psi_pmt_table_destroy.exit.while.body18_crit_edge

vidtv_psi_pmt_table_destroy.exit.while.body18_crit_edge: ; preds = %vidtv_psi_pmt_table_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body18

vidtv_psi_pmt_table_destroy.exit.cleanup_crit_edge: ; preds = %vidtv_psi_pmt_table_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %while.end.i.i, %if.end.i.if.end21_crit_edge
  %phi.bo.i.sink = phi i16 [ %phi.bo.i, %while.end.i.i ], [ -4096, %if.end.i.if.end21_crit_edge ]
  %bitfield2.i = getelementptr inbounds %struct.vidtv_psi_table_pmt, ptr %call7.i.i.i47, i32 0, i32 2
  %36 = ptrtoint ptr %bitfield2.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %phi.bo.i.sink, ptr %bitfield2.i, align 2
  tail call void @vidtv_psi_pmt_table_update_sec_len(ptr noundef nonnull %call7.i.i.i47) #11
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.065
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i47, ptr %arrayidx, align 4
  %inc22 = add i32 %i.065, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end21, %for.body.for.inc_crit_edge
  %i.2 = phi i32 [ %inc22, %if.end21 ], [ %i.065, %for.body.for.inc_crit_edge ]
  %next23 = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %program.167, i32 0, i32 2
  %38 = ptrtoint ptr %next23 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %program.1 = load ptr, ptr %next23, align 1
  %tobool7.not = icmp eq ptr %program.1, null
  br i1 %tobool7.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %conv = trunc i32 %num_pmt.0.lcssa to i16
  %num_pmt24 = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %pat, i32 0, i32 2
  %39 = ptrtoint ptr %num_pmt24 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %conv, ptr %num_pmt24, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %vidtv_psi_pmt_table_destroy.exit.cleanup_crit_edge, %while.cond17.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call8.i.i, %for.end ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ], [ null, %while.cond17.preheader.cleanup_crit_edge ], [ null, %vidtv_psi_pmt_table_destroy.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_find_pmt_sec(ptr nocapture noundef readonly %pmt_sections, i16 noundef zeroext %nsections, i16 noundef zeroext %program_num) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %nsections to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %nsections)
  %cmp10.not = icmp eq i16 %nsections, 0
  br i1 %cmp10.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %pmt_sections, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %id, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %program_num)
  %cmp4 = icmp eq i16 %3, %program_num
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %1, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_nit_table_init(i16 noundef zeroext %network_id, i16 noundef zeroext %transport_stream_id, ptr noundef %network_name, ptr noundef %service_list) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 14) #15
  %tobool2.not = icmp eq ptr %call7.i.i63, null
  br i1 %tobool2.not, label %if.end.free_nit_crit_edge, label %if.end4

if.end.free_nit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %free_nit

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %call7.i.i, align 8
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 -4096, ptr %bitfield, align 1
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %network_id, ptr %id, align 1
  %current_next = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %current_next to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %current_next, align 1
  %section_id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %section_id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %section_id, align 2
  %last_section = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %last_section to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %last_section, align 1
  %bitfield18 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %bitfield18 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 15, ptr %bitfield18, align 8
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %bitfield2 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 15, ptr %bitfield2, align 2
  %tobool.not.i = icmp eq ptr %network_name, null
  br i1 %tobool.not.i, label %if.end4.cond.end.i_crit_edge, label %cond.true.i

if.end4.cond.end.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @strlen(ptr noundef nonnull %network_name) #17
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end4.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ 0, %if.end4.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 10) #15
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %vidtv_psi_network_name_desc_init.exit, label %if.end.i

if.end.i:                                         ; preds = %cond.end.i
  %type.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %type.i, align 4
  %conv.i = trunc i32 %cond.i to i8
  %length.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %length.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool4.not.i = icmp eq i32 %cond.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  br i1 %or.cond.i, label %if.end.i.if.end23_crit_edge, label %if.then5.i

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call noalias ptr @kstrdup(ptr noundef nonnull %network_name, i32 noundef 3264) #11
  %network_name7.i = getelementptr inbounds %struct.vidtv_psi_desc_network_name, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %network_name7.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store ptr %call6.i, ptr %network_name7.i, align 2
  br label %if.end23

vidtv_psi_network_name_desc_init.exit:            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %descriptor to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store ptr null, ptr %descriptor, align 2
  br label %free_transport

if.end23:                                         ; preds = %if.then5.i, %if.end.i.if.end23_crit_edge
  %descriptor64 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %descriptor64 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store ptr %call7.i.i.i, ptr %descriptor64, align 2
  %16 = ptrtoint ptr %call7.i.i63 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %transport_stream_id, ptr %call7.i.i63, align 8
  %network_id24 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %call7.i.i63, i32 0, i32 1
  %17 = ptrtoint ptr %network_id24 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %network_id, ptr %network_id24, align 2
  %bitfield25 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %call7.i.i63, i32 0, i32 2
  %18 = ptrtoint ptr %bitfield25 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 15, ptr %bitfield25, align 4
  %call26 = tail call ptr @vidtv_psi_service_list_desc_init(ptr noundef null, ptr noundef %service_list)
  %descriptor27 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %call7.i.i63, i32 0, i32 3
  %19 = ptrtoint ptr %descriptor27 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store ptr %call26, ptr %descriptor27, align 2
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %free_nit_desc, label %if.end31

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %transport32 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %transport32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i63, ptr %transport32, align 8
  tail call fastcc void @vidtv_psi_nit_table_update_sec_len(ptr noundef nonnull %call7.i.i)
  br label %cleanup

free_nit_desc:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %descriptor64 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load ptr, ptr %descriptor64, align 2
  tail call void @vidtv_psi_desc_destroy(ptr noundef %22)
  br label %free_transport

free_transport:                                   ; preds = %free_nit_desc, %vidtv_psi_network_name_desc_init.exit
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #11
  br label %free_nit

free_nit:                                         ; preds = %free_transport, %if.end.free_nit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %free_nit, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end31 ], [ null, %free_nit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vidtv_psi_nit_table_update_sec_len(ptr nocapture noundef %nit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 4
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %transport, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 2
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %entry.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %7, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %4 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %5 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %6 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %conv5.i, %while.end.i ], [ 0, %entry.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 1
  %8 = ptrtoint ptr %bitfield to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %bitfield, align 2
  %10 = and i16 %9, -4096
  %conv7.i = or i16 %10, %retval.0.i
  store i16 %conv7.i, ptr %bitfield, align 2
  %add7 = add i16 %retval.0.i, 9
  %tobool.not60 = icmp eq ptr %1, null
  br i1 %tobool.not60, label %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge, label %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  br label %while.body

vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge
  %transport_loop_len.063 = phi i16 [ %add10, %vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge ], [ 0, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ]
  %t.062 = phi ptr [ %21, %vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge ], [ %1, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ]
  %length.061 = phi i16 [ %add21, %vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge ], [ %add7, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ]
  %add10 = add i16 %transport_loop_len.063, 6
  %add14 = add i16 %add10, %length.061
  %descriptor16 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %t.062, i32 0, i32 3
  %11 = ptrtoint ptr %descriptor16 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %descriptor16, align 1
  %tobool.not.i44 = icmp eq ptr %12, null
  br i1 %tobool.not.i44, label %while.body.vidtv_psi_desc_comp_loop_len.exit56_crit_edge, label %while.body.while.body.i52_crit_edge

while.body.while.body.i52_crit_edge:              ; preds = %while.body
  br label %while.body.i52

while.body.vidtv_psi_desc_comp_loop_len.exit56_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit56

while.body.i52:                                   ; preds = %while.body.i52.while.body.i52_crit_edge, %while.body.while.body.i52_crit_edge
  %length.014.i45 = phi i32 [ %add4.i50, %while.body.i52.while.body.i52_crit_edge ], [ 0, %while.body.while.body.i52_crit_edge ]
  %desc.addr.013.i46 = phi ptr [ %16, %while.body.i52.while.body.i52_crit_edge ], [ %12, %while.body.while.body.i52_crit_edge ]
  %add2.i47 = add i32 %length.014.i45, 2
  %length3.i48 = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i46, i32 0, i32 2
  %13 = ptrtoint ptr %length3.i48 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %length3.i48, align 1
  %conv.i49 = zext i8 %14 to i32
  %add4.i50 = add i32 %add2.i47, %conv.i49
  %15 = ptrtoint ptr %desc.addr.013.i46 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load ptr, ptr %desc.addr.013.i46, align 1
  %tobool1.not.i51 = icmp eq ptr %16, null
  br i1 %tobool1.not.i51, label %while.end.i54, label %while.body.i52.while.body.i52_crit_edge

while.body.i52.while.body.i52_crit_edge:          ; preds = %while.body.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i52

while.end.i54:                                    ; preds = %while.body.i52
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i53 = trunc i32 %add4.i50 to i16
  br label %vidtv_psi_desc_comp_loop_len.exit56

vidtv_psi_desc_comp_loop_len.exit56:              ; preds = %while.end.i54, %while.body.vidtv_psi_desc_comp_loop_len.exit56_crit_edge
  %retval.0.i55 = phi i16 [ %conv5.i53, %while.end.i54 ], [ 0, %while.body.vidtv_psi_desc_comp_loop_len.exit56_crit_edge ]
  %bitfield18 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %t.062, i32 0, i32 2
  %17 = ptrtoint ptr %bitfield18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %bitfield18, align 2
  %19 = and i16 %18, -4096
  %conv7.i57 = or i16 %19, %retval.0.i55
  store i16 %conv7.i57, ptr %bitfield18, align 2
  %add21 = add i16 %add14, %retval.0.i55
  %next = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %t.062, i32 0, i32 4
  %20 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %vidtv_psi_desc_comp_loop_len.exit56.while.end_crit_edge, label %vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit56.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

vidtv_psi_desc_comp_loop_len.exit56.while.end_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit56
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %vidtv_psi_desc_comp_loop_len.exit56.while.end_crit_edge, %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge
  %length.0.lcssa = phi i16 [ %add7, %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge ], [ %add21, %vidtv_psi_desc_comp_loop_len.exit56.while.end_crit_edge ]
  %transport_loop_len.0.lcssa = phi i16 [ 0, %vidtv_psi_desc_comp_loop_len.exit.while.end_crit_edge ], [ %add10, %vidtv_psi_desc_comp_loop_len.exit56.while.end_crit_edge ]
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 3
  %22 = ptrtoint ptr %bitfield2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %bitfield2, align 2
  %24 = and i16 %23, -4096
  %conv7.i58 = or i16 %24, %transport_loop_len.0.lcssa
  store i16 %conv7.i58, ptr %bitfield2, align 2
  %add24 = add i16 %length.0.lcssa, 4
  %bitfield.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %nit, i32 0, i32 1
  %25 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %bitfield.i.i, align 1
  %27 = and i16 %26, 4095
  %conv2.i = zext i16 %add24 to i32
  %conv4.i = zext i16 %27 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %27)
  %cmp.i = icmp ugt i16 %27, 1021
  br i1 %cmp.i, label %if.then.i, label %while.end.vidtv_psi_set_sec_len.exit_crit_edge

while.end.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

if.then.i:                                        ; preds = %while.end
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i59 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i59, label %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, label %do.end.i

if.then.i.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i, i32 noundef 1021, i32 noundef %conv4.i) #18
  br label %vidtv_psi_set_sec_len.exit

vidtv_psi_set_sec_len.exit:                       ; preds = %do.end.i, %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, %while.end.vidtv_psi_set_sec_len.exit_crit_edge
  %28 = and i16 %26, -8192
  %or17.i = or i16 %28, %add24
  %29 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %or17.i, ptr %bitfield.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_psi_nit_write_into(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %psi_args.i139 = alloca %struct.psi_write_args, align 4
  %psi_args.i = alloca %struct.psi_write_args, align 4
  %psi_args = alloca %struct.psi_write_args, align 4
  %d_args = alloca %struct.desc_write_args, align 4
  %c_args = alloca %struct.crc32_write_args, align 4
  %crc29 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %offset = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %nit = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %nit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nit, align 4
  %buf_sz = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_sz, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %8 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %bitfield, ptr %from, align 4
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %len, align 4
  %dest_offset4 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %pid5 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 4
  %13 = ptrtoint ptr %pid5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 16, ptr %pid5, align 4
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 5
  %14 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %new_psi_section, align 2
  %continuity_counter6 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %15 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz7 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %16 = ptrtoint ptr %dest_buf_sz7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %7, ptr %dest_buf_sz7, align 4
  %crc9 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %d_args) #11
  %17 = getelementptr inbounds i8, ptr %d_args, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %17, align 4
  %19 = ptrtoint ptr %d_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %d_args, align 4
  %dest_offset12 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 1
  %20 = ptrtoint ptr %dest_offset12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dest_offset12, align 4
  %desc = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 2
  %21 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %desc, align 4
  %pid13 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 3
  %22 = ptrtoint ptr %pid13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 16, ptr %pid13, align 4
  %continuity_counter14 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 4
  %23 = ptrtoint ptr %continuity_counter14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %continuity_counter14, align 4
  %dest_buf_sz15 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 5
  %24 = ptrtoint ptr %dest_buf_sz15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %7, ptr %dest_buf_sz15, align 4
  %crc17 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 6
  %25 = ptrtoint ptr %crc17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %crc17, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_args) #11
  %26 = getelementptr inbounds i8, ptr %c_args, i32 12
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %26, align 4
  %28 = ptrtoint ptr %c_args to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %c_args, align 4
  %dest_offset20 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 1
  %29 = ptrtoint ptr %dest_offset20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dest_offset20, align 4
  %crc21 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 2
  %30 = ptrtoint ptr %crc21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %crc21, align 4
  %pid22 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 3
  %31 = ptrtoint ptr %pid22 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 16, ptr %pid22, align 4
  %continuity_counter23 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 4
  %32 = ptrtoint ptr %continuity_counter23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %continuity_counter23, align 4
  %dest_buf_sz24 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 5
  %33 = ptrtoint ptr %dest_buf_sz24 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %7, ptr %dest_buf_sz24, align 4
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %descriptor, align 1
  %transport28 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %5, i32 0, i32 4
  %36 = ptrtoint ptr %transport28 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load ptr, ptr %transport28, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc29) #11
  %38 = ptrtoint ptr %crc29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %crc29, align 4
  tail call fastcc void @vidtv_psi_nit_table_update_sec_len(ptr noundef %5)
  %continuity_counter31 = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %args, i32 0, i32 4
  %39 = ptrtoint ptr %continuity_counter31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %continuity_counter31, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i) #11
  %41 = getelementptr inbounds i8, ptr %psi_args.i, i32 16
  %42 = call ptr @memset(ptr %41, i32 255, i32 12)
  %43 = ptrtoint ptr %psi_args.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %1, ptr %psi_args.i, align 4
  %from.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 1
  %44 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %5, ptr %from.i, align 4
  %len.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 2
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %len.i, align 4
  %dest_offset.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 3
  %46 = ptrtoint ptr %dest_offset.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %3, ptr %dest_offset.i, align 4
  %47 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 16, ptr %41, align 4
  %new_psi_section.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 5
  %48 = ptrtoint ptr %new_psi_section.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %new_psi_section.i, align 2
  %continuity_counter.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 6
  %49 = ptrtoint ptr %continuity_counter.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %40, ptr %continuity_counter.i, align 4
  %is_crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 7
  %50 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %is_crc.i, align 4
  %dest_buf_sz.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 8
  %51 = ptrtoint ptr %dest_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %7, ptr %dest_buf_sz.i, align 4
  %crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 9
  %52 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %crc29, ptr %crc.i, align 4
  %call.i = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i) #11
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset, align 4
  %add35 = add i32 %54, %call.i
  %55 = ptrtoint ptr %dest_offset4 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add35, ptr %dest_offset4, align 4
  %56 = ptrtoint ptr %continuity_counter31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %continuity_counter31, align 4
  %58 = ptrtoint ptr %continuity_counter6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %continuity_counter6, align 4
  %59 = ptrtoint ptr %crc9 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %crc29, ptr %crc9, align 4
  %call40 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add41 = add i32 %call40, %call.i
  %tobool.not156 = icmp eq ptr %35, null
  br i1 %tobool.not156, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %nbytes.0158 = phi i32 [ %add50, %while.body.while.body_crit_edge ], [ %add41, %entry.while.body_crit_edge ]
  %table_descriptor.0157 = phi ptr [ %69, %while.body.while.body_crit_edge ], [ %35, %entry.while.body_crit_edge ]
  %60 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset, align 4
  %add43 = add i32 %61, %nbytes.0158
  %62 = ptrtoint ptr %dest_offset12 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add43, ptr %dest_offset12, align 4
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %table_descriptor.0157, ptr %desc, align 4
  %64 = ptrtoint ptr %continuity_counter31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %continuity_counter31, align 4
  %66 = ptrtoint ptr %continuity_counter14 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %continuity_counter14, align 4
  %67 = ptrtoint ptr %crc17 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %crc29, ptr %crc17, align 4
  %call49 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add50 = add i32 %call49, %nbytes.0158
  %68 = ptrtoint ptr %table_descriptor.0157 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load ptr, ptr %table_descriptor.0157, align 1
  %tobool.not = icmp eq ptr %69, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %nbytes.0.lcssa = phi i32 [ %add41, %entry.while.end_crit_edge ], [ %add50, %while.body.while.end_crit_edge ]
  %70 = ptrtoint ptr %nit to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %nit, align 4
  %bitfield2 = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %bitfield2, ptr %from, align 4
  %73 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 2, ptr %len, align 4
  %74 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %offset, align 4
  %add55 = add i32 %75, %nbytes.0.lcssa
  %76 = ptrtoint ptr %dest_offset4 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add55, ptr %dest_offset4, align 4
  %call57 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add58 = add i32 %call57, %nbytes.0.lcssa
  %77 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 6, ptr %len, align 4
  %tobool61.not164 = icmp eq ptr %37, null
  br i1 %tobool61.not164, label %while.end.while.end85_crit_edge, label %while.end.while.body62_crit_edge

while.end.while.body62_crit_edge:                 ; preds = %while.end
  br label %while.body62

while.end.while.end85_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end85

while.body62:                                     ; preds = %while.end83.while.body62_crit_edge, %while.end.while.body62_crit_edge
  %nbytes.1166 = phi i32 [ %nbytes.2.lcssa, %while.end83.while.body62_crit_edge ], [ %add58, %while.end.while.body62_crit_edge ]
  %transport.0165 = phi ptr [ %93, %while.end83.while.body62_crit_edge ], [ %37, %while.end.while.body62_crit_edge ]
  %78 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %transport.0165, ptr %from, align 4
  %79 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %offset, align 4
  %add65 = add i32 %80, %nbytes.1166
  %81 = ptrtoint ptr %dest_offset4 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add65, ptr %dest_offset4, align 4
  %call67 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add68 = add i32 %call67, %nbytes.1166
  %descriptor69 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %transport.0165, i32 0, i32 3
  %82 = ptrtoint ptr %descriptor69 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %transport_descriptor.0159 = load ptr, ptr %descriptor69, align 1
  %tobool71.not160 = icmp eq ptr %transport_descriptor.0159, null
  br i1 %tobool71.not160, label %while.body62.while.end83_crit_edge, label %while.body62.while.body72_crit_edge

while.body62.while.body72_crit_edge:              ; preds = %while.body62
  br label %while.body72

while.body62.while.end83_crit_edge:               ; preds = %while.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end83

while.body72:                                     ; preds = %while.body72.while.body72_crit_edge, %while.body62.while.body72_crit_edge
  %transport_descriptor.0162 = phi ptr [ %transport_descriptor.0, %while.body72.while.body72_crit_edge ], [ %transport_descriptor.0159, %while.body62.while.body72_crit_edge ]
  %nbytes.2161 = phi i32 [ %add81, %while.body72.while.body72_crit_edge ], [ %add68, %while.body62.while.body72_crit_edge ]
  %83 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %offset, align 4
  %add74 = add i32 %84, %nbytes.2161
  %85 = ptrtoint ptr %dest_offset12 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add74, ptr %dest_offset12, align 4
  %86 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %transport_descriptor.0162, ptr %desc, align 4
  %87 = ptrtoint ptr %continuity_counter31 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %continuity_counter31, align 4
  %89 = ptrtoint ptr %continuity_counter14 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %continuity_counter14, align 4
  %90 = ptrtoint ptr %crc17 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %crc29, ptr %crc17, align 4
  %call80 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add81 = add i32 %call80, %nbytes.2161
  %91 = ptrtoint ptr %transport_descriptor.0162 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %transport_descriptor.0 = load ptr, ptr %transport_descriptor.0162, align 1
  %tobool71.not = icmp eq ptr %transport_descriptor.0, null
  br i1 %tobool71.not, label %while.body72.while.end83_crit_edge, label %while.body72.while.body72_crit_edge

while.body72.while.body72_crit_edge:              ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body72

while.body72.while.end83_crit_edge:               ; preds = %while.body72
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end83

while.end83:                                      ; preds = %while.body72.while.end83_crit_edge, %while.body62.while.end83_crit_edge
  %nbytes.2.lcssa = phi i32 [ %add68, %while.body62.while.end83_crit_edge ], [ %add81, %while.body72.while.end83_crit_edge ]
  %next84 = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %transport.0165, i32 0, i32 4
  %92 = ptrtoint ptr %next84 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 4)
  %93 = load ptr, ptr %next84, align 1
  %tobool61.not = icmp eq ptr %93, null
  br i1 %tobool61.not, label %while.end83.while.end85_crit_edge, label %while.end83.while.body62_crit_edge

while.end83.while.body62_crit_edge:               ; preds = %while.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body62

while.end83.while.end85_crit_edge:                ; preds = %while.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end85

while.end85:                                      ; preds = %while.end83.while.end85_crit_edge, %while.end.while.end85_crit_edge
  %nbytes.1.lcssa = phi i32 [ %add58, %while.end.while.end85_crit_edge ], [ %nbytes.2.lcssa, %while.end83.while.end85_crit_edge ]
  %94 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset, align 4
  %add87 = add i32 %95, %nbytes.1.lcssa
  %96 = ptrtoint ptr %dest_offset20 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %add87, ptr %dest_offset20, align 4
  %97 = ptrtoint ptr %crc29 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %crc29, align 4
  %99 = ptrtoint ptr %crc21 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %crc21, align 4
  %100 = ptrtoint ptr %continuity_counter31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %continuity_counter31, align 4
  %102 = ptrtoint ptr %continuity_counter23 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %continuity_counter23, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i139) #11
  %103 = getelementptr inbounds i8, ptr %psi_args.i139, i32 16
  %104 = call ptr @memset(ptr %103, i32 255, i32 12)
  %105 = ptrtoint ptr %c_args to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %c_args, align 4
  %107 = ptrtoint ptr %psi_args.i139 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %psi_args.i139, align 4
  %from.i140 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 1
  %108 = ptrtoint ptr %from.i140 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %crc21, ptr %from.i140, align 4
  %len.i142 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 2
  %109 = ptrtoint ptr %len.i142 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %len.i142, align 4
  %dest_offset.i143 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 3
  %110 = ptrtoint ptr %dest_offset.i143 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %add87, ptr %dest_offset.i143, align 4
  %111 = ptrtoint ptr %pid22 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %pid22, align 4
  %113 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %103, align 4
  %new_psi_section.i147 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 5
  %114 = ptrtoint ptr %new_psi_section.i147 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %new_psi_section.i147, align 2
  %continuity_counter.i148 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 6
  %115 = ptrtoint ptr %continuity_counter.i148 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %101, ptr %continuity_counter.i148, align 4
  %is_crc.i150 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 7
  %116 = ptrtoint ptr %is_crc.i150 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %is_crc.i150, align 4
  %dest_buf_sz.i151 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 8
  %117 = ptrtoint ptr %dest_buf_sz24 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dest_buf_sz24, align 4
  %119 = ptrtoint ptr %dest_buf_sz.i151 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %dest_buf_sz.i151, align 4
  %crc6.i153 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i139, i32 0, i32 9
  %120 = ptrtoint ptr %crc6.i153 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr null, ptr %crc6.i153, align 4
  %call.i154 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i139) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i139) #11
  %add93 = add i32 %call.i154, %nbytes.1.lcssa
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc29) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_args) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %d_args) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  ret i32 %add93
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_nit_table_destroy(ptr noundef %nit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 2
  %0 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %descriptor, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %1)
  %transport = getelementptr inbounds %struct.vidtv_psi_table_nit, ptr %nit, i32 0, i32 4
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %transport, align 1
  %tobool.not4.i = icmp eq ptr %3, null
  br i1 %tobool.not4.i, label %entry.vidtv_psi_transport_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_transport_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_transport_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %curr_t.05.i = phi ptr [ %5, %while.body.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %curr_t.05.i, i32 0, i32 4
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %next.i, align 1
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_transport, ptr %curr_t.05.i, i32 0, i32 3
  %6 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %descriptor.i, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %7) #11
  tail call void @kfree(ptr noundef nonnull %curr_t.05.i) #11
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_psi_transport_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.vidtv_psi_transport_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_transport_destroy.exit

vidtv_psi_transport_destroy.exit:                 ; preds = %while.body.i.vidtv_psi_transport_destroy.exit_crit_edge, %entry.vidtv_psi_transport_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %nit) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_eit_table_update_sec_len(ptr nocapture noundef %eit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %eit, i32 0, i32 5
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %e.022 = load ptr, ptr %event, align 1
  %tobool.not23 = icmp eq ptr %e.022, null
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %e.025 = phi ptr [ %e.0, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ], [ %e.022, %entry.while.body_crit_edge ]
  %length.024 = phi i32 [ %phi.cast, %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge ], [ 11, %entry.while.body_crit_edge ]
  %conv4 = add nuw nsw i32 %length.024, 12
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %e.025, i32 0, i32 4
  %1 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load ptr, ptr %descriptor, align 1
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge, label %while.body.while.body.i_crit_edge

while.body.while.body.i_crit_edge:                ; preds = %while.body
  br label %while.body.i

while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_desc_comp_loop_len.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.while.body.i_crit_edge
  %length.014.i = phi i32 [ %add4.i, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.while.body.i_crit_edge ]
  %desc.addr.013.i = phi ptr [ %6, %while.body.i.while.body.i_crit_edge ], [ %2, %while.body.while.body.i_crit_edge ]
  %add2.i = add i32 %length.014.i, 2
  %length3.i = getelementptr inbounds %struct.vidtv_psi_desc, ptr %desc.addr.013.i, i32 0, i32 2
  %3 = ptrtoint ptr %length3.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %length3.i, align 1
  %conv.i = zext i8 %4 to i32
  %add4.i = add i32 %add2.i, %conv.i
  %5 = ptrtoint ptr %desc.addr.013.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %desc.addr.013.i, align 1
  %tobool1.not.i = icmp eq ptr %6, null
  br i1 %tobool1.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv5.i = trunc i32 %add4.i to i16
  br label %vidtv_psi_desc_comp_loop_len.exit

vidtv_psi_desc_comp_loop_len.exit:                ; preds = %while.end.i, %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge
  %retval.0.i = phi i16 [ %conv5.i, %while.end.i ], [ 0, %while.body.vidtv_psi_desc_comp_loop_len.exit_crit_edge ]
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %e.025, i32 0, i32 3
  %7 = ptrtoint ptr %bitfield to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %bitfield, align 2
  %9 = and i16 %8, -4096
  %conv7.i = or i16 %9, %retval.0.i
  store i16 %conv7.i, ptr %bitfield, align 2
  %conv5 = zext i16 %retval.0.i to i32
  %add7 = add nuw nsw i32 %conv4, %conv5
  %next = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %e.025, i32 0, i32 5
  %phi.cast = and i32 %add7, 65535
  %10 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %e.0 = load ptr, ptr %next, align 1
  %tobool.not = icmp eq ptr %e.0, null
  br i1 %tobool.not, label %while.end.loopexit, label %vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge

vidtv_psi_desc_comp_loop_len.exit.while.body_crit_edge: ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.loopexit:                               ; preds = %vidtv_psi_desc_comp_loop_len.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast26 = trunc i32 %add7 to i16
  %phi.bo = add i16 %phi.cast26, 4
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %length.0.lcssa = phi i16 [ 15, %entry.while.end_crit_edge ], [ %phi.bo, %while.end.loopexit ]
  %bitfield.i.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %eit, i32 0, i32 1
  %11 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %bitfield.i.i, align 1
  %13 = and i16 %12, 4095
  %conv2.i = zext i16 %length.0.lcssa to i32
  %conv4.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1021, i16 %13)
  %cmp.i = icmp ugt i16 %13, 1021
  br i1 %cmp.i, label %if.then.i, label %while.end.vidtv_psi_set_sec_len.exit_crit_edge

while.end.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

if.then.i:                                        ; preds = %while.end
  %call6.i = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_psi_set_sec_len._rs, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i21 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i21, label %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, label %do.end.i

if.then.i.vidtv_psi_set_sec_len.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_set_sec_len.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.vidtv_psi_set_sec_len, i32 noundef 147, i32 noundef %conv2.i, i32 noundef 1021, i32 noundef %conv4.i) #18
  br label %vidtv_psi_set_sec_len.exit

vidtv_psi_set_sec_len.exit:                       ; preds = %do.end.i, %if.then.i.vidtv_psi_set_sec_len.exit_crit_edge, %while.end.vidtv_psi_set_sec_len.exit_crit_edge
  %14 = and i16 %12, -8192
  %or17.i = or i16 %14, %length.0.lcssa
  %15 = ptrtoint ptr %bitfield.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %or17.i, ptr %bitfield.i.i, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_eit_event_assign(ptr nocapture noundef %eit, ptr noundef %e) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %eit, i32 0, i32 5
  %bitfield.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %eit, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %e.addr.0 = phi ptr [ %e, %entry ], [ null, %if.end.do.body_crit_edge ]
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %event, align 1
  %cmp = icmp eq ptr %e.addr.0, %1
  br i1 %cmp, label %do.body.return_crit_edge, label %if.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %event to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store ptr %e.addr.0, ptr %event, align 1
  tail call void @vidtv_psi_eit_table_update_sec_len(ptr noundef %eit)
  %3 = ptrtoint ptr %bitfield.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %bitfield.i, align 1
  %5 = and i16 %4, 4094
  %cmp2 = icmp eq i16 %5, 4094
  br i1 %cmp2, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %version.i = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %eit, i32 0, i32 3
  %6 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %version.i, align 1
  %7 = add i8 %bf.load.i, 4
  %bf.shl.i = and i8 %7, 124
  %bf.clear2.i = and i8 %bf.load.i, -125
  %bf.set.i = or i8 %bf.shl.i, %bf.clear2.i
  store i8 %bf.set.i, ptr %version.i, align 1
  br label %return

return:                                           ; preds = %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @vidtv_psi_eit_table_init(i16 noundef zeroext %network_id, i16 noundef zeroext %transport_stream_id, i16 noundef zeroext %service_id) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 18) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 78, ptr %call7.i.i, align 8
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %bitfield to i32
  call void @__asan_storeN_noabort(i32 %2, i32 2)
  store i16 -4096, ptr %bitfield, align 1
  %id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %id to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %service_id, ptr %id, align 1
  %current_next = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %current_next to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %current_next, align 1
  %section_id = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %section_id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %section_id, align 2
  %last_section = getelementptr inbounds %struct.vidtv_psi_table_header, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %last_section to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %last_section, align 1
  %transport_id = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %transport_id to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %transport_stream_id, ptr %transport_id, align 8
  %network_id14 = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %network_id14 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %network_id, ptr %network_id14, align 2
  %last_segment = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %last_segment to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %last_segment, align 4
  %last_table_id = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %last_table_id to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 78, ptr %last_table_id, align 1
  tail call void @vidtv_psi_eit_table_update_sec_len(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vidtv_psi_eit_write_into(ptr nocapture noundef readonly %args) local_unnamed_addr #2 align 64 {
entry:
  %psi_args.i105 = alloca %struct.psi_write_args, align 4
  %psi_args.i = alloca %struct.psi_write_args, align 4
  %psi_args = alloca %struct.psi_write_args, align 4
  %d_args = alloca %struct.desc_write_args, align 4
  %c_args = alloca %struct.crc32_write_args, align 4
  %crc27 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %args, align 4
  %offset = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset, align 4
  %eit = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eit, align 4
  %buf_sz = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %buf_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buf_sz, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args) #11
  %8 = getelementptr inbounds i8, ptr %psi_args, i32 16
  %9 = call ptr @memset(ptr %8, i32 255, i32 12)
  %10 = ptrtoint ptr %psi_args to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %psi_args, align 4
  %from = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 1
  %len = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 6, ptr %len, align 4
  %dest_offset3 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 3
  %pid4 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 4
  %12 = ptrtoint ptr %pid4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 18, ptr %pid4, align 4
  %new_psi_section = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 5
  %13 = ptrtoint ptr %new_psi_section to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %new_psi_section, align 2
  %continuity_counter5 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 6
  %is_crc = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 7
  %14 = ptrtoint ptr %is_crc to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %is_crc, align 4
  %dest_buf_sz6 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 8
  %15 = ptrtoint ptr %dest_buf_sz6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %7, ptr %dest_buf_sz6, align 4
  %crc8 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %d_args) #11
  %16 = getelementptr inbounds i8, ptr %d_args, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %16, align 4
  %18 = ptrtoint ptr %d_args to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %1, ptr %d_args, align 4
  %dest_offset11 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 1
  %19 = ptrtoint ptr %dest_offset11 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dest_offset11, align 4
  %desc = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 2
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %desc, align 4
  %pid12 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 3
  %21 = ptrtoint ptr %pid12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 18, ptr %pid12, align 4
  %continuity_counter13 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 4
  %22 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %continuity_counter13, align 4
  %dest_buf_sz14 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 5
  %23 = ptrtoint ptr %dest_buf_sz14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %7, ptr %dest_buf_sz14, align 4
  %crc16 = getelementptr inbounds %struct.desc_write_args, ptr %d_args, i32 0, i32 6
  %24 = ptrtoint ptr %crc16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %crc16, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c_args) #11
  %25 = getelementptr inbounds i8, ptr %c_args, i32 12
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4
  %27 = ptrtoint ptr %c_args to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %1, ptr %c_args, align 4
  %dest_offset19 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 1
  %28 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %dest_offset19, align 4
  %crc20 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 2
  %29 = ptrtoint ptr %crc20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %crc20, align 4
  %pid21 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 3
  %30 = ptrtoint ptr %pid21 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 18, ptr %pid21, align 4
  %continuity_counter22 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 4
  %31 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %continuity_counter22, align 4
  %dest_buf_sz23 = getelementptr inbounds %struct.crc32_write_args, ptr %c_args, i32 0, i32 5
  %32 = ptrtoint ptr %dest_buf_sz23 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %7, ptr %dest_buf_sz23, align 4
  %event26 = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %5, i32 0, i32 5
  %33 = ptrtoint ptr %event26 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load ptr, ptr %event26, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc27) #11
  %35 = ptrtoint ptr %crc27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %crc27, align 4
  tail call void @vidtv_psi_eit_table_update_sec_len(ptr noundef %5)
  %continuity_counter29 = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %args, i32 0, i32 4
  %36 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %continuity_counter29, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i) #11
  %38 = getelementptr inbounds i8, ptr %psi_args.i, i32 16
  %39 = call ptr @memset(ptr %38, i32 255, i32 12)
  %40 = ptrtoint ptr %psi_args.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %1, ptr %psi_args.i, align 4
  %from.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 1
  %41 = ptrtoint ptr %from.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %5, ptr %from.i, align 4
  %len.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 2
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %len.i, align 4
  %dest_offset.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 3
  %43 = ptrtoint ptr %dest_offset.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %3, ptr %dest_offset.i, align 4
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 18, ptr %38, align 4
  %new_psi_section.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 5
  %45 = ptrtoint ptr %new_psi_section.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %new_psi_section.i, align 2
  %continuity_counter.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 6
  %46 = ptrtoint ptr %continuity_counter.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %37, ptr %continuity_counter.i, align 4
  %is_crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 7
  %47 = ptrtoint ptr %is_crc.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %is_crc.i, align 4
  %dest_buf_sz.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 8
  %48 = ptrtoint ptr %dest_buf_sz.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %7, ptr %dest_buf_sz.i, align 4
  %crc.i = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i, i32 0, i32 9
  %49 = ptrtoint ptr %crc.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %crc27, ptr %crc.i, align 4
  %call.i = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i) #11
  %50 = ptrtoint ptr %eit to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %eit, align 4
  %transport_id = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %transport_id, ptr %from, align 4
  %53 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %offset, align 4
  %add35 = add i32 %54, %call.i
  %55 = ptrtoint ptr %dest_offset3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add35, ptr %dest_offset3, align 4
  %56 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %continuity_counter29, align 4
  %58 = ptrtoint ptr %continuity_counter5 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %continuity_counter5, align 4
  %59 = ptrtoint ptr %crc8 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %crc27, ptr %crc8, align 4
  %call40 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add41 = add i32 %call40, %call.i
  %60 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 12, ptr %len, align 4
  %tobool.not126 = icmp eq ptr %34, null
  br i1 %tobool.not126, label %entry.while.end62_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end62_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end62

while.body:                                       ; preds = %while.end.while.body_crit_edge, %entry.while.body_crit_edge
  %nbytes.0128 = phi i32 [ %nbytes.1.lcssa, %while.end.while.body_crit_edge ], [ %add41, %entry.while.body_crit_edge ]
  %event.0127 = phi ptr [ %76, %while.end.while.body_crit_edge ], [ %34, %entry.while.body_crit_edge ]
  %61 = ptrtoint ptr %from to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %event.0127, ptr %from, align 4
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %add45 = add i32 %63, %nbytes.0128
  %64 = ptrtoint ptr %dest_offset3 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add45, ptr %dest_offset3, align 4
  %call47 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args)
  %add48 = add i32 %call47, %nbytes.0128
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %event.0127, i32 0, i32 4
  %65 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %event_descriptor.0122 = load ptr, ptr %descriptor, align 1
  %tobool50.not123 = icmp eq ptr %event_descriptor.0122, null
  br i1 %tobool50.not123, label %while.body.while.end_crit_edge, label %while.body.while.body51_crit_edge

while.body.while.body51_crit_edge:                ; preds = %while.body
  br label %while.body51

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body51:                                     ; preds = %while.body51.while.body51_crit_edge, %while.body.while.body51_crit_edge
  %event_descriptor.0125 = phi ptr [ %event_descriptor.0, %while.body51.while.body51_crit_edge ], [ %event_descriptor.0122, %while.body.while.body51_crit_edge ]
  %nbytes.1124 = phi i32 [ %add60, %while.body51.while.body51_crit_edge ], [ %add48, %while.body.while.body51_crit_edge ]
  %66 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %offset, align 4
  %add53 = add i32 %67, %nbytes.1124
  %68 = ptrtoint ptr %dest_offset11 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add53, ptr %dest_offset11, align 4
  %69 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %event_descriptor.0125, ptr %desc, align 4
  %70 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %continuity_counter29, align 4
  %72 = ptrtoint ptr %continuity_counter13 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %continuity_counter13, align 4
  %73 = ptrtoint ptr %crc16 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %crc27, ptr %crc16, align 4
  %call59 = call fastcc i32 @vidtv_psi_desc_write_into(ptr noundef nonnull %d_args)
  %add60 = add i32 %call59, %nbytes.1124
  %74 = ptrtoint ptr %event_descriptor.0125 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 4)
  %event_descriptor.0 = load ptr, ptr %event_descriptor.0125, align 1
  %tobool50.not = icmp eq ptr %event_descriptor.0, null
  br i1 %tobool50.not, label %while.body51.while.end_crit_edge, label %while.body51.while.body51_crit_edge

while.body51.while.body51_crit_edge:              ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body51

while.body51.while.end_crit_edge:                 ; preds = %while.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body51.while.end_crit_edge, %while.body.while.end_crit_edge
  %nbytes.1.lcssa = phi i32 [ %add48, %while.body.while.end_crit_edge ], [ %add60, %while.body51.while.end_crit_edge ]
  %next61 = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %event.0127, i32 0, i32 5
  %75 = ptrtoint ptr %next61 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load ptr, ptr %next61, align 1
  %tobool.not = icmp eq ptr %76, null
  br i1 %tobool.not, label %while.end.while.end62_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end.while.end62_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end62

while.end62:                                      ; preds = %while.end.while.end62_crit_edge, %entry.while.end62_crit_edge
  %nbytes.0.lcssa = phi i32 [ %add41, %entry.while.end62_crit_edge ], [ %nbytes.1.lcssa, %while.end.while.end62_crit_edge ]
  %77 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %offset, align 4
  %add64 = add i32 %78, %nbytes.0.lcssa
  %79 = ptrtoint ptr %dest_offset19 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add64, ptr %dest_offset19, align 4
  %80 = ptrtoint ptr %crc27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crc27, align 4
  %82 = ptrtoint ptr %crc20 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %crc20, align 4
  %83 = ptrtoint ptr %continuity_counter29 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %continuity_counter29, align 4
  %85 = ptrtoint ptr %continuity_counter22 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %continuity_counter22, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %psi_args.i105) #11
  %86 = getelementptr inbounds i8, ptr %psi_args.i105, i32 16
  %87 = call ptr @memset(ptr %86, i32 255, i32 12)
  %88 = ptrtoint ptr %c_args to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %c_args, align 4
  %90 = ptrtoint ptr %psi_args.i105 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %psi_args.i105, align 4
  %from.i106 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 1
  %91 = ptrtoint ptr %from.i106 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %crc20, ptr %from.i106, align 4
  %len.i108 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 2
  %92 = ptrtoint ptr %len.i108 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %len.i108, align 4
  %dest_offset.i109 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 3
  %93 = ptrtoint ptr %dest_offset.i109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add64, ptr %dest_offset.i109, align 4
  %94 = ptrtoint ptr %pid21 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %pid21, align 4
  %96 = ptrtoint ptr %86 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %86, align 4
  %new_psi_section.i113 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 5
  %97 = ptrtoint ptr %new_psi_section.i113 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %new_psi_section.i113, align 2
  %continuity_counter.i114 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 6
  %98 = ptrtoint ptr %continuity_counter.i114 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %84, ptr %continuity_counter.i114, align 4
  %is_crc.i116 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 7
  %99 = ptrtoint ptr %is_crc.i116 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %is_crc.i116, align 4
  %dest_buf_sz.i117 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 8
  %100 = ptrtoint ptr %dest_buf_sz23 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dest_buf_sz23, align 4
  %102 = ptrtoint ptr %dest_buf_sz.i117 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %dest_buf_sz.i117, align 4
  %crc6.i119 = getelementptr inbounds %struct.psi_write_args, ptr %psi_args.i105, i32 0, i32 9
  %103 = ptrtoint ptr %crc6.i119 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %crc6.i119, align 4
  %call.i120 = call fastcc i32 @vidtv_psi_ts_psi_write_into(ptr noundef nonnull %psi_args.i105) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args.i105) #11
  %add70 = add i32 %call.i120, %nbytes.0.lcssa
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc27) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c_args) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %d_args) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %psi_args) #11
  ret i32 %add70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_psi_eit_event_init(ptr noundef %head, i16 noundef zeroext %event_id) local_unnamed_addr #2 align 64 {
entry:
  %time = alloca %struct.tm, align 4
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %time) #11
  %0 = call ptr @memset(ptr %time, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.tm, ptr %time, i32 0, i32 5
  %3 = getelementptr inbounds %struct.tm, ptr %time, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tm, ptr %time, i32 0, i32 3
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %event_id, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #11
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %call.i) #11
  %6 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %6)
  %ts.sroa.0.0.copyload44 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #11
  call void @time64_to_tm(i64 noundef %ts.sroa.0.0.copyload44, i32 noundef 0, ptr noundef nonnull %time) #11
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp slt i32 %8, 2
  %..neg = sext i1 %cmp to i32
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  %add = add i32 %10, 14956
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  %sub = add i32 %12, %..neg
  %mul = mul i32 %sub, 36525
  %div = sdiv i32 %mul, 100
  %add5 = add i32 %add, %div
  %add7 = add i32 %8, 2
  %mul8 = select i1 %cmp, i32 12, i32 0
  %add9 = add i32 %add7, %mul8
  %mul10 = mul i32 %add9, 306001
  %div11 = sdiv i32 %mul10, 10000
  %add12 = add i32 %add5, %div11
  %conv = trunc i32 %add12 to i16
  %start_time = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %start_time to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %start_time, align 2
  %14 = getelementptr inbounds %struct.tm, ptr %time, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %call19 = call zeroext i8 @_bin2bcd(i32 noundef %16) #19
  %arrayidx = getelementptr %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %call19, ptr %arrayidx, align 4
  %arrayidx24 = getelementptr %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx24, align 1
  %arrayidx26 = getelementptr %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx26, align 2
  %duration = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 2
  %20 = call ptr @memcpy(ptr %duration, ptr @__const.vidtv_psi_eit_event_init.DURATION, i32 3)
  %bitfield = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %bitfield to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -32768, ptr %bitfield, align 2
  %tobool29.not = icmp eq ptr %head, null
  br i1 %tobool29.not, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %head.addr.0 = phi ptr [ %23, %while.cond.while.cond_crit_edge ], [ %head, %if.end.while.cond_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %head.addr.0, i32 0, i32 5
  %22 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load ptr, ptr %next, align 1
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %next.le = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %head.addr.0, i32 0, i32 5
  %24 = ptrtoint ptr %next.le to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store ptr %call7.i.i, ptr %next.le, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %time) #11
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @time64_to_tm(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_eit_event_destroy(ptr noundef %e) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not4 = icmp eq ptr %e, null
  br i1 %tobool.not4, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %curr_e.05 = phi ptr [ %1, %while.body.while.body_crit_edge ], [ %e, %entry.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr_e.05, i32 0, i32 5
  %0 = ptrtoint ptr %next to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %next, align 1
  %descriptor = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr_e.05, i32 0, i32 4
  %2 = ptrtoint ptr %descriptor to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %descriptor, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %3)
  tail call void @kfree(ptr noundef nonnull %curr_e.05) #11
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_psi_eit_table_destroy(ptr noundef %eit) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.vidtv_psi_table_eit, ptr %eit, i32 0, i32 5
  %0 = ptrtoint ptr %event to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %event, align 1
  %tobool.not4.i = icmp eq ptr %1, null
  br i1 %tobool.not4.i, label %entry.vidtv_psi_eit_event_destroy.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.vidtv_psi_eit_event_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_eit_event_destroy.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %curr_e.05.i = phi ptr [ %3, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr_e.05.i, i32 0, i32 5
  %2 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %next.i, align 1
  %descriptor.i = getelementptr inbounds %struct.vidtv_psi_table_eit_event, ptr %curr_e.05.i, i32 0, i32 4
  %4 = ptrtoint ptr %descriptor.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %descriptor.i, align 1
  tail call void @vidtv_psi_desc_destroy(ptr noundef %5) #11
  tail call void @kfree(ptr noundef nonnull %curr_e.05.i) #11
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %while.body.i.vidtv_psi_eit_event_destroy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.vidtv_psi_eit_event_destroy.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vidtv_psi_eit_event_destroy.exit

vidtv_psi_eit_event_destroy.exit:                 ; preds = %while.body.i.vidtv_psi_eit_event_destroy.exit_crit_edge, %entry.vidtv_psi_eit_event_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef %eit) #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memset(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_memcpy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_ts_inc_cc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 442, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 564, i32 4}
!4 = !{ptr @vidtv_psi_desc_destroy._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.vidtv_psi_desc_destroy, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vidtv_psi_desc_destroy._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vidtv_psi_desc_destroy._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @vidtv_psi_set_sec_len._rs, !11, !"_rs", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 144, i32 3}
!12 = !{ptr @__func__.vidtv_psi_set_sec_len, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vidtv_psi_set_sec_len._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @vidtv_psi_set_sec_len._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @vidtv_psi_ts_psi_write_into._rs, !17, !"_rs", i1 false, i1 false}
!17 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 175, i32 3}
!18 = !{ptr @__func__.vidtv_psi_ts_psi_write_into, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vidtv_psi_ts_psi_write_into._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @vidtv_psi_ts_psi_write_into._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @vidtv_psi_ts_psi_write_into._rs.6, !23, !"_rs", i1 false, i1 false}
!23 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 181, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vidtv_psi_ts_psi_write_into._entry.7, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @vidtv_psi_ts_psi_write_into._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @CRC_LUT, !28, !"CRC_LUT", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vidtv/vidtv_psi.c", i32 34, i32 18}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
!39 = !{!"branch_weights", i32 1, i32 2000}
