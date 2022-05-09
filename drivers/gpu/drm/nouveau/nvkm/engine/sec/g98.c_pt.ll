; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.143 = type { ptr, i32 }
%struct.anon.144 = type { ptr, i32 }
%struct.anon.147 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_enum = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.145, %struct.anon.146, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.145 = type { i32, ptr, i32, i8 }
%struct.anon.146 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.84 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_gpuobj = type { %union.anon.81, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.81 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }

@g98_sec = internal constant { { %struct.anon.143, %struct.anon.144, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.147, [2 x %struct.nvkm_sclass] }, [48 x i8] } { { %struct.anon.143, %struct.anon.144, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.147, %struct.anon.147, [2 x %struct.nvkm_sclass] } { %struct.anon.143 { ptr @g98_sec_code, i32 1536 }, %struct.anon.144 { ptr @g98_sec_data, i32 512 }, ptr null, ptr @g98_sec_intr, i32 0, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.anon.147 zeroinitializer, %struct.anon.147 zeroinitializer, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 34996, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@g98_sec_code = internal global { <{ [326 x i32], [58 x i32] }>, [384 x i8] } { <{ [326 x i32], [58 x i32] }> <{ [326 x i32] [i32 401605821, i32 1113653, i32 -251656962, i32 -251662313, i32 670105619, i32 567280640, i32 202764480, i32 -268426800, i32 670106391, i32 567284224, i32 271709184, i32 -201313804, i32 250871848, i32 -2147364867, i32 -1341648188, i32 200540196, i32 2617703, i32 2883191, i32 -268433410, i32 602931239, i32 3666181, i32 3460884, i32 -1342093932, i32 418644053, i32 100858391, i32 1257243640, i32 3461150, i32 -805222416, i32 250904628, i32 1077202739, i32 -1342091372, i32 418644213, i32 84081185, i32 1475347448, i32 40366080, i32 -1602726212, i32 -1241415576, i32 -2016409468, i32 23246336, i32 -252700428, i32 902824535, i32 68338816, i32 -184539984, i32 -251601141, i32 -820445129, i32 869220402, i32 -14359552, i32 270841351, i32 129975780, i32 -184527696, i32 -251610869, i32 -235216809, i32 -1342124441, i32 418693188, i32 -1604849331, i32 -2006453764, i32 -2142982144, i32 -1338042124, i32 418668612, i32 1346678809, i32 -244048908, i32 -1121845209, i32 36958260, i32 -184540208, i32 -1342144242, i32 418669380, i32 38114398, i32 -25145161, i32 -2145502736, i32 1085734995, i32 1152778528, i32 4444168, i32 -1201664268, i32 418645062, i32 54834750, i32 -1744812613, i32 1409089861, i32 5550084, i32 1479089140, i32 1180172357, i32 40153089, i32 -1743320076, i32 1744635911, i32 23375876, i32 -114291724, i32 251786325, i32 -2144858380, i32 250871891, i32 19263522, i32 268453873, i32 -805289264, i32 1206927427, i32 315456, i32 -260045617, i32 1152401476, i32 -149163008, i32 486553585, i32 -805222416, i32 298057780, i32 1073860620, i32 955384312, i32 52817921, i32 184567793, i32 -817871153, i32 1204748357, i32 73906240, i32 -1728832524, i32 75498756, i32 553680928, i32 -2145254016, i32 201204486, i32 50632704, i32 -31963978, i32 77070407, i32 -2141720316, i32 39055360, i32 -133806598, i32 -201263101, i32 636485937, i32 87339010, i32 -200140556, i32 883949874, i32 186184706, i32 -2147404048, i32 16254979, i32 -1744436072, i32 1455687429, i32 139835135, i32 -48741194, i32 1207829829, i32 785920, i32 8411121, i32 -100510736, i32 883950949, i32 320599042, i32 77071352, i32 4501537, i32 -2146743056, i32 16254980, i32 -1240440650, i32 1710886992, i32 -1744570363, i32 110632965, i32 72792100, i32 -1744089872, i32 110633221, i32 72792101, i32 -49586960, i32 883950661, i32 190640131, i32 -2147072515, i32 16254980, i32 -251579660, i32 -1121845209, i32 20181044, i32 -134208560, i32 20050944, i32 -1342036496, i32 418647860, i32 20116489, i32 -133364864, i32 3452928, i32 -184873996, i32 1206911804, i32 121892928, i32 -268040966, i32 1139822663, i32 100989446, i32 1022690296, i32 1207026695, i32 1274945792, i32 151296000, i32 -1794505320, i32 1152780376, i32 88669464, i32 -1728096828, i32 127404806, i32 142120204, i32 -48733002, i32 2009335144, i32 218667263, i32 1476560054, i32 -1778800503, i32 -106329768, i32 20771989, i32 1022624760, i32 -133957535, i32 407409923, i32 -1157084780, i32 -2118778731, i32 151552000, i32 -1794504320, i32 1771313256, i32 9943816, i32 -2147450442, i32 159386376, i32 37549068, i32 -263174160, i32 83494467, i32 -133957627, i32 540865792, i32 3995028, i32 3995016, i32 -184485748, i32 -174845892, i32 -125041092, i32 809301248, i32 3995028, i32 3995016, i32 3995088, i32 -184485748, i32 -171411652, i32 -174837700, i32 -175636420, i32 -170655684, i32 -125042628, i32 1077736704, i32 3995028, i32 104658312, i32 1715271084, i32 104658384, i32 -184485748, i32 -171411652, i32 -174829508, i32 -175873476, i32 -175634884, i32 -170631108, i32 -173268932, i32 -125042628, i32 1346172160, i32 3995028, i32 104658312, i32 1715271084, i32 104658384, i32 104658316, i32 -184485716, i32 -171411652, i32 -174829508, i32 -175636420, i32 -170655428, i32 -173271492, i32 -175372740, i32 -122943940, i32 1077736704, i32 1715271060, i32 3995088, i32 104658312, i32 104658348, i32 -184485748, i32 -174833604, i32 -170893252, i32 -175634884, i32 -173252548, i32 -125042628, i32 1077736704, i32 1715271060, i32 3995088, i32 1614607752, i32 3995052, i32 -184485748, i32 -174829508, i32 -170892996, i32 -173009348, i32 -175636420, i32 -173273028, i32 -125042628, i32 809301248, i32 3995028, i32 104658312, i32 1715271084, i32 -184485680, i32 -174821316, i32 -175636420, i32 -173275588, i32 -173277124, i32 -170917828, i32 -172228548, i32 -173275588, i32 -120560068, i32 -2143488768, i32 3995028, i32 104658312, i32 3995052, i32 3995052, i32 3995088, i32 3995068, i32 104658364, i32 1715271084, i32 -1157564208, i32 1207828533, i32 -2137526016, i32 43249664, i32 -133867014, i32 574419971, i32 -184153606, i32 -124252100, i32 273724931, i32 -201043016, i32 1022683419, i32 -133957631, i32 3652352, i32 -251631618, i32 -268402537, i32 1022689939, i32 1022662672, i32 91880033, i32 -200902150, i32 66584892, i32 -1206882122, i32 468976755, i32 -1157564184, i32 -1745813451, i32 -1812987776, i32 4718082, i32 -133867014, i32 557642755, i32 -184153606, i32 -191360964, i32 1744724284, i32 91879936, i32 -200902150, i32 66584892, i32 -1240444746, i32 1404571760, i32 -736365564, i32 248], [58 x i32] zeroinitializer }>, [384 x i8] zeroinitializer }, align 32
@g98_sec_data = internal global { <{ [99 x i32], [29 x i32] }>, [128 x i8] } { <{ [99 x i32], [29 x i32] }> <{ [99 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 131084, i32 -256, i32 131088, i32 15, i32 131092, i32 0, i32 402, i32 -2, i32 131096, i32 -256, i32 131100, i32 15, i32 471, i32 -8, i32 608, i32 -1, i32 131136, i32 0, i32 131140, i32 0, i32 131144, i32 0, i32 131148, i32 0, i32 131152, i32 0, i32 131156, i32 0, i32 131160, i32 0, i32 131164, i32 0, i32 131108, i32 -256, i32 131112, i32 15, i32 131116, i32 -256, i32 131120, i32 15, i32 625, i32 -16, i32 66181, i32 -268435441, i32 81462049, i32 78709551, i32 81462073, i32 81462091, i32 81462113, i32 81462135, i32 81462165, i32 81462191, i32 81462221, i32 81462243, i32 81462265, i32 81462287, i32 75695145, i32 75695163, i32 75695197], [29 x i32] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@g98_sec_isr_error_name = internal constant { [5 x %struct.nvkm_enum], [60 x i8] } { [5 x %struct.nvkm_enum] [%struct.nvkm_enum { i32 0, ptr @.str.10, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 1, ptr @.str.11, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 2, ptr @.str.12, ptr null, i32 0, i32 0 }, %struct.nvkm_enum { i32 3, ptr @.str.13, ptr null, i32 0, i32 0 }, %struct.nvkm_enum zeroinitializer], [60 x i8] zeroinitializer }, align 32
@g98_sec_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.5, i32 60, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: DISPATCH_ERROR %04x [%s] ch %d [%010llx %s] subc %d mthd %04x data %08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"g98_sec_intr\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@g98_sec_intr._entry_ptr = internal global ptr @g98_sec_intr._entry, section ".printk_index", align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ILLEGAL_MTHD\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INVALID_BITFIELD\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"INVALID_ENUM\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"QUERY\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [8 x i8] c"g98_sec\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"g98_sec_code\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 154, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"g98_sec_data\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [59 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec/fuc/g98.fuc0s.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 2, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"g98_sec_isr_error_name\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 34, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 55, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 35, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 37, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [49 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 38, i32 12 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @g98_sec_intr._entry, ptr @g98_sec_intr._entry_ptr, ptr @g98_sec, ptr @g98_sec_code, ptr @g98_sec_data, ptr @g98_sec_isr_error_name, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sec to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sec_code to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sec_data to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sec_isr_error_name to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g98_sec_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @g98_sec_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pengine) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_falcon_new_(ptr noundef nonnull @g98_sec, ptr noundef %device, i32 noundef %type, i32 noundef %inst, i1 noundef zeroext true, i32 noundef 552960, ptr noundef %pengine) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @g98_sec_intr(ptr noundef %sec, ptr noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.nvkm_falcon, ptr %sec, i32 0, i32 15, i32 1, i32 1
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 553024
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  %and = and i32 %4, 65535
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr5 = getelementptr i8, ptr %6, i32 553024
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %8 = lshr i32 %7, 14
  %shl = and i32 %8, 8188
  %and9 = lshr i32 %7, 27
  %shr10 = and i32 %and9, 7
  %9 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pri, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 553028
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #3, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %call16 = tail call ptr @nvkm_enum_find(ptr noundef nonnull @g98_sec_isr_error_name, i32 noundef %and) #3
  %debug = getelementptr inbounds %struct.nvkm_falcon, ptr %sec, i32 0, i32 15, i32 1, i32 5
  %12 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device2, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_falcon, ptr %sec, i32 0, i32 15, i32 1, i32 4
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %name19 = getelementptr inbounds %struct.nvkm_enum, ptr %call16, i32 0, i32 1
  %18 = ptrtoint ptr %name19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name19, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi ptr [ %19, %cond.true ], [ @.str.8, %do.end.cond.end_crit_edge ]
  %tobool20.not = icmp eq ptr %chan, null
  br i1 %tobool20.not, label %cond.end.cond.end36_crit_edge, label %cond.true32

cond.end.cond.end36_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end36

cond.true32:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %chid = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %chid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chid, align 8
  %conv = zext i16 %21 to i32
  %inst = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 6
  %22 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %inst, align 4
  %addr27 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %addr27 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %addr27, align 8
  %client = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %chan, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client, align 4
  %name33 = getelementptr inbounds %struct.nvkm_client, ptr %27, i32 0, i32 1
  br label %cond.end36

cond.end36:                                       ; preds = %cond.true32, %cond.end.cond.end36_crit_edge
  %cond3058 = phi i64 [ %25, %cond.true32 ], [ 0, %cond.end.cond.end36_crit_edge ]
  %cond245457 = phi i32 [ %conv, %cond.true32 ], [ -1, %cond.end.cond.end36_crit_edge ]
  %cond37 = phi ptr [ %name33, %cond.true32 ], [ @.str.9, %cond.end.cond.end36_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %and, ptr noundef %cond, i32 noundef %cond245457, i64 noundef %cond3058, ptr noundef %cond37, i32 noundef %shr10, i32 noundef %shl, i32 noundef %11) #6
  br label %if.end

if.end:                                           ; preds = %cond.end36, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_enum_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @g98_sec, !1, !"g98_sec", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 64, i32 1}
!2 = !{ptr @g98_sec_code, !3, !"g98_sec_code", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/fuc/g98.fuc0s.h", i32 154, i32 17}
!4 = !{ptr @g98_sec_data, !5, !"g98_sec_data", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/fuc/g98.fuc0s.h", i32 2, i32 17}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 55, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @g98_sec_intr._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @g98_sec_intr._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !7, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !7, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 35, i32 12}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 36, i32 12}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 37, i32 12}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 38, i32 12}
!24 = !{ptr @g98_sec_isr_error_name, !25, !"g98_sec_isr_error_name", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/sec/g98.c", i32 34, i32 31}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 5388400}
!36 = !{i64 2156271001}
!37 = !{i64 2156271386}
!38 = !{i64 2156271771}
