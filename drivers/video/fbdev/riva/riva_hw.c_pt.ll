; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/riva/riva_hw.c_pt.bc'
source_filename = "../drivers/video/fbdev/riva/riva_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv10_fifo_info = type { i32, i32, i32, i32, i32 }
%struct.nv10_sim_state = type { i32, i32, i32, i8, i8, i32, i32, i8, i8, i8, i8, i8 }
%struct.nv3_arb_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i32 }
%struct.nv3_sim_state = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i8 }
%struct._riva_hw_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._riva_hw_inst = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.87, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.87 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.anon = type { [4 x i32], i32, [187 x i32], i32 }
%struct.anon.16 = type { [4 x i32], i32, [188 x i32], i32, i32, i32, i32, i32, i32, [825 x i32], i32, i32, float, float, float, float, float, float }

@nv3TablePFIFO = internal constant { [26 x [2 x i32]], [48 x i8] } { [26 x [2 x i32]] [[2 x i32] [i32 320, i32 0], [2 x i32] [i32 1152, i32 0], [2 x i32] [i32 1168, i32 0], [2 x i32] [i32 1172, i32 0], [2 x i32] [i32 1153, i32 0], [2 x i32] [i32 132, i32 0], [2 x i32] [i32 134, i32 8192], [2 x i32] [i32 133, i32 8704], [2 x i32] [i32 1156, i32 0], [2 x i32] [i32 1180, i32 0], [2 x i32] [i32 260, i32 0], [2 x i32] [i32 264, i32 0], [2 x i32] [i32 256, i32 0], [2 x i32] [i32 1184, i32 0], [2 x i32] [i32 1188, i32 0], [2 x i32] [i32 1192, i32 0], [2 x i32] [i32 1196, i32 0], [2 x i32] [i32 1200, i32 0], [2 x i32] [i32 1204, i32 0], [2 x i32] [i32 1208, i32 0], [2 x i32] [i32 1212, i32 0], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 1152, i32 1], [2 x i32] [i32 1168, i32 1], [2 x i32] [i32 320, i32 1]], [48 x i8] zeroinitializer }, align 32
@nv3TablePRAMIN = internal constant { [66 x [2 x i32]], [144 x i8] } { [66 x [2 x i32]] [[2 x i32] [i32 1280, i32 65536], [2 x i32] [i32 1281, i32 8388607], [2 x i32] [i32 512, i32 -2147483648], [2 x i32] [i32 513, i32 12714817], [2 x i32] [i32 516, i32 -2147483647], [2 x i32] [i32 517, i32 12911426], [2 x i32] [i32 520, i32 -2147483646], [2 x i32] [i32 521, i32 12976963], [2 x i32] [i32 524, i32 -2147483645], [2 x i32] [i32 525, i32 14418760], [2 x i32] [i32 528, i32 -2147483644], [2 x i32] [i32 529, i32 14418761], [2 x i32] [i32 532, i32 -2147483643], [2 x i32] [i32 533, i32 14418762], [2 x i32] [i32 536, i32 -2147483642], [2 x i32] [i32 537, i32 14418763], [2 x i32] [i32 576, i32 -2147483632], [2 x i32] [i32 577, i32 13697860], [2 x i32] [i32 580, i32 -2147483631], [2 x i32] [i32 581, i32 13632325], [2 x i32] [i32 584, i32 -2147483630], [2 x i32] [i32 585, i32 13370182], [2 x i32] [i32 588, i32 -2147483629], [2 x i32] [i32 589, i32 14091079], [2 x i32] [i32 600, i32 -2147483626], [2 x i32] [i32 601, i32 13239116], [2 x i32] [i32 3333, i32 0], [2 x i32] [i32 3334, i32 0], [2 x i32] [i32 3335, i32 0], [2 x i32] [i32 3337, i32 0], [2 x i32] [i32 3338, i32 0], [2 x i32] [i32 3339, i32 0], [2 x i32] [i32 3341, i32 0], [2 x i32] [i32 3342, i32 0], [2 x i32] [i32 3343, i32 0], [2 x i32] [i32 3345, i32 0], [2 x i32] [i32 3346, i32 0], [2 x i32] [i32 3347, i32 0], [2 x i32] [i32 3349, i32 0], [2 x i32] [i32 3350, i32 0], [2 x i32] [i32 3351, i32 0], [2 x i32] [i32 3353, i32 0], [2 x i32] [i32 3354, i32 0], [2 x i32] [i32 3355, i32 0], [2 x i32] [i32 3357, i32 320], [2 x i32] [i32 3358, i32 0], [2 x i32] [i32 3359, i32 0], [2 x i32] [i32 3360, i32 269484544], [2 x i32] [i32 3361, i32 0], [2 x i32] [i32 3362, i32 0], [2 x i32] [i32 3363, i32 0], [2 x i32] [i32 3364, i32 270598656], [2 x i32] [i32 3365, i32 0], [2 x i32] [i32 3366, i32 0], [2 x i32] [i32 3367, i32 0], [2 x i32] [i32 3368, i32 272761344], [2 x i32] [i32 3369, i32 0], [2 x i32] [i32 3370, i32 0], [2 x i32] [i32 3371, i32 0], [2 x i32] [i32 3372, i32 277021184], [2 x i32] [i32 3373, i32 0], [2 x i32] [i32 3374, i32 0], [2 x i32] [i32 3375, i32 0], [2 x i32] [i32 3377, i32 0], [2 x i32] [i32 3378, i32 0], [2 x i32] [i32 3379, i32 0]], [144 x i8] zeroinitializer }, align 32
@nv3TablePGRAPH = internal constant { [33 x [2 x i32]], [88 x i8] } { [33 x [2 x i32]] [[2 x i32] [i32 32, i32 305135647], [2 x i32] [i32 33, i32 269561856], [2 x i32] [i32 34, i32 288485633], [2 x i32] [i32 35, i32 16839985], [2 x i32] [i32 96, i32 0], [2 x i32] [i32 101, i32 0], [2 x i32] [i32 104, i32 0], [2 x i32] [i32 105, i32 0], [2 x i32] [i32 106, i32 0], [2 x i32] [i32 107, i32 0], [2 x i32] [i32 108, i32 0], [2 x i32] [i32 109, i32 0], [2 x i32] [i32 110, i32 0], [2 x i32] [i32 111, i32 0], [2 x i32] [i32 424, i32 0], [2 x i32] [i32 1088, i32 -1], [2 x i32] [i32 1152, i32 1], [2 x i32] [i32 416, i32 0], [2 x i32] [i32 418, i32 0], [2 x i32] [i32 394, i32 -1], [2 x i32] [i32 400, i32 0], [2 x i32] [i32 322, i32 0], [2 x i32] [i32 340, i32 0], [2 x i32] [i32 341, i32 -1], [2 x i32] [i32 342, i32 0], [2 x i32] [i32 343, i32 -1], [2 x i32] [i32 100, i32 268500994], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 81, i32 0], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 65, i32 -1], [2 x i32] [i32 1088, i32 -1], [2 x i32] [i32 425, i32 1]], [88 x i8] zeroinitializer }, align 32
@nv4TablePFIFO = internal constant { [19 x [2 x i32]], [40 x i8] } { [19 x [2 x i32]] [[2 x i32] [i32 320, i32 0], [2 x i32] [i32 1152, i32 0], [2 x i32] [i32 1172, i32 0], [2 x i32] [i32 1153, i32 0], [2 x i32] [i32 1163, i32 0], [2 x i32] [i32 1024, i32 0], [2 x i32] [i32 1044, i32 0], [2 x i32] [i32 132, i32 50331904], [2 x i32] [i32 133, i32 272], [2 x i32] [i32 134, i32 274], [2 x i32] [i32 323, i32 65535], [2 x i32] [i32 1174, i32 65535], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 1045, i32 1], [2 x i32] [i32 1152, i32 1], [2 x i32] [i32 1172, i32 1], [2 x i32] [i32 1173, i32 1], [2 x i32] [i32 320, i32 1]], [40 x i8] zeroinitializer }, align 32
@nv4TablePRAMIN = internal constant { [77 x [2 x i32]], [152 x i8] } { [77 x [2 x i32]] [[2 x i32] [i32 0, i32 -2147483632], [2 x i32] [i32 1, i32 -2147413691], [2 x i32] [i32 2, i32 -2147483631], [2 x i32] [i32 3, i32 -2147413690], [2 x i32] [i32 4, i32 -2147483630], [2 x i32] [i32 5, i32 -2147413689], [2 x i32] [i32 6, i32 -2147483629], [2 x i32] [i32 7, i32 -2147413688], [2 x i32] [i32 8, i32 -2147483628], [2 x i32] [i32 9, i32 -2147413687], [2 x i32] [i32 10, i32 -2147483627], [2 x i32] [i32 11, i32 -2147413686], [2 x i32] [i32 12, i32 -2147483626], [2 x i32] [i32 13, i32 -2147413681], [2 x i32] [i32 32, i32 -2147483648], [2 x i32] [i32 33, i32 -2147413694], [2 x i32] [i32 34, i32 -2147483647], [2 x i32] [i32 35, i32 -2147413693], [2 x i32] [i32 36, i32 -2147483646], [2 x i32] [i32 37, i32 -2147413692], [2 x i32] [i32 38, i32 -2147483645], [2 x i32] [i32 39, i32 -2147413685], [2 x i32] [i32 40, i32 -2147483644], [2 x i32] [i32 41, i32 -2147413684], [2 x i32] [i32 42, i32 -2147483643], [2 x i32] [i32 43, i32 -2147413683], [2 x i32] [i32 44, i32 -2147483642], [2 x i32] [i32 45, i32 -2147413682], [2 x i32] [i32 1280, i32 12288], [2 x i32] [i32 1281, i32 33554431], [2 x i32] [i32 1282, i32 2], [2 x i32] [i32 1283, i32 2], [2 x i32] [i32 1288, i32 16810051], [2 x i32] [i32 1290, i32 0], [2 x i32] [i32 1291, i32 0], [2 x i32] [i32 1292, i32 16810009], [2 x i32] [i32 1294, i32 0], [2 x i32] [i32 1295, i32 0], [2 x i32] [i32 1296, i32 16810008], [2 x i32] [i32 1298, i32 0], [2 x i32] [i32 1299, i32 0], [2 x i32] [i32 1300, i32 16810017], [2 x i32] [i32 1302, i32 0], [2 x i32] [i32 1303, i32 0], [2 x i32] [i32 1304, i32 16810079], [2 x i32] [i32 1306, i32 0], [2 x i32] [i32 1307, i32 0], [2 x i32] [i32 1308, i32 16810059], [2 x i32] [i32 1310, i32 0], [2 x i32] [i32 1311, i32 0], [2 x i32] [i32 1312, i32 16818248], [2 x i32] [i32 1313, i32 3329], [2 x i32] [i32 1314, i32 289411392], [2 x i32] [i32 1315, i32 0], [2 x i32] [i32 1316, i32 50372692], [2 x i32] [i32 1317, i32 3329], [2 x i32] [i32 1318, i32 289411392], [2 x i32] [i32 1319, i32 0], [2 x i32] [i32 1320, i32 50372693], [2 x i32] [i32 1321, i32 3329], [2 x i32] [i32 1322, i32 289411392], [2 x i32] [i32 1323, i32 0], [2 x i32] [i32 1324, i32 88], [2 x i32] [i32 1326, i32 289411392], [2 x i32] [i32 1327, i32 0], [2 x i32] [i32 1328, i32 89], [2 x i32] [i32 1330, i32 289411392], [2 x i32] [i32 1331, i32 0], [2 x i32] [i32 1332, i32 90], [2 x i32] [i32 1334, i32 289411392], [2 x i32] [i32 1335, i32 0], [2 x i32] [i32 1336, i32 91], [2 x i32] [i32 1338, i32 289411392], [2 x i32] [i32 1339, i32 0], [2 x i32] [i32 1340, i32 50372636], [2 x i32] [i32 1342, i32 289411392], [2 x i32] [i32 1343, i32 0]], [152 x i8] zeroinitializer }, align 32
@nv4TablePGRAPH = internal constant { [55 x [2 x i32]], [104 x i8] } { [55 x [2 x i32]] [[2 x i32] [i32 32, i32 305250305], [2 x i32] [i32 33, i32 1913721089], [2 x i32] [i32 34, i32 299233393], [2 x i32] [i32 35, i32 282394417], [2 x i32] [i32 96, i32 0], [2 x i32] [i32 104, i32 0], [2 x i32] [i32 112, i32 0], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 97, i32 0], [2 x i32] [i32 105, i32 0], [2 x i32] [i32 113, i32 0], [2 x i32] [i32 121, i32 0], [2 x i32] [i32 98, i32 0], [2 x i32] [i32 106, i32 0], [2 x i32] [i32 114, i32 0], [2 x i32] [i32 122, i32 0], [2 x i32] [i32 99, i32 0], [2 x i32] [i32 107, i32 0], [2 x i32] [i32 115, i32 0], [2 x i32] [i32 123, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 108, i32 0], [2 x i32] [i32 116, i32 0], [2 x i32] [i32 124, i32 0], [2 x i32] [i32 101, i32 0], [2 x i32] [i32 109, i32 0], [2 x i32] [i32 117, i32 0], [2 x i32] [i32 125, i32 0], [2 x i32] [i32 102, i32 0], [2 x i32] [i32 110, i32 0], [2 x i32] [i32 118, i32 0], [2 x i32] [i32 126, i32 0], [2 x i32] [i32 103, i32 0], [2 x i32] [i32 111, i32 0], [2 x i32] [i32 119, i32 0], [2 x i32] [i32 127, i32 0], [2 x i32] [i32 88, i32 0], [2 x i32] [i32 89, i32 0], [2 x i32] [i32 90, i32 0], [2 x i32] [i32 91, i32 0], [2 x i32] [i32 406, i32 0], [2 x i32] [i32 417, i32 33554431], [2 x i32] [i32 407, i32 0], [2 x i32] [i32 418, i32 33554431], [2 x i32] [i32 408, i32 0], [2 x i32] [i32 419, i32 33554431], [2 x i32] [i32 409, i32 0], [2 x i32] [i32 420, i32 33554431], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 92, i32 268501248], [2 x i32] [i32 452, i32 -1], [2 x i32] [i32 456, i32 1], [2 x i32] [i32 516, i32 0], [2 x i32] [i32 451, i32 1]], [104 x i8] zeroinitializer }, align 32
@nv10TablePFIFO = internal constant { [19 x [2 x i32]], [40 x i8] } { [19 x [2 x i32]] [[2 x i32] [i32 320, i32 0], [2 x i32] [i32 1152, i32 0], [2 x i32] [i32 1172, i32 0], [2 x i32] [i32 1153, i32 0], [2 x i32] [i32 1163, i32 0], [2 x i32] [i32 1024, i32 0], [2 x i32] [i32 1044, i32 0], [2 x i32] [i32 132, i32 50331904], [2 x i32] [i32 133, i32 272], [2 x i32] [i32 134, i32 274], [2 x i32] [i32 323, i32 65535], [2 x i32] [i32 1174, i32 65535], [2 x i32] [i32 80, i32 0], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 1045, i32 1], [2 x i32] [i32 1152, i32 1], [2 x i32] [i32 1172, i32 1], [2 x i32] [i32 1173, i32 1], [2 x i32] [i32 320, i32 1]], [40 x i8] zeroinitializer }, align 32
@nv10TablePRAMIN = internal constant { [82 x [2 x i32]], [176 x i8] } { [82 x [2 x i32]] [[2 x i32] [i32 0, i32 -2147483632], [2 x i32] [i32 1, i32 -2147413691], [2 x i32] [i32 2, i32 -2147483631], [2 x i32] [i32 3, i32 -2147413690], [2 x i32] [i32 4, i32 -2147483630], [2 x i32] [i32 5, i32 -2147413689], [2 x i32] [i32 6, i32 -2147483629], [2 x i32] [i32 7, i32 -2147413688], [2 x i32] [i32 8, i32 -2147483628], [2 x i32] [i32 9, i32 -2147413687], [2 x i32] [i32 10, i32 -2147483627], [2 x i32] [i32 11, i32 -2147413686], [2 x i32] [i32 12, i32 -2147483626], [2 x i32] [i32 13, i32 -2147413680], [2 x i32] [i32 32, i32 -2147483648], [2 x i32] [i32 33, i32 -2147413694], [2 x i32] [i32 34, i32 -2147483647], [2 x i32] [i32 35, i32 -2147413693], [2 x i32] [i32 36, i32 -2147483646], [2 x i32] [i32 37, i32 -2147413692], [2 x i32] [i32 38, i32 -2147483645], [2 x i32] [i32 39, i32 -2147413685], [2 x i32] [i32 40, i32 -2147483644], [2 x i32] [i32 41, i32 -2147413684], [2 x i32] [i32 42, i32 -2147483643], [2 x i32] [i32 43, i32 -2147413683], [2 x i32] [i32 44, i32 -2147483642], [2 x i32] [i32 45, i32 -2147413682], [2 x i32] [i32 46, i32 -2147483641], [2 x i32] [i32 47, i32 -2147413681], [2 x i32] [i32 1280, i32 12288], [2 x i32] [i32 1281, i32 33554431], [2 x i32] [i32 1282, i32 2], [2 x i32] [i32 1283, i32 2], [2 x i32] [i32 1288, i32 17334339], [2 x i32] [i32 1290, i32 0], [2 x i32] [i32 1291, i32 0], [2 x i32] [i32 1292, i32 17334297], [2 x i32] [i32 1294, i32 0], [2 x i32] [i32 1295, i32 0], [2 x i32] [i32 1296, i32 17334296], [2 x i32] [i32 1298, i32 0], [2 x i32] [i32 1299, i32 0], [2 x i32] [i32 1300, i32 17334305], [2 x i32] [i32 1302, i32 0], [2 x i32] [i32 1303, i32 0], [2 x i32] [i32 1304, i32 17334367], [2 x i32] [i32 1306, i32 0], [2 x i32] [i32 1307, i32 0], [2 x i32] [i32 1308, i32 17334347], [2 x i32] [i32 1310, i32 0], [2 x i32] [i32 1311, i32 0], [2 x i32] [i32 1312, i32 16818248], [2 x i32] [i32 1313, i32 3329], [2 x i32] [i32 1314, i32 289411392], [2 x i32] [i32 1315, i32 0], [2 x i32] [i32 1316, i32 50372756], [2 x i32] [i32 1317, i32 3329], [2 x i32] [i32 1318, i32 289411392], [2 x i32] [i32 1319, i32 0], [2 x i32] [i32 1320, i32 50372757], [2 x i32] [i32 1321, i32 3329], [2 x i32] [i32 1322, i32 289411392], [2 x i32] [i32 1323, i32 0], [2 x i32] [i32 1324, i32 524376], [2 x i32] [i32 1326, i32 289411392], [2 x i32] [i32 1327, i32 0], [2 x i32] [i32 1328, i32 524377], [2 x i32] [i32 1330, i32 289411392], [2 x i32] [i32 1331, i32 0], [2 x i32] [i32 1332, i32 90], [2 x i32] [i32 1334, i32 289411392], [2 x i32] [i32 1335, i32 0], [2 x i32] [i32 1336, i32 91], [2 x i32] [i32 1338, i32 289411392], [2 x i32] [i32 1339, i32 0], [2 x i32] [i32 1340, i32 147], [2 x i32] [i32 1342, i32 289411392], [2 x i32] [i32 1343, i32 0], [2 x i32] [i32 1344, i32 50896924], [2 x i32] [i32 1346, i32 289411392], [2 x i32] [i32 1347, i32 0]], [176 x i8] zeroinitializer }, align 32
@nv10TablePGRAPH = internal constant { [70 x [2 x i32]], [144 x i8] } { [70 x [2 x i32]] [[2 x i32] [i32 32, i32 262143], [2 x i32] [i32 33, i32 1148673], [2 x i32] [i32 34, i32 620243673], [2 x i32] [i32 35, i32 1440612400], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 36, i32 0], [2 x i32] [i32 88, i32 0], [2 x i32] [i32 96, i32 0], [2 x i32] [i32 104, i32 0], [2 x i32] [i32 112, i32 0], [2 x i32] [i32 120, i32 0], [2 x i32] [i32 89, i32 0], [2 x i32] [i32 97, i32 0], [2 x i32] [i32 105, i32 0], [2 x i32] [i32 113, i32 0], [2 x i32] [i32 121, i32 0], [2 x i32] [i32 90, i32 0], [2 x i32] [i32 98, i32 0], [2 x i32] [i32 106, i32 0], [2 x i32] [i32 114, i32 0], [2 x i32] [i32 122, i32 0], [2 x i32] [i32 91, i32 0], [2 x i32] [i32 99, i32 0], [2 x i32] [i32 107, i32 0], [2 x i32] [i32 115, i32 0], [2 x i32] [i32 123, i32 0], [2 x i32] [i32 92, i32 0], [2 x i32] [i32 100, i32 0], [2 x i32] [i32 108, i32 0], [2 x i32] [i32 116, i32 0], [2 x i32] [i32 124, i32 0], [2 x i32] [i32 93, i32 0], [2 x i32] [i32 101, i32 0], [2 x i32] [i32 109, i32 0], [2 x i32] [i32 117, i32 0], [2 x i32] [i32 125, i32 0], [2 x i32] [i32 94, i32 0], [2 x i32] [i32 102, i32 0], [2 x i32] [i32 110, i32 0], [2 x i32] [i32 118, i32 0], [2 x i32] [i32 126, i32 0], [2 x i32] [i32 95, i32 0], [2 x i32] [i32 103, i32 0], [2 x i32] [i32 111, i32 0], [2 x i32] [i32 119, i32 0], [2 x i32] [i32 127, i32 0], [2 x i32] [i32 83, i32 0], [2 x i32] [i32 84, i32 0], [2 x i32] [i32 85, i32 0], [2 x i32] [i32 86, i32 0], [2 x i32] [i32 87, i32 0], [2 x i32] [i32 406, i32 0], [2 x i32] [i32 417, i32 33554431], [2 x i32] [i32 407, i32 0], [2 x i32] [i32 418, i32 33554431], [2 x i32] [i32 408, i32 0], [2 x i32] [i32 419, i32 33554431], [2 x i32] [i32 409, i32 0], [2 x i32] [i32 420, i32 33554431], [2 x i32] [i32 410, i32 0], [2 x i32] [i32 421, i32 33554431], [2 x i32] [i32 411, i32 0], [2 x i32] [i32 422, i32 33554431], [2 x i32] [i32 80, i32 17895697], [2 x i32] [i32 64, i32 -1], [2 x i32] [i32 81, i32 268501248], [2 x i32] [i32 453, i32 -1], [2 x i32] [i32 456, i32 1], [2 x i32] [i32 516, i32 0], [2 x i32] [i32 452, i32 1]], [144 x i8] zeroinitializer }, align 32
@nv10tri05TablePGRAPH = internal constant { [171 x [2 x i32]], [328 x i8] } { [171 x [2 x i32]] [[2 x i32] [i32 896, i32 0], [2 x i32] [i32 897, i32 0], [2 x i32] [i32 898, i32 0], [2 x i32] [i32 899, i32 0], [2 x i32] [i32 900, i32 4096], [2 x i32] [i32 901, i32 4096], [2 x i32] [i32 902, i32 1074003840], [2 x i32] [i32 903, i32 0], [2 x i32] [i32 904, i32 0], [2 x i32] [i32 905, i32 0], [2 x i32] [i32 906, i32 0], [2 x i32] [i32 907, i32 0], [2 x i32] [i32 908, i32 524296], [2 x i32] [i32 909, i32 524296], [2 x i32] [i32 910, i32 0], [2 x i32] [i32 911, i32 0], [2 x i32] [i32 912, i32 0], [2 x i32] [i32 913, i32 0], [2 x i32] [i32 914, i32 0], [2 x i32] [i32 915, i32 0], [2 x i32] [i32 916, i32 0], [2 x i32] [i32 917, i32 0], [2 x i32] [i32 918, i32 0], [2 x i32] [i32 919, i32 0], [2 x i32] [i32 920, i32 0], [2 x i32] [i32 921, i32 268435456], [2 x i32] [i32 922, i32 0], [2 x i32] [i32 923, i32 0], [2 x i32] [i32 924, i32 0], [2 x i32] [i32 925, i32 0], [2 x i32] [i32 926, i32 0], [2 x i32] [i32 927, i32 0], [2 x i32] [i32 928, i32 0], [2 x i32] [i32 929, i32 0], [2 x i32] [i32 930, i32 134217728], [2 x i32] [i32 931, i32 0], [2 x i32] [i32 932, i32 0], [2 x i32] [i32 933, i32 0], [2 x i32] [i32 934, i32 0], [2 x i32] [i32 935, i32 1266679807], [2 x i32] [i32 936, i32 0], [2 x i32] [i32 937, i32 0], [2 x i32] [i32 938, i32 0], [2 x i32] [i32 960, i32 134154240], [2 x i32] [i32 961, i32 134154240], [2 x i32] [i32 962, i32 134154240], [2 x i32] [i32 963, i32 134154240], [2 x i32] [i32 964, i32 134154240], [2 x i32] [i32 965, i32 134154240], [2 x i32] [i32 966, i32 134154240], [2 x i32] [i32 967, i32 134154240], [2 x i32] [i32 968, i32 134154240], [2 x i32] [i32 969, i32 134154240], [2 x i32] [i32 970, i32 134154240], [2 x i32] [i32 971, i32 134154240], [2 x i32] [i32 972, i32 134154240], [2 x i32] [i32 973, i32 134154240], [2 x i32] [i32 974, i32 134154240], [2 x i32] [i32 975, i32 134154240], [2 x i32] [i32 976, i32 268435456], [2 x i32] [i32 977, i32 0], [2 x i32] [i32 980, i32 26432], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 980, i32 26448], [2 x i32] [i32 981, i32 1073741824], [2 x i32] [i32 981, i32 1073741824], [2 x i32] [i32 981, i32 1073741824], [2 x i32] [i32 981, i32 1073741824], [2 x i32] [i32 980, i32 26464], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 26480], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 26496], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 26528], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 980, i32 27312], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 980, i32 27328], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 27664], [2 x i32] [i32 981, i32 -1082130432], [2 x i32] [i32 980, i32 28720], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28736], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28752], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28768], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28784], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28800], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28816], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 28832], [2 x i32] [i32 981, i32 1900671690], [2 x i32] [i32 980, i32 27264], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 980, i32 27296], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 64], [2 x i32] [i32 981, i32 5], [2 x i32] [i32 980, i32 25600], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1266679807], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25616], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25632], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25648], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25792], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 981, i32 1199570943], [2 x i32] [i32 981, i32 1065353216], [2 x i32] [i32 980, i32 25808], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 -989855744], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25824], [2 x i32] [i32 981, i32 -989859840], [2 x i32] [i32 981, i32 -989859840], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 980, i32 25840], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 981, i32 0], [2 x i32] [i32 976, i32 805306368], [2 x i32] [i32 977, i32 4], [2 x i32] [i32 978, i32 268435456], [2 x i32] [i32 979, i32 0]], [328 x i8] zeroinitializer }, align 32
@switch.table.RivaGetConfig = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32768, i32 4096, i32 8192, i32 16384], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 282984864, i64 282984944]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 282984864, i64 282984944]
@__sancov_gen_cov_switch_values.4 = internal global [9 x i64] [i64 7, i64 8, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.5 = internal global [12 x i64] [i64 10, i64 32, i64 368, i64 384, i64 496, i64 592, i64 640, i64 768, i64 784, i64 800, i64 816, i64 832]
@__sancov_gen_cov_switch_values.6 = internal global [13 x i64] [i64 11, i64 32, i64 272, i64 368, i64 384, i64 496, i64 592, i64 640, i64 768, i64 784, i64 800, i64 816, i64 832]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 15, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.13 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 32, i64 48]
@___asan_gen_ = private constant [38 x i8] c"../drivers/video/fbdev/riva/riva_hw.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"nv3TablePFIFO\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 77, i32 17 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"nv3TablePRAMIN\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 154, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"nv3TablePGRAPH\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 106, i32 17 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"nv4TablePFIFO\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 266, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"nv4TablePRAMIN\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 370, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"nv4TablePGRAPH\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 288, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"nv10TablePFIFO\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 526, i32 17 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"nv10TablePRAMIN\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 819, i32 17 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"nv10TablePGRAPH\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 548, i32 17 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"nv10tri05TablePGRAPH\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [39 x i8] c"../drivers/video/fbdev/riva/riva_tbl.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 645, i32 17 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"switch.table.RivaGetConfig\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @nv3TablePFIFO, ptr @nv3TablePRAMIN, ptr @nv3TablePGRAPH, ptr @nv4TablePFIFO, ptr @nv4TablePRAMIN, ptr @nv4TablePGRAPH, ptr @nv10TablePFIFO, ptr @nv10TablePRAMIN, ptr @nv10TablePGRAPH, ptr @nv10tri05TablePGRAPH, ptr @switch.table.RivaGetConfig], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv3TablePFIFO to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv3TablePRAMIN to i32), i32 528, i32 672, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv3TablePGRAPH to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv4TablePFIFO to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv4TablePRAMIN to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv4TablePGRAPH to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10TablePFIFO to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10TablePRAMIN to i32), i32 656, i32 832, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10TablePGRAPH to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv10tri05TablePGRAPH to i32), i32 1368, i32 1696, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.RivaGetConfig to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @CalcStateExt(ptr noundef readonly %chip, ptr noundef %state, ptr nocapture noundef readonly %pdev, i32 noundef %bpp, i32 noundef %width, i32 noundef %hDisplaySize, i32 noundef %height, i32 noundef %dotClock) local_unnamed_addr #0 align 64 {
entry:
  %fifo_data.i195 = alloca %struct.nv10_fifo_info, align 4
  %sim_data.i196 = alloca %struct.nv10_sim_state, align 4
  %fifo_data.i171 = alloca %struct.nv10_fifo_info, align 4
  %sim_data.i172 = alloca %struct.nv10_sim_state, align 4
  %uMClkPostDiv.i = alloca i32, align 4
  %ainfo.i.i = alloca %struct.nv3_arb_info, align 4
  %sim_data.i = alloca %struct.nv3_sim_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %bpp, ptr %state, align 4
  %width2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 1
  %1 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %width, ptr %width2, align 4
  %height3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 2
  %2 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %height, ptr %height3, align 4
  %add = add i32 %bpp, 1
  %CrystalFreqKHz.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 3
  %3 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %CrystalFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %4)
  %cmp.i = icmp eq i32 %4, 13500
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp1.i = icmp eq i32 %6, 3
  %sub.i = select i1 %cmp1.i, i32 12, i32 13
  %sub5.i = select i1 %cmp1.i, i32 13, i32 14
  %lowM.0.i = select i1 %cmp.i, i32 7, i32 8
  %highM.0.i = select i1 %cmp.i, i32 %sub.i, i32 %sub5.i
  %MaxVClockFreqKHz.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %dotClock)
  %cmp12.i = icmp ugt i32 %dotClock, 127999
  br i1 %cmp12.i, label %land.lhs.true.i, label %entry.for.body.i.1_crit_edge

entry.for.body.i.1_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

land.lhs.true.i:                                  ; preds = %entry
  %7 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %MaxVClockFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %dotClock)
  %cmp14.not.i = icmp ult i32 %8, %dotClock
  br i1 %cmp14.not.i, label %land.lhs.true.i.for.body.i.1_crit_edge, label %land.lhs.true.i.for.body20.i_crit_edge

land.lhs.true.i.for.body20.i_crit_edge:           ; preds = %land.lhs.true.i
  br label %for.body20.i

land.lhs.true.i.for.body.i.1_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

for.body20.i:                                     ; preds = %for.inc.i.for.body20.i_crit_edge, %land.lhs.true.i.for.body20.i_crit_edge
  %VClk.1 = phi i32 [ %VClk.2, %for.inc.i.for.body20.i_crit_edge ], [ -1, %land.lhs.true.i.for.body20.i_crit_edge ]
  %m.1 = phi i32 [ %m.2, %for.inc.i.for.body20.i_crit_edge ], [ -1, %land.lhs.true.i.for.body20.i_crit_edge ]
  %n.1 = phi i32 [ %n.2, %for.inc.i.for.body20.i_crit_edge ], [ -1, %land.lhs.true.i.for.body20.i_crit_edge ]
  %p.1 = phi i32 [ %p.2, %for.inc.i.for.body20.i_crit_edge ], [ -1, %land.lhs.true.i.for.body20.i_crit_edge ]
  %M.077.i = phi i32 [ %inc.i, %for.inc.i.for.body20.i_crit_edge ], [ %lowM.0.i, %land.lhs.true.i.for.body20.i_crit_edge ]
  %DeltaOld.176.i = phi i32 [ %DeltaOld.2.i, %for.inc.i.for.body20.i_crit_edge ], [ -1, %land.lhs.true.i.for.body20.i_crit_edge ]
  %mul.i = mul i32 %M.077.i, %dotClock
  %div.i = udiv i32 %mul.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %cmp23.i = icmp ult i32 %div.i, 256
  br i1 %cmp23.i, label %if.then25.i, label %for.body20.i.for.inc.i_crit_edge

for.body20.i.for.inc.i_crit_edge:                 ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then25.i:                                      ; preds = %for.body20.i
  %mul27.i = mul i32 %div.i, %4
  %div28.i = udiv i32 %mul27.i, %M.077.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div28.i, i32 %dotClock)
  %cmp29.i = icmp ugt i32 %div28.i, %dotClock
  %sub32.i = sub i32 %div28.i, %dotClock
  %sub34.i = sub i32 %dotClock, %div28.i
  %DeltaNew.0.i = select i1 %cmp29.i, i32 %sub32.i, i32 %sub34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i, i32 %DeltaOld.176.i)
  %cmp36.i = icmp ult i32 %DeltaNew.0.i, %DeltaOld.176.i
  br i1 %cmp36.i, label %if.then38.i, label %if.then25.i.for.inc.i_crit_edge

if.then25.i.for.inc.i_crit_edge:                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then38.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then38.i, %if.then25.i.for.inc.i_crit_edge, %for.body20.i.for.inc.i_crit_edge
  %VClk.2 = phi i32 [ %div28.i, %if.then38.i ], [ %VClk.1, %if.then25.i.for.inc.i_crit_edge ], [ %VClk.1, %for.body20.i.for.inc.i_crit_edge ]
  %m.2 = phi i32 [ %M.077.i, %if.then38.i ], [ %m.1, %if.then25.i.for.inc.i_crit_edge ], [ %m.1, %for.body20.i.for.inc.i_crit_edge ]
  %n.2 = phi i32 [ %div.i, %if.then38.i ], [ %n.1, %if.then25.i.for.inc.i_crit_edge ], [ %n.1, %for.body20.i.for.inc.i_crit_edge ]
  %p.2 = phi i32 [ 0, %if.then38.i ], [ %p.1, %if.then25.i.for.inc.i_crit_edge ], [ %p.1, %for.body20.i.for.inc.i_crit_edge ]
  %DeltaOld.2.i = phi i32 [ %DeltaNew.0.i, %if.then38.i ], [ %DeltaOld.176.i, %if.then25.i.for.inc.i_crit_edge ], [ %DeltaOld.176.i, %for.body20.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %M.077.i, 1
  %exitcond.i = icmp eq i32 %M.077.i, %highM.0.i
  br i1 %exitcond.i, label %for.inc.i.for.body.i.1_crit_edge, label %for.inc.i.for.body20.i_crit_edge

for.inc.i.for.body20.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i

for.inc.i.for.body.i.1_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.inc.i.for.body.i.1_crit_edge, %land.lhs.true.i.for.body.i.1_crit_edge, %entry.for.body.i.1_crit_edge
  %VClk.3 = phi i32 [ -1, %land.lhs.true.i.for.body.i.1_crit_edge ], [ -1, %entry.for.body.i.1_crit_edge ], [ %VClk.2, %for.inc.i.for.body.i.1_crit_edge ]
  %m.3 = phi i32 [ -1, %land.lhs.true.i.for.body.i.1_crit_edge ], [ -1, %entry.for.body.i.1_crit_edge ], [ %m.2, %for.inc.i.for.body.i.1_crit_edge ]
  %n.3 = phi i32 [ -1, %land.lhs.true.i.for.body.i.1_crit_edge ], [ -1, %entry.for.body.i.1_crit_edge ], [ %n.2, %for.inc.i.for.body.i.1_crit_edge ]
  %p.3 = phi i32 [ -1, %land.lhs.true.i.for.body.i.1_crit_edge ], [ -1, %entry.for.body.i.1_crit_edge ], [ %p.2, %for.inc.i.for.body.i.1_crit_edge ]
  %DeltaOld.3.i = phi i32 [ -1, %land.lhs.true.i.for.body.i.1_crit_edge ], [ -1, %entry.for.body.i.1_crit_edge ], [ %DeltaOld.2.i, %for.inc.i.for.body.i.1_crit_edge ]
  %shl.i.1 = shl i32 %dotClock, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %shl.i.1)
  %cmp12.i.1 = icmp ugt i32 %shl.i.1, 127999
  br i1 %cmp12.i.1, label %land.lhs.true.i.1, label %for.body.i.1.for.body.i.2_crit_edge

for.body.i.1.for.body.i.2_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.2

land.lhs.true.i.1:                                ; preds = %for.body.i.1
  %9 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %MaxVClockFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.1, i32 %10)
  %cmp14.not.i.1 = icmp ugt i32 %shl.i.1, %10
  br i1 %cmp14.not.i.1, label %land.lhs.true.i.1.for.body.i.2_crit_edge, label %land.lhs.true.i.1.for.body20.i.1_crit_edge

land.lhs.true.i.1.for.body20.i.1_crit_edge:       ; preds = %land.lhs.true.i.1
  br label %for.body20.i.1

land.lhs.true.i.1.for.body.i.2_crit_edge:         ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.2

for.body20.i.1:                                   ; preds = %for.inc.i.1.for.body20.i.1_crit_edge, %land.lhs.true.i.1.for.body20.i.1_crit_edge
  %VClk.1.1 = phi i32 [ %VClk.2.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %VClk.3, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %m.1.1 = phi i32 [ %m.2.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %m.3, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %n.1.1 = phi i32 [ %n.2.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %n.3, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %p.1.1 = phi i32 [ %p.2.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %p.3, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %M.077.i.1 = phi i32 [ %inc.i.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %lowM.0.i, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %DeltaOld.176.i.1 = phi i32 [ %DeltaOld.2.i.1, %for.inc.i.1.for.body20.i.1_crit_edge ], [ %DeltaOld.3.i, %land.lhs.true.i.1.for.body20.i.1_crit_edge ]
  %mul.i.1 = mul i32 %M.077.i.1, %shl.i.1
  %div.i.1 = udiv i32 %mul.i.1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.1)
  %cmp23.i.1 = icmp ult i32 %div.i.1, 256
  br i1 %cmp23.i.1, label %if.then25.i.1, label %for.body20.i.1.for.inc.i.1_crit_edge

for.body20.i.1.for.inc.i.1_crit_edge:             ; preds = %for.body20.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.then25.i.1:                                    ; preds = %for.body20.i.1
  %mul27.i.1 = mul i32 %div.i.1, %4
  %div28.i.1 = udiv i32 %mul27.i.1, %M.077.i.1
  %shr.i.1 = lshr i32 %div28.i.1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.1, i32 %dotClock)
  %cmp29.i.1 = icmp ugt i32 %shr.i.1, %dotClock
  %sub32.i.1 = sub i32 %shr.i.1, %dotClock
  %sub34.i.1 = sub i32 %dotClock, %shr.i.1
  %DeltaNew.0.i.1 = select i1 %cmp29.i.1, i32 %sub32.i.1, i32 %sub34.i.1
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i.1, i32 %DeltaOld.176.i.1)
  %cmp36.i.1 = icmp ult i32 %DeltaNew.0.i.1, %DeltaOld.176.i.1
  br i1 %cmp36.i.1, label %if.then38.i.1, label %if.then25.i.1.for.inc.i.1_crit_edge

if.then25.i.1.for.inc.i.1_crit_edge:              ; preds = %if.then25.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

if.then38.i.1:                                    ; preds = %if.then25.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then38.i.1, %if.then25.i.1.for.inc.i.1_crit_edge, %for.body20.i.1.for.inc.i.1_crit_edge
  %VClk.2.1 = phi i32 [ %shr.i.1, %if.then38.i.1 ], [ %VClk.1.1, %if.then25.i.1.for.inc.i.1_crit_edge ], [ %VClk.1.1, %for.body20.i.1.for.inc.i.1_crit_edge ]
  %m.2.1 = phi i32 [ %M.077.i.1, %if.then38.i.1 ], [ %m.1.1, %if.then25.i.1.for.inc.i.1_crit_edge ], [ %m.1.1, %for.body20.i.1.for.inc.i.1_crit_edge ]
  %n.2.1 = phi i32 [ %div.i.1, %if.then38.i.1 ], [ %n.1.1, %if.then25.i.1.for.inc.i.1_crit_edge ], [ %n.1.1, %for.body20.i.1.for.inc.i.1_crit_edge ]
  %p.2.1 = phi i32 [ 1, %if.then38.i.1 ], [ %p.1.1, %if.then25.i.1.for.inc.i.1_crit_edge ], [ %p.1.1, %for.body20.i.1.for.inc.i.1_crit_edge ]
  %DeltaOld.2.i.1 = phi i32 [ %DeltaNew.0.i.1, %if.then38.i.1 ], [ %DeltaOld.176.i.1, %if.then25.i.1.for.inc.i.1_crit_edge ], [ %DeltaOld.176.i.1, %for.body20.i.1.for.inc.i.1_crit_edge ]
  %inc.i.1 = add nuw nsw i32 %M.077.i.1, 1
  %exitcond.i.1 = icmp eq i32 %M.077.i.1, %highM.0.i
  br i1 %exitcond.i.1, label %for.inc.i.1.for.body.i.2_crit_edge, label %for.inc.i.1.for.body20.i.1_crit_edge

for.inc.i.1.for.body20.i.1_crit_edge:             ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i.1

for.inc.i.1.for.body.i.2_crit_edge:               ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.2

for.body.i.2:                                     ; preds = %for.inc.i.1.for.body.i.2_crit_edge, %land.lhs.true.i.1.for.body.i.2_crit_edge, %for.body.i.1.for.body.i.2_crit_edge
  %VClk.3.1 = phi i32 [ %VClk.3, %land.lhs.true.i.1.for.body.i.2_crit_edge ], [ %VClk.3, %for.body.i.1.for.body.i.2_crit_edge ], [ %VClk.2.1, %for.inc.i.1.for.body.i.2_crit_edge ]
  %m.3.1 = phi i32 [ %m.3, %land.lhs.true.i.1.for.body.i.2_crit_edge ], [ %m.3, %for.body.i.1.for.body.i.2_crit_edge ], [ %m.2.1, %for.inc.i.1.for.body.i.2_crit_edge ]
  %n.3.1 = phi i32 [ %n.3, %land.lhs.true.i.1.for.body.i.2_crit_edge ], [ %n.3, %for.body.i.1.for.body.i.2_crit_edge ], [ %n.2.1, %for.inc.i.1.for.body.i.2_crit_edge ]
  %p.3.1 = phi i32 [ %p.3, %land.lhs.true.i.1.for.body.i.2_crit_edge ], [ %p.3, %for.body.i.1.for.body.i.2_crit_edge ], [ %p.2.1, %for.inc.i.1.for.body.i.2_crit_edge ]
  %DeltaOld.3.i.1 = phi i32 [ %DeltaOld.3.i, %land.lhs.true.i.1.for.body.i.2_crit_edge ], [ %DeltaOld.3.i, %for.body.i.1.for.body.i.2_crit_edge ], [ %DeltaOld.2.i.1, %for.inc.i.1.for.body.i.2_crit_edge ]
  %shl.i.2 = shl i32 %dotClock, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %shl.i.2)
  %cmp12.i.2 = icmp ugt i32 %shl.i.2, 127999
  br i1 %cmp12.i.2, label %land.lhs.true.i.2, label %for.body.i.2.for.body.i.3_crit_edge

for.body.i.2.for.body.i.3_crit_edge:              ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.3

land.lhs.true.i.2:                                ; preds = %for.body.i.2
  %11 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %MaxVClockFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.2, i32 %12)
  %cmp14.not.i.2 = icmp ugt i32 %shl.i.2, %12
  br i1 %cmp14.not.i.2, label %land.lhs.true.i.2.for.body.i.3_crit_edge, label %land.lhs.true.i.2.for.body20.i.2_crit_edge

land.lhs.true.i.2.for.body20.i.2_crit_edge:       ; preds = %land.lhs.true.i.2
  br label %for.body20.i.2

land.lhs.true.i.2.for.body.i.3_crit_edge:         ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.3

for.body20.i.2:                                   ; preds = %for.inc.i.2.for.body20.i.2_crit_edge, %land.lhs.true.i.2.for.body20.i.2_crit_edge
  %VClk.1.2 = phi i32 [ %VClk.2.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %VClk.3.1, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %m.1.2 = phi i32 [ %m.2.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %m.3.1, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %n.1.2 = phi i32 [ %n.2.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %n.3.1, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %p.1.2 = phi i32 [ %p.2.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %p.3.1, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %M.077.i.2 = phi i32 [ %inc.i.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %lowM.0.i, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %DeltaOld.176.i.2 = phi i32 [ %DeltaOld.2.i.2, %for.inc.i.2.for.body20.i.2_crit_edge ], [ %DeltaOld.3.i.1, %land.lhs.true.i.2.for.body20.i.2_crit_edge ]
  %mul.i.2 = mul i32 %M.077.i.2, %shl.i.2
  %div.i.2 = udiv i32 %mul.i.2, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.2)
  %cmp23.i.2 = icmp ult i32 %div.i.2, 256
  br i1 %cmp23.i.2, label %if.then25.i.2, label %for.body20.i.2.for.inc.i.2_crit_edge

for.body20.i.2.for.inc.i.2_crit_edge:             ; preds = %for.body20.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

if.then25.i.2:                                    ; preds = %for.body20.i.2
  %mul27.i.2 = mul i32 %div.i.2, %4
  %div28.i.2 = udiv i32 %mul27.i.2, %M.077.i.2
  %shr.i.2 = lshr i32 %div28.i.2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.2, i32 %dotClock)
  %cmp29.i.2 = icmp ugt i32 %shr.i.2, %dotClock
  %sub32.i.2 = sub i32 %shr.i.2, %dotClock
  %sub34.i.2 = sub i32 %dotClock, %shr.i.2
  %DeltaNew.0.i.2 = select i1 %cmp29.i.2, i32 %sub32.i.2, i32 %sub34.i.2
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i.2, i32 %DeltaOld.176.i.2)
  %cmp36.i.2 = icmp ult i32 %DeltaNew.0.i.2, %DeltaOld.176.i.2
  br i1 %cmp36.i.2, label %if.then38.i.2, label %if.then25.i.2.for.inc.i.2_crit_edge

if.then25.i.2.for.inc.i.2_crit_edge:              ; preds = %if.then25.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

if.then38.i.2:                                    ; preds = %if.then25.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then38.i.2, %if.then25.i.2.for.inc.i.2_crit_edge, %for.body20.i.2.for.inc.i.2_crit_edge
  %VClk.2.2 = phi i32 [ %shr.i.2, %if.then38.i.2 ], [ %VClk.1.2, %if.then25.i.2.for.inc.i.2_crit_edge ], [ %VClk.1.2, %for.body20.i.2.for.inc.i.2_crit_edge ]
  %m.2.2 = phi i32 [ %M.077.i.2, %if.then38.i.2 ], [ %m.1.2, %if.then25.i.2.for.inc.i.2_crit_edge ], [ %m.1.2, %for.body20.i.2.for.inc.i.2_crit_edge ]
  %n.2.2 = phi i32 [ %div.i.2, %if.then38.i.2 ], [ %n.1.2, %if.then25.i.2.for.inc.i.2_crit_edge ], [ %n.1.2, %for.body20.i.2.for.inc.i.2_crit_edge ]
  %p.2.2 = phi i32 [ 2, %if.then38.i.2 ], [ %p.1.2, %if.then25.i.2.for.inc.i.2_crit_edge ], [ %p.1.2, %for.body20.i.2.for.inc.i.2_crit_edge ]
  %DeltaOld.2.i.2 = phi i32 [ %DeltaNew.0.i.2, %if.then38.i.2 ], [ %DeltaOld.176.i.2, %if.then25.i.2.for.inc.i.2_crit_edge ], [ %DeltaOld.176.i.2, %for.body20.i.2.for.inc.i.2_crit_edge ]
  %inc.i.2 = add nuw nsw i32 %M.077.i.2, 1
  %exitcond.i.2 = icmp eq i32 %M.077.i.2, %highM.0.i
  br i1 %exitcond.i.2, label %for.inc.i.2.for.body.i.3_crit_edge, label %for.inc.i.2.for.body20.i.2_crit_edge

for.inc.i.2.for.body20.i.2_crit_edge:             ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i.2

for.inc.i.2.for.body.i.3_crit_edge:               ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.3

for.body.i.3:                                     ; preds = %for.inc.i.2.for.body.i.3_crit_edge, %land.lhs.true.i.2.for.body.i.3_crit_edge, %for.body.i.2.for.body.i.3_crit_edge
  %VClk.3.2 = phi i32 [ %VClk.3.1, %land.lhs.true.i.2.for.body.i.3_crit_edge ], [ %VClk.3.1, %for.body.i.2.for.body.i.3_crit_edge ], [ %VClk.2.2, %for.inc.i.2.for.body.i.3_crit_edge ]
  %m.3.2 = phi i32 [ %m.3.1, %land.lhs.true.i.2.for.body.i.3_crit_edge ], [ %m.3.1, %for.body.i.2.for.body.i.3_crit_edge ], [ %m.2.2, %for.inc.i.2.for.body.i.3_crit_edge ]
  %n.3.2 = phi i32 [ %n.3.1, %land.lhs.true.i.2.for.body.i.3_crit_edge ], [ %n.3.1, %for.body.i.2.for.body.i.3_crit_edge ], [ %n.2.2, %for.inc.i.2.for.body.i.3_crit_edge ]
  %p.3.2 = phi i32 [ %p.3.1, %land.lhs.true.i.2.for.body.i.3_crit_edge ], [ %p.3.1, %for.body.i.2.for.body.i.3_crit_edge ], [ %p.2.2, %for.inc.i.2.for.body.i.3_crit_edge ]
  %DeltaOld.3.i.2 = phi i32 [ %DeltaOld.3.i.1, %land.lhs.true.i.2.for.body.i.3_crit_edge ], [ %DeltaOld.3.i.1, %for.body.i.2.for.body.i.3_crit_edge ], [ %DeltaOld.2.i.2, %for.inc.i.2.for.body.i.3_crit_edge ]
  %shl.i.3 = shl i32 %dotClock, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %shl.i.3)
  %cmp12.i.3 = icmp ugt i32 %shl.i.3, 127999
  br i1 %cmp12.i.3, label %land.lhs.true.i.3, label %for.body.i.3.for.inc42.i.3_crit_edge

for.body.i.3.for.inc42.i.3_crit_edge:             ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42.i.3

land.lhs.true.i.3:                                ; preds = %for.body.i.3
  %13 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %MaxVClockFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.3, i32 %14)
  %cmp14.not.i.3 = icmp ugt i32 %shl.i.3, %14
  br i1 %cmp14.not.i.3, label %land.lhs.true.i.3.for.inc42.i.3_crit_edge, label %land.lhs.true.i.3.for.body20.i.3_crit_edge

land.lhs.true.i.3.for.body20.i.3_crit_edge:       ; preds = %land.lhs.true.i.3
  br label %for.body20.i.3

land.lhs.true.i.3.for.inc42.i.3_crit_edge:        ; preds = %land.lhs.true.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42.i.3

for.body20.i.3:                                   ; preds = %for.inc.i.3.for.body20.i.3_crit_edge, %land.lhs.true.i.3.for.body20.i.3_crit_edge
  %VClk.1.3 = phi i32 [ %VClk.2.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %VClk.3.2, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %m.1.3 = phi i32 [ %m.2.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %m.3.2, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %n.1.3 = phi i32 [ %n.2.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %n.3.2, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %p.1.3 = phi i32 [ %p.2.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %p.3.2, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %M.077.i.3 = phi i32 [ %inc.i.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %lowM.0.i, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %DeltaOld.176.i.3 = phi i32 [ %DeltaOld.2.i.3, %for.inc.i.3.for.body20.i.3_crit_edge ], [ %DeltaOld.3.i.2, %land.lhs.true.i.3.for.body20.i.3_crit_edge ]
  %mul.i.3 = mul i32 %M.077.i.3, %shl.i.3
  %div.i.3 = udiv i32 %mul.i.3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.3)
  %cmp23.i.3 = icmp ult i32 %div.i.3, 256
  br i1 %cmp23.i.3, label %if.then25.i.3, label %for.body20.i.3.for.inc.i.3_crit_edge

for.body20.i.3.for.inc.i.3_crit_edge:             ; preds = %for.body20.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.3

if.then25.i.3:                                    ; preds = %for.body20.i.3
  %mul27.i.3 = mul i32 %div.i.3, %4
  %div28.i.3 = udiv i32 %mul27.i.3, %M.077.i.3
  %shr.i.3 = lshr i32 %div28.i.3, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.3, i32 %dotClock)
  %cmp29.i.3 = icmp ugt i32 %shr.i.3, %dotClock
  %sub32.i.3 = sub i32 %shr.i.3, %dotClock
  %sub34.i.3 = sub i32 %dotClock, %shr.i.3
  %DeltaNew.0.i.3 = select i1 %cmp29.i.3, i32 %sub32.i.3, i32 %sub34.i.3
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i.3, i32 %DeltaOld.176.i.3)
  %cmp36.i.3 = icmp ult i32 %DeltaNew.0.i.3, %DeltaOld.176.i.3
  br i1 %cmp36.i.3, label %if.then38.i.3, label %if.then25.i.3.for.inc.i.3_crit_edge

if.then25.i.3.for.inc.i.3_crit_edge:              ; preds = %if.then25.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.3

if.then38.i.3:                                    ; preds = %if.then25.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then38.i.3, %if.then25.i.3.for.inc.i.3_crit_edge, %for.body20.i.3.for.inc.i.3_crit_edge
  %VClk.2.3 = phi i32 [ %shr.i.3, %if.then38.i.3 ], [ %VClk.1.3, %if.then25.i.3.for.inc.i.3_crit_edge ], [ %VClk.1.3, %for.body20.i.3.for.inc.i.3_crit_edge ]
  %m.2.3 = phi i32 [ %M.077.i.3, %if.then38.i.3 ], [ %m.1.3, %if.then25.i.3.for.inc.i.3_crit_edge ], [ %m.1.3, %for.body20.i.3.for.inc.i.3_crit_edge ]
  %n.2.3 = phi i32 [ %div.i.3, %if.then38.i.3 ], [ %n.1.3, %if.then25.i.3.for.inc.i.3_crit_edge ], [ %n.1.3, %for.body20.i.3.for.inc.i.3_crit_edge ]
  %p.2.3 = phi i32 [ 3, %if.then38.i.3 ], [ %p.1.3, %if.then25.i.3.for.inc.i.3_crit_edge ], [ %p.1.3, %for.body20.i.3.for.inc.i.3_crit_edge ]
  %DeltaOld.2.i.3 = phi i32 [ %DeltaNew.0.i.3, %if.then38.i.3 ], [ %DeltaOld.176.i.3, %if.then25.i.3.for.inc.i.3_crit_edge ], [ %DeltaOld.176.i.3, %for.body20.i.3.for.inc.i.3_crit_edge ]
  %inc.i.3 = add nuw nsw i32 %M.077.i.3, 1
  %exitcond.i.3 = icmp eq i32 %M.077.i.3, %highM.0.i
  br i1 %exitcond.i.3, label %for.inc.i.3.for.inc42.i.3_crit_edge, label %for.inc.i.3.for.body20.i.3_crit_edge

for.inc.i.3.for.body20.i.3_crit_edge:             ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i.3

for.inc.i.3.for.inc42.i.3_crit_edge:              ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc42.i.3

for.inc42.i.3:                                    ; preds = %for.inc.i.3.for.inc42.i.3_crit_edge, %land.lhs.true.i.3.for.inc42.i.3_crit_edge, %for.body.i.3.for.inc42.i.3_crit_edge
  %VClk.3.3 = phi i32 [ %VClk.3.2, %land.lhs.true.i.3.for.inc42.i.3_crit_edge ], [ %VClk.3.2, %for.body.i.3.for.inc42.i.3_crit_edge ], [ %VClk.2.3, %for.inc.i.3.for.inc42.i.3_crit_edge ]
  %m.3.3 = phi i32 [ %m.3.2, %land.lhs.true.i.3.for.inc42.i.3_crit_edge ], [ %m.3.2, %for.body.i.3.for.inc42.i.3_crit_edge ], [ %m.2.3, %for.inc.i.3.for.inc42.i.3_crit_edge ]
  %n.3.3 = phi i32 [ %n.3.2, %land.lhs.true.i.3.for.inc42.i.3_crit_edge ], [ %n.3.2, %for.body.i.3.for.inc42.i.3_crit_edge ], [ %n.2.3, %for.inc.i.3.for.inc42.i.3_crit_edge ]
  %p.3.3 = phi i32 [ %p.3.2, %land.lhs.true.i.3.for.inc42.i.3_crit_edge ], [ %p.3.2, %for.body.i.3.for.inc42.i.3_crit_edge ], [ %p.2.3, %for.inc.i.3.for.inc42.i.3_crit_edge ]
  %DeltaOld.3.i.3 = phi i32 [ %DeltaOld.3.i.2, %land.lhs.true.i.3.for.inc42.i.3_crit_edge ], [ %DeltaOld.3.i.2, %for.body.i.3.for.inc42.i.3_crit_edge ], [ %DeltaOld.2.i.3, %for.inc.i.3.for.inc42.i.3_crit_edge ]
  br i1 %cmp1.i, label %for.inc42.i.3.CalcVClock.exit_crit_edge, label %for.body.i.4

for.inc42.i.3.CalcVClock.exit_crit_edge:          ; preds = %for.inc42.i.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %CalcVClock.exit

for.body.i.4:                                     ; preds = %for.inc42.i.3
  %shl.i.4 = shl i32 %dotClock, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127999, i32 %shl.i.4)
  %cmp12.i.4 = icmp ugt i32 %shl.i.4, 127999
  br i1 %cmp12.i.4, label %land.lhs.true.i.4, label %for.body.i.4.CalcVClock.exit_crit_edge

for.body.i.4.CalcVClock.exit_crit_edge:           ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %CalcVClock.exit

land.lhs.true.i.4:                                ; preds = %for.body.i.4
  %15 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %MaxVClockFreqKHz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.4, i32 %16)
  %cmp14.not.i.4 = icmp ugt i32 %shl.i.4, %16
  br i1 %cmp14.not.i.4, label %land.lhs.true.i.4.CalcVClock.exit_crit_edge, label %land.lhs.true.i.4.for.body20.i.4_crit_edge

land.lhs.true.i.4.for.body20.i.4_crit_edge:       ; preds = %land.lhs.true.i.4
  br label %for.body20.i.4

land.lhs.true.i.4.CalcVClock.exit_crit_edge:      ; preds = %land.lhs.true.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %CalcVClock.exit

for.body20.i.4:                                   ; preds = %for.inc.i.4.for.body20.i.4_crit_edge, %land.lhs.true.i.4.for.body20.i.4_crit_edge
  %VClk.1.4 = phi i32 [ %VClk.2.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %VClk.3.3, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %m.1.4 = phi i32 [ %m.2.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %m.3.3, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %n.1.4 = phi i32 [ %n.2.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %n.3.3, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %p.1.4 = phi i32 [ %p.2.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %p.3.3, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %M.077.i.4 = phi i32 [ %inc.i.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %lowM.0.i, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %DeltaOld.176.i.4 = phi i32 [ %DeltaOld.2.i.4, %for.inc.i.4.for.body20.i.4_crit_edge ], [ %DeltaOld.3.i.3, %land.lhs.true.i.4.for.body20.i.4_crit_edge ]
  %mul.i.4 = mul i32 %M.077.i.4, %shl.i.4
  %div.i.4 = udiv i32 %mul.i.4, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.4)
  %cmp23.i.4 = icmp ult i32 %div.i.4, 256
  br i1 %cmp23.i.4, label %if.then25.i.4, label %for.body20.i.4.for.inc.i.4_crit_edge

for.body20.i.4.for.inc.i.4_crit_edge:             ; preds = %for.body20.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.4

if.then25.i.4:                                    ; preds = %for.body20.i.4
  %mul27.i.4 = mul i32 %div.i.4, %4
  %div28.i.4 = udiv i32 %mul27.i.4, %M.077.i.4
  %shr.i.4 = lshr i32 %div28.i.4, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.4, i32 %dotClock)
  %cmp29.i.4 = icmp ugt i32 %shr.i.4, %dotClock
  %sub32.i.4 = sub i32 %shr.i.4, %dotClock
  %sub34.i.4 = sub i32 %dotClock, %shr.i.4
  %DeltaNew.0.i.4 = select i1 %cmp29.i.4, i32 %sub32.i.4, i32 %sub34.i.4
  call void @__sanitizer_cov_trace_cmp4(i32 %DeltaNew.0.i.4, i32 %DeltaOld.176.i.4)
  %cmp36.i.4 = icmp ult i32 %DeltaNew.0.i.4, %DeltaOld.176.i.4
  br i1 %cmp36.i.4, label %if.then38.i.4, label %if.then25.i.4.for.inc.i.4_crit_edge

if.then25.i.4.for.inc.i.4_crit_edge:              ; preds = %if.then25.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.4

if.then38.i.4:                                    ; preds = %if.then25.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then38.i.4, %if.then25.i.4.for.inc.i.4_crit_edge, %for.body20.i.4.for.inc.i.4_crit_edge
  %VClk.2.4 = phi i32 [ %shr.i.4, %if.then38.i.4 ], [ %VClk.1.4, %if.then25.i.4.for.inc.i.4_crit_edge ], [ %VClk.1.4, %for.body20.i.4.for.inc.i.4_crit_edge ]
  %m.2.4 = phi i32 [ %M.077.i.4, %if.then38.i.4 ], [ %m.1.4, %if.then25.i.4.for.inc.i.4_crit_edge ], [ %m.1.4, %for.body20.i.4.for.inc.i.4_crit_edge ]
  %n.2.4 = phi i32 [ %div.i.4, %if.then38.i.4 ], [ %n.1.4, %if.then25.i.4.for.inc.i.4_crit_edge ], [ %n.1.4, %for.body20.i.4.for.inc.i.4_crit_edge ]
  %p.2.4 = phi i32 [ 4, %if.then38.i.4 ], [ %p.1.4, %if.then25.i.4.for.inc.i.4_crit_edge ], [ %p.1.4, %for.body20.i.4.for.inc.i.4_crit_edge ]
  %DeltaOld.2.i.4 = phi i32 [ %DeltaNew.0.i.4, %if.then38.i.4 ], [ %DeltaOld.176.i.4, %if.then25.i.4.for.inc.i.4_crit_edge ], [ %DeltaOld.176.i.4, %for.body20.i.4.for.inc.i.4_crit_edge ]
  %inc.i.4 = add nuw nsw i32 %M.077.i.4, 1
  %exitcond.i.4 = icmp eq i32 %M.077.i.4, %highM.0.i
  br i1 %exitcond.i.4, label %for.inc.i.4.CalcVClock.exit_crit_edge, label %for.inc.i.4.for.body20.i.4_crit_edge

for.inc.i.4.for.body20.i.4_crit_edge:             ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20.i.4

for.inc.i.4.CalcVClock.exit_crit_edge:            ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %CalcVClock.exit

CalcVClock.exit:                                  ; preds = %for.inc.i.4.CalcVClock.exit_crit_edge, %land.lhs.true.i.4.CalcVClock.exit_crit_edge, %for.body.i.4.CalcVClock.exit_crit_edge, %for.inc42.i.3.CalcVClock.exit_crit_edge
  %VClk.3.lcssa = phi i32 [ %VClk.3.3, %for.inc42.i.3.CalcVClock.exit_crit_edge ], [ %VClk.3.3, %land.lhs.true.i.4.CalcVClock.exit_crit_edge ], [ %VClk.3.3, %for.body.i.4.CalcVClock.exit_crit_edge ], [ %VClk.2.4, %for.inc.i.4.CalcVClock.exit_crit_edge ]
  %m.3.lcssa = phi i32 [ %m.3.3, %for.inc42.i.3.CalcVClock.exit_crit_edge ], [ %m.3.3, %land.lhs.true.i.4.CalcVClock.exit_crit_edge ], [ %m.3.3, %for.body.i.4.CalcVClock.exit_crit_edge ], [ %m.2.4, %for.inc.i.4.CalcVClock.exit_crit_edge ]
  %n.3.lcssa = phi i32 [ %n.3.3, %for.inc42.i.3.CalcVClock.exit_crit_edge ], [ %n.3.3, %land.lhs.true.i.4.CalcVClock.exit_crit_edge ], [ %n.3.3, %for.body.i.4.CalcVClock.exit_crit_edge ], [ %n.2.4, %for.inc.i.4.CalcVClock.exit_crit_edge ]
  %p.3.lcssa = phi i32 [ %p.3.3, %for.inc42.i.3.CalcVClock.exit_crit_edge ], [ %p.3.3, %land.lhs.true.i.4.CalcVClock.exit_crit_edge ], [ %p.3.3, %for.body.i.4.CalcVClock.exit_crit_edge ], [ %p.2.4, %for.inc.i.4.CalcVClock.exit_crit_edge ]
  %DeltaOld.3.i.lcssa = phi i32 [ %DeltaOld.3.i.3, %for.inc42.i.3.CalcVClock.exit_crit_edge ], [ %DeltaOld.3.i.3, %land.lhs.true.i.4.CalcVClock.exit_crit_edge ], [ %DeltaOld.3.i.3, %for.body.i.4.CalcVClock.exit_crit_edge ], [ %DeltaOld.2.i.4, %for.inc.i.4.CalcVClock.exit_crit_edge ]
  %div = sdiv i32 %add, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %DeltaOld.3.i.lcssa)
  %cmp45.i.not = icmp eq i32 %DeltaOld.3.i.lcssa, -1
  br i1 %cmp45.i.not, label %CalcVClock.exit.cleanup_crit_edge, label %if.end

CalcVClock.exit.cleanup_crit_edge:                ; preds = %CalcVClock.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %CalcVClock.exit
  %17 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %if.end.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb9
    i32 16, label %if.end.sw.bb24_crit_edge
    i32 32, label %if.end.sw.bb24_crit_edge270
    i32 48, label %if.end.sw.bb24_crit_edge271
  ]

if.end.sw.bb24_crit_edge271:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24

if.end.sw.bb24_crit_edge270:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24

if.end.sw.bb24_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb24

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sim_data.i) #5
  %18 = getelementptr inbounds i8, ptr %sim_data.i, i32 28
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 33554431, ptr %18, align 4
  %PRAMDAC0.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %20 = ptrtoint ptr %PRAMDAC0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PRAMDAC0.i, align 4
  %arrayidx.i = getelementptr i32, ptr %21, i32 321
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #5, !srcloc !83
  %and.i = and i32 %22, 255
  %shr1.i = lshr i32 %22, 8
  %and2.i = and i32 %shr1.i, 255
  %shr3.i = lshr i32 %22, 16
  %and4.i = and i32 %shr3.i, 15
  %23 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul.i153 = mul i32 %and2.i, %24
  %div.i154 = udiv i32 %mul.i153, %and.i
  %shr5.i = lshr i32 %div.i154, %and4.i
  %div.tr258 = trunc i32 %div to i8
  %conv.i = shl i8 %div.tr258, 3
  %25 = ptrtoint ptr %sim_data.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i, ptr %sim_data.i, align 4
  %enable_video.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 1
  %26 = ptrtoint ptr %enable_video.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enable_video.i, align 1
  %enable_mp.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 3
  %27 = ptrtoint ptr %enable_mp.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %enable_mp.i, align 1
  %video_scale.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 5
  %28 = ptrtoint ptr %video_scale.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %video_scale.i, align 4
  %PEXTDEV.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %29 = ptrtoint ptr %PEXTDEV.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %PEXTDEV.i, align 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #5, !srcloc !83
  %memory_width.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 4
  %32 = ptrtoint ptr %memory_width.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %memory_width.i, align 4
  %mem_latency.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 9
  %33 = ptrtoint ptr %mem_latency.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 9, ptr %mem_latency.i, align 4
  %mem_page_miss.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 8
  %34 = ptrtoint ptr %mem_page_miss.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 11, ptr %mem_page_miss.i, align 4
  %gr_during_vid.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 2
  %35 = ptrtoint ptr %gr_during_vid.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %gr_during_vid.i, align 2
  %pclk_khz.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 6
  %36 = ptrtoint ptr %pclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %VClk.3.lcssa, ptr %pclk_khz.i, align 4
  %mclk_khz.i = getelementptr inbounds %struct.nv3_sim_state, ptr %sim_data.i, i32 0, i32 7
  %37 = ptrtoint ptr %mclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shr5.i, ptr %mclk_khz.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %ainfo.i.i) #5
  %38 = getelementptr inbounds i8, ptr %ainfo.i.i, i32 12
  %39 = getelementptr inbounds i8, ptr %ainfo.i.i, i32 20
  %40 = call ptr @memset(ptr %39, i32 255, i32 52)
  %gr_en.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %gr_en.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %gr_en.i.i, align 1
  %vid_en.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %vid_en.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %vid_en.i.i, align 4
  %vid_only_once.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 13
  %43 = ptrtoint ptr %vid_only_once.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %vid_only_once.i.i, align 4
  %gr_only_once.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 14
  %44 = ptrtoint ptr %gr_only_once.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %gr_only_once.i.i, align 1
  %div.i.i = and i32 %div, 31
  %mul.i.i = mul i32 %VClk.3.lcssa, %div.i.i
  %45 = ptrtoint ptr %ainfo.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i.i, ptr %ainfo.i.i, align 4
  %vdrain_rate.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 1
  %mdrain_rate.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %mdrain_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 33000, ptr %mdrain_rate.i.i, align 4
  %47 = ptrtoint ptr %vdrain_rate.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %vdrain_rate.i.i, align 4
  %priority.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 24
  %vburst_size.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 4
  %by_gfacc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 12
  %wcmocc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 7
  %wcvlwm.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 10
  %wcglwm.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 11
  %engine_en.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 22
  %converged.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 23
  %mocc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 20
  %vocc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 18
  %gocc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 19
  %cur.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 21
  %first_vacc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 15
  %first_gacc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 16
  %first_macc.i.i = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo.i.i, i32 0, i32 17
  %div.i.i244 = sdiv i32 %shr5.i, %VClk.3.lcssa
  %mul.i.i245 = shl i32 %div.i.i244, 1
  %div6.i.i = sdiv i32 31000000, %shr5.i
  %48 = mul i32 %div.i.i244, 2000000
  %mul18.i.i = add i32 %48, 24000000
  %div20.i.i = sdiv i32 %mul18.i.i, %shr5.i
  %add110.i.i = add i32 %mul.i.i245, 27
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc19.i.for.cond1.preheader.i_crit_edge, %sw.bb
  %p.06.i = phi i32 [ 0, %sw.bb ], [ %inc.i251, %for.inc19.i.for.cond1.preheader.i_crit_edge ]
  br label %for.cond4.preheader.i

for.cond4.preheader.i:                            ; preds = %for.inc16.i.for.cond4.preheader.i_crit_edge, %for.cond1.preheader.i
  %g.05.i = phi i32 [ 128, %for.cond1.preheader.i ], [ %117, %for.inc16.i.for.cond4.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %g.05.i)
  %cmp7.i243 = icmp eq i32 %g.05.i, 128
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %for.inc.i250.cond.end.i.i_crit_edge, %for.cond4.preheader.i
  %v.04.i = phi i32 [ 128, %for.cond4.preheader.i ], [ %116, %for.inc.i250.cond.end.i.i_crit_edge ]
  %49 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %p.06.i, ptr %priority.i, align 4
  %50 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %g.05.i, ptr %38, align 4
  %51 = ptrtoint ptr %vburst_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %v.04.i, ptr %vburst_size.i, align 4
  %52 = ptrtoint ptr %ainfo.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ainfo.i.i, align 4
  %mul7.i.i = mul i32 %53, %div6.i.i
  %div8.i.i = sdiv i32 %mul7.i.i, 1000000
  %54 = ptrtoint ptr %by_gfacc.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div8.i.i, ptr %by_gfacc.i.i, align 4
  %55 = call ptr @memset(ptr %wcmocc.i.i, i32 0, i32 20)
  %56 = ptrtoint ptr %engine_en.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %engine_en.i.i, align 1
  %57 = ptrtoint ptr %converged.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %converged.i.i, align 2
  %58 = ptrtoint ptr %mocc.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %mocc.i.i, align 4
  %59 = ptrtoint ptr %vid_en.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vid_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool25.not.i.i = icmp eq i8 %60, 0
  br i1 %tobool25.not.i.i, label %cond.end.i.i.if.end98.i.i_crit_edge, label %cond.true26.i.i

cond.end.i.i.if.end98.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end98.i.i

cond.true26.i.i:                                  ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %vdrain_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %vdrain_rate.i.i, align 4
  %mul27.i.i = mul i32 %62, %div20.i.i
  %div28.neg.i.i = sdiv i32 %mul27.i.i, -1000000
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %cond.true26.i.i, %cond.end.i.i.if.end98.i.i_crit_edge
  %cond32.i.i = phi i32 [ %div28.neg.i.i, %cond.true26.i.i ], [ 0, %cond.end.i.i.if.end98.i.i_crit_edge ]
  %63 = ptrtoint ptr %vocc.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond32.i.i, ptr %vocc.i.i, align 4
  %64 = ptrtoint ptr %gr_en.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %gr_en.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool34.not.i.i = icmp eq i8 %65, 0
  %mul37.i.i = mul i32 %div20.i.i, %53
  %div38.neg.i.i = sdiv i32 %mul37.i.i, -1000000
  %cond42.i.i = select i1 %tobool34.not.i.i, i32 0, i32 %div38.neg.i.i
  %66 = ptrtoint ptr %gocc.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond42.i.i, ptr %gocc.i.i, align 4
  %67 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 3, ptr %cur.i.i, align 4
  %68 = ptrtoint ptr %first_vacc.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %first_vacc.i.i, align 2
  %69 = ptrtoint ptr %first_gacc.i.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %first_gacc.i.i, align 1
  %70 = ptrtoint ptr %first_macc.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %first_macc.i.i, align 4
  call fastcc void @nv3_iterate(ptr noundef nonnull %sim_data.i, ptr noundef nonnull %ainfo.i.i) #5
  %71 = ptrtoint ptr %gr_en.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %gr_en.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool100.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool100.not.i.i, label %if.end98.i.i.if.end147.i.i_crit_edge, label %if.then101.i.i

if.end98.i.i.if.end147.i.i_crit_edge:             ; preds = %if.end98.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end147.i.i

if.then101.i.i:                                   ; preds = %if.end98.i.i
  %73 = ptrtoint ptr %first_vacc.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %first_vacc.i.i, align 2
  %74 = ptrtoint ptr %first_gacc.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %first_gacc.i.i, align 1
  %75 = ptrtoint ptr %first_macc.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %first_macc.i.i, align 4
  %76 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %38, align 4
  %div109.i.i = sdiv i32 %77, 16
  %add111.i.i = add i32 %add110.i.i, %div109.i.i
  %mul112.i.i = mul i32 %add111.i.i, 1000000
  %div114.i.i246 = sdiv i32 %mul112.i.i, %shr5.i
  %78 = ptrtoint ptr %ainfo.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ainfo.i.i, align 4
  %mul117.i.i = mul i32 %79, %div114.i.i246
  %div118.neg.i.i = sdiv i32 %mul117.i.i, -1000000
  %sub119.i.i = add i32 %div118.neg.i.i, %77
  %80 = ptrtoint ptr %gocc.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %sub119.i.i, ptr %gocc.i.i, align 4
  %81 = ptrtoint ptr %vid_en.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %vid_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool123.not.i.i = icmp eq i8 %82, 0
  br i1 %tobool123.not.i.i, label %if.then101.i.i.cond.end142.i.i_crit_edge, label %cond.true124.i.i

if.then101.i.i.cond.end142.i.i_crit_edge:         ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end142.i.i

cond.true124.i.i:                                 ; preds = %if.then101.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %vdrain_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vdrain_rate.i.i, align 4
  %mul126.i.i = mul i32 %84, %div114.i.i246
  %div127.neg.i.i = sdiv i32 %mul126.i.i, -1000000
  br label %cond.end142.i.i

cond.end142.i.i:                                  ; preds = %cond.true124.i.i, %if.then101.i.i.cond.end142.i.i_crit_edge
  %cond131.i.i = phi i32 [ %div127.neg.i.i, %cond.true124.i.i ], [ 0, %if.then101.i.i.cond.end142.i.i_crit_edge ]
  %85 = ptrtoint ptr %vocc.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond131.i.i, ptr %vocc.i.i, align 4
  %86 = ptrtoint ptr %mocc.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %mocc.i.i, align 4
  %87 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %cur.i.i, align 4
  call fastcc void @nv3_iterate(ptr noundef nonnull %sim_data.i, ptr noundef nonnull %ainfo.i.i) #5
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %cond.end142.i.i, %if.end98.i.i.if.end147.i.i_crit_edge
  %88 = ptrtoint ptr %vid_en.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %vid_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool149.not.i.i = icmp eq i8 %89, 0
  br i1 %tobool149.not.i.i, label %if.end147.i.i.if.end196.i.i_crit_edge, label %if.then150.i.i

if.end147.i.i.if.end196.i.i_crit_edge:            ; preds = %if.end147.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196.i.i

if.then150.i.i:                                   ; preds = %if.end147.i.i
  %90 = ptrtoint ptr %first_vacc.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %first_vacc.i.i, align 2
  %91 = ptrtoint ptr %first_gacc.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %first_gacc.i.i, align 1
  %92 = ptrtoint ptr %first_macc.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %first_macc.i.i, align 4
  %93 = ptrtoint ptr %vburst_size.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %vburst_size.i, align 4
  %div158.i.i = sdiv i32 %94, 16
  %add160.i.i = add i32 %add110.i.i, %div158.i.i
  %mul161.i.i = mul i32 %add160.i.i, 1000000
  %div163.i.i = sdiv i32 %mul161.i.i, %shr5.i
  %95 = ptrtoint ptr %vdrain_rate.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %vdrain_rate.i.i, align 4
  %mul166.i.i = mul i32 %96, %div163.i.i
  %div167.neg.i.i = sdiv i32 %mul166.i.i, -1000000
  %sub168.i.i = add i32 %div167.neg.i.i, %94
  %97 = ptrtoint ptr %vocc.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub168.i.i, ptr %vocc.i.i, align 4
  %98 = ptrtoint ptr %gr_en.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %gr_en.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool172.not.i.i = icmp eq i8 %99, 0
  br i1 %tobool172.not.i.i, label %if.then150.i.i.cond.end191.i.i_crit_edge, label %cond.true173.i.i

if.then150.i.i.cond.end191.i.i_crit_edge:         ; preds = %if.then150.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end191.i.i

cond.true173.i.i:                                 ; preds = %if.then150.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %ainfo.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ainfo.i.i, align 4
  %mul175.i.i = mul i32 %101, %div163.i.i
  %div176.neg.i.i = sdiv i32 %mul175.i.i, -1000000
  br label %cond.end191.i.i

cond.end191.i.i:                                  ; preds = %cond.true173.i.i, %if.then150.i.i.cond.end191.i.i_crit_edge
  %cond180.i.i = phi i32 [ %div176.neg.i.i, %cond.true173.i.i ], [ 0, %if.then150.i.i.cond.end191.i.i_crit_edge ]
  %102 = ptrtoint ptr %gocc.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond180.i.i, ptr %gocc.i.i, align 4
  %103 = ptrtoint ptr %mocc.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %mocc.i.i, align 4
  %104 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %cur.i.i, align 4
  call fastcc void @nv3_iterate(ptr noundef nonnull %sim_data.i, ptr noundef nonnull %ainfo.i.i) #5
  br label %if.end196.i.i

if.end196.i.i:                                    ; preds = %cond.end191.i.i, %if.end147.i.i.if.end196.i.i_crit_edge
  %105 = ptrtoint ptr %converged.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %converged.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool198.not.i.i = icmp eq i8 %106, 0
  br i1 %tobool198.not.i.i, label %if.end196.i.i.for.inc.i250_crit_edge, label %if.then199.i.i

if.end196.i.i.for.inc.i250_crit_edge:             ; preds = %if.end196.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i250

if.then199.i.i:                                   ; preds = %if.end196.i.i
  %107 = ptrtoint ptr %wcvlwm.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wcvlwm.i.i, align 4
  %109 = call i32 @llvm.abs.i32(i32 %108, i1 false) #5
  %add218.i.i = add nuw i32 %109, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %add218.i.i)
  %cmp227.i.i = icmp sgt i32 %add218.i.i, 160
  br i1 %cmp227.i.i, label %if.then229.i.i, label %land.lhs.true.i247

if.then229.i.i:                                   ; preds = %if.then199.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %converged.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %converged.i.i, align 2
  br label %for.inc.i250

land.lhs.true.i247:                               ; preds = %if.then199.i.i
  %111 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %38, align 4
  %113 = ptrtoint ptr %wcglwm.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %wcglwm.i.i, align 4
  %115 = call i32 @llvm.abs.i32(i32 %114, i1 false) #5
  %add207.i.i = add nuw i32 %115, 16
  %add.i248 = add nuw i32 %115, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i248)
  %cmp9.i = icmp sgt i32 %add.i248, 256
  %or.cond = select i1 %cmp7.i243, i1 %cmp9.i, i1 false
  br i1 %or.cond, label %land.lhs.true.i247.for.inc.i250_crit_edge, label %land.lhs.true.i247.nv3_get_param.exit_crit_edge

land.lhs.true.i247.nv3_get_param.exit_crit_edge:  ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv3_get_param.exit

land.lhs.true.i247.for.inc.i250_crit_edge:        ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i250

for.inc.i250:                                     ; preds = %land.lhs.true.i247.for.inc.i250_crit_edge, %if.then229.i.i, %if.end196.i.i.for.inc.i250_crit_edge
  %fifo_data.i.sroa.12.0 = phi i32 [ 64, %if.then229.i.i ], [ 64, %if.end196.i.i.for.inc.i250_crit_edge ], [ %112, %land.lhs.true.i247.for.inc.i250_crit_edge ]
  %fifo_data.i.sroa.0.0 = phi i32 [ 256, %if.then229.i.i ], [ 256, %if.end196.i.i.for.inc.i250_crit_edge ], [ %add207.i.i, %land.lhs.true.i247.for.inc.i250_crit_edge ]
  %116 = lshr i32 %v.04.i, 1
  %cmp5.i = icmp ugt i32 %v.04.i, 63
  br i1 %cmp5.i, label %for.inc.i250.cond.end.i.i_crit_edge, label %for.inc16.i

for.inc.i250.cond.end.i.i_crit_edge:              ; preds = %for.inc.i250
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i.i

for.inc16.i:                                      ; preds = %for.inc.i250
  %117 = lshr i32 %g.05.i, 1
  %cmp2.i = icmp ugt i32 %g.05.i, 65
  br i1 %cmp2.i, label %for.inc16.i.for.cond4.preheader.i_crit_edge, label %for.inc19.i

for.inc16.i.for.cond4.preheader.i_crit_edge:      ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader.i

for.inc19.i:                                      ; preds = %for.inc16.i
  %inc.i251 = add nuw nsw i32 %p.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i251, 2
  br i1 %exitcond.not.i, label %for.inc19.i.nv3_get_param.exit_crit_edge, label %for.inc19.i.for.cond1.preheader.i_crit_edge

for.inc19.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

for.inc19.i.nv3_get_param.exit_crit_edge:         ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv3_get_param.exit

nv3_get_param.exit:                               ; preds = %for.inc19.i.nv3_get_param.exit_crit_edge, %land.lhs.true.i247.nv3_get_param.exit_crit_edge
  %fifo_data.i.sroa.12.1 = phi i32 [ %112, %land.lhs.true.i247.nv3_get_param.exit_crit_edge ], [ %fifo_data.i.sroa.12.0, %for.inc19.i.nv3_get_param.exit_crit_edge ]
  %fifo_data.i.sroa.0.1 = phi i32 [ %add207.i.i, %land.lhs.true.i247.nv3_get_param.exit_crit_edge ], [ %fifo_data.i.sroa.0.0, %for.inc19.i.nv3_get_param.exit_crit_edge ]
  %118 = ptrtoint ptr %converged.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %converged.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %ainfo.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool11.not.i = icmp eq i8 %119, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %nv3_get_param.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %fifo_data.i.sroa.12.1)
  %tobool14.not23.i = icmp ult i32 %fifo_data.i.sroa.12.1, 32
  br i1 %tobool14.not23.i, label %if.then.i.while.end.i_crit_edge, label %while.body.preheader.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then.i
  %shr12.i = ashr i32 %fifo_data.i.sroa.12.1, 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %b.025.i = phi i32 [ %shr13.i, %while.body.i.while.body.i_crit_edge ], [ %shr12.i, %while.body.preheader.i ]
  %storemerge24.i = phi i32 [ %inc.i155, %while.body.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %shr13.i = ashr i32 %b.025.i, 1
  %inc.i155 = add i32 %storemerge24.i, 1
  %tobool14.not.i = icmp ult i32 %b.025.i, 4
  br i1 %tobool14.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %if.then.i.while.end.i_crit_edge ], [ %inc.i155, %while.body.i.while.end.i_crit_edge ]
  %120 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %storemerge.lcssa.i, ptr %arbitration0, align 4
  %shr15.i = ashr i32 %fifo_data.i.sroa.0.1, 3
  %121 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %shr15.i, ptr %arbitration1, align 4
  br label %nv3UpdateArbitrationSettings.exit

if.else.i:                                        ; preds = %nv3_get_param.exit
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 36, ptr %arbitration1, align 4
  %123 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 2, ptr %arbitration0, align 4
  br label %nv3UpdateArbitrationSettings.exit

nv3UpdateArbitrationSettings.exit:                ; preds = %if.else.i, %while.end.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sim_data.i) #5
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %124 = ptrtoint ptr %cursor0 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %cursor0, align 4
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %125 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 120, ptr %cursor1, align 4
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %126 = ptrtoint ptr %cursor2 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %cursor2, align 4
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %127 = ptrtoint ptr %pllsel to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 268501248, ptr %pllsel, align 4
  %add4 = add i32 %width, 31
  %div5 = sdiv i32 %add4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp = icmp sgt i32 %add, 23
  %phi.bo = shl i32 %div, 8
  %spec.select = select i1 %cmp, i32 768, i32 %phi.bo
  %or = or i32 %div5, %spec.select
  %or6 = or i32 %or, 4096
  %config = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %128 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or6, ptr %config, align 4
  %general = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %129 = ptrtoint ptr %general to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 1048832, ptr %general, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hDisplaySize)
  %cmp7 = icmp slt i32 %hDisplaySize, 1280
  %cond8 = select i1 %cmp7, i32 6, i32 2
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %if.end
  %mul10 = shl nsw i32 %div, 3
  %arbitration011 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %arbitration112 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %PRAMDAC0.i156 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %130 = ptrtoint ptr %PRAMDAC0.i156 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %PRAMDAC0.i156, align 4
  %arrayidx.i157 = getelementptr i32, ptr %131, i32 321
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i157) #5, !srcloc !83
  %and.i158 = and i32 %132, 255
  %shr1.i159 = lshr i32 %132, 8
  %and2.i160 = and i32 %shr1.i159, 255
  %shr3.i161 = lshr i32 %132, 16
  %and4.i162 = and i32 %shr3.i161, 15
  %133 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul.i164 = mul i32 %and2.i160, %134
  %div.i165 = udiv i32 %mul.i164, %and.i158
  %shr5.i166 = lshr i32 %div.i165, %and4.i162
  %135 = ptrtoint ptr %PRAMDAC0.i156 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %PRAMDAC0.i156, align 4
  %arrayidx7.i = getelementptr i32, ptr %136, i32 320
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7.i) #5, !srcloc !83
  %and11.i = and i32 %137, 255
  %shr12.i167 = lshr i32 %137, 8
  %and13.i = and i32 %shr12.i167, 255
  %shr14.i = lshr i32 %137, 16
  %and15.i = and i32 %shr14.i, 15
  %138 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul17.i = mul i32 %and13.i, %139
  %div18.i = udiv i32 %mul17.i, %and11.i
  %shr19.i = lshr i32 %div18.i, %and15.i
  %PFB.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %140 = ptrtoint ptr %PFB.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %PFB.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %141, i32 129
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx20.i) #5, !srcloc !83
  %PEXTDEV.i168 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %143 = ptrtoint ptr %PEXTDEV.i168 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %PEXTDEV.i168, align 4
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #5, !srcloc !83
  %conv30.i = and i32 %142, 15
  %shr31.i = lshr i32 %142, 4
  %and32.i = and i32 %shr31.i, 15
  %shr33.i = lshr i32 %142, 31
  %add.i = add nuw nsw i32 %and32.i, %shr33.i
  %conv3.i.i = and i32 %mul10, 248
  %spec.select.i.i = add nuw nsw i32 %conv30.i, 13
  %div26.i.i = sdiv i32 10000000, %shr19.i
  %div29.i.i = sdiv i32 10000000, %VClk.3.lcssa
  %mul33.i.i = mul i32 %VClk.3.lcssa, %conv3.i.i
  %div34.i.i = sdiv i32 %mul33.i.i, 8
  %mul38.i.i = mul nuw nsw i32 %add.i, 3000000
  %div104.i.i = sdiv i32 %mul38.i.i, %shr5.i166
  %add105.i.i = add nsw i32 %div29.i.i, %div26.i.i
  %add106.i.i = add nsw i32 %add105.i.i, %div104.i.i
  br label %if.end111.i.i

if.end111.i.i:                                    ; preds = %while.body.backedge.i.i, %sw.bb9
  %mclk_extra.0270.i.i = phi i32 [ 3, %sw.bb9 ], [ %mclk_extra.0270.be.i.i, %while.body.backedge.i.i ]
  %add22.i.i = add i32 %spec.select.i.i, %mclk_extra.0270.i.i
  %mul23.i.i = mul i32 %add22.i.i, 1000000
  %div.i.i169 = sdiv i32 %mul23.i.i, %shr5.i166
  %add107.i.i = add i32 %add106.i.i, %div.i.i169
  %clwm.0.in.in.i.i = mul i32 %add107.i.i, %div34.i.i
  %clwm.0.in.i.i = sdiv i32 %clwm.0.in.in.i.i, 1000000
  %sub.i.i = add nsw i32 %clwm.0.in.i.i, -383
  %mul113.i.i = mul i32 %sub.i.i, %VClk.3.lcssa
  %div114.i.i = sdiv i32 %mul113.i.i, %shr5.i166
  %mul115.i.i = mul i32 %div114.i.i, %conv3.i.i
  %div116.i.i = sdiv i32 %mul115.i.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div116.i.i, i32 %sub.i.i)
  %cmp117.i.i = icmp slt i32 %div116.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 383999999, i32 %clwm.0.in.in.i.i)
  %cmp119.i.i = icmp sgt i32 %clwm.0.in.in.i.i, 383999999
  %or.cond.i.i = select i1 %cmp117.i.i, i1 %cmp119.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then121.i.i, label %if.else142.i.i

if.then121.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_extra.0270.i.i)
  %cmp123.i.i = icmp eq i32 %mclk_extra.0270.i.i, 0
  br i1 %cmp123.i.i, label %if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, label %if.then121.i.i.while.body.backedge.i.i_crit_edge

if.then121.i.i.while.body.backedge.i.i_crit_edge: ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge.i.i

if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv4UpdateArbitrationSettings.exit

if.else142.i.i:                                   ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 518999999, i32 %clwm.0.in.in.i.i)
  %cmp143.i.i = icmp sgt i32 %clwm.0.in.in.i.i, 518999999
  br i1 %cmp143.i.i, label %if.end154.i.i, label %if.then.i170

if.end154.i.i:                                    ; preds = %if.else142.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mclk_extra.0270.i.i)
  %cmp147.i.i = icmp eq i32 %mclk_extra.0270.i.i, 0
  br i1 %cmp147.i.i, label %if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, label %if.end154.i.i.while.body.backedge.i.i_crit_edge

if.end154.i.i.while.body.backedge.i.i_crit_edge:  ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge.i.i

if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.end154.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv4UpdateArbitrationSettings.exit

while.body.backedge.i.i:                          ; preds = %if.end154.i.i.while.body.backedge.i.i_crit_edge, %if.then121.i.i.while.body.backedge.i.i_crit_edge
  %mclk_extra.0270.be.i.i = add i32 %mclk_extra.0270.i.i, -1
  br label %if.end111.i.i

if.then.i170:                                     ; preds = %if.else142.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = tail call i32 @llvm.smax.i32(i32 %clwm.0.in.i.i, i32 383) #5
  %147 = add nuw nsw i32 %146, 1
  %148 = ptrtoint ptr %arbitration011 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 3, ptr %arbitration011, align 4
  %149 = lshr i32 %147, 3
  %150 = ptrtoint ptr %arbitration112 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %arbitration112, align 4
  br label %nv4UpdateArbitrationSettings.exit

nv4UpdateArbitrationSettings.exit:                ; preds = %if.then.i170, %if.end154.i.i.nv4UpdateArbitrationSettings.exit_crit_edge, %if.then121.i.i.nv4UpdateArbitrationSettings.exit_crit_edge
  %cursor013 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %151 = ptrtoint ptr %cursor013 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %cursor013, align 4
  %cursor114 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %152 = ptrtoint ptr %cursor114 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 252, ptr %cursor114, align 4
  %cursor215 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %153 = ptrtoint ptr %cursor215 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %cursor215, align 4
  %pllsel16 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %154 = ptrtoint ptr %pllsel16 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 268437248, ptr %pllsel16, align 4
  %config17 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %155 = ptrtoint ptr %config17 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 4372, ptr %config17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %cmp18 = icmp eq i32 %bpp, 16
  %cond19 = select i1 %cmp18, i32 1052928, i32 1048832
  %general20 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %156 = ptrtoint ptr %general20 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %cond19, ptr %general20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hDisplaySize)
  %cmp21 = icmp slt i32 %hDisplaySize, 1280
  %cond22 = select i1 %cmp21, i32 4, i32 0
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %if.end.sw.bb24_crit_edge, %if.end.sw.bb24_crit_edge270, %if.end.sw.bb24_crit_edge271
  %Chipset = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 2
  %157 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %Chipset, align 4
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %158, label %if.else [
    i32 282984864, label %sw.bb24.if.then28_crit_edge
    i32 282984944, label %sw.bb24.if.then28_crit_edge272
  ]

sw.bb24.if.then28_crit_edge272:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

sw.bb24.if.then28_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.then28:                                        ; preds = %sw.bb24.if.then28_crit_edge, %sw.bb24.if.then28_crit_edge272
  %arbitration030 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %arbitration131 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fifo_data.i171) #5
  %160 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i171, i32 0, i32 4
  %161 = call ptr @memset(ptr %fifo_data.i171, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sim_data.i172) #5
  %162 = call ptr @memset(ptr %sim_data.i172, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uMClkPostDiv.i) #5
  %163 = ptrtoint ptr %uMClkPostDiv.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %uMClkPostDiv.i, align 4, !annotation !84
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %164 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %165, i32 0, i32 16
  %166 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %domain_nr.i.i, align 8
  %call1.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %167, i32 noundef 0, i32 noundef 3) #5
  %call2.i = call i32 @pci_read_config_dword(ptr noundef %call1.i, i32 noundef 108, ptr noundef nonnull %uMClkPostDiv.i) #5
  call void @pci_dev_put(ptr noundef %call1.i) #5
  %168 = ptrtoint ptr %uMClkPostDiv.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %uMClkPostDiv.i, align 4
  %shr.i173 = lshr i32 %169, 8
  %and.i174 = and i32 %shr.i173, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i174)
  %tobool.not.i = icmp eq i32 %and.i174, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 4, i32 %and.i174
  %170 = ptrtoint ptr %uMClkPostDiv.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %spec.store.select.i, ptr %uMClkPostDiv.i, align 4
  %div.i175 = udiv i32 400000, %spec.store.select.i
  %PRAMDAC0.i176 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %171 = ptrtoint ptr %PRAMDAC0.i176 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %PRAMDAC0.i176, align 4
  %arrayidx.i177 = getelementptr i32, ptr %172, i32 320
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i177) #5, !srcloc !83
  %and5.i = and i32 %173, 255
  %shr6.i = lshr i32 %173, 8
  %and7.i = and i32 %shr6.i, 255
  %shr8.i = lshr i32 %173, 16
  %and9.i = and i32 %shr8.i, 15
  %174 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul.i179 = mul i32 %and7.i, %175
  %div10.i = udiv i32 %mul.i179, %and5.i
  %shr11.i = lshr i32 %div10.i, %and9.i
  %div.tr = trunc i32 %div to i8
  %conv.i180 = shl i8 %div.tr, 3
  %pix_bpp.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 9
  %176 = ptrtoint ptr %pix_bpp.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv.i180, ptr %pix_bpp.i, align 2
  %enable_video.i181 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 7
  %177 = ptrtoint ptr %enable_video.i181 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 0, ptr %enable_video.i181, align 4
  %enable_mp.i182 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 11
  %178 = ptrtoint ptr %enable_mp.i182 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %enable_mp.i182, align 4
  %call12.i = call ptr @pci_get_domain_bus_and_slot(i32 noundef %167, i32 noundef 0, i32 noundef 1) #5
  %memory_type.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 5
  %call13.i = call i32 @pci_read_config_dword(ptr noundef %call12.i, i32 noundef 124, ptr noundef %memory_type.i) #5
  call void @pci_dev_put(ptr noundef %call12.i) #5
  %179 = ptrtoint ptr %memory_type.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %memory_type.i, align 4
  %shr15.i183 = lshr i32 %180, 12
  %and16.i = and i32 %shr15.i183, 1
  store i32 %and16.i, ptr %memory_type.i, align 4
  %memory_width.i184 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 6
  %181 = ptrtoint ptr %memory_width.i184 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 64, ptr %memory_width.i184, align 4
  %mem_latency.i185 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 4
  %182 = ptrtoint ptr %mem_latency.i185 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 3, ptr %mem_latency.i185, align 1
  %mem_aligned.i186 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 10
  %183 = ptrtoint ptr %mem_aligned.i186 to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 1, ptr %mem_aligned.i186, align 1
  %mem_page_miss.i187 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 3
  %184 = ptrtoint ptr %mem_page_miss.i187 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 10, ptr %mem_page_miss.i187, align 4
  %gr_during_vid.i188 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 8
  %185 = ptrtoint ptr %gr_during_vid.i188 to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %gr_during_vid.i188, align 1
  %186 = ptrtoint ptr %sim_data.i172 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %VClk.3.lcssa, ptr %sim_data.i172, align 4
  %mclk_khz.i189 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 1
  %187 = ptrtoint ptr %mclk_khz.i189 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %div.i175, ptr %mclk_khz.i189, align 4
  %nvclk_khz.i = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i172, i32 0, i32 2
  %188 = ptrtoint ptr %nvclk_khz.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %shr11.i, ptr %nvclk_khz.i, align 4
  call fastcc void @nv10CalcArbitration(ptr noundef nonnull %fifo_data.i171, ptr noundef nonnull %sim_data.i172) #5
  %189 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool18.not.i = icmp eq i32 %190, 0
  br i1 %tobool18.not.i, label %if.then28.nForceUpdateArbitrationSettings.exit_crit_edge, label %if.then19.i

if.then28.nForceUpdateArbitrationSettings.exit_crit_edge: ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %nForceUpdateArbitrationSettings.exit

if.then19.i:                                      ; preds = %if.then28
  %191 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i171, i32 0, i32 2
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %191, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %193)
  %tobool22.not33.i = icmp ult i32 %193, 32
  br i1 %tobool22.not33.i, label %if.then19.i.while.end.i194_crit_edge, label %while.body.preheader.i190

if.then19.i.while.end.i194_crit_edge:             ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i194

while.body.preheader.i190:                        ; preds = %if.then19.i
  %shr20.i = ashr i32 %193, 4
  br label %while.body.i192

while.body.i192:                                  ; preds = %while.body.i192.while.body.i192_crit_edge, %while.body.preheader.i190
  %b.035.i = phi i32 [ %shr21.i, %while.body.i192.while.body.i192_crit_edge ], [ %shr20.i, %while.body.preheader.i190 ]
  %storemerge34.i = phi i32 [ %inc.i191, %while.body.i192.while.body.i192_crit_edge ], [ 0, %while.body.preheader.i190 ]
  %shr21.i = ashr i32 %b.035.i, 1
  %inc.i191 = add i32 %storemerge34.i, 1
  %tobool22.not.i = icmp ult i32 %b.035.i, 4
  br i1 %tobool22.not.i, label %while.body.i192.while.end.i194_crit_edge, label %while.body.i192.while.body.i192_crit_edge

while.body.i192.while.body.i192_crit_edge:        ; preds = %while.body.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i192

while.body.i192.while.end.i194_crit_edge:         ; preds = %while.body.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i194

while.end.i194:                                   ; preds = %while.body.i192.while.end.i194_crit_edge, %if.then19.i.while.end.i194_crit_edge
  %storemerge.lcssa.i193 = phi i32 [ 0, %if.then19.i.while.end.i194_crit_edge ], [ %inc.i191, %while.body.i192.while.end.i194_crit_edge ]
  %194 = ptrtoint ptr %arbitration030 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %storemerge.lcssa.i193, ptr %arbitration030, align 4
  %195 = ptrtoint ptr %fifo_data.i171 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %fifo_data.i171, align 4
  %shr23.i = ashr i32 %196, 3
  %197 = ptrtoint ptr %arbitration131 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %shr23.i, ptr %arbitration131, align 4
  br label %nForceUpdateArbitrationSettings.exit

nForceUpdateArbitrationSettings.exit:             ; preds = %while.end.i194, %if.then28.nForceUpdateArbitrationSettings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uMClkPostDiv.i) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sim_data.i172) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fifo_data.i171) #5
  br label %if.end35

if.else:                                          ; preds = %sw.bb24
  %arbitration033 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %arbitration134 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %fifo_data.i195) #5
  %198 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i195, i32 0, i32 4
  %199 = call ptr @memset(ptr %fifo_data.i195, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sim_data.i196) #5
  %200 = getelementptr inbounds i8, ptr %sim_data.i196, i32 12
  %201 = call ptr @memset(ptr %200, i32 255, i32 20)
  %PRAMDAC0.i197 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %202 = ptrtoint ptr %PRAMDAC0.i197 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %PRAMDAC0.i197, align 4
  %arrayidx.i198 = getelementptr i32, ptr %203, i32 321
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i198) #5, !srcloc !83
  %and.i199 = and i32 %204, 255
  %shr1.i200 = lshr i32 %204, 8
  %and2.i201 = and i32 %shr1.i200, 255
  %shr3.i202 = lshr i32 %204, 16
  %and4.i203 = and i32 %shr3.i202, 15
  %205 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul.i205 = mul i32 %and2.i201, %206
  %div.i206 = udiv i32 %mul.i205, %and.i199
  %shr5.i207 = lshr i32 %div.i206, %and4.i203
  %207 = ptrtoint ptr %PRAMDAC0.i197 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %PRAMDAC0.i197, align 4
  %arrayidx7.i208 = getelementptr i32, ptr %208, i32 320
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx7.i208) #5, !srcloc !83
  %and11.i209 = and i32 %209, 255
  %shr12.i210 = lshr i32 %209, 8
  %and13.i211 = and i32 %shr12.i210, 255
  %shr14.i212 = lshr i32 %209, 16
  %and15.i213 = and i32 %shr14.i212, 15
  %210 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %CrystalFreqKHz.i, align 4
  %mul17.i214 = mul i32 %and13.i211, %211
  %div18.i215 = udiv i32 %mul17.i214, %and11.i209
  %shr19.i216 = lshr i32 %div18.i215, %and15.i213
  %PFB.i217 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %212 = ptrtoint ptr %PFB.i217 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %PFB.i217, align 4
  %arrayidx20.i218 = getelementptr i32, ptr %213, i32 129
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx20.i218) #5, !srcloc !83
  %div.tr257 = trunc i32 %div to i8
  %conv.i219 = shl i8 %div.tr257, 3
  %pix_bpp.i220 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 9
  %215 = ptrtoint ptr %pix_bpp.i220 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv.i219, ptr %pix_bpp.i220, align 2
  %enable_video.i221 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 7
  %216 = ptrtoint ptr %enable_video.i221 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %enable_video.i221, align 4
  %enable_mp.i222 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 11
  %217 = ptrtoint ptr %enable_mp.i222 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %enable_mp.i222, align 4
  %218 = ptrtoint ptr %PFB.i217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %PFB.i217, align 4
  %arrayidx24.i = getelementptr i32, ptr %219, i32 128
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx24.i) #5, !srcloc !83
  %and27.i = and i32 %220, 1
  %memory_type.i223 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 5
  %221 = ptrtoint ptr %memory_type.i223 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %and27.i, ptr %memory_type.i223, align 4
  %PEXTDEV.i224 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %222 = ptrtoint ptr %PEXTDEV.i224 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %PEXTDEV.i224, align 4
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #5, !srcloc !83
  %and31.i = and i32 %224, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  %cond33.i = select i1 %tobool32.not.i, i32 64, i32 128
  %memory_width.i225 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 6
  %225 = ptrtoint ptr %memory_width.i225 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %cond33.i, ptr %memory_width.i225, align 4
  %226 = trunc i32 %214 to i8
  %conv37.i = and i8 %226, 15
  %mem_latency.i226 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 4
  %227 = ptrtoint ptr %mem_latency.i226 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %conv37.i, ptr %mem_latency.i226, align 1
  %mem_aligned.i227 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 10
  %228 = ptrtoint ptr %mem_aligned.i227 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 1, ptr %mem_aligned.i227, align 1
  %shr38.i = lshr i32 %214, 4
  %and39.i = and i32 %shr38.i, 15
  %shr40.i = lshr i32 %214, 31
  %add.i228 = add nuw nsw i32 %and39.i, %shr40.i
  %conv42.i = trunc i32 %add.i228 to i8
  %229 = ptrtoint ptr %200 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %conv42.i, ptr %200, align 4
  %gr_during_vid.i230 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 8
  %230 = ptrtoint ptr %gr_during_vid.i230 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 0, ptr %gr_during_vid.i230, align 1
  %231 = ptrtoint ptr %sim_data.i196 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %VClk.3.lcssa, ptr %sim_data.i196, align 4
  %mclk_khz.i231 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 1
  %232 = ptrtoint ptr %mclk_khz.i231 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %shr5.i207, ptr %mclk_khz.i231, align 4
  %nvclk_khz.i232 = getelementptr inbounds %struct.nv10_sim_state, ptr %sim_data.i196, i32 0, i32 2
  %233 = ptrtoint ptr %nvclk_khz.i232 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %shr19.i216, ptr %nvclk_khz.i232, align 4
  call fastcc void @nv10CalcArbitration(ptr noundef nonnull %fifo_data.i195, ptr noundef nonnull %sim_data.i196) #5
  %234 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %198, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool43.not.i = icmp eq i32 %235, 0
  br i1 %tobool43.not.i, label %if.else.nv10UpdateArbitrationSettings.exit_crit_edge, label %if.then.i233

if.else.nv10UpdateArbitrationSettings.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10UpdateArbitrationSettings.exit

if.then.i233:                                     ; preds = %if.else
  %236 = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo_data.i195, i32 0, i32 2
  %237 = ptrtoint ptr %236 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %238)
  %tobool46.not65.i = icmp ult i32 %238, 32
  br i1 %tobool46.not65.i, label %if.then.i233.while.end.i238_crit_edge, label %while.body.preheader.i234

if.then.i233.while.end.i238_crit_edge:            ; preds = %if.then.i233
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i238

while.body.preheader.i234:                        ; preds = %if.then.i233
  %shr44.i = ashr i32 %238, 4
  br label %while.body.i236

while.body.i236:                                  ; preds = %while.body.i236.while.body.i236_crit_edge, %while.body.preheader.i234
  %b.067.i = phi i32 [ %shr45.i, %while.body.i236.while.body.i236_crit_edge ], [ %shr44.i, %while.body.preheader.i234 ]
  %storemerge66.i = phi i32 [ %inc.i235, %while.body.i236.while.body.i236_crit_edge ], [ 0, %while.body.preheader.i234 ]
  %shr45.i = ashr i32 %b.067.i, 1
  %inc.i235 = add i32 %storemerge66.i, 1
  %tobool46.not.i = icmp ult i32 %b.067.i, 4
  br i1 %tobool46.not.i, label %while.body.i236.while.end.i238_crit_edge, label %while.body.i236.while.body.i236_crit_edge

while.body.i236.while.body.i236_crit_edge:        ; preds = %while.body.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i236

while.body.i236.while.end.i238_crit_edge:         ; preds = %while.body.i236
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i238

while.end.i238:                                   ; preds = %while.body.i236.while.end.i238_crit_edge, %if.then.i233.while.end.i238_crit_edge
  %storemerge.lcssa.i237 = phi i32 [ 0, %if.then.i233.while.end.i238_crit_edge ], [ %inc.i235, %while.body.i236.while.end.i238_crit_edge ]
  %239 = ptrtoint ptr %arbitration033 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %storemerge.lcssa.i237, ptr %arbitration033, align 4
  %240 = ptrtoint ptr %fifo_data.i195 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %fifo_data.i195, align 4
  %shr47.i = ashr i32 %241, 3
  %242 = ptrtoint ptr %arbitration134 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %shr47.i, ptr %arbitration134, align 4
  br label %nv10UpdateArbitrationSettings.exit

nv10UpdateArbitrationSettings.exit:               ; preds = %while.end.i238, %if.else.nv10UpdateArbitrationSettings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sim_data.i196) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %fifo_data.i195) #5
  br label %if.end35

if.end35:                                         ; preds = %nv10UpdateArbitrationSettings.exit, %nForceUpdateArbitrationSettings.exit
  %CursorStart = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 12
  %243 = ptrtoint ptr %CursorStart to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %CursorStart, align 4
  %shr = lshr i32 %244, 17
  %or36 = or i32 %shr, 128
  %cursor037 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %245 = ptrtoint ptr %cursor037 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 %or36, ptr %cursor037, align 4
  %246 = load i32, ptr %CursorStart, align 4
  %247 = lshr i32 %246, 9
  %shl40 = and i32 %247, 8388604
  %cursor141 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %248 = ptrtoint ptr %cursor141 to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %shl40, ptr %cursor141, align 4
  %249 = load i32, ptr %CursorStart, align 4
  %shr43 = lshr i32 %249, 24
  %cursor244 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %250 = ptrtoint ptr %cursor244 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %shr43, ptr %cursor244, align 4
  %pllsel45 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %251 = ptrtoint ptr %pllsel45 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 268437248, ptr %pllsel45, align 4
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %252 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %PFB, align 4
  %arrayidx = getelementptr i32, ptr %253, i32 128
  %254 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !83
  %config47 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %255 = ptrtoint ptr %config47 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %254, ptr %config47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bpp)
  %cmp48 = icmp eq i32 %bpp, 16
  %cond49 = select i1 %cmp48, i32 1052928, i32 1048832
  %general50 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %256 = ptrtoint ptr %general50 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %cond49, ptr %general50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hDisplaySize)
  %cmp51 = icmp slt i32 %hDisplaySize, 1280
  %cond52 = select i1 %cmp51, i32 4, i32 0
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end35, %nv4UpdateArbitrationSettings.exit, %nv3UpdateArbitrationSettings.exit
  %cond52.sink = phi i32 [ %cond52, %if.end35 ], [ %cond22, %nv4UpdateArbitrationSettings.exit ], [ %cond8, %nv3UpdateArbitrationSettings.exit ]
  %repaint153 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 5
  %257 = ptrtoint ptr %repaint153 to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %cond52.sink, ptr %repaint153, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bpp)
  %cmp54.not = icmp eq i32 %bpp, 8
  br i1 %cmp54.not, label %sw.epilog.if.end60_crit_edge, label %land.lhs.true

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

land.lhs.true:                                    ; preds = %sw.epilog
  %258 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %259)
  %cmp56.not = icmp eq i32 %259, 3
  br i1 %cmp56.not, label %land.lhs.true.if.end60_crit_edge, label %if.then57

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %general58 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %260 = ptrtoint ptr %general58 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %general58, align 4
  %or59 = or i32 %261, 48
  store i32 %or59, ptr %general58, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %land.lhs.true.if.end60_crit_edge, %sw.epilog.if.end60_crit_edge
  %shl61 = shl i32 %p.3.lcssa, 16
  %shl62 = shl i32 %n.3.lcssa, 8
  %or63 = or i32 %shl62, %m.3.lcssa
  %or64 = or i32 %or63, %shl61
  %vpll = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 14
  %262 = ptrtoint ptr %vpll to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 %or64, ptr %vpll, align 4
  %div65 = sdiv i32 %width, 8
  %mul66 = mul i32 %div65, %div
  %and = lshr i32 %mul66, 3
  %263 = and i32 %and, 224
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 4
  %264 = ptrtoint ptr %repaint0 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %263, ptr %repaint0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %add)
  %cmp68 = icmp sgt i32 %add, 23
  %spec.select151 = select i1 %cmp68, i32 3, i32 %div
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %265 = ptrtoint ptr %pixel to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %spec.select151, ptr %pixel, align 4
  %offset0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %mul73 = mul i32 %div, %width
  %pitch3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %266 = call ptr @memset(ptr %offset0, i32 0, i32 16)
  %267 = ptrtoint ptr %pitch3 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 %mul73, ptr %pitch3, align 4
  %pitch2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %268 = ptrtoint ptr %pitch2 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %mul73, ptr %pitch2, align 4
  %pitch1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %269 = ptrtoint ptr %pitch1 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %mul73, ptr %pitch1, align 4
  %pitch0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %270 = ptrtoint ptr %pitch0 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %mul73, ptr %pitch0, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %CalcVClock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -22, %CalcVClock.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @RivaGetConfig(ptr noundef %chip, ptr nocapture noundef readonly %pdev, i32 noundef %chipset) local_unnamed_addr #0 align 64 {
entry:
  %amt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Version = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %Version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65539, ptr %Version, align 4
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %chip, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %2, label %entry.return_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 16, label %entry.sw.bb2_crit_edge
    i32 32, label %entry.sw.bb2_crit_edge83
    i32 48, label %entry.sw.bb2_crit_edge84
  ]

entry.sw.bb2_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.bb:                                            ; preds = %entry
  %PFB.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %4 = ptrtoint ptr %PFB.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PFB.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !83
  %and.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else19.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %PMC.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 23
  %7 = ptrtoint ptr %PMC.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %PMC.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !83
  %and3.i = and i32 %9, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and3.i)
  %cmp.i = icmp eq i32 %and3.i, 32
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.else.i_crit_edge

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %10 = ptrtoint ptr %PMC.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PMC.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !83
  %and7.i = and i32 %12, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %cmp8.not.i = icmp eq i32 %and7.i, 0
  br i1 %cmp8.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %RamBandwidthKBytesPerSec.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 6
  %13 = ptrtoint ptr %RamBandwidthKBytesPerSec.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 800000, ptr %RamBandwidthKBytesPerSec.i, align 4
  %14 = ptrtoint ptr %PFB.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PFB.i, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !83
  %and13.i = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and13.i)
  %switch.selectcmp.i = icmp eq i32 %and13.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2048, i32 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and13.i)
  %switch.selectcmp66.i = icmp eq i32 %and13.i, 2
  %switch.select67.i = select i1 %switch.selectcmp66.i, i32 4096, i32 %switch.select.i
  br label %nv3GetConfig.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  %RamBandwidthKBytesPerSec17.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 6
  %17 = ptrtoint ptr %RamBandwidthKBytesPerSec17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1000000, ptr %RamBandwidthKBytesPerSec17.i, align 4
  br label %nv3GetConfig.exit

if.else19.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %RamBandwidthKBytesPerSec20.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 6
  %18 = ptrtoint ptr %RamBandwidthKBytesPerSec20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1000000, ptr %RamBandwidthKBytesPerSec20.i, align 4
  %19 = ptrtoint ptr %PFB.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %PFB.i, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !83
  %and24.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and24.i)
  %switch.selectcmp68.i = icmp eq i32 %and24.i, 2
  %switch.select69.i = select i1 %switch.selectcmp68.i, i32 4096, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %switch.selectcmp70.i = icmp eq i32 %and24.i, 0
  %switch.select71.i = select i1 %switch.selectcmp70.i, i32 8192, i32 %switch.select69.i
  br label %nv3GetConfig.exit

nv3GetConfig.exit:                                ; preds = %if.else19.i, %if.else.i, %if.then9.i
  %.sink.i = phi i32 [ 8192, %if.else.i ], [ %switch.select67.i, %if.then9.i ], [ %switch.select71.i, %if.else19.i ]
  %RamAmountKBytes26.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 4
  %22 = ptrtoint ptr %RamAmountKBytes26.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink.i, ptr %RamAmountKBytes26.i, align 4
  %PEXTDEV.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %23 = ptrtoint ptr %PEXTDEV.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %PEXTDEV.i, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #5, !srcloc !83
  %and35.i = and i32 %25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  %cond.i = select i1 %tobool36.not.i, i32 13500, i32 14318
  %CrystalFreqKHz.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 3
  %26 = ptrtoint ptr %CrystalFreqKHz.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond.i, ptr %CrystalFreqKHz.i, align 4
  %PRAMIN.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 24
  %27 = ptrtoint ptr %PRAMIN.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %PRAMIN.i, align 4
  %arrayidx37.i = getelementptr i32, ptr %28, i32 7680
  %CURSOR.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 26
  %29 = ptrtoint ptr %CURSOR.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx37.i, ptr %CURSOR.i, align 4
  %VBlankBit.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 9
  %30 = ptrtoint ptr %VBlankBit.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %VBlankBit.i, align 4
  %MaxVClockFreqKHz.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 5
  %31 = ptrtoint ptr %MaxVClockFreqKHz.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 256000, ptr %MaxVClockFreqKHz.i, align 4
  %Busy.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 33
  %32 = ptrtoint ptr %Busy.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @nv3Busy, ptr %Busy.i, align 4
  %ShowHideCursor.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 39
  %33 = ptrtoint ptr %ShowHideCursor.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ShowHideCursor, ptr %ShowHideCursor.i, align 4
  %LoadStateExt.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 34
  %34 = ptrtoint ptr %LoadStateExt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @LoadStateExt, ptr %LoadStateExt.i, align 4
  %UnloadStateExt.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 35
  %35 = ptrtoint ptr %UnloadStateExt.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @UnloadStateExt, ptr %UnloadStateExt.i, align 4
  %SetStartAddress.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 36
  %36 = ptrtoint ptr %SetStartAddress.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @SetStartAddress3, ptr %SetStartAddress.i, align 4
  %SetSurfaces2D.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 37
  %37 = ptrtoint ptr %SetSurfaces2D.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @nv3SetSurfaces2D, ptr %SetSurfaces2D.i, align 4
  %SetSurfaces3D.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 38
  %38 = ptrtoint ptr %SetSurfaces3D.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @nv3SetSurfaces3D, ptr %SetSurfaces3D.i, align 4
  %LockUnlock.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 40
  %39 = ptrtoint ptr %LockUnlock.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @nv3LockUnlock, ptr %LockUnlock.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %PFB.i39 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %40 = ptrtoint ptr %PFB.i39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %PFB.i39, align 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #5, !srcloc !83
  %and.i40 = and i32 %42, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i41 = icmp eq i32 %and.i40, 0
  %43 = ptrtoint ptr %PFB.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %PFB.i39, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5
  br i1 %tobool.not.i41, label %if.else.i43, label %if.then.i42

if.then.i42:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %46 = lshr i32 %45, 1
  %mul5.i = and i32 %46, 30720
  %add.i = add nuw nsw i32 %mul5.i, 2048
  br label %nv4GetConfig.exit

if.else.i43:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %and9.i = and i32 %45, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.RivaGetConfig, i32 0, i32 %and9.i
  %47 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nv4GetConfig.exit

nv4GetConfig.exit:                                ; preds = %if.else.i43, %if.then.i42
  %.sink55.i = phi i32 [ %add.i, %if.then.i42 ], [ %switch.load, %if.else.i43 ]
  %RamAmountKBytes10.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 4
  %48 = ptrtoint ptr %RamAmountKBytes10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink55.i, ptr %RamAmountKBytes10.i, align 4
  %49 = ptrtoint ptr %PFB.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %PFB.i39, align 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #5, !srcloc !83
  %52 = and i32 %51, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %52)
  %cond30.i = icmp eq i32 %52, 24
  %.sink.i44 = select i1 %cond30.i, i32 800000, i32 1000000
  %53 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 6
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %.sink.i44, ptr %53, align 4
  %PEXTDEV.i45 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %55 = ptrtoint ptr %PEXTDEV.i45 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %PEXTDEV.i45, align 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #5, !srcloc !83
  %and28.i = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  %cond.i46 = select i1 %tobool29.not.i, i32 13500, i32 14318
  %CrystalFreqKHz.i47 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 3
  %58 = ptrtoint ptr %CrystalFreqKHz.i47 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %cond.i46, ptr %CrystalFreqKHz.i47, align 4
  %PRAMIN.i48 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 24
  %59 = ptrtoint ptr %PRAMIN.i48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %PRAMIN.i48, align 4
  %arrayidx.i = getelementptr i32, ptr %60, i32 15872
  %CURSOR.i49 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 26
  %61 = ptrtoint ptr %CURSOR.i49 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %arrayidx.i, ptr %CURSOR.i49, align 4
  %VBlankBit.i50 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 9
  %62 = ptrtoint ptr %VBlankBit.i50 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %VBlankBit.i50, align 4
  %MaxVClockFreqKHz.i51 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 5
  %63 = ptrtoint ptr %MaxVClockFreqKHz.i51 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 350000, ptr %MaxVClockFreqKHz.i51, align 4
  %Busy.i52 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 33
  %64 = ptrtoint ptr %Busy.i52 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @nv4Busy, ptr %Busy.i52, align 4
  %ShowHideCursor.i53 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 39
  %65 = ptrtoint ptr %ShowHideCursor.i53 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @ShowHideCursor, ptr %ShowHideCursor.i53, align 4
  %LoadStateExt.i54 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 34
  %66 = ptrtoint ptr %LoadStateExt.i54 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @LoadStateExt, ptr %LoadStateExt.i54, align 4
  %UnloadStateExt.i55 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 35
  %67 = ptrtoint ptr %UnloadStateExt.i55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @UnloadStateExt, ptr %UnloadStateExt.i55, align 4
  %SetStartAddress.i56 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 36
  %68 = ptrtoint ptr %SetStartAddress.i56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @SetStartAddress, ptr %SetStartAddress.i56, align 4
  %SetSurfaces2D.i57 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 37
  %69 = ptrtoint ptr %SetSurfaces2D.i57 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @nv4SetSurfaces2D, ptr %SetSurfaces2D.i57, align 4
  %SetSurfaces3D.i58 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 38
  %70 = ptrtoint ptr %SetSurfaces3D.i58 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @nv4SetSurfaces3D, ptr %SetSurfaces3D.i58, align 4
  %LockUnlock.i59 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 40
  %71 = ptrtoint ptr %LockUnlock.i59 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @nv4LockUnlock, ptr %LockUnlock.i59, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge83, %entry.sw.bb2_crit_edge84
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 1
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 8
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %domain_nr.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %amt.i) #5
  %76 = ptrtoint ptr %amt.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %amt.i, align 4, !annotation !84
  %PMC.i60 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 23
  %77 = ptrtoint ptr %PMC.i60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %PMC.i60, align 4
  %add.ptr.i = getelementptr i8, ptr %78, i32 4
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !83
  %and.i61 = and i32 %79, 16777217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %if.then.i63, label %sw.bb2.if.end.i_crit_edge

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i63:                                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %PMC.i60 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %PMC.i60, align 4
  %add.ptr3.i = getelementptr i8, ptr %81, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777217) #5, !srcloc !85
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i63, %sw.bb2.if.end.i_crit_edge
  %82 = zext i32 %chipset to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %chipset, label %if.else17.i [
    i32 282984864, label %if.then4.i
    i32 282984944, label %if.then9.i65
  ]

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %75, i32 noundef 0, i32 noundef 1) #5
  %call6.i = call i32 @pci_read_config_dword(ptr noundef %call5.i, i32 noundef 124, ptr noundef nonnull %amt.i) #5
  call void @pci_dev_put(ptr noundef %call5.i) #5
  %83 = ptrtoint ptr %amt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %amt.i, align 4
  %85 = shl i32 %84, 4
  %add.i64 = and i32 %85, 31744
  %mul.i = add nuw nsw i32 %add.i64, 1024
  br label %if.end37.i

if.then9.i65:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %75, i32 noundef 0, i32 noundef 1) #5
  %call11.i = call i32 @pci_read_config_dword(ptr noundef %call10.i, i32 noundef 132, ptr noundef nonnull %amt.i) #5
  call void @pci_dev_put(ptr noundef %call10.i) #5
  %86 = ptrtoint ptr %amt.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %amt.i, align 4
  %88 = shl i32 %87, 6
  %add14.i = and i32 %88, 130048
  %mul15.i = add nuw nsw i32 %add14.i, 1024
  br label %if.end37.i

if.else17.i:                                      ; preds = %if.end.i
  %PFB.i66 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %89 = ptrtoint ptr %PFB.i66 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %PFB.i66, align 4
  %add.ptr18.i = getelementptr i8, ptr %90, i32 524
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !83
  %shr20.i = lshr i32 %91, 20
  %trunc.i = trunc i32 %shr20.i to i8
  %92 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %trunc.i, label %sw.default.i67 [
    i8 2, label %if.else17.i.if.end37.i_crit_edge
    i8 4, label %sw.bb23.i
    i8 8, label %sw.bb25.i
    i8 16, label %sw.bb27.i
    i8 32, label %sw.bb29.i
    i8 64, label %sw.bb31.i
    i8 -128, label %sw.bb33.i
  ]

if.else17.i.if.end37.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb23.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb25.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb27.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb29.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb31.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.bb33.i:                                        ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

sw.default.i67:                                   ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37.i

if.end37.i:                                       ; preds = %sw.default.i67, %sw.bb33.i, %sw.bb31.i, %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb23.i, %if.else17.i.if.end37.i_crit_edge, %if.then9.i65, %if.then4.i
  %mul15.sink.i = phi i32 [ %mul15.i, %if.then9.i65 ], [ 16384, %sw.default.i67 ], [ 131072, %sw.bb33.i ], [ 65536, %sw.bb31.i ], [ 32768, %sw.bb29.i ], [ 16384, %sw.bb27.i ], [ 8192, %sw.bb25.i ], [ 4096, %sw.bb23.i ], [ %mul.i, %if.then4.i ], [ 2048, %if.else17.i.if.end37.i_crit_edge ]
  %RamAmountKBytes16.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 4
  %93 = ptrtoint ptr %RamAmountKBytes16.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %mul15.sink.i, ptr %RamAmountKBytes16.i, align 4
  %PFB38.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %94 = ptrtoint ptr %PFB38.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PFB38.i, align 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #5, !srcloc !83
  %97 = and i32 %96, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %97)
  %cond70.i = icmp eq i32 %97, 24
  %.sink.i68 = select i1 %cond70.i, i32 800000, i32 1000000
  %98 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 6
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %.sink.i68, ptr %98, align 4
  %PEXTDEV.i69 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 21
  %100 = ptrtoint ptr %PEXTDEV.i69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %PEXTDEV.i69, align 4
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #5, !srcloc !83
  %and49.i = and i32 %102, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %cond.i70 = select i1 %tobool50.not.i, i32 13500, i32 14318
  %CrystalFreqKHz.i71 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 3
  %103 = ptrtoint ptr %CrystalFreqKHz.i71 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %cond.i70, ptr %CrystalFreqKHz.i71, align 4
  %and51.i = and i32 %chipset, 4080
  %104 = zext i32 %and51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and51.i, label %if.end37.i.sw.epilog62.i_crit_edge [
    i32 368, label %if.end37.i.sw.bb52.i_crit_edge
    i32 384, label %if.end37.i.sw.bb52.i_crit_edge85
    i32 496, label %if.end37.i.sw.bb52.i_crit_edge86
    i32 592, label %if.end37.i.sw.bb52.i_crit_edge87
    i32 640, label %if.end37.i.sw.bb52.i_crit_edge88
    i32 768, label %if.end37.i.sw.bb52.i_crit_edge89
    i32 784, label %if.end37.i.sw.bb52.i_crit_edge90
    i32 800, label %if.end37.i.sw.bb52.i_crit_edge91
    i32 816, label %if.end37.i.sw.bb52.i_crit_edge92
    i32 832, label %if.end37.i.sw.bb52.i_crit_edge93
  ]

if.end37.i.sw.bb52.i_crit_edge93:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge92:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge91:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge90:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge89:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge88:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge87:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge86:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge85:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.bb52.i_crit_edge:                   ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb52.i

if.end37.i.sw.epilog62.i_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog62.i

sw.bb52.i:                                        ; preds = %if.end37.i.sw.bb52.i_crit_edge, %if.end37.i.sw.bb52.i_crit_edge85, %if.end37.i.sw.bb52.i_crit_edge86, %if.end37.i.sw.bb52.i_crit_edge87, %if.end37.i.sw.bb52.i_crit_edge88, %if.end37.i.sw.bb52.i_crit_edge89, %if.end37.i.sw.bb52.i_crit_edge90, %if.end37.i.sw.bb52.i_crit_edge91, %if.end37.i.sw.bb52.i_crit_edge92, %if.end37.i.sw.bb52.i_crit_edge93
  %105 = ptrtoint ptr %PEXTDEV.i69 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %PEXTDEV.i69, align 4
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #5, !srcloc !83
  %and56.i = and i32 %107, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %sw.bb52.i.sw.epilog62.i_crit_edge, label %if.then58.i

sw.bb52.i.sw.epilog62.i_crit_edge:                ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog62.i

if.then58.i:                                      ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %CrystalFreqKHz.i71 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 27000, ptr %CrystalFreqKHz.i71, align 4
  br label %sw.epilog62.i

sw.epilog62.i:                                    ; preds = %if.then58.i, %sw.bb52.i.sw.epilog62.i_crit_edge, %if.end37.i.sw.epilog62.i_crit_edge
  %109 = ptrtoint ptr %RamAmountKBytes16.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %RamAmountKBytes16.i, align 4
  %sub.i = shl i32 %110, 10
  %mul64.i = add i32 %sub.i, -131072
  %CursorStart.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 12
  %111 = ptrtoint ptr %CursorStart.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul64.i, ptr %CursorStart.i, align 4
  %CURSOR.i72 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 26
  %112 = ptrtoint ptr %CURSOR.i72 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %CURSOR.i72, align 4
  %VBlankBit.i73 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 9
  %113 = ptrtoint ptr %VBlankBit.i73 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 1, ptr %VBlankBit.i73, align 4
  %MaxVClockFreqKHz.i74 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 5
  %114 = ptrtoint ptr %MaxVClockFreqKHz.i74 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 350000, ptr %MaxVClockFreqKHz.i74, align 4
  %Busy.i75 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 33
  %115 = ptrtoint ptr %Busy.i75 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @nv10Busy, ptr %Busy.i75, align 4
  %ShowHideCursor.i76 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 39
  %116 = ptrtoint ptr %ShowHideCursor.i76 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @ShowHideCursor, ptr %ShowHideCursor.i76, align 4
  %LoadStateExt.i77 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 34
  %117 = ptrtoint ptr %LoadStateExt.i77 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @LoadStateExt, ptr %LoadStateExt.i77, align 4
  %UnloadStateExt.i78 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 35
  %118 = ptrtoint ptr %UnloadStateExt.i78 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @UnloadStateExt, ptr %UnloadStateExt.i78, align 4
  %SetStartAddress.i79 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 36
  %119 = ptrtoint ptr %SetStartAddress.i79 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @SetStartAddress, ptr %SetStartAddress.i79, align 4
  %SetSurfaces2D.i80 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 37
  %120 = ptrtoint ptr %SetSurfaces2D.i80 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @nv10SetSurfaces2D, ptr %SetSurfaces2D.i80, align 4
  %SetSurfaces3D.i81 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 38
  %121 = ptrtoint ptr %SetSurfaces3D.i81 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @nv10SetSurfaces3D, ptr %SetSurfaces3D.i81, align 4
  %LockUnlock.i82 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 40
  %122 = ptrtoint ptr %LockUnlock.i82 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @nv4LockUnlock, ptr %LockUnlock.i82, align 4
  %123 = zext i32 %and51.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %and51.i, label %sw.default67.i [
    i32 272, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge
    i32 368, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge94
    i32 384, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge95
    i32 496, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge96
    i32 592, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge97
    i32 640, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge98
    i32 768, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge99
    i32 784, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge100
    i32 800, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge101
    i32 816, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge102
    i32 832, label %sw.epilog62.i.nv10GetConfig.exit_crit_edge103
  ]

sw.epilog62.i.nv10GetConfig.exit_crit_edge103:    ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge102:    ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge101:    ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge100:    ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge99:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge98:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge97:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge96:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge95:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge94:     ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.epilog62.i.nv10GetConfig.exit_crit_edge:       ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

sw.default67.i:                                   ; preds = %sw.epilog62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv10GetConfig.exit

nv10GetConfig.exit:                               ; preds = %sw.default67.i, %sw.epilog62.i.nv10GetConfig.exit_crit_edge, %sw.epilog62.i.nv10GetConfig.exit_crit_edge94, %sw.epilog62.i.nv10GetConfig.exit_crit_edge95, %sw.epilog62.i.nv10GetConfig.exit_crit_edge96, %sw.epilog62.i.nv10GetConfig.exit_crit_edge97, %sw.epilog62.i.nv10GetConfig.exit_crit_edge98, %sw.epilog62.i.nv10GetConfig.exit_crit_edge99, %sw.epilog62.i.nv10GetConfig.exit_crit_edge100, %sw.epilog62.i.nv10GetConfig.exit_crit_edge101, %sw.epilog62.i.nv10GetConfig.exit_crit_edge102, %sw.epilog62.i.nv10GetConfig.exit_crit_edge103
  %.sink112.i = phi i32 [ 0, %sw.default67.i ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge94 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge95 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge96 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge97 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge98 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge99 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge100 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge101 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge102 ], [ 1, %sw.epilog62.i.nv10GetConfig.exit_crit_edge103 ]
  %twoHeads68.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 14
  %124 = ptrtoint ptr %twoHeads68.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %.sink112.i, ptr %twoHeads68.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %amt.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %nv10GetConfig.exit, %nv4GetConfig.exit, %nv3GetConfig.exit
  %Chipset = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 2
  %125 = ptrtoint ptr %Chipset to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %chipset, ptr %Chipset, align 4
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %126 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %FIFO, align 4
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 42
  %128 = ptrtoint ptr %Rop to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %Rop, align 4
  %arrayidx4 = getelementptr i32, ptr %127, i32 2048
  %Clip = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 44
  %129 = ptrtoint ptr %Clip to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %arrayidx4, ptr %Clip, align 4
  %arrayidx6 = getelementptr i32, ptr %127, i32 4096
  %Patt = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 43
  %130 = ptrtoint ptr %Patt to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %arrayidx6, ptr %Patt, align 4
  %arrayidx8 = getelementptr i32, ptr %127, i32 6144
  %Pixmap = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 45
  %131 = ptrtoint ptr %Pixmap to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %arrayidx8, ptr %Pixmap, align 4
  %arrayidx10 = getelementptr i32, ptr %127, i32 8192
  %Blt = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 46
  %132 = ptrtoint ptr %Blt to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %arrayidx10, ptr %Blt, align 4
  %arrayidx12 = getelementptr i32, ptr %127, i32 10240
  %Bitmap = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 47
  %133 = ptrtoint ptr %Bitmap to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %arrayidx12, ptr %Bitmap, align 4
  %arrayidx14 = getelementptr i32, ptr %127, i32 12288
  %Line = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 48
  %134 = ptrtoint ptr %Line to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx14, ptr %Line, align 4
  %arrayidx16 = getelementptr i32, ptr %127, i32 14336
  %Tri03 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  %135 = ptrtoint ptr %Tri03 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx16, ptr %Tri03, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv3_iterate(ptr noundef readonly %state, ptr noundef %ainfo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur1 = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 21
  %0 = ptrtoint ptr %cur1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur1, align 4
  %conv = zext i8 %1 to i32
  %gburst_size = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 3
  %vid_en = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 5
  %2 = ptrtoint ptr %vid_en to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid_en, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %enable_mp = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 3
  %gr_en = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 6
  %4 = ptrtoint ptr %gr_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %gr_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool31.not = icmp eq i8 %5, 0
  %gr_during_vid = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 2
  %wcvocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 9
  %vocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 18
  %wcvlwm = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 10
  %vburst_size = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 4
  %memory_width = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 4
  %mclk_khz = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 7
  %vdrain_rate = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 1
  %wcmocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 7
  %mocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 20
  %wcglwm = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 11
  %wcgocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 8
  %gocc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 19
  %vid_only_once = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 13
  %by_gfacc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 12
  %priority = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 24
  %gr_only_once128 = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 14
  %first_gacc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 16
  %mem_page_miss253 = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 8
  %mem_latency255 = getelementptr inbounds %struct.nv3_sim_state, ptr %state, i32 0, i32 9
  %mdrain_rate293 = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 2
  %first_vacc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 15
  %first_macc = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 17
  br label %while.cond

while.cond:                                       ; preds = %if.end445.while.cond_crit_edge, %entry
  %vlwm.0 = phi i32 [ 0, %entry ], [ %vlwm.2, %if.end445.while.cond_crit_edge ]
  %glwm.0 = phi i32 [ 0, %entry ], [ %glwm.2, %if.end445.while.cond_crit_edge ]
  %cur.0 = phi i32 [ %conv, %entry ], [ %next.06, %if.end445.while.cond_crit_edge ]
  %gfsize.0 = phi i32 [ 0, %entry ], [ %gfsize.1, %if.end445.while.cond_crit_edge ]
  %vfsize.0 = phi i32 [ 0, %entry ], [ %vfsize.1, %if.end445.while.cond_crit_edge ]
  %iter.0 = phi i32 [ 0, %entry ], [ %inc7, %if.end445.while.cond_crit_edge ]
  br i1 %tobool.not, label %while.cond.if.end21_crit_edge, label %if.then3

while.cond.if.end21_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then3:                                         ; preds = %while.cond
  %6 = ptrtoint ptr %wcvocc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wcvocc, align 4
  %8 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vocc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp4 = icmp sgt i32 %7, %9
  br i1 %cmp4, label %if.then6, label %if.then3.if.end9_crit_edge

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %wcvocc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %wcvocc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then3.if.end9_crit_edge
  %11 = ptrtoint ptr %wcvlwm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %wcvlwm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %vlwm.0)
  %cmp10 = icmp sgt i32 %12, %vlwm.0
  br i1 %cmp10, label %if.then12, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %wcvlwm to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %vlwm.0, ptr %wcvlwm, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge
  %14 = ptrtoint ptr %vburst_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vburst_size, align 4
  %mul = mul i32 %15, 1000000
  %16 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %memory_width, align 4
  %div = sdiv i32 %17, 8
  %div15 = sdiv i32 %mul, %div
  %18 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mclk_khz, align 4
  %div16 = sdiv i32 %div15, %19
  %20 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vdrain_rate, align 4
  %mul17 = mul i32 %21, %div16
  %div18 = sdiv i32 %mul17, 1000000
  %22 = ptrtoint ptr %wcvlwm to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %wcvlwm, align 4
  %sub = sub i32 %23, %15
  %add = add i32 %sub, %div18
  br label %if.end21

if.end21:                                         ; preds = %if.end14, %while.cond.if.end21_crit_edge
  %vfsize.1 = phi i32 [ %add, %if.end14 ], [ %vfsize.0, %while.cond.if.end21_crit_edge ]
  %24 = ptrtoint ptr %enable_mp to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enable_mp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  br i1 %tobool22.not, label %if.end21.if.end30_crit_edge, label %if.then23

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then23:                                        ; preds = %if.end21
  %26 = ptrtoint ptr %wcmocc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wcmocc, align 4
  %28 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mocc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp24 = icmp sgt i32 %27, %29
  br i1 %cmp24, label %if.then26, label %if.then23.if.end30_crit_edge

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %wcmocc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %wcmocc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then23.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  br i1 %tobool31.not, label %if.end30.if.end57_crit_edge, label %if.then32

if.end30.if.end57_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then32:                                        ; preds = %if.end30
  %31 = ptrtoint ptr %wcglwm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wcglwm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %glwm.0)
  %cmp33 = icmp sgt i32 %32, %glwm.0
  br i1 %cmp33, label %if.then35, label %if.then32.if.end37_crit_edge

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %wcglwm to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %glwm.0, ptr %wcglwm, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.then32.if.end37_crit_edge
  %34 = ptrtoint ptr %wcgocc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wcgocc, align 4
  %36 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gocc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp38 = icmp sgt i32 %35, %37
  br i1 %cmp38, label %if.then40, label %if.end37.if.end43_crit_edge

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %wcgocc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %wcgocc, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.end37.if.end43_crit_edge
  %39 = ptrtoint ptr %gburst_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %gburst_size, align 4
  %41 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %memory_width, align 4
  %div46 = sdiv i32 %42, 8
  %div47 = sdiv i32 %40, %div46
  %mul48 = mul i32 %div47, 1000000
  %43 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mclk_khz, align 4
  %div50 = sdiv i32 %mul48, %44
  %45 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ainfo, align 4
  %mul51 = mul i32 %46, %div50
  %div52 = sdiv i32 %mul51, 1000000
  %47 = ptrtoint ptr %wcglwm to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wcglwm, align 4
  %sub55 = sub i32 %48, %40
  %add56 = add i32 %sub55, %div52
  br label %if.end57

if.end57:                                         ; preds = %if.end43, %if.end30.if.end57_crit_edge
  %gfsize.1 = phi i32 [ %add56, %if.end43 ], [ %gfsize.0, %if.end30.if.end57_crit_edge ]
  %49 = ptrtoint ptr %gr_during_vid to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %gr_during_vid, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool58.not = icmp ne i8 %50, 0
  %brmerge = select i1 %tobool58.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.else87, label %land.lhs.true66

land.lhs.true66:                                  ; preds = %if.end57
  %51 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %vocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp68 = icmp slt i32 %52, 0
  br i1 %cmp68, label %land.lhs.true70, label %land.lhs.true66.if.else73_crit_edge

land.lhs.true66.if.else73_crit_edge:              ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else73

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %53 = ptrtoint ptr %vid_only_once to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %vid_only_once, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool71.not = icmp eq i8 %54, 0
  br i1 %tobool71.not, label %land.lhs.true70.sw.bb185_crit_edge, label %land.lhs.true70.if.else73_crit_edge

land.lhs.true70.if.else73_crit_edge:              ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else73

land.lhs.true70.sw.bb185_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb185

if.else73:                                        ; preds = %land.lhs.true70.if.else73_crit_edge, %land.lhs.true66.if.else73_crit_edge
  %55 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp75 = icmp slt i32 %56, 0
  br i1 %cmp75, label %if.else73.sw.default298_crit_edge, label %if.else78

if.else73.sw.default298_crit_edge:                ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default298

if.else78:                                        ; preds = %if.else73
  %57 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %gocc, align 4
  %59 = ptrtoint ptr %by_gfacc to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %by_gfacc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp80 = icmp slt i32 %58, %60
  br i1 %cmp80, label %if.else78.sw.bb239_crit_edge, label %if.else78.cleanup_crit_edge

if.else78.cleanup_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else78.sw.bb239_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb239

if.else87:                                        ; preds = %if.end57
  %61 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %priority, align 4
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %62, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb119
  ]

sw.bb:                                            ; preds = %if.else87
  br i1 %tobool.not, label %sw.bb.if.else99_crit_edge, label %land.lhs.true91

sw.bb.if.else99_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else99

land.lhs.true91:                                  ; preds = %sw.bb
  %64 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp93 = icmp slt i32 %65, 0
  br i1 %cmp93, label %land.lhs.true95, label %land.lhs.true91.if.else99_crit_edge

land.lhs.true91.if.else99_crit_edge:              ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else99

land.lhs.true95:                                  ; preds = %land.lhs.true91
  %66 = ptrtoint ptr %vid_only_once to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vid_only_once, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool97.not = icmp eq i8 %67, 0
  br i1 %tobool97.not, label %land.lhs.true95.sw.bb185_crit_edge, label %land.lhs.true95.if.else99_crit_edge

land.lhs.true95.if.else99_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else99

land.lhs.true95.sw.bb185_crit_edge:               ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb185

if.else99:                                        ; preds = %land.lhs.true95.if.else99_crit_edge, %land.lhs.true91.if.else99_crit_edge, %sw.bb.if.else99_crit_edge
  br i1 %tobool31.not, label %if.else99.if.else110_crit_edge, label %land.lhs.true103

if.else99.if.else110_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else110

land.lhs.true103:                                 ; preds = %if.else99
  %68 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp105 = icmp slt i32 %69, 0
  br i1 %cmp105, label %land.lhs.true107, label %land.lhs.true103.if.else110_crit_edge

land.lhs.true103.if.else110_crit_edge:            ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else110

land.lhs.true107:                                 ; preds = %land.lhs.true103
  %70 = ptrtoint ptr %gr_only_once128 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %gr_only_once128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool108.not = icmp eq i8 %71, 0
  br i1 %tobool108.not, label %land.lhs.true107.sw.bb239_crit_edge, label %land.lhs.true107.if.else110_crit_edge

land.lhs.true107.if.else110_crit_edge:            ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else110

land.lhs.true107.sw.bb239_crit_edge:              ; preds = %land.lhs.true107
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb239

if.else110:                                       ; preds = %land.lhs.true107.if.else110_crit_edge, %land.lhs.true103.if.else110_crit_edge, %if.else99.if.else110_crit_edge
  %72 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp112 = icmp slt i32 %73, 0
  br i1 %cmp112, label %if.else110.sw.default298_crit_edge, label %if.else110.cleanup_crit_edge

if.else110.cleanup_crit_edge:                     ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else110.sw.default298_crit_edge:               ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default298

sw.bb119:                                         ; preds = %if.else87
  br i1 %tobool31.not, label %sw.bb119.if.else131_crit_edge, label %land.lhs.true123

sw.bb119.if.else131_crit_edge:                    ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else131

land.lhs.true123:                                 ; preds = %sw.bb119
  %74 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp125 = icmp slt i32 %75, 0
  br i1 %cmp125, label %land.lhs.true127, label %land.lhs.true123.if.else131_crit_edge

land.lhs.true123.if.else131_crit_edge:            ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else131

land.lhs.true127:                                 ; preds = %land.lhs.true123
  %76 = ptrtoint ptr %gr_only_once128 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %gr_only_once128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool129.not = icmp eq i8 %77, 0
  br i1 %tobool129.not, label %land.lhs.true127.sw.bb239_crit_edge, label %land.lhs.true127.if.else131_crit_edge

land.lhs.true127.if.else131_crit_edge:            ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else131

land.lhs.true127.sw.bb239_crit_edge:              ; preds = %land.lhs.true127
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb239

if.else131:                                       ; preds = %land.lhs.true127.if.else131_crit_edge, %land.lhs.true123.if.else131_crit_edge, %sw.bb119.if.else131_crit_edge
  br i1 %tobool.not, label %if.else131.if.else143_crit_edge, label %land.lhs.true135

if.else131.if.else143_crit_edge:                  ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else143

land.lhs.true135:                                 ; preds = %if.else131
  %78 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp137 = icmp slt i32 %79, 0
  br i1 %cmp137, label %land.lhs.true139, label %land.lhs.true135.if.else143_crit_edge

land.lhs.true135.if.else143_crit_edge:            ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else143

land.lhs.true139:                                 ; preds = %land.lhs.true135
  %80 = ptrtoint ptr %vid_only_once to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vid_only_once, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool141.not = icmp eq i8 %81, 0
  br i1 %tobool141.not, label %land.lhs.true139.sw.bb185_crit_edge, label %land.lhs.true139.if.else143_crit_edge

land.lhs.true139.if.else143_crit_edge:            ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else143

land.lhs.true139.sw.bb185_crit_edge:              ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb185

if.else143:                                       ; preds = %land.lhs.true139.if.else143_crit_edge, %land.lhs.true135.if.else143_crit_edge, %if.else131.if.else143_crit_edge
  %82 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp145 = icmp slt i32 %83, 0
  br i1 %cmp145, label %if.else143.sw.default298_crit_edge, label %if.else143.cleanup_crit_edge

if.else143.cleanup_crit_edge:                     ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else143.sw.default298_crit_edge:               ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default298

sw.default:                                       ; preds = %if.else87
  %84 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp153 = icmp slt i32 %85, 0
  br i1 %cmp153, label %sw.default.sw.default298_crit_edge, label %if.else156

sw.default.sw.default298_crit_edge:               ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.default298

if.else156:                                       ; preds = %sw.default
  br i1 %tobool31.not, label %if.else156.if.else168_crit_edge, label %land.lhs.true160

if.else156.if.else168_crit_edge:                  ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else168

land.lhs.true160:                                 ; preds = %if.else156
  %86 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp162 = icmp slt i32 %87, 0
  br i1 %cmp162, label %land.lhs.true164, label %land.lhs.true160.if.else168_crit_edge

land.lhs.true160.if.else168_crit_edge:            ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else168

land.lhs.true164:                                 ; preds = %land.lhs.true160
  %88 = ptrtoint ptr %gr_only_once128 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %gr_only_once128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool166.not = icmp eq i8 %89, 0
  br i1 %tobool166.not, label %land.lhs.true164.sw.bb239_crit_edge, label %land.lhs.true164.if.else168_crit_edge

land.lhs.true164.if.else168_crit_edge:            ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else168

land.lhs.true164.sw.bb239_crit_edge:              ; preds = %land.lhs.true164
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb239

if.else168:                                       ; preds = %land.lhs.true164.if.else168_crit_edge, %land.lhs.true160.if.else168_crit_edge, %if.else156.if.else168_crit_edge
  br i1 %tobool.not, label %if.else168.cleanup_crit_edge, label %land.lhs.true172

if.else168.cleanup_crit_edge:                     ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true172:                                 ; preds = %if.else168
  %90 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %vocc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp174 = icmp slt i32 %91, 0
  br i1 %cmp174, label %land.lhs.true176, label %land.lhs.true172.cleanup_crit_edge

land.lhs.true172.cleanup_crit_edge:               ; preds = %land.lhs.true172
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true176:                                 ; preds = %land.lhs.true172
  %92 = ptrtoint ptr %vid_only_once to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %vid_only_once, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool178.not = icmp eq i8 %93, 0
  br i1 %tobool178.not, label %land.lhs.true176.sw.bb185_crit_edge, label %land.lhs.true176.cleanup_crit_edge

land.lhs.true176.cleanup_crit_edge:               ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true176.sw.bb185_crit_edge:              ; preds = %land.lhs.true176
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb185

sw.bb185:                                         ; preds = %land.lhs.true176.sw.bb185_crit_edge, %land.lhs.true139.sw.bb185_crit_edge, %land.lhs.true95.sw.bb185_crit_edge, %land.lhs.true70.sw.bb185_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cur.0)
  %cmp186 = icmp eq i32 %cur.0, 0
  br i1 %cmp186, label %if.end194.thread, label %if.then198

if.end194.thread:                                 ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #7
  %94 = ptrtoint ptr %first_vacc to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %first_vacc, align 2
  br label %if.end209

if.then198:                                       ; preds = %sw.bb185
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %first_vacc to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %first_vacc, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool190.not = icmp eq i8 %96, 0
  %. = select i1 %tobool190.not, i32 1, i32 2
  %97 = ptrtoint ptr %first_vacc to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %first_vacc, align 2
  %98 = ptrtoint ptr %mem_page_miss253 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mem_page_miss253, align 4
  %mul199 = shl i32 %99, 1
  %100 = ptrtoint ptr %mem_latency255 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %mem_latency255, align 4
  %add200 = add i32 %mul199, %101
  %mul201 = mul i32 %add200, 1000000
  %102 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mclk_khz, align 4
  %div203 = sdiv i32 %mul201, %103
  %104 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vdrain_rate, align 4
  %mul205 = mul i32 %105, %div203
  %div206.neg = sdiv i32 %mul205, -1000000
  %106 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %vocc, align 4
  %sub208 = add i32 %div206.neg, %107
  br label %if.end209

if.end209:                                        ; preds = %if.then198, %if.end194.thread
  %misses.017 = phi i32 [ %., %if.then198 ], [ 0, %if.end194.thread ]
  %vlwm.1 = phi i32 [ %sub208, %if.then198 ], [ %vlwm.0, %if.end194.thread ]
  %108 = ptrtoint ptr %mem_page_miss253 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mem_page_miss253, align 4
  %mul211 = mul i32 %109, %misses.017
  %110 = ptrtoint ptr %vburst_size to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vburst_size, align 4
  %add213 = add i32 %mul211, %111
  %mul214 = mul i32 %add213, 1000000
  %112 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %memory_width, align 4
  %div216 = sdiv i32 %113, 8
  %div217 = sdiv i32 %mul214, %div216
  %114 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %mclk_khz, align 4
  %div219 = sdiv i32 %div217, %115
  %116 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %vocc, align 4
  %add222 = add i32 %117, %111
  %118 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vdrain_rate, align 4
  %mul224 = mul i32 %119, %div219
  %div225.neg = sdiv i32 %mul224, -1000000
  %sub226 = add i32 %add222, %div225.neg
  store i32 %sub226, ptr %vocc, align 4
  %120 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %gocc, align 4
  %122 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ainfo, align 4
  %mul230 = mul i32 %123, %div219
  %div231.neg = sdiv i32 %mul230, -1000000
  %sub232 = add i32 %div231.neg, %121
  store i32 %sub232, ptr %gocc, align 4
  %124 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mocc, align 4
  %126 = ptrtoint ptr %mdrain_rate293 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mdrain_rate293, align 4
  %mul235 = mul i32 %127, %div219
  %div236.neg = sdiv i32 %mul235, -1000000
  br label %sw.epilog339

sw.bb239:                                         ; preds = %land.lhs.true164.sw.bb239_crit_edge, %land.lhs.true127.sw.bb239_crit_edge, %land.lhs.true107.sw.bb239_crit_edge, %if.else78.sw.bb239_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cur.0)
  %cmp240 = icmp eq i32 %cur.0, 1
  br i1 %cmp240, label %if.end248.thread, label %if.then252

if.end248.thread:                                 ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %first_gacc to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %first_gacc, align 1
  br label %if.end265

if.then252:                                       ; preds = %sw.bb239
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %first_gacc to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %first_gacc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool244.not = icmp eq i8 %130, 0
  %.1 = select i1 %tobool244.not, i32 1, i32 2
  %131 = ptrtoint ptr %first_gacc to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %first_gacc, align 1
  %132 = ptrtoint ptr %mem_page_miss253 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %mem_page_miss253, align 4
  %mul254 = shl i32 %133, 1
  %134 = ptrtoint ptr %mem_latency255 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mem_latency255, align 4
  %add256 = add i32 %mul254, %135
  %mul257 = mul i32 %add256, 1000000
  %136 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mclk_khz, align 4
  %div259 = sdiv i32 %mul257, %137
  %138 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %ainfo, align 4
  %mul261 = mul i32 %139, %div259
  %div262.neg = sdiv i32 %mul261, -1000000
  %140 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %gocc, align 4
  %sub264 = add i32 %div262.neg, %141
  br label %if.end265

if.end265:                                        ; preds = %if.then252, %if.end248.thread
  %misses.120 = phi i32 [ %.1, %if.then252 ], [ 0, %if.end248.thread ]
  %glwm.1 = phi i32 [ %sub264, %if.then252 ], [ %glwm.0, %if.end248.thread ]
  %142 = ptrtoint ptr %mem_page_miss253 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %mem_page_miss253, align 4
  %mul267 = mul i32 %143, %misses.120
  %144 = ptrtoint ptr %gburst_size to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %gburst_size, align 4
  %146 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %memory_width, align 4
  %div270 = sdiv i32 %147, 8
  %div271 = sdiv i32 %145, %div270
  %add272 = add i32 %div271, %mul267
  %mul273 = mul i32 %add272, 1000000
  %148 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %mclk_khz, align 4
  %div275 = sdiv i32 %mul273, %149
  %150 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %vocc, align 4
  %152 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vdrain_rate, align 4
  %mul279 = mul i32 %153, %div275
  %div280.neg = sdiv i32 %mul279, -1000000
  %sub281 = add i32 %div280.neg, %151
  store i32 %sub281, ptr %vocc, align 4
  %154 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %gocc, align 4
  %add285 = add i32 %155, %145
  %156 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ainfo, align 4
  %mul287 = mul i32 %157, %div275
  %div288.neg = sdiv i32 %mul287, -1000000
  %sub289 = add i32 %add285, %div288.neg
  store i32 %sub289, ptr %gocc, align 4
  %158 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mocc, align 4
  %160 = ptrtoint ptr %mdrain_rate293 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mdrain_rate293, align 4
  %mul294 = mul i32 %161, %div275
  %div295.neg = sdiv i32 %mul294, -1000000
  br label %sw.epilog339

sw.default298:                                    ; preds = %sw.default.sw.default298_crit_edge, %if.else143.sw.default298_crit_edge, %if.else110.sw.default298_crit_edge, %if.else73.sw.default298_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cur.0)
  %cmp299 = icmp eq i32 %cur.0, 2
  br i1 %cmp299, label %sw.default298.if.end307_crit_edge, label %if.else302

sw.default298.if.end307_crit_edge:                ; preds = %sw.default298
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end307

if.else302:                                       ; preds = %sw.default298
  call void @__sanitizer_cov_trace_pc() #7
  %162 = ptrtoint ptr %first_macc to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %first_macc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool303.not = icmp eq i8 %163, 0
  %.2 = select i1 %tobool303.not, i32 1, i32 2
  br label %if.end307

if.end307:                                        ; preds = %if.else302, %sw.default298.if.end307_crit_edge
  %misses.2 = phi i32 [ 0, %sw.default298.if.end307_crit_edge ], [ %.2, %if.else302 ]
  %164 = ptrtoint ptr %first_macc to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %first_macc, align 4
  %165 = ptrtoint ptr %mem_page_miss253 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mem_page_miss253, align 4
  %mul310 = mul i32 %166, %misses.2
  %167 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %memory_width, align 4
  %div312 = sdiv i32 %168, 8
  %div313 = sdiv i32 32, %div312
  %add314 = add i32 %div313, %mul310
  %mul315 = mul i32 %add314, 1000000
  %169 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mclk_khz, align 4
  %div317 = sdiv i32 %mul315, %170
  %171 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %vocc, align 4
  %173 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %vdrain_rate, align 4
  %mul321 = mul i32 %174, %div317
  %div322.neg = sdiv i32 %mul321, -1000000
  %sub323 = add i32 %div322.neg, %172
  store i32 %sub323, ptr %vocc, align 4
  %175 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %gocc, align 4
  %177 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ainfo, align 4
  %mul328 = mul i32 %178, %div317
  %div329.neg = sdiv i32 %mul328, -1000000
  %sub330 = add i32 %div329.neg, %176
  store i32 %sub330, ptr %gocc, align 4
  %179 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %mocc, align 4
  %add333 = add i32 %180, 32
  %181 = ptrtoint ptr %mdrain_rate293 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mdrain_rate293, align 4
  %mul335 = mul i32 %182, %div317
  %div336.neg = sdiv i32 %mul335, -1000000
  br label %sw.epilog339

sw.epilog339:                                     ; preds = %if.end307, %if.end265, %if.end209
  %div336.neg.sink = phi i32 [ %div336.neg, %if.end307 ], [ %159, %if.end265 ], [ %125, %if.end209 ]
  %add333.sink = phi i32 [ %add333, %if.end307 ], [ %div295.neg, %if.end265 ], [ %div236.neg, %if.end209 ]
  %next.06 = phi i32 [ 2, %if.end307 ], [ 1, %if.end265 ], [ 0, %if.end209 ]
  %vlwm.2 = phi i32 [ %vlwm.0, %if.end307 ], [ %vlwm.0, %if.end265 ], [ %vlwm.1, %if.end209 ]
  %glwm.2 = phi i32 [ %glwm.0, %if.end307 ], [ %glwm.1, %if.end265 ], [ %glwm.0, %if.end209 ]
  %sub337 = add i32 %add333.sink, %div336.neg.sink
  %183 = ptrtoint ptr %mocc to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %sub337, ptr %mocc, align 4
  %inc7 = add nuw nsw i32 %iter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %iter.0)
  %exitcond = icmp eq i32 %iter.0, 100
  br i1 %exitcond, label %sw.epilog339.cleanup.sink.split_crit_edge, label %if.end343

sw.epilog339.cleanup.sink.split_crit_edge:        ; preds = %sw.epilog339
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end343:                                        ; preds = %sw.epilog339
  %184 = ptrtoint ptr %gburst_size to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %gburst_size, align 4
  %mul345 = mul i32 %185, 1000000
  %186 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %memory_width, align 4
  %div347 = sdiv i32 %187, 8
  %div348 = sdiv i32 %mul345, %div347
  %188 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %mclk_khz, align 4
  %div350 = sdiv i32 %div348, %189
  %190 = ptrtoint ptr %ainfo to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %ainfo, align 4
  %mul352 = mul i32 %191, %div350
  %div353.neg = sdiv i32 %mul352, -1000000
  %192 = tail call i32 @llvm.abs.i32(i32 %185, i1 false)
  %193 = ptrtoint ptr %wcglwm to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %wcglwm, align 4
  %195 = tail call i32 @llvm.abs.i32(i32 %194, i1 false)
  %add369 = add nuw i32 %195, 16
  %and = and i32 %add369, -8
  %add370 = add i32 %div353.neg, %192
  %sub371 = add i32 %add370, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %sub371)
  %cmp372 = icmp sgt i32 %sub371, 320
  br i1 %cmp372, label %if.end343.cleanup.sink.split_crit_edge, label %if.end376

if.end343.cleanup.sink.split_crit_edge:           ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end376:                                        ; preds = %if.end343
  %196 = ptrtoint ptr %vburst_size to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %vburst_size, align 4
  %mul378 = mul i32 %197, 1000000
  %div381 = sdiv i32 %mul378, %div347
  %div383 = sdiv i32 %div381, %189
  %198 = ptrtoint ptr %vdrain_rate to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %vdrain_rate, align 4
  %mul385 = mul i32 %199, %div383
  %div386.neg = sdiv i32 %mul385, -1000000
  %200 = tail call i32 @llvm.abs.i32(i32 %197, i1 false)
  %201 = ptrtoint ptr %wcvlwm to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %wcvlwm, align 4
  %add399 = add i32 %202, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add399)
  %cmp401 = icmp slt i32 %add399, 0
  %sub404 = sub i32 -32, %202
  %cond407 = select i1 %cmp401, i32 %sub404, i32 %add399
  %and408 = and i32 %cond407, -16
  %add409 = add i32 %div386.neg, %200
  %sub410 = add i32 %add409, %and408
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub410)
  %cmp411 = icmp sgt i32 %sub410, 256
  br i1 %cmp411, label %if.end376.cleanup.sink.split_crit_edge, label %if.end415

if.end376.cleanup.sink.split_crit_edge:           ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end415:                                        ; preds = %if.end376
  %203 = ptrtoint ptr %gocc to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %gocc, align 4
  %205 = tail call i32 @llvm.abs.i32(i32 %204, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %205)
  %cmp426 = icmp sgt i32 %205, 320
  br i1 %cmp426, label %if.end415.cleanup.sink.split_crit_edge, label %if.end430

if.end415.cleanup.sink.split_crit_edge:           ; preds = %if.end415
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end430:                                        ; preds = %if.end415
  %206 = ptrtoint ptr %vocc to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %vocc, align 4
  %208 = tail call i32 @llvm.abs.i32(i32 %207, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %208)
  %cmp441 = icmp sgt i32 %208, 256
  br i1 %cmp441, label %if.end430.cleanup.sink.split_crit_edge, label %if.end445

if.end430.cleanup.sink.split_crit_edge:           ; preds = %if.end430
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end445:                                        ; preds = %if.end430
  %209 = ptrtoint ptr %mocc to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %mocc, align 4
  %211 = tail call i32 @llvm.abs.i32(i32 %210, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 120, i32 %211)
  %cmp456 = icmp sgt i32 %211, 120
  %212 = tail call i32 @llvm.abs.i32(i32 %vfsize.1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %212)
  %cmp470 = icmp sgt i32 %212, 256
  %or.cond = select i1 %cmp456, i1 true, i1 %cmp470
  %213 = tail call i32 @llvm.abs.i32(i32 %gfsize.1, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 320, i32 %213)
  %cmp484 = icmp sgt i32 %213, 320
  %or.cond22 = select i1 %or.cond, i1 true, i1 %cmp484
  br i1 %or.cond22, label %if.end445.cleanup.sink.split_crit_edge, label %if.end445.while.cond_crit_edge

if.end445.while.cond_crit_edge:                   ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

if.end445.cleanup.sink.split_crit_edge:           ; preds = %if.end445
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end445.cleanup.sink.split_crit_edge, %if.end430.cleanup.sink.split_crit_edge, %if.end415.cleanup.sink.split_crit_edge, %if.end376.cleanup.sink.split_crit_edge, %if.end343.cleanup.sink.split_crit_edge, %sw.epilog339.cleanup.sink.split_crit_edge
  %converged487 = getelementptr inbounds %struct.nv3_arb_info, ptr %ainfo, i32 0, i32 23
  %214 = ptrtoint ptr %converged487 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 0, ptr %converged487, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true176.cleanup_crit_edge, %land.lhs.true172.cleanup_crit_edge, %if.else168.cleanup_crit_edge, %if.else143.cleanup_crit_edge, %if.else110.cleanup_crit_edge, %if.else78.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv10CalcArbitration(ptr nocapture noundef writeonly %fifo, ptr nocapture noundef readonly %arb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %valid = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 4
  %0 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %valid, align 4
  %1 = ptrtoint ptr %arb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arb, align 4
  %mclk_khz = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 1
  %3 = ptrtoint ptr %mclk_khz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk_khz, align 4
  %nvclk_khz = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 2
  %5 = ptrtoint ptr %nvclk_khz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nvclk_khz, align 4
  %mem_page_miss = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 3
  %7 = ptrtoint ptr %mem_page_miss to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mem_page_miss, align 4
  %conv = zext i8 %8 to i32
  %memory_width = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 6
  %9 = ptrtoint ptr %memory_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %memory_width, align 4
  %enable_video = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 7
  %11 = ptrtoint ptr %enable_video to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_video, align 4
  %pix_bpp = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 9
  %13 = ptrtoint ptr %pix_bpp to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pix_bpp, align 2
  %conv2 = zext i8 %14 to i32
  %enable_mp = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 11
  %15 = ptrtoint ptr %enable_mp to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enable_mp, align 4
  %memory_type = getelementptr inbounds %struct.nv10_sim_state, ptr %arb, i32 0, i32 5
  %17 = ptrtoint ptr %memory_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %memory_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %10)
  %cmp11 = icmp eq i32 %10, 64
  %. = select i1 %cmp11, i32 22, i32 20
  %.273 = select i1 %cmp11, i32 20, i32 19
  %mclks.0 = select i1 %cmp, i32 %., i32 %.273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %10)
  %cmp27 = icmp eq i32 %10, 128
  %or.cond285 = select i1 %tobool.not, i1 %cmp27, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %14)
  %cmp33 = icmp eq i8 %14, 32
  %cond35 = select i1 %cmp33, i32 8, i32 4
  %cond = select i1 %cmp33, i32 31, i32 42
  %mclk_extra.0 = select i1 %or.cond285, i32 %cond, i32 %cond35
  %min_mclk_extra.0 = select i1 %or.cond285, i32 17, i32 18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool41.not = icmp eq i8 %16, 0
  %add43 = add nuw nsw i32 %mclks.0, 4
  %spec.select = select i1 %tobool41.not, i32 %mclks.0, i32 %add43
  %add50 = add nuw nsw i32 %spec.select, %mclk_extra.0
  %mul51 = mul nuw nsw i32 %add50, 1000000
  %div52 = sdiv i32 %mul51, %4
  %mul54 = mul nuw nsw i32 %spec.select, 1000000
  %div55 = sdiv i32 %mul54, %4
  %div61 = sdiv i32 9000000, %6
  %div64 = sdiv i32 4000000, %2
  %add65 = add nsw i32 %div64, %div61
  %add66 = add nsw i32 %add65, %div55
  %video_lwm = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 1
  %19 = ptrtoint ptr %video_lwm to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1024, ptr %video_lwm, align 4
  %video_burst_size = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 3
  %20 = ptrtoint ptr %video_burst_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 512, ptr %video_burst_size, align 4
  %mul72 = mul i32 %2, %conv2
  %div73 = sdiv i32 %mul72, 8
  %spec.select274 = select i1 %tobool41.not, i32 2, i32 3
  %mul81 = mul nuw nsw i32 %conv, 2000000
  %mul84 = mul nuw nsw i32 %conv, 1000000
  %mul86 = mul nuw nsw i32 %mul84, %spec.select274
  %factor = shl nsw i32 %div52, 1
  %add89 = add i32 %add65, %factor
  %add107 = add nsw i32 %add65, %div52
  %21 = and i32 %10, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %21)
  %22 = icmp ne i32 %21, 64
  %mul116 = mul i32 %div73, 100
  %mul117 = mul i32 %6, 816
  call void @__sanitizer_cov_trace_cmp4(i32 %mul116, i32 %mul117)
  %cmp118.not = icmp sge i32 %mul116, %mul117
  %mul123 = mul i32 %6, 784
  call void @__sanitizer_cov_trace_cmp4(i32 %mul116, i32 %mul123)
  %cmp124.not = icmp slt i32 %mul116, %mul123
  %brmerge = select i1 %22, i1 true, i1 %cmp118.not
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %entry
  %min_mclk_extra.1289 = phi i32 [ %min_mclk_extra.0, %entry ], [ %min_mclk_extra.1289.be, %while.body.backedge ]
  %cbs.0288 = phi i32 [ 512, %entry ], [ %cbs.0288.be, %while.body.backedge ]
  %mul57 = mul i32 %min_mclk_extra.1289, 1000000
  %div58 = sdiv i32 %mul57, %4
  br i1 %tobool.not, label %if.else94, label %if.then71

if.then71:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %div82 = sdiv i32 %mul81, %4
  %div87 = sdiv i32 %mul86, %4
  %add90 = add i32 %add89, %div82
  %add91 = add i32 %add90, %div87
  %mul92 = mul i32 %add91, %div73
  %div93 = sdiv i32 %mul92, 1000000
  %inc = add nsw i32 %div93, 1
  br label %if.end130

if.else94:                                        ; preds = %while.body
  %div105 = sdiv i32 %mul86, %4
  %add108 = add i32 %add107, %div105
  %mul109 = mul i32 %add108, %div73
  %div110 = sdiv i32 %mul109, 1000000
  %inc111 = add nsw i32 %div110, 1
  %inc111.mux = select i1 %22, i32 %inc111, i32 4095
  br i1 %brmerge, label %if.else94.if.end130_crit_edge, label %if.else121

if.else94.if.end130_crit_edge:                    ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

if.else121:                                       ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #7
  %spec.select276 = select i1 %cmp124.not, i32 %cbs.0288, i32 512
  %spec.select277 = select i1 %cmp124.not, i32 %inc111, i32 1024
  br label %if.end130

if.end130:                                        ; preds = %if.else121, %if.else94.if.end130_crit_edge, %if.then71
  %cbs.1 = phi i32 [ %cbs.0288, %if.then71 ], [ %cbs.0288, %if.else94.if.end130_crit_edge ], [ %spec.select276, %if.else121 ]
  %clwm.0 = phi i32 [ %inc, %if.then71 ], [ %inc111.mux, %if.else94.if.end130_crit_edge ], [ %spec.select277, %if.else121 ]
  %div131.lhs.trunc = trunc i32 %clwm.0 to i16
  %div131284 = sdiv i16 %div131.lhs.trunc, 8
  %div131.sext = sext i16 %div131284 to i32
  %mul132 = shl nsw i32 %div131.sext, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul132, i32 %clwm.0)
  %cmp133 = icmp slt i32 %mul132, %clwm.0
  %add136 = add nsw i32 %clwm.0, 8
  %spec.select278 = select i1 %cmp133, i32 %add136, i32 %clwm.0
  %add138 = add i32 %cbs.1, -1024
  %sub = add i32 %add138, %spec.select278
  %add139 = add i32 %add66, %div58
  %mul140 = mul i32 %add139, %2
  %div141 = sdiv i32 %mul140, 1000000
  %mul142 = mul nsw i32 %div141, %conv2
  %div143 = sdiv i32 %mul142, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div143, i32 %sub)
  %cmp144 = icmp slt i32 %div143, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp147 = icmp sgt i32 %sub, 0
  %or.cond = and i1 %cmp144, %cmp147
  br i1 %or.cond, label %if.then149, label %if.else162

if.then149:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_mclk_extra.1289)
  %cmp151 = icmp eq i32 %min_mclk_extra.1289, 0
  br i1 %cmp151, label %if.then153, label %if.else160

if.then153:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %cbs.1)
  %cmp154 = icmp slt i32 %cbs.1, 33
  %div158 = sdiv i32 %cbs.1, 2
  br i1 %cmp154, label %if.then153.while.end_crit_edge, label %if.then153.while.body.backedge_crit_edge

if.then153.while.body.backedge_crit_edge:         ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

if.then153.while.end_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.else160:                                       ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #7
  %dec = add i32 %min_mclk_extra.1289, -1
  br label %while.body.backedge

if.else162:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %spec.select278)
  %cmp163 = icmp sgt i32 %spec.select278, 1023
  br i1 %cmp163, label %if.end174, label %if.else162.while.end_crit_edge

if.else162.while.end_crit_edge:                   ; preds = %if.else162
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end174:                                        ; preds = %if.else162
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_mclk_extra.1289)
  %cmp167 = icmp eq i32 %min_mclk_extra.1289, 0
  %dec171 = add i32 %min_mclk_extra.1289, -1
  br i1 %cmp167, label %if.end174.while.end_crit_edge, label %if.end174.while.body.backedge_crit_edge

if.end174.while.body.backedge_crit_edge:          ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.backedge

if.end174.while.end_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.backedge:                              ; preds = %if.end174.while.body.backedge_crit_edge, %if.else160, %if.then153.while.body.backedge_crit_edge
  %min_mclk_extra.1289.be = phi i32 [ %dec171, %if.end174.while.body.backedge_crit_edge ], [ %dec, %if.else160 ], [ 0, %if.then153.while.body.backedge_crit_edge ]
  %cbs.0288.be = phi i32 [ %cbs.1, %if.end174.while.body.backedge_crit_edge ], [ %cbs.1, %if.else160 ], [ %div158, %if.then153.while.body.backedge_crit_edge ]
  br label %while.body

while.end:                                        ; preds = %if.end174.while.end_crit_edge, %if.else162.while.end_crit_edge, %if.then153.while.end_crit_edge
  %23 = phi i32 [ 0, %if.end174.while.end_crit_edge ], [ 0, %if.then153.while.end_crit_edge ], [ 1, %if.else162.while.end_crit_edge ]
  %graphics_burst_size = getelementptr inbounds %struct.nv10_fifo_info, ptr %fifo, i32 0, i32 2
  %add176.le = sub i32 1032, %cbs.1
  %24 = tail call i32 @llvm.smax.i32(i32 %spec.select278, i32 %add176.le)
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %valid, align 4
  %26 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %fifo, align 4
  %27 = ptrtoint ptr %graphics_burst_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cbs.1, ptr %graphics_burst_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv3Busy(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %Rop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Rop, align 4
  %FifoFree = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %FifoEmptyCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 11
  %3 = ptrtoint ptr %FifoEmptyCount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %FifoEmptyCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %5 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PGRAPH, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 428
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !83
  %and = and i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %and, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ShowHideCursor(ptr nocapture noundef readonly %chip, i32 noundef %ShowHide) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %CurrentState = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 41
  %0 = ptrtoint ptr %CurrentState to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %CurrentState, align 4
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cursor1, align 4
  %and = and i32 %3, 254
  %and3 = and i32 %ShowHide, 1
  %or = or i32 %and, %and3
  store i32 %or, ptr %cursor1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 49) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %CurrentState to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %CurrentState, align 4
  %cursor110 = getelementptr inbounds %struct._riva_hw_state, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %cursor110 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cursor110, align 4
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 4
  %add.ptr12 = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12, i8 %conv) #5, !srcloc !87
  %and13 = and i32 %3, 1
  ret i32 %and13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @LoadStateExt(ptr noundef %chip, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PMC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 23
  %0 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PMC, align 4
  %arrayidx4 = getelementptr i32, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4, i32 0) #5, !srcloc !85
  %2 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PMC, align 4
  %arrayidx4.1 = getelementptr i32, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4.1, i32 -65281) #5, !srcloc !85
  %4 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PMC, align 4
  %arrayidx4.2 = getelementptr i32, ptr %5, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4.2, i32 -1) #5, !srcloc !85
  %PTIMER = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 22
  %6 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PTIMER, align 4
  %arrayidx12 = getelementptr i32, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 8) #5, !srcloc !85
  %8 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PTIMER, align 4
  %arrayidx12.1 = getelementptr i32, ptr %9, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12.1, i32 3) #5, !srcloc !85
  %10 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PTIMER, align 4
  %arrayidx12.2 = getelementptr i32, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12.2, i32 0) #5, !srcloc !85
  %12 = ptrtoint ptr %PTIMER to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PTIMER, align 4
  %arrayidx12.3 = getelementptr i32, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12.3, i32 -1) #5, !srcloc !85
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %15, label %entry.sw.epilog996_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb163
    i32 16, label %entry.sw.bb349_crit_edge
    i32 32, label %entry.sw.bb349_crit_edge1733
    i32 48, label %entry.sw.bb349_crit_edge1734
  ]

entry.sw.bb349_crit_edge1734:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb349

entry.sw.bb349_crit_edge1733:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb349

entry.sw.bb349_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb349

entry.sw.epilog996_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog996

sw.bb:                                            ; preds = %entry
  %config = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config, align 4
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %19 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %PFB, align 4
  %add.ptr17 = getelementptr i8, ptr %20, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %18) #5, !srcloc !85
  %PFIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 19
  br label %for.body20

for.cond30.preheader:                             ; preds = %for.body20
  %PRAMIN = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 24
  br label %for.body32

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %sw.bb
  %i.21683 = phi i32 [ 0, %sw.bb ], [ %inc28, %for.body20.for.body20_crit_edge ]
  %arrayidx21 = getelementptr [26 x [2 x i32]], ptr @nv3TablePFIFO, i32 0, i32 %i.21683
  %arrayidx22 = getelementptr [26 x [2 x i32]], ptr @nv3TablePFIFO, i32 0, i32 %i.21683, i32 1
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  %23 = ptrtoint ptr %PFIFO to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %PFIFO, align 4
  %25 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx21, align 4
  %arrayidx25 = getelementptr i32, ptr %24, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx25, i32 %22) #5, !srcloc !85
  %inc28 = add nuw nsw i32 %i.21683, 1
  %exitcond1723.not = icmp eq i32 %inc28, 26
  br i1 %exitcond1723.not, label %for.cond30.preheader, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.cond42.preheader:                             ; preds = %for.body32
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  br label %for.body44

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.cond30.preheader
  %i.31684 = phi i32 [ 0, %for.cond30.preheader ], [ %inc40, %for.body32.for.body32_crit_edge ]
  %arrayidx33 = getelementptr [66 x [2 x i32]], ptr @nv3TablePRAMIN, i32 0, i32 %i.31684
  %arrayidx34 = getelementptr [66 x [2 x i32]], ptr @nv3TablePRAMIN, i32 0, i32 %i.31684, i32 1
  %27 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx34, align 4
  %29 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %PRAMIN, align 4
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33, align 4
  %arrayidx37 = getelementptr i32, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx37, i32 %28) #5, !srcloc !85
  %inc40 = add nuw nsw i32 %i.31684, 1
  %exitcond1724.not = icmp eq i32 %inc40, 66
  br i1 %exitcond1724.not, label %for.cond42.preheader, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body32

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.cond42.preheader
  %i.41685 = phi i32 [ 0, %for.cond42.preheader ], [ %inc52, %for.body44.for.body44_crit_edge ]
  %arrayidx45 = getelementptr [33 x [2 x i32]], ptr @nv3TablePGRAPH, i32 0, i32 %i.41685
  %arrayidx46 = getelementptr [33 x [2 x i32]], ptr @nv3TablePGRAPH, i32 0, i32 %i.41685, i32 1
  %33 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx46, align 4
  %35 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %PGRAPH, align 4
  %37 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx45, align 4
  %arrayidx49 = getelementptr i32, ptr %36, i32 %38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx49, i32 %34) #5, !srcloc !85
  %inc52 = add nuw nsw i32 %i.41685, 1
  %exitcond1725.not = icmp eq i32 %inc52, 33
  br i1 %exitcond1725.not, label %for.end53, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body44

for.end53:                                        ; preds = %for.body44
  %39 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %40, label %for.cond111.preheader [
    i32 15, label %for.end53.sw.bb54_crit_edge
    i32 16, label %for.end53.sw.bb54_crit_edge1735
    i32 24, label %for.end53.sw.bb82_crit_edge
    i32 32, label %for.end53.sw.bb82_crit_edge1736
  ]

for.end53.sw.bb82_crit_edge1736:                  ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82

for.end53.sw.bb82_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb82

for.end53.sw.bb54_crit_edge1735:                  ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb54

for.end53.sw.bb54_crit_edge:                      ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb54

for.cond111.preheader:                            ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119 = getelementptr i32, ptr %43, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119, i32 269550083) #5, !srcloc !85
  %44 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.1 = getelementptr i32, ptr %45, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.1, i32 269550083) #5, !srcloc !85
  %46 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.2 = getelementptr i32, ptr %47, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.2, i32 269550091) #5, !srcloc !85
  %48 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.3 = getelementptr i32, ptr %49, i32 3344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.3, i32 269582851) #5, !srcloc !85
  %50 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.4 = getelementptr i32, ptr %51, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.4, i32 269550083) #5, !srcloc !85
  %52 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.5 = getelementptr i32, ptr %53, i32 3352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.5, i32 269550083) #5, !srcloc !85
  %54 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.6 = getelementptr i32, ptr %55, i32 3356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.6, i32 272732680) #5, !srcloc !85
  %56 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %PRAMIN, align 4
  %arrayidx119.7 = getelementptr i32, ptr %57, i32 3376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx119.7, i32 269582851) #5, !srcloc !85
  %58 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %PGRAPH, align 4
  %arrayidx132 = getelementptr i32, ptr %59, i32 426
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx132, i32 4369) #5, !srcloc !85
  br label %sw.epilog

sw.bb54:                                          ; preds = %for.end53.sw.bb54_crit_edge, %for.end53.sw.bb54_crit_edge1735
  %60 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63 = getelementptr i32, ptr %61, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63, i32 269550080) #5, !srcloc !85
  %62 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.1 = getelementptr i32, ptr %63, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.1, i32 269550080) #5, !srcloc !85
  %64 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.2 = getelementptr i32, ptr %65, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.2, i32 269550088) #5, !srcloc !85
  %66 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.3 = getelementptr i32, ptr %67, i32 3344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.3, i32 269582848) #5, !srcloc !85
  %68 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.4 = getelementptr i32, ptr %69, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.4, i32 269550080) #5, !srcloc !85
  %70 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.5 = getelementptr i32, ptr %71, i32 3352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.5, i32 269550080) #5, !srcloc !85
  %72 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.6 = getelementptr i32, ptr %73, i32 3356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.6, i32 272732680) #5, !srcloc !85
  %74 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %PRAMIN, align 4
  %arrayidx63.7 = getelementptr i32, ptr %75, i32 3376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx63.7, i32 269582848) #5, !srcloc !85
  %76 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %PGRAPH, align 4
  %arrayidx76 = getelementptr i32, ptr %77, i32 426
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx76, i32 8738) #5, !srcloc !85
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %78 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %FIFO, align 4
  %arrayidx81 = getelementptr i32, ptr %79, i32 14336
  br label %sw.epilog

sw.bb82:                                          ; preds = %for.end53.sw.bb82_crit_edge, %for.end53.sw.bb82_crit_edge1736
  %80 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91 = getelementptr i32, ptr %81, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91, i32 269550081) #5, !srcloc !85
  %82 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.1 = getelementptr i32, ptr %83, i32 3336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.1, i32 269550081) #5, !srcloc !85
  %84 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.2 = getelementptr i32, ptr %85, i32 3340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.2, i32 269550089) #5, !srcloc !85
  %86 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.3 = getelementptr i32, ptr %87, i32 3344
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.3, i32 269582849) #5, !srcloc !85
  %88 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.4 = getelementptr i32, ptr %89, i32 3348
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.4, i32 269550081) #5, !srcloc !85
  %90 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.5 = getelementptr i32, ptr %91, i32 3352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.5, i32 269550081) #5, !srcloc !85
  %92 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.6 = getelementptr i32, ptr %93, i32 3356
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.6, i32 272732680) #5, !srcloc !85
  %94 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %PRAMIN, align 4
  %arrayidx91.7 = getelementptr i32, ptr %95, i32 3376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx91.7, i32 269582849) #5, !srcloc !85
  %96 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %PGRAPH, align 4
  %arrayidx104 = getelementptr i32, ptr %97, i32 426
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx104, i32 13107) #5, !srcloc !85
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb82, %sw.bb54, %for.cond111.preheader
  %.sink = phi ptr [ null, %for.cond111.preheader ], [ null, %sw.bb82 ], [ %arrayidx81, %sw.bb54 ]
  %Tri03137 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  %98 = ptrtoint ptr %Tri03137 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %.sink, ptr %Tri03137, align 4
  br label %for.body140

for.body140:                                      ; preds = %for.body140.for.body140_crit_edge, %sw.epilog
  %i.111689 = phi i32 [ 0, %sw.epilog ], [ %inc145, %for.body140.for.body140_crit_edge ]
  %shl = shl i32 %i.111689, 12
  %or = or i32 %shl, 3
  %99 = ptrtoint ptr %PRAMIN to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %PRAMIN, align 4
  %add = add nuw nsw i32 %i.111689, 1282
  %arrayidx142 = getelementptr i32, ptr %100, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx142, i32 %or) #5, !srcloc !85
  %inc145 = add nuw nsw i32 %i.111689, 1
  %exitcond1729.not = icmp eq i32 %inc145, 2048
  br i1 %exitcond1729.not, label %for.end146, label %for.body140.for.body140_crit_edge

for.body140.for.body140_crit_edge:                ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body140

for.end146:                                       ; preds = %for.body140
  call void @__sanitizer_cov_trace_pc() #7
  %offset0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %101 = ptrtoint ptr %offset0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %offset0, align 4
  %103 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %PGRAPH, align 4
  %add.ptr148 = getelementptr i8, ptr %104, i32 1584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %102) #5, !srcloc !85
  %offset1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %105 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %offset1, align 4
  %107 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %PGRAPH, align 4
  %add.ptr150 = getelementptr i8, ptr %108, i32 1588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %106) #5, !srcloc !85
  %offset2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %109 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset2, align 4
  %111 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %PGRAPH, align 4
  %add.ptr152 = getelementptr i8, ptr %112, i32 1592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %110) #5, !srcloc !85
  %offset3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %113 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %offset3, align 4
  %115 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %PGRAPH, align 4
  %add.ptr154 = getelementptr i8, ptr %116, i32 1596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 %114) #5, !srcloc !85
  %pitch0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %117 = ptrtoint ptr %pitch0 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pitch0, align 4
  %119 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %PGRAPH, align 4
  %add.ptr156 = getelementptr i8, ptr %120, i32 1616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %118) #5, !srcloc !85
  %pitch1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %121 = ptrtoint ptr %pitch1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pitch1, align 4
  %123 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %PGRAPH, align 4
  %add.ptr158 = getelementptr i8, ptr %124, i32 1620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 %122) #5, !srcloc !85
  %pitch2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %125 = ptrtoint ptr %pitch2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %pitch2, align 4
  %127 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %PGRAPH, align 4
  %add.ptr160 = getelementptr i8, ptr %128, i32 1624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 %126) #5, !srcloc !85
  %pitch3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %129 = ptrtoint ptr %pitch3 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %pitch3, align 4
  %131 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %PGRAPH, align 4
  %add.ptr162 = getelementptr i8, ptr %132, i32 1628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr162, i32 %130) #5, !srcloc !85
  br label %sw.epilog996

sw.bb163:                                         ; preds = %entry
  %config164 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %133 = ptrtoint ptr %config164 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %config164, align 4
  %PFB165 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %135 = ptrtoint ptr %PFB165 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %PFB165, align 4
  %add.ptr166 = getelementptr i8, ptr %136, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %134) #5, !srcloc !85
  %PFIFO172 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 19
  br label %for.body169

for.cond180.preheader:                            ; preds = %for.body169
  %PRAMIN185 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 24
  br label %for.body182

for.body169:                                      ; preds = %for.body169.for.body169_crit_edge, %sw.bb163
  %i.121672 = phi i32 [ 0, %sw.bb163 ], [ %inc178, %for.body169.for.body169_crit_edge ]
  %arrayidx170 = getelementptr [19 x [2 x i32]], ptr @nv4TablePFIFO, i32 0, i32 %i.121672
  %arrayidx171 = getelementptr [19 x [2 x i32]], ptr @nv4TablePFIFO, i32 0, i32 %i.121672, i32 1
  %137 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx171, align 4
  %139 = ptrtoint ptr %PFIFO172 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %PFIFO172, align 4
  %141 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx170, align 4
  %arrayidx175 = getelementptr i32, ptr %140, i32 %142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx175, i32 %138) #5, !srcloc !85
  %inc178 = add nuw nsw i32 %i.121672, 1
  %exitcond1712.not = icmp eq i32 %inc178, 19
  br i1 %exitcond1712.not, label %for.cond180.preheader, label %for.body169.for.body169_crit_edge

for.body169.for.body169_crit_edge:                ; preds = %for.body169
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body169

for.cond193.preheader:                            ; preds = %for.body182
  %PGRAPH198 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  br label %for.body195

for.body182:                                      ; preds = %for.body182.for.body182_crit_edge, %for.cond180.preheader
  %i.131673 = phi i32 [ 0, %for.cond180.preheader ], [ %inc191, %for.body182.for.body182_crit_edge ]
  %arrayidx183 = getelementptr [77 x [2 x i32]], ptr @nv4TablePRAMIN, i32 0, i32 %i.131673
  %arrayidx184 = getelementptr [77 x [2 x i32]], ptr @nv4TablePRAMIN, i32 0, i32 %i.131673, i32 1
  %143 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx184, align 4
  %145 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %PRAMIN185, align 4
  %147 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx183, align 4
  %arrayidx188 = getelementptr i32, ptr %146, i32 %148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx188, i32 %144) #5, !srcloc !85
  %inc191 = add nuw nsw i32 %i.131673, 1
  %exitcond1713.not = icmp eq i32 %inc191, 77
  br i1 %exitcond1713.not, label %for.cond193.preheader, label %for.body182.for.body182_crit_edge

for.body182.for.body182_crit_edge:                ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body182

for.body195:                                      ; preds = %for.body195.for.body195_crit_edge, %for.cond193.preheader
  %i.141674 = phi i32 [ 0, %for.cond193.preheader ], [ %inc204, %for.body195.for.body195_crit_edge ]
  %arrayidx196 = getelementptr [55 x [2 x i32]], ptr @nv4TablePGRAPH, i32 0, i32 %i.141674
  %arrayidx197 = getelementptr [55 x [2 x i32]], ptr @nv4TablePGRAPH, i32 0, i32 %i.141674, i32 1
  %149 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx197, align 4
  %151 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %PGRAPH198, align 4
  %153 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx196, align 4
  %arrayidx201 = getelementptr i32, ptr %152, i32 %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx201, i32 %150) #5, !srcloc !85
  %inc204 = add nuw nsw i32 %i.141674, 1
  %exitcond1714.not = icmp eq i32 %inc204, 55
  br i1 %exitcond1714.not, label %for.end205, label %for.body195.for.body195_crit_edge

for.body195.for.body195_crit_edge:                ; preds = %for.body195
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body195

for.end205:                                       ; preds = %for.body195
  %155 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %state, align 4
  %157 = zext i32 %156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %156, label %for.cond297.preheader [
    i32 15, label %for.cond208.preheader
    i32 16, label %for.cond238.preheader
    i32 24, label %for.end205.sw.bb267_crit_edge
    i32 32, label %for.end205.sw.bb267_crit_edge1737
  ]

for.end205.sw.bb267_crit_edge1737:                ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb267

for.end205.sw.bb267_crit_edge:                    ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb267

for.cond238.preheader:                            ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  %158 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246 = getelementptr i32, ptr %159, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246, i32 3074) #5, !srcloc !85
  %160 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.1 = getelementptr i32, ptr %161, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.1, i32 3074) #5, !srcloc !85
  %162 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.2 = getelementptr i32, ptr %163, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.2, i32 2818) #5, !srcloc !85
  %164 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.3 = getelementptr i32, ptr %165, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.3, i32 3074) #5, !srcloc !85
  %166 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.4 = getelementptr i32, ptr %167, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.4, i32 3074) #5, !srcloc !85
  %168 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.5 = getelementptr i32, ptr %169, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.5, i32 3074) #5, !srcloc !85
  %170 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.6 = getelementptr i32, ptr %171, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.6, i32 3074) #5, !srcloc !85
  %172 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.7 = getelementptr i32, ptr %173, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.7, i32 3074) #5, !srcloc !85
  %174 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.8 = getelementptr i32, ptr %175, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.8, i32 1794) #5, !srcloc !85
  %176 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.9 = getelementptr i32, ptr %177, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.9, i32 1794) #5, !srcloc !85
  %178 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx246.10 = getelementptr i32, ptr %179, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx246.10, i32 3074) #5, !srcloc !85
  %180 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx259 = getelementptr i32, ptr %181, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx259, i32 5596501) #5, !srcloc !85
  %182 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx259.1 = getelementptr i32, ptr %183, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx259.1, i32 20674) #5, !srcloc !85
  %184 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx259.2 = getelementptr i32, ptr %185, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx259.2, i32 202050315) #5, !srcloc !85
  %FIFO264 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %186 = ptrtoint ptr %FIFO264 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %FIFO264, align 4
  %arrayidx265 = getelementptr i32, ptr %187, i32 14336
  br label %sw.epilog324

for.cond208.preheader:                            ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  %188 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216 = getelementptr i32, ptr %189, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216, i32 2306) #5, !srcloc !85
  %190 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.1 = getelementptr i32, ptr %191, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.1, i32 2306) #5, !srcloc !85
  %192 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.2 = getelementptr i32, ptr %193, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.2, i32 2050) #5, !srcloc !85
  %194 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.3 = getelementptr i32, ptr %195, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.3, i32 2306) #5, !srcloc !85
  %196 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.4 = getelementptr i32, ptr %197, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.4, i32 2306) #5, !srcloc !85
  %198 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.5 = getelementptr i32, ptr %199, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.5, i32 2306) #5, !srcloc !85
  %200 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.6 = getelementptr i32, ptr %201, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.6, i32 2306) #5, !srcloc !85
  %202 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.7 = getelementptr i32, ptr %203, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.7, i32 2306) #5, !srcloc !85
  %204 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.8 = getelementptr i32, ptr %205, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.8, i32 1794) #5, !srcloc !85
  %206 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.9 = getelementptr i32, ptr %207, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.9, i32 1794) #5, !srcloc !85
  %208 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx216.10 = getelementptr i32, ptr %209, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx216.10, i32 2306) #5, !srcloc !85
  %210 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx229 = getelementptr i32, ptr %211, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx229, i32 2253346) #5, !srcloc !85
  %212 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx229.1 = getelementptr i32, ptr %213, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx229.1, i32 8305) #5, !srcloc !85
  %214 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx229.2 = getelementptr i32, ptr %215, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx229.2, i32 151521288) #5, !srcloc !85
  %FIFO234 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %216 = ptrtoint ptr %FIFO234 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %FIFO234, align 4
  %arrayidx235 = getelementptr i32, ptr %217, i32 14336
  br label %sw.epilog324

for.cond297.preheader:                            ; preds = %for.end205
  call void @__sanitizer_cov_trace_pc() #7
  %218 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305 = getelementptr i32, ptr %219, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305, i32 770) #5, !srcloc !85
  %220 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.1 = getelementptr i32, ptr %221, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.1, i32 770) #5, !srcloc !85
  %222 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.2 = getelementptr i32, ptr %223, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.2, i32 514) #5, !srcloc !85
  %224 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.3 = getelementptr i32, ptr %225, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.3, i32 770) #5, !srcloc !85
  %226 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.4 = getelementptr i32, ptr %227, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.4, i32 770) #5, !srcloc !85
  %228 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.5 = getelementptr i32, ptr %229, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.5, i32 770) #5, !srcloc !85
  %230 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.6 = getelementptr i32, ptr %231, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.6, i32 770) #5, !srcloc !85
  %232 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.7 = getelementptr i32, ptr %233, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.7, i32 770) #5, !srcloc !85
  %234 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.8 = getelementptr i32, ptr %235, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.8, i32 0) #5, !srcloc !85
  %236 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.9 = getelementptr i32, ptr %237, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.9, i32 0) #5, !srcloc !85
  %238 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx305.10 = getelementptr i32, ptr %239, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx305.10, i32 770) #5, !srcloc !85
  %240 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx318 = getelementptr i32, ptr %241, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx318, i32 1118481) #5, !srcloc !85
  %242 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx318.1 = getelementptr i32, ptr %243, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx318.1, i32 4112) #5, !srcloc !85
  %244 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx318.2 = getelementptr i32, ptr %245, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx318.2, i32 50463234) #5, !srcloc !85
  br label %sw.epilog324

sw.bb267:                                         ; preds = %for.end205.sw.bb267_crit_edge, %for.end205.sw.bb267_crit_edge1737
  %246 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276 = getelementptr i32, ptr %247, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276, i32 3586) #5, !srcloc !85
  %248 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.1 = getelementptr i32, ptr %249, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.1, i32 3586) #5, !srcloc !85
  %250 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.2 = getelementptr i32, ptr %251, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.2, i32 3330) #5, !srcloc !85
  %252 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.3 = getelementptr i32, ptr %253, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.3, i32 3586) #5, !srcloc !85
  %254 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.4 = getelementptr i32, ptr %255, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.4, i32 3586) #5, !srcloc !85
  %256 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.5 = getelementptr i32, ptr %257, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.5, i32 3586) #5, !srcloc !85
  %258 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.6 = getelementptr i32, ptr %259, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.6, i32 3586) #5, !srcloc !85
  %260 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.7 = getelementptr i32, ptr %261, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.7, i32 3586) #5, !srcloc !85
  %262 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.8 = getelementptr i32, ptr %263, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.8, i32 3586) #5, !srcloc !85
  %264 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.9 = getelementptr i32, ptr %265, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.9, i32 3586) #5, !srcloc !85
  %266 = ptrtoint ptr %PRAMIN185 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %PRAMIN185, align 4
  %arrayidx276.10 = getelementptr i32, ptr %267, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx276.10, i32 3586) #5, !srcloc !85
  %268 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx289 = getelementptr i32, ptr %269, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx289, i32 7853943) #5, !srcloc !85
  %270 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx289.1 = getelementptr i32, ptr %271, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx289.1, i32 28901) #5, !srcloc !85
  %272 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %PGRAPH198, align 4
  %arrayidx289.2 = getelementptr i32, ptr %273, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx289.2, i32 235736333) #5, !srcloc !85
  br label %sw.epilog324

sw.epilog324:                                     ; preds = %sw.bb267, %for.cond297.preheader, %for.cond208.preheader, %for.cond238.preheader
  %.sink1731 = phi ptr [ null, %for.cond297.preheader ], [ null, %sw.bb267 ], [ %arrayidx265, %for.cond238.preheader ], [ %arrayidx235, %for.cond208.preheader ]
  %Tri03323 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  %274 = ptrtoint ptr %Tri03323 to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %.sink1731, ptr %Tri03323, align 4
  %offset0325 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %275 = ptrtoint ptr %offset0325 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %offset0325, align 4
  %277 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr327 = getelementptr i8, ptr %278, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr327, i32 %276) #5, !srcloc !85
  %offset1328 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %279 = ptrtoint ptr %offset1328 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %offset1328, align 4
  %281 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr330 = getelementptr i8, ptr %282, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr330, i32 %280) #5, !srcloc !85
  %offset2331 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %283 = ptrtoint ptr %offset2331 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %offset2331, align 4
  %285 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr333 = getelementptr i8, ptr %286, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr333, i32 %284) #5, !srcloc !85
  %offset3334 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %287 = ptrtoint ptr %offset3334 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %offset3334, align 4
  %289 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr336 = getelementptr i8, ptr %290, i32 1612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr336, i32 %288) #5, !srcloc !85
  %pitch0337 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %291 = ptrtoint ptr %pitch0337 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %pitch0337, align 4
  %293 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr339 = getelementptr i8, ptr %294, i32 1648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr339, i32 %292) #5, !srcloc !85
  %pitch1340 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %295 = ptrtoint ptr %pitch1340 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %pitch1340, align 4
  %297 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr342 = getelementptr i8, ptr %298, i32 1652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr342, i32 %296) #5, !srcloc !85
  %pitch2343 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %299 = ptrtoint ptr %pitch2343 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %pitch2343, align 4
  %301 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr345 = getelementptr i8, ptr %302, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr345, i32 %300) #5, !srcloc !85
  %pitch3346 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %303 = ptrtoint ptr %pitch3346 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %pitch3346, align 4
  %305 = ptrtoint ptr %PGRAPH198 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %PGRAPH198, align 4
  %add.ptr348 = getelementptr i8, ptr %306, i32 1660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr348, i32 %304) #5, !srcloc !85
  br label %sw.epilog996

sw.bb349:                                         ; preds = %entry.sw.bb349_crit_edge, %entry.sw.bb349_crit_edge1733, %entry.sw.bb349_crit_edge1734
  %twoHeads = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 14
  %307 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %tobool.not = icmp eq i32 %308, 0
  br i1 %tobool.not, label %sw.bb349.if.end_crit_edge, label %do.body

sw.bb349.if.end_crit_edge:                        ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %sw.bb349
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %309 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %PCIO, align 4
  %add.ptr350 = getelementptr i8, ptr %310, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr350, i8 68) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  tail call void @arm_heavy_mb() #5
  %crtcOwner = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %311 = ptrtoint ptr %crtcOwner to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %crtcOwner, align 4
  %conv = trunc i32 %312 to i8
  %313 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %PCIO, align 4
  %add.ptr355 = getelementptr i8, ptr %314, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr355, i8 %conv) #5, !srcloc !87
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 40
  %315 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %LockUnlock, align 4
  tail call void %316(ptr noundef %chip, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %do.body, %sw.bb349.if.end_crit_edge
  %PFIFO362 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 19
  br label %for.body359

for.cond370.preheader:                            ; preds = %for.body359
  %PRAMIN376 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 24
  br label %for.body373

for.body359:                                      ; preds = %for.body359.for.body359_crit_edge, %if.end
  %i.231650 = phi i32 [ 0, %if.end ], [ %inc368, %for.body359.for.body359_crit_edge ]
  %arrayidx360 = getelementptr [19 x [2 x i32]], ptr @nv10TablePFIFO, i32 0, i32 %i.231650
  %arrayidx361 = getelementptr [19 x [2 x i32]], ptr @nv10TablePFIFO, i32 0, i32 %i.231650, i32 1
  %317 = ptrtoint ptr %arrayidx361 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %arrayidx361, align 4
  %319 = ptrtoint ptr %PFIFO362 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %PFIFO362, align 4
  %321 = ptrtoint ptr %arrayidx360 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %arrayidx360, align 4
  %arrayidx365 = getelementptr i32, ptr %320, i32 %322
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx365, i32 %318) #5, !srcloc !85
  %inc368 = add nuw nsw i32 %i.231650, 1
  %exitcond.not = icmp eq i32 %inc368, 19
  br i1 %exitcond.not, label %for.cond370.preheader, label %for.body359.for.body359_crit_edge

for.body359.for.body359_crit_edge:                ; preds = %for.body359
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body359

for.cond384.preheader:                            ; preds = %for.body373
  %PGRAPH390 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  br label %for.body387

for.body373:                                      ; preds = %for.body373.for.body373_crit_edge, %for.cond370.preheader
  %i.241651 = phi i32 [ 0, %for.cond370.preheader ], [ %inc382, %for.body373.for.body373_crit_edge ]
  %arrayidx374 = getelementptr [82 x [2 x i32]], ptr @nv10TablePRAMIN, i32 0, i32 %i.241651
  %arrayidx375 = getelementptr [82 x [2 x i32]], ptr @nv10TablePRAMIN, i32 0, i32 %i.241651, i32 1
  %323 = ptrtoint ptr %arrayidx375 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %arrayidx375, align 4
  %325 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %PRAMIN376, align 4
  %327 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %arrayidx374, align 4
  %arrayidx379 = getelementptr i32, ptr %326, i32 %328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx379, i32 %324) #5, !srcloc !85
  %inc382 = add nuw nsw i32 %i.241651, 1
  %exitcond1691.not = icmp eq i32 %inc382, 82
  br i1 %exitcond1691.not, label %for.cond384.preheader, label %for.body373.for.body373_crit_edge

for.body373.for.body373_crit_edge:                ; preds = %for.body373
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body373

for.body387:                                      ; preds = %for.body387.for.body387_crit_edge, %for.cond384.preheader
  %i.251652 = phi i32 [ 0, %for.cond384.preheader ], [ %inc396, %for.body387.for.body387_crit_edge ]
  %arrayidx388 = getelementptr [70 x [2 x i32]], ptr @nv10TablePGRAPH, i32 0, i32 %i.251652
  %arrayidx389 = getelementptr [70 x [2 x i32]], ptr @nv10TablePGRAPH, i32 0, i32 %i.251652, i32 1
  %329 = ptrtoint ptr %arrayidx389 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %arrayidx389, align 4
  %331 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %PGRAPH390, align 4
  %333 = ptrtoint ptr %arrayidx388 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %arrayidx388, align 4
  %arrayidx393 = getelementptr i32, ptr %332, i32 %334
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx393, i32 %330) #5, !srcloc !85
  %inc396 = add nuw nsw i32 %i.251652, 1
  %exitcond1692.not = icmp eq i32 %inc396, 70
  br i1 %exitcond1692.not, label %for.end397, label %for.body387.for.body387_crit_edge

for.body387.for.body387_crit_edge:                ; preds = %for.body387
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body387

for.end397:                                       ; preds = %for.body387
  %335 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %state, align 4
  %337 = zext i32 %336 to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %336, label %for.cond495.preheader [
    i32 15, label %for.cond400.preheader
    i32 16, label %for.cond432.preheader
    i32 24, label %for.end397.sw.bb463_crit_edge
    i32 32, label %for.end397.sw.bb463_crit_edge1738
  ]

for.end397.sw.bb463_crit_edge1738:                ; preds = %for.end397
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb463

for.end397.sw.bb463_crit_edge:                    ; preds = %for.end397
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb463

for.cond432.preheader:                            ; preds = %for.end397
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441 = getelementptr i32, ptr %339, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441, i32 3074) #5, !srcloc !85
  %340 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.1 = getelementptr i32, ptr %341, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.1, i32 3074) #5, !srcloc !85
  %342 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.2 = getelementptr i32, ptr %343, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.2, i32 2818) #5, !srcloc !85
  %344 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.3 = getelementptr i32, ptr %345, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.3, i32 3074) #5, !srcloc !85
  %346 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.4 = getelementptr i32, ptr %347, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.4, i32 3074) #5, !srcloc !85
  %348 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.5 = getelementptr i32, ptr %349, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.5, i32 3074) #5, !srcloc !85
  %350 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.6 = getelementptr i32, ptr %351, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.6, i32 3074) #5, !srcloc !85
  %352 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.7 = getelementptr i32, ptr %353, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.7, i32 3074) #5, !srcloc !85
  %354 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.8 = getelementptr i32, ptr %355, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.8, i32 3074) #5, !srcloc !85
  %356 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.9 = getelementptr i32, ptr %357, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.9, i32 3074) #5, !srcloc !85
  %358 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.10 = getelementptr i32, ptr %359, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.10, i32 3074) #5, !srcloc !85
  %360 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx441.11 = getelementptr i32, ptr %361, i32 1345
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx441.11, i32 3074) #5, !srcloc !85
  %362 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx455 = getelementptr i32, ptr %363, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx455, i32 5596501) #5, !srcloc !85
  %364 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx455.1 = getelementptr i32, ptr %365, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx455.1, i32 20674) #5, !srcloc !85
  %366 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx455.2 = getelementptr i32, ptr %367, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx455.2, i32 723724) #5, !srcloc !85
  %FIFO460 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %368 = ptrtoint ptr %FIFO460 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %FIFO460, align 4
  %arrayidx461 = getelementptr i32, ptr %369, i32 14336
  br label %sw.epilog524

for.cond400.preheader:                            ; preds = %for.end397
  call void @__sanitizer_cov_trace_pc() #7
  %370 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409 = getelementptr i32, ptr %371, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409, i32 2306) #5, !srcloc !85
  %372 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.1 = getelementptr i32, ptr %373, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.1, i32 2306) #5, !srcloc !85
  %374 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.2 = getelementptr i32, ptr %375, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.2, i32 2050) #5, !srcloc !85
  %376 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.3 = getelementptr i32, ptr %377, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.3, i32 2306) #5, !srcloc !85
  %378 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.4 = getelementptr i32, ptr %379, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.4, i32 2306) #5, !srcloc !85
  %380 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.5 = getelementptr i32, ptr %381, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.5, i32 2306) #5, !srcloc !85
  %382 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.6 = getelementptr i32, ptr %383, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.6, i32 2306) #5, !srcloc !85
  %384 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.7 = getelementptr i32, ptr %385, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.7, i32 2306) #5, !srcloc !85
  %386 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.8 = getelementptr i32, ptr %387, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.8, i32 2306) #5, !srcloc !85
  %388 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.9 = getelementptr i32, ptr %389, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.9, i32 2306) #5, !srcloc !85
  %390 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.10 = getelementptr i32, ptr %391, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.10, i32 2306) #5, !srcloc !85
  %392 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx409.11 = getelementptr i32, ptr %393, i32 1345
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx409.11, i32 2306) #5, !srcloc !85
  %394 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx423 = getelementptr i32, ptr %395, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx423, i32 2253346) #5, !srcloc !85
  %396 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx423.1 = getelementptr i32, ptr %397, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx423.1, i32 8305) #5, !srcloc !85
  %398 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx423.2 = getelementptr i32, ptr %399, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx423.2, i32 151521288) #5, !srcloc !85
  %FIFO428 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %400 = ptrtoint ptr %FIFO428 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %FIFO428, align 4
  %arrayidx429 = getelementptr i32, ptr %401, i32 14336
  br label %sw.epilog524

for.cond495.preheader:                            ; preds = %for.end397
  call void @__sanitizer_cov_trace_pc() #7
  %402 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504 = getelementptr i32, ptr %403, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504, i32 770) #5, !srcloc !85
  %404 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.1 = getelementptr i32, ptr %405, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.1, i32 770) #5, !srcloc !85
  %406 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.2 = getelementptr i32, ptr %407, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.2, i32 514) #5, !srcloc !85
  %408 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.3 = getelementptr i32, ptr %409, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.3, i32 770) #5, !srcloc !85
  %410 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.4 = getelementptr i32, ptr %411, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.4, i32 770) #5, !srcloc !85
  %412 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.5 = getelementptr i32, ptr %413, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.5, i32 770) #5, !srcloc !85
  %414 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.6 = getelementptr i32, ptr %415, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.6, i32 770) #5, !srcloc !85
  %416 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.7 = getelementptr i32, ptr %417, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.7, i32 770) #5, !srcloc !85
  %418 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.8 = getelementptr i32, ptr %419, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.8, i32 0) #5, !srcloc !85
  %420 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.9 = getelementptr i32, ptr %421, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.9, i32 0) #5, !srcloc !85
  %422 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.10 = getelementptr i32, ptr %423, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.10, i32 0) #5, !srcloc !85
  %424 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx504.11 = getelementptr i32, ptr %425, i32 1345
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx504.11, i32 770) #5, !srcloc !85
  %426 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx518 = getelementptr i32, ptr %427, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx518, i32 1118481) #5, !srcloc !85
  %428 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx518.1 = getelementptr i32, ptr %429, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx518.1, i32 4112) #5, !srcloc !85
  %430 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx518.2 = getelementptr i32, ptr %431, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx518.2, i32 50463234) #5, !srcloc !85
  br label %sw.epilog524

sw.bb463:                                         ; preds = %for.end397.sw.bb463_crit_edge, %for.end397.sw.bb463_crit_edge1738
  %432 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473 = getelementptr i32, ptr %433, i32 1289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473, i32 3586) #5, !srcloc !85
  %434 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.1 = getelementptr i32, ptr %435, i32 1293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.1, i32 3586) #5, !srcloc !85
  %436 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.2 = getelementptr i32, ptr %437, i32 1297
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.2, i32 3330) #5, !srcloc !85
  %438 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.3 = getelementptr i32, ptr %439, i32 1301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.3, i32 3586) #5, !srcloc !85
  %440 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.4 = getelementptr i32, ptr %441, i32 1305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.4, i32 3586) #5, !srcloc !85
  %442 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.5 = getelementptr i32, ptr %443, i32 1309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.5, i32 3586) #5, !srcloc !85
  %444 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.6 = getelementptr i32, ptr %445, i32 1325
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.6, i32 3586) #5, !srcloc !85
  %446 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.7 = getelementptr i32, ptr %447, i32 1326
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.7, i32 3586) #5, !srcloc !85
  %448 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.8 = getelementptr i32, ptr %449, i32 1333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.8, i32 3586) #5, !srcloc !85
  %450 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.9 = getelementptr i32, ptr %451, i32 1337
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.9, i32 3586) #5, !srcloc !85
  %452 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.10 = getelementptr i32, ptr %453, i32 1341
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.10, i32 3586) #5, !srcloc !85
  %454 = ptrtoint ptr %PRAMIN376 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %PRAMIN376, align 4
  %arrayidx473.11 = getelementptr i32, ptr %455, i32 1345
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx473.11, i32 3586) #5, !srcloc !85
  %456 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx487 = getelementptr i32, ptr %457, i32 457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx487, i32 7853943) #5, !srcloc !85
  %458 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx487.1 = getelementptr i32, ptr %459, i32 390
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx487.1, i32 28901) #5, !srcloc !85
  %460 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %PGRAPH390, align 4
  %arrayidx487.2 = getelementptr i32, ptr %461, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx487.2, i32 235736333) #5, !srcloc !85
  br label %sw.epilog524

sw.epilog524:                                     ; preds = %sw.bb463, %for.cond495.preheader, %for.cond400.preheader, %for.cond432.preheader
  %.sink1732 = phi ptr [ null, %for.cond495.preheader ], [ null, %sw.bb463 ], [ %arrayidx461, %for.cond432.preheader ], [ %arrayidx429, %for.cond400.preheader ]
  %Tri03523 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  %462 = ptrtoint ptr %Tri03523 to i32
  call void @__asan_store4_noabort(i32 %462)
  store ptr %.sink1732, ptr %Tri03523, align 4
  %463 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %chip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %464)
  %cmp526 = icmp eq i32 %464, 16
  %offset0529 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %465 = ptrtoint ptr %offset0529 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %offset0529, align 4
  %467 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %PGRAPH390, align 4
  br i1 %cmp526, label %if.then528, label %if.else

if.then528:                                       ; preds = %sw.epilog524
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr531 = getelementptr i8, ptr %468, i32 1600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr531, i32 %466) #5, !srcloc !85
  %offset1532 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %469 = ptrtoint ptr %offset1532 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %offset1532, align 4
  %471 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr534 = getelementptr i8, ptr %472, i32 1604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr534, i32 %470) #5, !srcloc !85
  %offset2535 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %473 = ptrtoint ptr %offset2535 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %offset2535, align 4
  %475 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr537 = getelementptr i8, ptr %476, i32 1608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr537, i32 %474) #5, !srcloc !85
  %offset3538 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %477 = ptrtoint ptr %offset3538 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %offset3538, align 4
  %479 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr540 = getelementptr i8, ptr %480, i32 1612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr540, i32 %478) #5, !srcloc !85
  %pitch0541 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %481 = ptrtoint ptr %pitch0541 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %pitch0541, align 4
  %483 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr543 = getelementptr i8, ptr %484, i32 1648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr543, i32 %482) #5, !srcloc !85
  %pitch1544 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %485 = ptrtoint ptr %pitch1544 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load i32, ptr %pitch1544, align 4
  %487 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr546 = getelementptr i8, ptr %488, i32 1652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr546, i32 %486) #5, !srcloc !85
  %pitch2547 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %489 = ptrtoint ptr %pitch2547 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %pitch2547, align 4
  %491 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr549 = getelementptr i8, ptr %492, i32 1656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr549, i32 %490) #5, !srcloc !85
  %pitch3550 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %493 = ptrtoint ptr %pitch3550 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load i32, ptr %pitch3550, align 4
  %495 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr552 = getelementptr i8, ptr %496, i32 1660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr552, i32 %494) #5, !srcloc !85
  %497 = ptrtoint ptr %pitch3550 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %pitch3550, align 4
  %499 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr555 = getelementptr i8, ptr %500, i32 1664
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr555, i32 %498) #5, !srcloc !85
  br label %if.end595

if.else:                                          ; preds = %sw.epilog524
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr558 = getelementptr i8, ptr %468, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr558, i32 %466) #5, !srcloc !85
  %offset1559 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %501 = ptrtoint ptr %offset1559 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %offset1559, align 4
  %503 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr561 = getelementptr i8, ptr %504, i32 2084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr561, i32 %502) #5, !srcloc !85
  %offset2562 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %505 = ptrtoint ptr %offset2562 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %offset2562, align 4
  %507 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr564 = getelementptr i8, ptr %508, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr564, i32 %506) #5, !srcloc !85
  %offset3565 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %509 = ptrtoint ptr %offset3565 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %offset3565, align 4
  %511 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr567 = getelementptr i8, ptr %512, i32 2092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr567, i32 %510) #5, !srcloc !85
  %pitch0568 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %513 = ptrtoint ptr %pitch0568 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %pitch0568, align 4
  %515 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr570 = getelementptr i8, ptr %516, i32 2128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr570, i32 %514) #5, !srcloc !85
  %pitch1571 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %517 = ptrtoint ptr %pitch1571 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %pitch1571, align 4
  %519 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr573 = getelementptr i8, ptr %520, i32 2132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr573, i32 %518) #5, !srcloc !85
  %pitch2574 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %521 = ptrtoint ptr %pitch2574 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %pitch2574, align 4
  %523 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr576 = getelementptr i8, ptr %524, i32 2136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr576, i32 %522) #5, !srcloc !85
  %pitch3577 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %525 = ptrtoint ptr %pitch3577 to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %pitch3577, align 4
  %527 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr579 = getelementptr i8, ptr %528, i32 2140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr579, i32 %526) #5, !srcloc !85
  %529 = ptrtoint ptr %pitch3577 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %pitch3577, align 4
  %531 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr582 = getelementptr i8, ptr %532, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr582, i32 %530) #5, !srcloc !85
  %533 = ptrtoint ptr %pitch3577 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %pitch3577, align 4
  %535 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr585 = getelementptr i8, ptr %536, i32 2148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr585, i32 %534) #5, !srcloc !85
  %PFB586 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %537 = ptrtoint ptr %PFB586 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %PFB586, align 4
  %add.ptr587 = getelementptr i8, ptr %538, i32 512
  %539 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr587) #5, !srcloc !83
  %540 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr589 = getelementptr i8, ptr %541, i32 2468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr589, i32 %539) #5, !srcloc !85
  %542 = ptrtoint ptr %PFB586 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %PFB586, align 4
  %add.ptr591 = getelementptr i8, ptr %543, i32 516
  %544 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr591) #5, !srcloc !83
  %545 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr594 = getelementptr i8, ptr %546, i32 2472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr594, i32 %544) #5, !srcloc !85
  br label %if.end595

if.end595:                                        ; preds = %if.else, %if.then528
  %547 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %tobool597.not = icmp eq i32 %548, 0
  br i1 %tobool597.not, label %if.end595.if.end602_crit_edge, label %if.then598

if.end595.if.end602_crit_edge:                    ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end602

if.then598:                                       ; preds = %if.end595
  call void @__sanitizer_cov_trace_pc() #7
  %head = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  %549 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %head, align 4
  %PCRTC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 15
  %551 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %PCRTC0, align 4
  %add.ptr599 = getelementptr i8, ptr %552, i32 2144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr599, i32 %550) #5, !srcloc !85
  %head2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 20
  %553 = ptrtoint ptr %head2 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %head2, align 4
  %555 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %PCRTC0, align 4
  %add.ptr601 = getelementptr i8, ptr %556, i32 10336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr601, i32 %554) #5, !srcloc !85
  br label %if.end602

if.end602:                                        ; preds = %if.then598, %if.end595.if.end602_crit_edge
  %PRAMDAC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 32
  %557 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr603 = getelementptr i8, ptr %558, i32 1028
  %559 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr603) #5, !srcloc !83
  %or605 = or i32 %559, 33554432
  %560 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr607 = getelementptr i8, ptr %561, i32 1028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr607, i32 %or605) #5, !srcloc !85
  %562 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %PMC, align 4
  %add.ptr609 = getelementptr i8, ptr %563, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr609, i32 1) #5, !srcloc !85
  %564 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %PMC, align 4
  %add.ptr611 = getelementptr i8, ptr %565, i32 33088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr611, i32 0) #5, !srcloc !85
  %566 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %PMC, align 4
  %add.ptr613 = getelementptr i8, ptr %567, i32 35104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr613, i32 0) #5, !srcloc !85
  %568 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %PMC, align 4
  %add.ptr615 = getelementptr i8, ptr %569, i32 35108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr615, i32 0) #5, !srcloc !85
  %570 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %PMC, align 4
  %add.ptr617 = getelementptr i8, ptr %571, i32 35080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr617, i32 33554431) #5, !srcloc !85
  %572 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %PMC, align 4
  %add.ptr619 = getelementptr i8, ptr %573, i32 35084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr619, i32 33554431) #5, !srcloc !85
  %574 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %PMC, align 4
  %add.ptr621 = getelementptr i8, ptr %575, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr621, i32 0) #5, !srcloc !85
  %PFB622 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %576 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %PFB622, align 4
  %add.ptr623 = getelementptr i8, ptr %577, i32 576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr623, i32 0) #5, !srcloc !85
  %578 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %PFB622, align 4
  %add.ptr625 = getelementptr i8, ptr %579, i32 592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr625, i32 0) #5, !srcloc !85
  %580 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %PFB622, align 4
  %add.ptr627 = getelementptr i8, ptr %581, i32 608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr627, i32 0) #5, !srcloc !85
  %582 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %PFB622, align 4
  %add.ptr629 = getelementptr i8, ptr %583, i32 624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr629, i32 0) #5, !srcloc !85
  %584 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %PFB622, align 4
  %add.ptr631 = getelementptr i8, ptr %585, i32 640
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr631, i32 0) #5, !srcloc !85
  %586 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %PFB622, align 4
  %add.ptr633 = getelementptr i8, ptr %587, i32 656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr633, i32 0) #5, !srcloc !85
  %588 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %PFB622, align 4
  %add.ptr635 = getelementptr i8, ptr %589, i32 672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr635, i32 0) #5, !srcloc !85
  %590 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %PFB622, align 4
  %add.ptr637 = getelementptr i8, ptr %591, i32 688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr637, i32 0) #5, !srcloc !85
  %592 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %PFB622, align 4
  %add.ptr639 = getelementptr i8, ptr %593, i32 576
  %594 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr639) #5, !srcloc !83
  %595 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr642 = getelementptr i8, ptr %596, i32 2816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr642, i32 %594) #5, !srcloc !85
  %597 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %PFB622, align 4
  %add.ptr644 = getelementptr i8, ptr %598, i32 580
  %599 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr644) #5, !srcloc !83
  %600 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr647 = getelementptr i8, ptr %601, i32 2820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr647, i32 %599) #5, !srcloc !85
  %602 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %PFB622, align 4
  %add.ptr649 = getelementptr i8, ptr %603, i32 584
  %604 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr649) #5, !srcloc !83
  %605 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr652 = getelementptr i8, ptr %606, i32 2824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr652, i32 %604) #5, !srcloc !85
  %607 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %PFB622, align 4
  %add.ptr654 = getelementptr i8, ptr %608, i32 588
  %609 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr654) #5, !srcloc !83
  %610 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr657 = getelementptr i8, ptr %611, i32 2828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr657, i32 %609) #5, !srcloc !85
  %612 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %PFB622, align 4
  %add.ptr659 = getelementptr i8, ptr %613, i32 592
  %614 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr659) #5, !srcloc !83
  %615 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr662 = getelementptr i8, ptr %616, i32 2832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr662, i32 %614) #5, !srcloc !85
  %617 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %PFB622, align 4
  %add.ptr664 = getelementptr i8, ptr %618, i32 596
  %619 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr664) #5, !srcloc !83
  %620 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr667 = getelementptr i8, ptr %621, i32 2836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr667, i32 %619) #5, !srcloc !85
  %622 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %PFB622, align 4
  %add.ptr669 = getelementptr i8, ptr %623, i32 600
  %624 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr669) #5, !srcloc !83
  %625 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr672 = getelementptr i8, ptr %626, i32 2840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr672, i32 %624) #5, !srcloc !85
  %627 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %PFB622, align 4
  %add.ptr674 = getelementptr i8, ptr %628, i32 604
  %629 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr674) #5, !srcloc !83
  %630 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr677 = getelementptr i8, ptr %631, i32 2844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr677, i32 %629) #5, !srcloc !85
  %632 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %PFB622, align 4
  %add.ptr679 = getelementptr i8, ptr %633, i32 608
  %634 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr679) #5, !srcloc !83
  %635 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr682 = getelementptr i8, ptr %636, i32 2848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr682, i32 %634) #5, !srcloc !85
  %637 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %PFB622, align 4
  %add.ptr684 = getelementptr i8, ptr %638, i32 612
  %639 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr684) #5, !srcloc !83
  %640 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr687 = getelementptr i8, ptr %641, i32 2852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr687, i32 %639) #5, !srcloc !85
  %642 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %PFB622, align 4
  %add.ptr689 = getelementptr i8, ptr %643, i32 616
  %644 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr689) #5, !srcloc !83
  %645 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr692 = getelementptr i8, ptr %646, i32 2856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr692, i32 %644) #5, !srcloc !85
  %647 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %PFB622, align 4
  %add.ptr694 = getelementptr i8, ptr %648, i32 620
  %649 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr694) #5, !srcloc !83
  %650 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr697 = getelementptr i8, ptr %651, i32 2860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr697, i32 %649) #5, !srcloc !85
  %652 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %PFB622, align 4
  %add.ptr699 = getelementptr i8, ptr %653, i32 624
  %654 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr699) #5, !srcloc !83
  %655 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr702 = getelementptr i8, ptr %656, i32 2864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr702, i32 %654) #5, !srcloc !85
  %657 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %PFB622, align 4
  %add.ptr704 = getelementptr i8, ptr %658, i32 628
  %659 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr704) #5, !srcloc !83
  %660 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr707 = getelementptr i8, ptr %661, i32 2868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr707, i32 %659) #5, !srcloc !85
  %662 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %662)
  %663 = load ptr, ptr %PFB622, align 4
  %add.ptr709 = getelementptr i8, ptr %663, i32 632
  %664 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr709) #5, !srcloc !83
  %665 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr712 = getelementptr i8, ptr %666, i32 2872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr712, i32 %664) #5, !srcloc !85
  %667 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %PFB622, align 4
  %add.ptr714 = getelementptr i8, ptr %668, i32 636
  %669 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr714) #5, !srcloc !83
  %670 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr717 = getelementptr i8, ptr %671, i32 2876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr717, i32 %669) #5, !srcloc !85
  %672 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load ptr, ptr %PFB622, align 4
  %add.ptr719 = getelementptr i8, ptr %673, i32 640
  %674 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr719) #5, !srcloc !83
  %675 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr722 = getelementptr i8, ptr %676, i32 2880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr722, i32 %674) #5, !srcloc !85
  %677 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %PFB622, align 4
  %add.ptr724 = getelementptr i8, ptr %678, i32 644
  %679 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr724) #5, !srcloc !83
  %680 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr727 = getelementptr i8, ptr %681, i32 2884
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr727, i32 %679) #5, !srcloc !85
  %682 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %PFB622, align 4
  %add.ptr729 = getelementptr i8, ptr %683, i32 648
  %684 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr729) #5, !srcloc !83
  %685 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr732 = getelementptr i8, ptr %686, i32 2888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr732, i32 %684) #5, !srcloc !85
  %687 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %PFB622, align 4
  %add.ptr734 = getelementptr i8, ptr %688, i32 652
  %689 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr734) #5, !srcloc !83
  %690 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr737 = getelementptr i8, ptr %691, i32 2892
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr737, i32 %689) #5, !srcloc !85
  %692 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %PFB622, align 4
  %add.ptr739 = getelementptr i8, ptr %693, i32 656
  %694 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr739) #5, !srcloc !83
  %695 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr742 = getelementptr i8, ptr %696, i32 2896
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr742, i32 %694) #5, !srcloc !85
  %697 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %PFB622, align 4
  %add.ptr744 = getelementptr i8, ptr %698, i32 660
  %699 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr744) #5, !srcloc !83
  %700 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr747 = getelementptr i8, ptr %701, i32 2900
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr747, i32 %699) #5, !srcloc !85
  %702 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load ptr, ptr %PFB622, align 4
  %add.ptr749 = getelementptr i8, ptr %703, i32 664
  %704 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr749) #5, !srcloc !83
  %705 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr752 = getelementptr i8, ptr %706, i32 2904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr752, i32 %704) #5, !srcloc !85
  %707 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %PFB622, align 4
  %add.ptr754 = getelementptr i8, ptr %708, i32 668
  %709 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr754) #5, !srcloc !83
  %710 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr757 = getelementptr i8, ptr %711, i32 2908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr757, i32 %709) #5, !srcloc !85
  %712 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %712)
  %713 = load ptr, ptr %PFB622, align 4
  %add.ptr759 = getelementptr i8, ptr %713, i32 672
  %714 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr759) #5, !srcloc !83
  %715 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr762 = getelementptr i8, ptr %716, i32 2912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr762, i32 %714) #5, !srcloc !85
  %717 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %PFB622, align 4
  %add.ptr764 = getelementptr i8, ptr %718, i32 676
  %719 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr764) #5, !srcloc !83
  %720 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr767 = getelementptr i8, ptr %721, i32 2916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr767, i32 %719) #5, !srcloc !85
  %722 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load ptr, ptr %PFB622, align 4
  %add.ptr769 = getelementptr i8, ptr %723, i32 680
  %724 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr769) #5, !srcloc !83
  %725 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr772 = getelementptr i8, ptr %726, i32 2920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr772, i32 %724) #5, !srcloc !85
  %727 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %PFB622, align 4
  %add.ptr774 = getelementptr i8, ptr %728, i32 684
  %729 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr774) #5, !srcloc !83
  %730 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr777 = getelementptr i8, ptr %731, i32 2924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr777, i32 %729) #5, !srcloc !85
  %732 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %732)
  %733 = load ptr, ptr %PFB622, align 4
  %add.ptr779 = getelementptr i8, ptr %733, i32 688
  %734 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr779) #5, !srcloc !83
  %735 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr782 = getelementptr i8, ptr %736, i32 2928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr782, i32 %734) #5, !srcloc !85
  %737 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %PFB622, align 4
  %add.ptr784 = getelementptr i8, ptr %738, i32 692
  %739 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr784) #5, !srcloc !83
  %740 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %740)
  %741 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr787 = getelementptr i8, ptr %741, i32 2932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr787, i32 %739) #5, !srcloc !85
  %742 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %742)
  %743 = load ptr, ptr %PFB622, align 4
  %add.ptr789 = getelementptr i8, ptr %743, i32 696
  %744 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr789) #5, !srcloc !83
  %745 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %745)
  %746 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr792 = getelementptr i8, ptr %746, i32 2936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr792, i32 %744) #5, !srcloc !85
  %747 = ptrtoint ptr %PFB622 to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %PFB622, align 4
  %add.ptr794 = getelementptr i8, ptr %748, i32 700
  %749 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr794) #5, !srcloc !83
  %750 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr797 = getelementptr i8, ptr %751, i32 2940
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr797, i32 %749) #5, !srcloc !85
  %752 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr799 = getelementptr i8, ptr %753, i32 3904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr799, i32 268435456) #5, !srcloc !85
  %754 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %754)
  %755 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr801 = getelementptr i8, ptr %755, i32 3908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr801, i32 0) #5, !srcloc !85
  %756 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %756)
  %757 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr803 = getelementptr i8, ptr %757, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr803, i32 64) #5, !srcloc !85
  %758 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %758)
  %759 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr805 = getelementptr i8, ptr %759, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr805, i32 8) #5, !srcloc !85
  %760 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %760)
  %761 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr807 = getelementptr i8, ptr %761, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr807, i32 512) #5, !srcloc !85
  br label %for.body811

for.body811:                                      ; preds = %for.body811.for.body811_crit_edge, %if.end602
  %i.341661 = phi i32 [ 0, %if.end602 ], [ %inc815, %for.body811.for.body811_crit_edge ]
  %762 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %762)
  %763 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr813 = getelementptr i8, ptr %763, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr813, i32 0) #5, !srcloc !85
  %inc815 = add nuw nsw i32 %i.341661, 1
  %exitcond1701.not = icmp eq i32 %inc815, 48
  br i1 %exitcond1701.not, label %for.end816, label %for.body811.for.body811_crit_edge

for.body811.for.body811_crit_edge:                ; preds = %for.body811
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body811

for.end816:                                       ; preds = %for.body811
  %764 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %764)
  %765 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr818 = getelementptr i8, ptr %765, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr818, i32 64) #5, !srcloc !85
  %766 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %766)
  %767 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr820 = getelementptr i8, ptr %767, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr820, i32 0) #5, !srcloc !85
  %768 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr822 = getelementptr i8, ptr %769, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr822, i32 2048) #5, !srcloc !85
  br label %for.body826

for.body826:                                      ; preds = %for.body826.for.body826_crit_edge, %for.end816
  %i.351662 = phi i32 [ 0, %for.end816 ], [ %inc830, %for.body826.for.body826_crit_edge ]
  %770 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %770)
  %771 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr828 = getelementptr i8, ptr %771, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr828, i32 0) #5, !srcloc !85
  %inc830 = add nuw nsw i32 %i.351662, 1
  %exitcond1702.not = icmp eq i32 %inc830, 256
  br i1 %exitcond1702.not, label %for.end831, label %for.body826.for.body826_crit_edge

for.body826.for.body826_crit_edge:                ; preds = %for.body826
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body826

for.end831:                                       ; preds = %for.body826
  %772 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %772)
  %773 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr833 = getelementptr i8, ptr %773, i32 3904
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr833, i32 805306368) #5, !srcloc !85
  %774 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %774)
  %775 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr835 = getelementptr i8, ptr %775, i32 3908
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr835, i32 4) #5, !srcloc !85
  %776 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %776)
  %777 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr837 = getelementptr i8, ptr %777, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr837, i32 25600) #5, !srcloc !85
  br label %for.body841

for.body841:                                      ; preds = %for.body841.for.body841_crit_edge, %for.end831
  %i.361663 = phi i32 [ 0, %for.end831 ], [ %inc845, %for.body841.for.body841_crit_edge ]
  %778 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %778)
  %779 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr843 = getelementptr i8, ptr %779, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr843, i32 0) #5, !srcloc !85
  %inc845 = add nuw nsw i32 %i.361663, 1
  %exitcond1703.not = icmp eq i32 %inc845, 236
  br i1 %exitcond1703.not, label %for.end846, label %for.body841.for.body841_crit_edge

for.body841.for.body841_crit_edge:                ; preds = %for.body841
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body841

for.end846:                                       ; preds = %for.body841
  %780 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %780)
  %781 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr848 = getelementptr i8, ptr %781, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr848, i32 26624) #5, !srcloc !85
  br label %for.body852

for.body852:                                      ; preds = %for.body852.for.body852_crit_edge, %for.end846
  %i.371664 = phi i32 [ 0, %for.end846 ], [ %inc856, %for.body852.for.body852_crit_edge ]
  %782 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %782)
  %783 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr854 = getelementptr i8, ptr %783, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr854, i32 0) #5, !srcloc !85
  %inc856 = add nuw nsw i32 %i.371664, 1
  %exitcond1704.not = icmp eq i32 %inc856, 188
  br i1 %exitcond1704.not, label %for.end857, label %for.body852.for.body852_crit_edge

for.body852.for.body852_crit_edge:                ; preds = %for.body852
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body852

for.end857:                                       ; preds = %for.body852
  %784 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %784)
  %785 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr859 = getelementptr i8, ptr %785, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr859, i32 27648) #5, !srcloc !85
  %786 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %786)
  %787 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865 = getelementptr i8, ptr %787, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865, i32 0) #5, !srcloc !85
  %788 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %788)
  %789 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.1 = getelementptr i8, ptr %789, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.1, i32 0) #5, !srcloc !85
  %790 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %790)
  %791 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.2 = getelementptr i8, ptr %791, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.2, i32 0) #5, !srcloc !85
  %792 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.3 = getelementptr i8, ptr %793, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.3, i32 0) #5, !srcloc !85
  %794 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.4 = getelementptr i8, ptr %795, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.4, i32 0) #5, !srcloc !85
  %796 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.5 = getelementptr i8, ptr %797, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.5, i32 0) #5, !srcloc !85
  %798 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.6 = getelementptr i8, ptr %799, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.6, i32 0) #5, !srcloc !85
  %800 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.7 = getelementptr i8, ptr %801, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.7, i32 0) #5, !srcloc !85
  %802 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %802)
  %803 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.8 = getelementptr i8, ptr %803, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.8, i32 0) #5, !srcloc !85
  %804 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %804)
  %805 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.9 = getelementptr i8, ptr %805, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.9, i32 0) #5, !srcloc !85
  %806 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.10 = getelementptr i8, ptr %807, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.10, i32 0) #5, !srcloc !85
  %808 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr865.11 = getelementptr i8, ptr %809, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr865.11, i32 0) #5, !srcloc !85
  %810 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr870 = getelementptr i8, ptr %811, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr870, i32 28672) #5, !srcloc !85
  br label %for.body874

for.body874:                                      ; preds = %for.body874.for.body874_crit_edge, %for.end857
  %i.391666 = phi i32 [ 0, %for.end857 ], [ %inc878, %for.body874.for.body874_crit_edge ]
  %812 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr876 = getelementptr i8, ptr %813, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr876, i32 0) #5, !srcloc !85
  %inc878 = add nuw nsw i32 %i.391666, 1
  %exitcond1706.not = icmp eq i32 %inc878, 76
  br i1 %exitcond1706.not, label %for.end879, label %for.body874.for.body874_crit_edge

for.body874.for.body874_crit_edge:                ; preds = %for.body874
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body874

for.end879:                                       ; preds = %for.body874
  %814 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %814)
  %815 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr881 = getelementptr i8, ptr %815, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr881, i32 29696) #5, !srcloc !85
  br label %for.body885

for.body885:                                      ; preds = %for.body885.for.body885_crit_edge, %for.end879
  %i.401667 = phi i32 [ 0, %for.end879 ], [ %inc889, %for.body885.for.body885_crit_edge ]
  %816 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr887 = getelementptr i8, ptr %817, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr887, i32 0) #5, !srcloc !85
  %inc889 = add nuw nsw i32 %i.401667, 1
  %exitcond1707.not = icmp eq i32 %inc889, 48
  br i1 %exitcond1707.not, label %for.end890, label %for.body885.for.body885_crit_edge

for.body885.for.body885_crit_edge:                ; preds = %for.body885
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body885

for.end890:                                       ; preds = %for.body885
  %818 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr892 = getelementptr i8, ptr %819, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr892, i32 30720) #5, !srcloc !85
  br label %for.body896

for.body896:                                      ; preds = %for.body896.for.body896_crit_edge, %for.end890
  %i.411668 = phi i32 [ 0, %for.end890 ], [ %inc900, %for.body896.for.body896_crit_edge ]
  %820 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %820)
  %821 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr898 = getelementptr i8, ptr %821, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr898, i32 0) #5, !srcloc !85
  %inc900 = add nuw nsw i32 %i.411668, 1
  %exitcond1708.not = icmp eq i32 %inc900, 48
  br i1 %exitcond1708.not, label %for.end901, label %for.body896.for.body896_crit_edge

for.body896.for.body896_crit_edge:                ; preds = %for.body896
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body896

for.end901:                                       ; preds = %for.body896
  %822 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr903 = getelementptr i8, ptr %823, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr903, i32 17408) #5, !srcloc !85
  br label %for.body907

for.body907:                                      ; preds = %for.body907.for.body907_crit_edge, %for.end901
  %i.421669 = phi i32 [ 0, %for.end901 ], [ %inc911, %for.body907.for.body907_crit_edge ]
  %824 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr909 = getelementptr i8, ptr %825, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr909, i32 0) #5, !srcloc !85
  %inc911 = add nuw nsw i32 %i.421669, 1
  %exitcond1709.not = icmp eq i32 %inc911, 32
  br i1 %exitcond1709.not, label %for.end912, label %for.body907.for.body907_crit_edge

for.body907.for.body907_crit_edge:                ; preds = %for.body907
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body907

for.end912:                                       ; preds = %for.body907
  %826 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr914 = getelementptr i8, ptr %827, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr914, i32 0) #5, !srcloc !85
  %828 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920 = getelementptr i8, ptr %829, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920, i32 0) #5, !srcloc !85
  %830 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.1 = getelementptr i8, ptr %831, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.1, i32 0) #5, !srcloc !85
  %832 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.2 = getelementptr i8, ptr %833, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.2, i32 0) #5, !srcloc !85
  %834 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %834)
  %835 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.3 = getelementptr i8, ptr %835, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.3, i32 0) #5, !srcloc !85
  %836 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %836)
  %837 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.4 = getelementptr i8, ptr %837, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.4, i32 0) #5, !srcloc !85
  %838 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %838)
  %839 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.5 = getelementptr i8, ptr %839, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.5, i32 0) #5, !srcloc !85
  %840 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %840)
  %841 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.6 = getelementptr i8, ptr %841, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.6, i32 0) #5, !srcloc !85
  %842 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.7 = getelementptr i8, ptr %843, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.7, i32 0) #5, !srcloc !85
  %844 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.8 = getelementptr i8, ptr %845, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.8, i32 0) #5, !srcloc !85
  %846 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.9 = getelementptr i8, ptr %847, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.9, i32 0) #5, !srcloc !85
  %848 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.10 = getelementptr i8, ptr %849, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.10, i32 0) #5, !srcloc !85
  %850 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.11 = getelementptr i8, ptr %851, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.11, i32 0) #5, !srcloc !85
  %852 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.12 = getelementptr i8, ptr %853, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.12, i32 0) #5, !srcloc !85
  %854 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.13 = getelementptr i8, ptr %855, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.13, i32 0) #5, !srcloc !85
  %856 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %856)
  %857 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.14 = getelementptr i8, ptr %857, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.14, i32 0) #5, !srcloc !85
  %858 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %858)
  %859 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr920.15 = getelementptr i8, ptr %859, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr920.15, i32 0) #5, !srcloc !85
  %860 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %860)
  %861 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr925 = getelementptr i8, ptr %861, i32 3920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr925, i32 64) #5, !srcloc !85
  %862 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %862)
  %863 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr931 = getelementptr i8, ptr %863, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr931, i32 0) #5, !srcloc !85
  %864 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %864)
  %865 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr931.1 = getelementptr i8, ptr %865, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr931.1, i32 0) #5, !srcloc !85
  %866 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr931.2 = getelementptr i8, ptr %867, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr931.2, i32 0) #5, !srcloc !85
  %868 = ptrtoint ptr %PGRAPH390 to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load ptr, ptr %PGRAPH390, align 4
  %add.ptr931.3 = getelementptr i8, ptr %869, i32 3924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr931.3, i32 0) #5, !srcloc !85
  %cursorConfig = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 22
  %870 = ptrtoint ptr %cursorConfig to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %cursorConfig, align 4
  %PCRTC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 16
  %872 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %PCRTC, align 4
  %add.ptr935 = getelementptr i8, ptr %873, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr935, i32 %871) #5, !srcloc !85
  %flatPanel = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 13
  %874 = ptrtoint ptr %flatPanel to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load i32, ptr %flatPanel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %875)
  %tobool936.not = icmp eq i32 %875, 0
  br i1 %tobool936.not, label %for.end912.do.body985_crit_edge, label %if.then937

for.end912.do.body985_crit_edge:                  ; preds = %for.end912
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body985

if.then937:                                       ; preds = %for.end912
  %Chipset = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 2
  %876 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load i32, ptr %Chipset, align 4
  %and = and i32 %877, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and)
  %cmp938 = icmp eq i32 %and, 272
  br i1 %cmp938, label %if.then940, label %if.else943

if.then940:                                       ; preds = %if.then937
  call void @__sanitizer_cov_trace_pc() #7
  %dither = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %878 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %878)
  %879 = load i32, ptr %dither, align 4
  %880 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %880)
  %881 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr942 = getelementptr i8, ptr %881, i32 1320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr942, i32 %879) #5, !srcloc !85
  br label %do.body954

if.else943:                                       ; preds = %if.then937
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %and)
  %cmp946 = icmp ugt i32 %and, 367
  br i1 %cmp946, label %if.then948, label %if.else943.do.body954_crit_edge

if.else943.do.body954_crit_edge:                  ; preds = %if.else943
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body954

if.then948:                                       ; preds = %if.else943
  call void @__sanitizer_cov_trace_pc() #7
  %dither949 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %882 = ptrtoint ptr %dither949 to i32
  call void @__asan_load4_noabort(i32 %882)
  %883 = load i32, ptr %dither949, align 4
  %884 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %884)
  %885 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr951 = getelementptr i8, ptr %885, i32 2108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr951, i32 %883) #5, !srcloc !85
  br label %do.body954

do.body954:                                       ; preds = %if.then948, %if.else943.do.body954_crit_edge, %if.then940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %PCIO957 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %886 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load ptr, ptr %PCIO957, align 4
  %add.ptr958 = getelementptr i8, ptr %887, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr958, i8 83) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  tail call void @arm_heavy_mb() #5
  %888 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %PCIO957, align 4
  %add.ptr963 = getelementptr i8, ptr %889, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr963, i8 0) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  tail call void @arm_heavy_mb() #5
  %890 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load ptr, ptr %PCIO957, align 4
  %add.ptr968 = getelementptr i8, ptr %891, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr968, i8 84) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  tail call void @arm_heavy_mb() #5
  %892 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load ptr, ptr %PCIO957, align 4
  %add.ptr973 = getelementptr i8, ptr %893, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr973, i8 0) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !95
  tail call void @arm_heavy_mb() #5
  %894 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %PCIO957, align 4
  %add.ptr978 = getelementptr i8, ptr %895, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr978, i8 33) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %896 = ptrtoint ptr %PCIO957 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %PCIO957, align 4
  %add.ptr983 = getelementptr i8, ptr %897, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr983, i8 -6) #5, !srcloc !87
  br label %do.body985

do.body985:                                       ; preds = %do.body954, %for.end912.do.body985_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %PCIO988 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %898 = ptrtoint ptr %PCIO988 to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %PCIO988, align 4
  %add.ptr989 = getelementptr i8, ptr %899, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr989, i8 65) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %extra = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 9
  %900 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %900)
  %901 = load i32, ptr %extra, align 4
  %conv993 = trunc i32 %901 to i8
  %902 = ptrtoint ptr %PCIO988 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %PCIO988, align 4
  %add.ptr995 = getelementptr i8, ptr %903, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr995, i8 %conv993) #5, !srcloc !87
  br label %sw.epilog996

sw.epilog996:                                     ; preds = %do.body985, %sw.epilog324, %for.end146, %entry.sw.epilog996_crit_edge
  %FIFO1003 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %904 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load ptr, ptr %FIFO1003, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %905, i32 -2147483648) #5, !srcloc !85
  %906 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.1 = getelementptr i32, ptr %907, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.1, i32 -2147483647) #5, !srcloc !85
  %908 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.2 = getelementptr i32, ptr %909, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.2, i32 -2147483646) #5, !srcloc !85
  %910 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.3 = getelementptr i32, ptr %911, i32 6144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.3, i32 -2147483632) #5, !srcloc !85
  %912 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.4 = getelementptr i32, ptr %913, i32 8192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.4, i32 -2147483631) #5, !srcloc !85
  %914 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.5 = getelementptr i32, ptr %915, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.5, i32 -2147483630) #5, !srcloc !85
  %916 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.6 = getelementptr i32, ptr %917, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.6, i32 -2147483626) #5, !srcloc !85
  %918 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %FIFO1003, align 4
  %arrayidx1006.7 = getelementptr i32, ptr %919, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx1006.7, i32 -2147483629) #5, !srcloc !85
  %920 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load i32, ptr %chip, align 4
  %922 = zext i32 %921 to i64
  call void @__sanitizer_cov_trace_switch(i64 %922, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %921, label %sw.epilog996.UpdateFifoState.exit_crit_edge [
    i32 4, label %for.body.i
    i32 16, label %sw.epilog996.sw.bb7.i_crit_edge
    i32 32, label %sw.epilog996.sw.bb7.i_crit_edge1739
    i32 48, label %sw.epilog996.sw.bb7.i_crit_edge1740
  ]

sw.epilog996.sw.bb7.i_crit_edge1740:              ; preds = %sw.epilog996
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

sw.epilog996.sw.bb7.i_crit_edge1739:              ; preds = %sw.epilog996
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

sw.epilog996.sw.bb7.i_crit_edge:                  ; preds = %sw.epilog996
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb7.i

sw.epilog996.UpdateFifoState.exit_crit_edge:      ; preds = %sw.epilog996
  call void @__sanitizer_cov_trace_pc() #7
  br label %UpdateFifoState.exit

for.body.i:                                       ; preds = %sw.epilog996
  call void @__sanitizer_cov_trace_pc() #7
  %923 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %FIFO1003, align 4
  %arrayidx4.i = getelementptr i32, ptr %924, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx4.i, i32 -2147483628) #5, !srcloc !85
  br label %sw.epilog.sink.split.i

sw.bb7.i:                                         ; preds = %sw.epilog996.sw.bb7.i_crit_edge, %sw.epilog996.sw.bb7.i_crit_edge1739, %sw.epilog996.sw.bb7.i_crit_edge1740
  %PGRAPH.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %sw.bb7.i
  %i.157.i = phi i32 [ 0, %sw.bb7.i ], [ %inc18.i, %for.body10.i.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr [171 x [2 x i32]], ptr @nv10tri05TablePGRAPH, i32 0, i32 %i.157.i
  %arrayidx12.i = getelementptr [171 x [2 x i32]], ptr @nv10tri05TablePGRAPH, i32 0, i32 %i.157.i, i32 1
  %925 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %arrayidx12.i, align 4
  %927 = ptrtoint ptr %PGRAPH.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %PGRAPH.i, align 4
  %929 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load i32, ptr %arrayidx11.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %928, i32 %930
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx15.i, i32 %926) #5, !srcloc !85
  %inc18.i = add nuw nsw i32 %i.157.i, 1
  %exitcond.not.i = icmp eq i32 %inc18.i, 171
  br i1 %exitcond.not.i, label %for.body22.i, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.i

for.body22.i:                                     ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #7
  %931 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %FIFO1003, align 4
  %arrayidx28.i = getelementptr i32, ptr %932, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx28.i, i32 -2147483628) #5, !srcloc !85
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %for.body22.i, %for.body.i
  %Tri0333.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  %933 = ptrtoint ptr %Tri0333.i to i32
  call void @__asan_store4_noabort(i32 %933)
  store ptr null, ptr %Tri0333.i, align 4
  %934 = ptrtoint ptr %FIFO1003 to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load ptr, ptr %FIFO1003, align 4
  %arrayidx35.i = getelementptr i32, ptr %935, i32 14336
  %Tri0536.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 50
  %936 = ptrtoint ptr %Tri0536.i to i32
  call void @__asan_store4_noabort(i32 %936)
  store ptr %arrayidx35.i, ptr %Tri0536.i, align 4
  br label %UpdateFifoState.exit

UpdateFifoState.exit:                             ; preds = %sw.epilog.sink.split.i, %sw.epilog996.UpdateFifoState.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  %PCIO1014 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %937 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1015 = getelementptr i8, ptr %938, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1015, i8 25) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 4
  %939 = ptrtoint ptr %repaint0 to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load i32, ptr %repaint0, align 4
  %conv1019 = trunc i32 %940 to i8
  %941 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %941)
  %942 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1021 = getelementptr i8, ptr %942, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1021, i8 %conv1019) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %943 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1026 = getelementptr i8, ptr %944, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1026, i8 26) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %repaint1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 5
  %945 = ptrtoint ptr %repaint1 to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load i32, ptr %repaint1, align 4
  %conv1030 = trunc i32 %946 to i8
  %947 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1032 = getelementptr i8, ptr %948, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1032, i8 %conv1030) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %949 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1037 = getelementptr i8, ptr %950, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1037, i8 37) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %screen = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 6
  %951 = ptrtoint ptr %screen to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load i32, ptr %screen, align 4
  %conv1041 = trunc i32 %952 to i8
  %953 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1043 = getelementptr i8, ptr %954, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1043, i8 %conv1041) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %955 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1048 = getelementptr i8, ptr %956, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1048, i8 40) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %957 = ptrtoint ptr %pixel to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load i32, ptr %pixel, align 4
  %conv1052 = trunc i32 %958 to i8
  %959 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1054 = getelementptr i8, ptr %960, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1054, i8 %conv1052) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %961 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1059 = getelementptr i8, ptr %962, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1059, i8 45) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %horiz = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 11
  %963 = ptrtoint ptr %horiz to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %horiz, align 4
  %conv1063 = trunc i32 %964 to i8
  %965 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1065 = getelementptr i8, ptr %966, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1065, i8 %conv1063) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %967 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1070 = getelementptr i8, ptr %968, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1070, i8 27) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %969 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_load4_noabort(i32 %969)
  %970 = load i32, ptr %arbitration0, align 4
  %conv1074 = trunc i32 %970 to i8
  %971 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %971)
  %972 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1076 = getelementptr i8, ptr %972, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1076, i8 %conv1074) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %973 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %973)
  %974 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1081 = getelementptr i8, ptr %974, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1081, i8 32) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %975 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_load4_noabort(i32 %975)
  %976 = load i32, ptr %arbitration1, align 4
  %conv1085 = trunc i32 %976 to i8
  %977 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %977)
  %978 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1087 = getelementptr i8, ptr %978, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1087, i8 %conv1085) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void @arm_heavy_mb() #5
  %979 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %979)
  %980 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1092 = getelementptr i8, ptr %980, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1092, i8 48) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %981 = ptrtoint ptr %cursor0 to i32
  call void @__asan_load4_noabort(i32 %981)
  %982 = load i32, ptr %cursor0, align 4
  %conv1096 = trunc i32 %982 to i8
  %983 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %983)
  %984 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1098 = getelementptr i8, ptr %984, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1098, i8 %conv1096) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %985 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %985)
  %986 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1103 = getelementptr i8, ptr %986, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1103, i8 49) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %987 = ptrtoint ptr %cursor1 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %cursor1, align 4
  %conv1107 = trunc i32 %988 to i8
  %989 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1109 = getelementptr i8, ptr %990, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1109, i8 %conv1107) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %991 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1114 = getelementptr i8, ptr %992, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1114, i8 47) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %993 = ptrtoint ptr %cursor2 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load i32, ptr %cursor2, align 4
  %conv1118 = trunc i32 %994 to i8
  %995 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1120 = getelementptr i8, ptr %996, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1120, i8 %conv1118) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %997 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1125 = getelementptr i8, ptr %998, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1125, i8 57) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %interlace = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 3
  %999 = ptrtoint ptr %interlace to i32
  call void @__asan_load4_noabort(i32 %999)
  %1000 = load i32, ptr %interlace, align 4
  %conv1129 = trunc i32 %1000 to i8
  %1001 = ptrtoint ptr %PCIO1014 to i32
  call void @__asan_load4_noabort(i32 %1001)
  %1002 = load ptr, ptr %PCIO1014, align 4
  %add.ptr1131 = getelementptr i8, ptr %1002, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1131, i8 %conv1129) #5, !srcloc !87
  %flatPanel1132 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 13
  %1003 = ptrtoint ptr %flatPanel1132 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %flatPanel1132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1004)
  %tobool1133.not = icmp eq i32 %1004, 0
  br i1 %tobool1133.not, label %if.then1134, label %if.else1144

if.then1134:                                      ; preds = %UpdateFifoState.exit
  %vpll = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 14
  %1005 = ptrtoint ptr %vpll to i32
  call void @__asan_load4_noabort(i32 %1005)
  %1006 = load i32, ptr %vpll, align 4
  %PRAMDAC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %1007 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %1007)
  %1008 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr1135 = getelementptr i8, ptr %1008, i32 1288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1135, i32 %1006) #5, !srcloc !85
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %1009 = ptrtoint ptr %pllsel to i32
  call void @__asan_load4_noabort(i32 %1009)
  %1010 = load i32, ptr %pllsel, align 4
  %1011 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr1137 = getelementptr i8, ptr %1012, i32 1292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1137, i32 %1010) #5, !srcloc !85
  %twoHeads1138 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 14
  %1013 = ptrtoint ptr %twoHeads1138 to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load i32, ptr %twoHeads1138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1014)
  %tobool1139.not = icmp eq i32 %1014, 0
  br i1 %tobool1139.not, label %if.then1134.if.end1147_crit_edge, label %if.then1140

if.then1134.if.end1147_crit_edge:                 ; preds = %if.then1134
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1147

if.then1140:                                      ; preds = %if.then1134
  call void @__sanitizer_cov_trace_pc() #7
  %vpll2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 15
  %1015 = ptrtoint ptr %vpll2 to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load i32, ptr %vpll2, align 4
  %1017 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr1142 = getelementptr i8, ptr %1018, i32 1312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1142, i32 %1016) #5, !srcloc !85
  br label %if.end1147

if.else1144:                                      ; preds = %UpdateFifoState.exit
  call void @__sanitizer_cov_trace_pc() #7
  %scale = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 7
  %1019 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load i32, ptr %scale, align 4
  %PRAMDAC1145 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 32
  %1021 = ptrtoint ptr %PRAMDAC1145 to i32
  call void @__asan_load4_noabort(i32 %1021)
  %1022 = load ptr, ptr %PRAMDAC1145, align 4
  %add.ptr1146 = getelementptr i8, ptr %1022, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1146, i32 %1020) #5, !srcloc !85
  br label %if.end1147

if.end1147:                                       ; preds = %if.else1144, %if.then1140, %if.then1134.if.end1147_crit_edge
  %general = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %1023 = ptrtoint ptr %general to i32
  call void @__asan_load4_noabort(i32 %1023)
  %1024 = load i32, ptr %general, align 4
  %PRAMDAC1148 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 32
  %1025 = ptrtoint ptr %PRAMDAC1148 to i32
  call void @__asan_load4_noabort(i32 %1025)
  %1026 = load ptr, ptr %PRAMDAC1148, align 4
  %add.ptr1149 = getelementptr i8, ptr %1026, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1149, i32 %1024) #5, !srcloc !85
  %PCRTC1150 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 16
  %1027 = ptrtoint ptr %PCRTC1150 to i32
  call void @__asan_load4_noabort(i32 %1027)
  %1028 = load ptr, ptr %PCRTC1150, align 4
  %add.ptr1151 = getelementptr i8, ptr %1028, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1151, i32 0) #5, !srcloc !85
  %VBlankBit = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 9
  %1029 = ptrtoint ptr %VBlankBit to i32
  call void @__asan_load4_noabort(i32 %1029)
  %1030 = load i32, ptr %VBlankBit, align 4
  %1031 = ptrtoint ptr %PCRTC1150 to i32
  call void @__asan_load4_noabort(i32 %1031)
  %1032 = load ptr, ptr %PCRTC1150, align 4
  %add.ptr1153 = getelementptr i8, ptr %1032, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1153, i32 %1030) #5, !srcloc !85
  %EnableIRQ = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 7
  %1033 = ptrtoint ptr %EnableIRQ to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load i32, ptr %EnableIRQ, align 4
  %and1154 = and i32 %1034, 1
  %1035 = ptrtoint ptr %PMC to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load ptr, ptr %PMC, align 4
  %add.ptr1156 = getelementptr i8, ptr %1036, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1156, i32 %and1154) #5, !srcloc !85
  %CurrentState = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 41
  %1037 = ptrtoint ptr %CurrentState to i32
  call void @__asan_store4_noabort(i32 %1037)
  store ptr %state, ptr %CurrentState, align 4
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 10
  %1038 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %1038)
  store i32 0, ptr %FifoFreeCount, align 4
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 42
  %1039 = ptrtoint ptr %Rop to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %Rop, align 4
  %FifoFree = getelementptr inbounds %struct.anon, ptr %1040, i32 0, i32 1
  %1041 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %FifoEmptyCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 11
  %1042 = ptrtoint ptr %FifoEmptyCount to i32
  call void @__asan_store4_noabort(i32 %1042)
  store i32 %1041, ptr %FifoEmptyCount, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @UnloadStateExt(ptr noundef readonly %chip, ptr noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 25) #5, !srcloc !87
  %2 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 981
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  %conv = zext i8 %4 to i32
  %repaint0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 4
  %5 = ptrtoint ptr %repaint0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %repaint0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7, i8 26) #5, !srcloc !87
  %8 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %PCIO, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 981
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %conv15 = zext i8 %10 to i32
  %repaint1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %repaint1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv15, ptr %repaint1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PCIO, align 4
  %add.ptr19 = getelementptr i8, ptr %13, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr19, i8 37) #5, !srcloc !87
  %14 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PCIO, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 981
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  %conv27 = zext i8 %16 to i32
  %screen = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 6
  %17 = ptrtoint ptr %screen to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv27, ptr %screen, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %PCIO, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 40) #5, !srcloc !87
  %20 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PCIO, align 4
  %add.ptr35 = getelementptr i8, ptr %21, i32 981
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  %conv39 = zext i8 %22 to i32
  %pixel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 10
  %23 = ptrtoint ptr %pixel to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv39, ptr %pixel, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PCIO, align 4
  %add.ptr43 = getelementptr i8, ptr %25, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 45) #5, !srcloc !87
  %26 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %PCIO, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 981
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  %conv51 = zext i8 %28 to i32
  %horiz = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 11
  %29 = ptrtoint ptr %horiz to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv51, ptr %horiz, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %PCIO, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr55, i8 27) #5, !srcloc !87
  %32 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %PCIO, align 4
  %add.ptr59 = getelementptr i8, ptr %33, i32 981
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr59) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  %conv63 = zext i8 %34 to i32
  %arbitration0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 12
  %35 = ptrtoint ptr %arbitration0 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv63, ptr %arbitration0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PCIO, align 4
  %add.ptr67 = getelementptr i8, ptr %37, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr67, i8 32) #5, !srcloc !87
  %38 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %PCIO, align 4
  %add.ptr71 = getelementptr i8, ptr %39, i32 981
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr71) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %conv75 = zext i8 %40 to i32
  %arbitration1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 13
  %41 = ptrtoint ptr %arbitration1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv75, ptr %arbitration1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %PCIO, align 4
  %add.ptr79 = getelementptr i8, ptr %43, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr79, i8 48) #5, !srcloc !87
  %44 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %PCIO, align 4
  %add.ptr83 = getelementptr i8, ptr %45, i32 981
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %conv87 = zext i8 %46 to i32
  %cursor0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 23
  %47 = ptrtoint ptr %cursor0 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv87, ptr %cursor0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void @arm_heavy_mb() #5
  %48 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %PCIO, align 4
  %add.ptr91 = getelementptr i8, ptr %49, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 49) #5, !srcloc !87
  %50 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %PCIO, align 4
  %add.ptr95 = getelementptr i8, ptr %51, i32 981
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr95) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  %conv99 = zext i8 %52 to i32
  %cursor1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 24
  %53 = ptrtoint ptr %cursor1 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %conv99, ptr %cursor1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void @arm_heavy_mb() #5
  %54 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %PCIO, align 4
  %add.ptr103 = getelementptr i8, ptr %55, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr103, i8 47) #5, !srcloc !87
  %56 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %PCIO, align 4
  %add.ptr107 = getelementptr i8, ptr %57, i32 981
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr107) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  %conv111 = zext i8 %58 to i32
  %cursor2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 25
  %59 = ptrtoint ptr %cursor2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %conv111, ptr %cursor2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %PCIO, align 4
  %add.ptr115 = getelementptr i8, ptr %61, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr115, i8 57) #5, !srcloc !87
  %62 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %PCIO, align 4
  %add.ptr119 = getelementptr i8, ptr %63, i32 981
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr119) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %conv123 = zext i8 %64 to i32
  %interlace = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 3
  %65 = ptrtoint ptr %interlace to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv123, ptr %interlace, align 4
  %PRAMDAC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 17
  %66 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr124 = getelementptr i8, ptr %67, i32 1288
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #5, !srcloc !83
  %vpll = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 14
  %69 = ptrtoint ptr %vpll to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %vpll, align 4
  %70 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr127 = getelementptr i8, ptr %71, i32 1312
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127) #5, !srcloc !83
  %vpll2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 15
  %73 = ptrtoint ptr %vpll2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %vpll2, align 4
  %74 = ptrtoint ptr %PRAMDAC0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %PRAMDAC0, align 4
  %add.ptr130 = getelementptr i8, ptr %75, i32 1292
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr130) #5, !srcloc !83
  %pllsel = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 16
  %77 = ptrtoint ptr %pllsel to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %pllsel, align 4
  %PRAMDAC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 32
  %78 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr132 = getelementptr i8, ptr %79, i32 1536
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #5, !srcloc !83
  %general = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 17
  %81 = ptrtoint ptr %general to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %general, align 4
  %82 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr135 = getelementptr i8, ptr %83, i32 2120
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #5, !srcloc !83
  %scale = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 7
  %85 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %scale, align 4
  %PFB = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 18
  %86 = ptrtoint ptr %PFB to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %PFB, align 4
  %add.ptr137 = getelementptr i8, ptr %87, i32 512
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr137) #5, !srcloc !83
  %config = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 21
  %89 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %config, align 4
  %90 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %chip, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %91, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb162
    i32 16, label %entry.sw.bb195_crit_edge
    i32 32, label %entry.sw.bb195_crit_edge386
    i32 48, label %entry.sw.bb195_crit_edge387
  ]

entry.sw.bb195_crit_edge387:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb195

entry.sw.bb195_crit_edge386:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb195

entry.sw.bb195_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb195

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %93 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %PGRAPH, align 4
  %add.ptr139 = getelementptr i8, ptr %94, i32 1584
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #5, !srcloc !83
  %offset0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %96 = ptrtoint ptr %offset0 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %offset0, align 4
  %97 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %PGRAPH, align 4
  %add.ptr142 = getelementptr i8, ptr %98, i32 1588
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #5, !srcloc !83
  %offset1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %100 = ptrtoint ptr %offset1 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %offset1, align 4
  %101 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %PGRAPH, align 4
  %add.ptr145 = getelementptr i8, ptr %102, i32 1592
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #5, !srcloc !83
  %offset2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %104 = ptrtoint ptr %offset2 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %offset2, align 4
  %105 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %PGRAPH, align 4
  %add.ptr148 = getelementptr i8, ptr %106, i32 1596
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148) #5, !srcloc !83
  %offset3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %108 = ptrtoint ptr %offset3 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %offset3, align 4
  %109 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %PGRAPH, align 4
  %add.ptr151 = getelementptr i8, ptr %110, i32 1616
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #5, !srcloc !83
  %pitch0 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %112 = ptrtoint ptr %pitch0 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %pitch0, align 4
  %113 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %PGRAPH, align 4
  %add.ptr154 = getelementptr i8, ptr %114, i32 1620
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr154) #5, !srcloc !83
  %pitch1 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %116 = ptrtoint ptr %pitch1 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %pitch1, align 4
  %117 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %PGRAPH, align 4
  %add.ptr157 = getelementptr i8, ptr %118, i32 1624
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr157) #5, !srcloc !83
  %pitch2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %120 = ptrtoint ptr %pitch2 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %pitch2, align 4
  %121 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %PGRAPH, align 4
  %add.ptr160 = getelementptr i8, ptr %122, i32 1628
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #5, !srcloc !83
  %pitch3 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %124 = ptrtoint ptr %pitch3 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %123, ptr %pitch3, align 4
  br label %sw.epilog

sw.bb162:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PGRAPH163 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %125 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr164 = getelementptr i8, ptr %126, i32 1600
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #5, !srcloc !83
  %offset0166 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %128 = ptrtoint ptr %offset0166 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %127, ptr %offset0166, align 4
  %129 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr168 = getelementptr i8, ptr %130, i32 1604
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #5, !srcloc !83
  %offset1170 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %132 = ptrtoint ptr %offset1170 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %offset1170, align 4
  %133 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr172 = getelementptr i8, ptr %134, i32 1608
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #5, !srcloc !83
  %offset2174 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %136 = ptrtoint ptr %offset2174 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %offset2174, align 4
  %137 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr176 = getelementptr i8, ptr %138, i32 1612
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr176) #5, !srcloc !83
  %offset3178 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %140 = ptrtoint ptr %offset3178 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %offset3178, align 4
  %141 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr180 = getelementptr i8, ptr %142, i32 1648
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr180) #5, !srcloc !83
  %pitch0182 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %144 = ptrtoint ptr %pitch0182 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %pitch0182, align 4
  %145 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr184 = getelementptr i8, ptr %146, i32 1652
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr184) #5, !srcloc !83
  %pitch1186 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %148 = ptrtoint ptr %pitch1186 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %pitch1186, align 4
  %149 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr188 = getelementptr i8, ptr %150, i32 1656
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr188) #5, !srcloc !83
  %pitch2190 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %152 = ptrtoint ptr %pitch2190 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %pitch2190, align 4
  %153 = ptrtoint ptr %PGRAPH163 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %PGRAPH163, align 4
  %add.ptr192 = getelementptr i8, ptr %154, i32 1660
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr192) #5, !srcloc !83
  %pitch3194 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %156 = ptrtoint ptr %pitch3194 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %pitch3194, align 4
  br label %sw.epilog

sw.bb195:                                         ; preds = %entry.sw.bb195_crit_edge, %entry.sw.bb195_crit_edge386, %entry.sw.bb195_crit_edge387
  %PGRAPH196 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %157 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr197 = getelementptr i8, ptr %158, i32 1600
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr197) #5, !srcloc !83
  %offset0199 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 26
  %160 = ptrtoint ptr %offset0199 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %offset0199, align 4
  %161 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr201 = getelementptr i8, ptr %162, i32 1604
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr201) #5, !srcloc !83
  %offset1203 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 27
  %164 = ptrtoint ptr %offset1203 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %offset1203, align 4
  %165 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr205 = getelementptr i8, ptr %166, i32 1608
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr205) #5, !srcloc !83
  %offset2207 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 28
  %168 = ptrtoint ptr %offset2207 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %offset2207, align 4
  %169 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr209 = getelementptr i8, ptr %170, i32 1612
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr209) #5, !srcloc !83
  %offset3211 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 29
  %172 = ptrtoint ptr %offset3211 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %offset3211, align 4
  %173 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr213 = getelementptr i8, ptr %174, i32 1648
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr213) #5, !srcloc !83
  %pitch0215 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 30
  %176 = ptrtoint ptr %pitch0215 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %pitch0215, align 4
  %177 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr217 = getelementptr i8, ptr %178, i32 1652
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217) #5, !srcloc !83
  %pitch1219 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 31
  %180 = ptrtoint ptr %pitch1219 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %179, ptr %pitch1219, align 4
  %181 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr221 = getelementptr i8, ptr %182, i32 1656
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #5, !srcloc !83
  %pitch2223 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 32
  %184 = ptrtoint ptr %pitch2223 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %pitch2223, align 4
  %185 = ptrtoint ptr %PGRAPH196 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %PGRAPH196, align 4
  %add.ptr225 = getelementptr i8, ptr %186, i32 1660
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr225) #5, !srcloc !83
  %pitch3227 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 33
  %188 = ptrtoint ptr %pitch3227 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %pitch3227, align 4
  %twoHeads = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 14
  %189 = ptrtoint ptr %twoHeads to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %twoHeads, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not = icmp eq i32 %190, 0
  br i1 %tobool.not, label %sw.bb195.do.body245_crit_edge, label %if.then

sw.bb195.do.body245_crit_edge:                    ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body245

if.then:                                          ; preds = %sw.bb195
  call void @__sanitizer_cov_trace_pc() #7
  %PCRTC0 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 15
  %191 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %PCRTC0, align 4
  %add.ptr228 = getelementptr i8, ptr %192, i32 2144
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #5, !srcloc !83
  %head = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 19
  %194 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %head, align 4
  %195 = ptrtoint ptr %PCRTC0 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %PCRTC0, align 4
  %add.ptr231 = getelementptr i8, ptr %196, i32 10336
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #5, !srcloc !83
  %head2 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 20
  %198 = ptrtoint ptr %head2 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %head2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  tail call void @arm_heavy_mb() #5
  %199 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %PCIO, align 4
  %add.ptr236 = getelementptr i8, ptr %200, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr236, i8 68) #5, !srcloc !87
  %201 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %PCIO, align 4
  %add.ptr240 = getelementptr i8, ptr %202, i32 981
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr240) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %conv244 = zext i8 %203 to i32
  %crtcOwner = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 18
  %204 = ptrtoint ptr %crtcOwner to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %conv244, ptr %crtcOwner, align 4
  br label %do.body245

do.body245:                                       ; preds = %if.then, %sw.bb195.do.body245_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %205 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %PCIO, align 4
  %add.ptr248 = getelementptr i8, ptr %206, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr248, i8 65) #5, !srcloc !87
  %207 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %PCIO, align 4
  %add.ptr252 = getelementptr i8, ptr %208, i32 981
  %209 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr252) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  %conv256 = zext i8 %209 to i32
  %extra = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 9
  %210 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %conv256, ptr %extra, align 4
  %PCRTC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 16
  %211 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %PCRTC, align 4
  %add.ptr257 = getelementptr i8, ptr %212, i32 2064
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr257) #5, !srcloc !83
  %cursorConfig = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 22
  %214 = ptrtoint ptr %cursorConfig to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %cursorConfig, align 4
  %Chipset = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 2
  %215 = ptrtoint ptr %Chipset to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %Chipset, align 4
  %and = and i32 %216, 4080
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %and)
  %cmp = icmp eq i32 %and, 272
  br i1 %cmp, label %if.then260, label %if.else

if.then260:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #7
  %217 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr262 = getelementptr i8, ptr %218, i32 1320
  %219 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr262) #5, !srcloc !83
  %dither = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %220 = ptrtoint ptr %dither to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %dither, align 4
  br label %sw.epilog

if.else:                                          ; preds = %do.body245
  call void @__sanitizer_cov_trace_const_cmp4(i32 367, i32 %and)
  %cmp266 = icmp ugt i32 %and, 367
  br i1 %cmp266, label %if.then268, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then268:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %221 = ptrtoint ptr %PRAMDAC to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %PRAMDAC, align 4
  %add.ptr270 = getelementptr i8, ptr %222, i32 2108
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr270) #5, !srcloc !83
  %dither272 = getelementptr inbounds %struct._riva_hw_state, ptr %state, i32 0, i32 8
  %224 = ptrtoint ptr %dither272 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %dither272, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then268, %if.else.sw.epilog_crit_edge, %if.then260, %sw.bb162, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SetStartAddress3(ptr noundef %chip, i32 noundef %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %start, 2
  %LockUnlock = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %LockUnlock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %LockUnlock, align 4
  tail call void %1(ptr noundef %chip, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 13) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %conv) #5, !srcloc !87
  %6 = lshr i32 %start, 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %PCIO, align 4
  %add.ptr11 = getelementptr i8, ptr %8, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 12) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %conv15 = trunc i32 %6 to i8
  %9 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %PCIO, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %conv15) #5, !srcloc !87
  %11 = lshr i32 %start, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %PCIO, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 25) #5, !srcloc !87
  %14 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %PCIO, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 981
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void @arm_heavy_mb() #5
  %17 = and i8 %16, -32
  %18 = trunc i32 %11 to i8
  %19 = and i8 %18, 31
  %conv34 = or i8 %17, %19
  %20 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %PCIO, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %conv34) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %PCIO, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 45) #5, !srcloc !87
  %24 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %PCIO, align 4
  %add.ptr45 = getelementptr i8, ptr %25, i32 981
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr45) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %27 = and i8 %26, -97
  %28 = and i8 %18, 96
  %conv56 = or i8 %27, %28
  %29 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %PCIO, align 4
  %add.ptr58 = getelementptr i8, ptr %30, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %conv56) #5, !srcloc !87
  %31 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %PCIO, align 4
  %IO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 8
  %33 = ptrtoint ptr %IO to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %IO, align 4
  %add = add i32 %34, 10
  %add.ptr62 = getelementptr i8, ptr %32, i32 %add
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %PCIO, align 4
  %add.ptr71 = getelementptr i8, ptr %37, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 19) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void @arm_heavy_mb() #5
  %start.tr = trunc i32 %start to i8
  %38 = shl i8 %start.tr, 1
  %conv75 = and i8 %38, 6
  %39 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %PCIO, align 4
  %add.ptr77 = getelementptr i8, ptr %40, i32 960
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr77, i8 %conv75) #5, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv3SetSurfaces2D(ptr nocapture noundef %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FifoFreeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp26 = icmp ult i32 %3, 5
  br i1 %cmp26, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %Tri03 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %Tri03 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Tri03, align 4
  %FifoFree = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %shr = lshr i32 %6, 2
  %7 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %FifoFreeCount, align 4
  %cmp = icmp ult i32 %6, 20
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa, -5
  %8 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %FifoFreeCount, align 4
  %9 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %FIFO, align 4
  %arrayidx7 = getelementptr i32, ptr %10, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 -2147483645) #5, !srcloc !85
  %Offset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf0) #5, !srcloc !85
  %11 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %FIFO, align 4
  %arrayidx11 = getelementptr i32, ptr %12, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 -2147483644) #5, !srcloc !85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf1) #5, !srcloc !85
  %13 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %FIFO, align 4
  %arrayidx16 = getelementptr i32, ptr %14, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 -2147483629) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv3SetSurfaces3D(ptr nocapture noundef %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FifoFreeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp26 = icmp ult i32 %3, 5
  br i1 %cmp26, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %Tri03 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !164
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %Tri03 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Tri03, align 4
  %FifoFree = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %shr = lshr i32 %6, 2
  %7 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %FifoFreeCount, align 4
  %cmp = icmp ult i32 %6, 20
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa, -5
  %8 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %FifoFreeCount, align 4
  %9 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %FIFO, align 4
  %arrayidx7 = getelementptr i32, ptr %10, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 -2147483643) #5, !srcloc !85
  %Offset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf0) #5, !srcloc !85
  %11 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %FIFO, align 4
  %arrayidx11 = getelementptr i32, ptr %12, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx11, i32 -2147483642) #5, !srcloc !85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf1) #5, !srcloc !85
  %13 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %FIFO, align 4
  %arrayidx16 = getelementptr i32, ptr %14, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx16, i32 -2147483629) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv3LockUnlock(ptr nocapture noundef readonly %chip, i32 noundef %Lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  tail call void @arm_heavy_mb() #5
  %PVIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 29
  %0 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PVIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 964
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 6) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Lock)
  %tobool.not = icmp eq i32 %Lock, 0
  %conv = select i1 %tobool.not, i8 87, i8 -103
  %2 = ptrtoint ptr %PVIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PVIO, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 965
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %conv) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %PCIO.i = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %4 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #5, !srcloc !87
  %6 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %9 = and i8 %8, 127
  %masksel.i = select i1 %tobool.not, i8 0, i8 -128
  %cr11.0.i = or i8 %9, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %PCIO.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %cr11.0.i) #5, !srcloc !87
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv4Busy(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %Rop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Rop, align 4
  %FifoFree = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %FifoEmptyCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 11
  %3 = ptrtoint ptr %FifoEmptyCount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %FifoEmptyCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %5 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PGRAPH, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !83
  %and = and i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %and, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @SetStartAddress(ptr nocapture noundef readonly %chip, i32 noundef %start) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %PCRTC = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 16
  %0 = ptrtoint ptr %PCRTC to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCRTC, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %start) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv4SetSurfaces2D(ptr nocapture noundef readonly %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -2147483645) #5, !srcloc !85
  %Offset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf0) #5, !srcloc !85
  %2 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %FIFO, align 4
  %arrayidx5 = getelementptr i32, ptr %3, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 -2147483644) #5, !srcloc !85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf1) #5, !srcloc !85
  %4 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %FIFO, align 4
  %arrayidx10 = getelementptr i32, ptr %5, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10, i32 -2147483628) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv4SetSurfaces3D(ptr nocapture noundef readonly %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -2147483643) #5, !srcloc !85
  %Offset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf0) #5, !srcloc !85
  %2 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %FIFO, align 4
  %arrayidx5 = getelementptr i32, ptr %3, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 -2147483642) #5, !srcloc !85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf1) #5, !srcloc !85
  %4 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %FIFO, align 4
  %arrayidx10 = getelementptr i32, ptr %5, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10, i32 -2147483628) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv4LockUnlock(ptr nocapture noundef readonly %chip, i32 noundef %Lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %PCIO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %PCIO, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 31) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %Lock)
  %tobool.not = icmp eq i32 %Lock, 0
  %conv = select i1 %tobool.not, i8 87, i8 -103
  %2 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %PCIO, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %conv) #5, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %PCIO, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 980
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #5, !srcloc !87
  %6 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %PCIO, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 981
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr2.i) #5, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  %9 = and i8 %8, 127
  %masksel.i = select i1 %tobool.not, i8 0, i8 -128
  %cr11.0.i = or i8 %9, %masksel.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %PCIO to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %PCIO, align 4
  %add.ptr11.i = getelementptr i8, ptr %11, i32 981
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %cr11.0.i) #5, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv10Busy(ptr nocapture noundef readonly %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %Rop = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 42
  %0 = ptrtoint ptr %Rop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %Rop, align 4
  %FifoFree = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %FifoEmptyCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 11
  %3 = ptrtoint ptr %FifoEmptyCount to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %FifoEmptyCount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %PGRAPH = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 20
  %5 = ptrtoint ptr %PGRAPH to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %PGRAPH, align 4
  %arrayidx = getelementptr i32, ptr %6, i32 448
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #5, !srcloc !83
  %and = and i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %and, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv10SetSurfaces2D(ptr nocapture noundef readonly %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 -2147483645) #5, !srcloc !85
  %Offset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf0) #5, !srcloc !85
  %2 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %FIFO, align 4
  %arrayidx5 = getelementptr i32, ptr %3, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 -2147483644) #5, !srcloc !85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Offset, i32 %surf1) #5, !srcloc !85
  %4 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %FIFO, align 4
  %arrayidx10 = getelementptr i32, ptr %5, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx10, i32 -2147483628) #5, !srcloc !85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv10SetSurfaces3D(ptr nocapture noundef %chip, i32 noundef %surf0, i32 noundef %surf1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %FIFO = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 25
  %0 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %FIFO, align 4
  %FifoFreeCount = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %FifoFreeCount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp21 = icmp ult i32 %3, 4
  br i1 %cmp21, label %do.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %Tri03 = getelementptr inbounds %struct._riva_hw_inst, ptr %chip, i32 0, i32 49
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %Tri03 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %Tri03, align 4
  %FifoFree = getelementptr inbounds %struct.anon.16, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FifoFree) #5, !srcloc !83
  %shr = lshr i32 %6, 2
  %7 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr, ptr %FifoFreeCount, align 4
  %cmp = icmp ult i32 %6, 16
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.while.end_crit_edge

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  %.lcssa = phi i32 [ %3, %entry.while.end_crit_edge ], [ %shr, %do.body.while.end_crit_edge ]
  %sub = add i32 %.lcssa, -4
  %8 = ptrtoint ptr %FifoFreeCount to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %FifoFreeCount, align 4
  %9 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %FIFO, align 4
  %arrayidx7 = getelementptr i32, ptr %10, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx7, i32 -2147483641) #5, !srcloc !85
  %RenderBufferOffset = getelementptr i32, ptr %1, i32 14531
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RenderBufferOffset, i32 %surf0) #5, !srcloc !85
  %ZBufferOffset = getelementptr i32, ptr %1, i32 14532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ZBufferOffset, i32 %surf1) #5, !srcloc !85
  %11 = ptrtoint ptr %FIFO to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %FIFO, align 4
  %arrayidx12 = getelementptr i32, ptr %12, i32 14336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 -2147483628) #5, !srcloc !85
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = distinct !{null, !1, !"RivaTablePMC", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 53, i32 17}
!2 = distinct !{null, !3, !"RivaTablePTIMER", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 59, i32 17}
!4 = !{ptr @nv3TablePFIFO, !5, !"nv3TablePFIFO", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 77, i32 17}
!6 = !{ptr @nv3TablePRAMIN, !7, !"nv3TablePRAMIN", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 154, i32 17}
!8 = !{ptr @nv3TablePGRAPH, !9, !"nv3TablePGRAPH", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 106, i32 17}
!10 = distinct !{null, !11, !"nv3TablePRAMIN_15BPP", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 236, i32 17}
!12 = distinct !{null, !13, !"nv3TablePGRAPH_15BPP", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 146, i32 17}
!14 = distinct !{null, !15, !"nv3TablePRAMIN_32BPP", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 249, i32 17}
!16 = distinct !{null, !17, !"nv3TablePGRAPH_32BPP", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 150, i32 17}
!18 = distinct !{null, !19, !"nv3TablePRAMIN_8BPP", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 223, i32 17}
!20 = distinct !{null, !21, !"nv3TablePGRAPH_8BPP", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 142, i32 17}
!22 = !{ptr @nv4TablePFIFO, !23, !"nv4TablePFIFO", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 266, i32 17}
!24 = !{ptr @nv4TablePRAMIN, !25, !"nv4TablePRAMIN", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 370, i32 17}
!26 = !{ptr @nv4TablePGRAPH, !27, !"nv4TablePGRAPH", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 288, i32 17}
!28 = distinct !{null, !29, !"nv4TablePRAMIN_15BPP", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 474, i32 17}
!30 = distinct !{null, !31, !"nv4TablePGRAPH_15BPP", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 352, i32 17}
!32 = distinct !{null, !33, !"nv4TablePRAMIN_16BPP", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 490, i32 17}
!34 = distinct !{null, !35, !"nv4TablePGRAPH_16BPP", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 358, i32 17}
!36 = distinct !{null, !37, !"nv4TablePRAMIN_32BPP", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 506, i32 17}
!38 = distinct !{null, !39, !"nv4TablePGRAPH_32BPP", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 364, i32 17}
!40 = distinct !{null, !41, !"nv4TablePRAMIN_8BPP", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 458, i32 17}
!42 = distinct !{null, !43, !"nv4TablePGRAPH_8BPP", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 346, i32 17}
!44 = !{ptr @nv10TablePFIFO, !45, !"nv10TablePFIFO", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 526, i32 17}
!46 = !{ptr @nv10TablePRAMIN, !47, !"nv10TablePRAMIN", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 819, i32 17}
!48 = !{ptr @nv10TablePGRAPH, !49, !"nv10TablePGRAPH", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 548, i32 17}
!50 = distinct !{null, !51, !"nv10TablePRAMIN_15BPP", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 957, i32 17}
!52 = distinct !{null, !53, !"nv10TablePGRAPH_15BPP", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 627, i32 17}
!54 = distinct !{null, !55, !"nv10TablePRAMIN_16BPP", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 974, i32 17}
!56 = distinct !{null, !57, !"nv10TablePGRAPH_16BPP", i1 false, i1 false}
!57 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 633, i32 17}
!58 = distinct !{null, !59, !"nv10TablePRAMIN_32BPP", i1 false, i1 false}
!59 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 991, i32 17}
!60 = distinct !{null, !61, !"nv10TablePGRAPH_32BPP", i1 false, i1 false}
!61 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 639, i32 17}
!62 = distinct !{null, !63, !"nv10TablePRAMIN_8BPP", i1 false, i1 false}
!63 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 940, i32 17}
!64 = distinct !{null, !65, !"nv10TablePGRAPH_8BPP", i1 false, i1 false}
!65 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 621, i32 17}
!66 = distinct !{null, !67, !"RivaTableFIFO", i1 false, i1 false}
!67 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 66, i32 17}
!68 = distinct !{null, !69, !"nv4TableFIFO", i1 false, i1 false}
!69 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 262, i32 17}
!70 = !{ptr @nv10tri05TablePGRAPH, !71, !"nv10tri05TablePGRAPH", i1 false, i1 false}
!71 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 645, i32 17}
!72 = distinct !{null, !73, !"nv10TableFIFO", i1 false, i1 false}
!73 = !{!"../drivers/video/fbdev/riva/riva_tbl.h", i32 522, i32 17}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 5056467}
!84 = !{!"auto-init"}
!85 = !{i64 5056049}
!86 = !{i64 2154546434}
!87 = !{i64 5055852}
!88 = !{i64 2154546870}
!89 = !{i64 2154624707}
!90 = !{i64 2154625124}
!91 = !{i64 2154644138}
!92 = !{i64 2154644525}
!93 = !{i64 2154644915}
!94 = !{i64 2154645302}
!95 = !{i64 2154645692}
!96 = !{i64 2154646085}
!97 = !{i64 2154646478}
!98 = !{i64 2154646887}
!99 = !{i64 2154647628}
!100 = !{i64 2154648043}
!101 = !{i64 2154648447}
!102 = !{i64 2154648862}
!103 = !{i64 2154649266}
!104 = !{i64 2154649677}
!105 = !{i64 2154650079}
!106 = !{i64 2154650488}
!107 = !{i64 2154650889}
!108 = !{i64 2154651298}
!109 = !{i64 2154651699}
!110 = !{i64 2154652122}
!111 = !{i64 2154652530}
!112 = !{i64 2154652953}
!113 = !{i64 2154653361}
!114 = !{i64 2154653774}
!115 = !{i64 2154654177}
!116 = !{i64 2154654590}
!117 = !{i64 2154654993}
!118 = !{i64 2154655406}
!119 = !{i64 2154655809}
!120 = !{i64 2154656226}
!121 = !{i64 2154657490}
!122 = !{i64 5056247}
!123 = !{i64 2154657911}
!124 = !{i64 2154658220}
!125 = !{i64 2154658641}
!126 = !{i64 2154658950}
!127 = !{i64 2154659371}
!128 = !{i64 2154659680}
!129 = !{i64 2154660101}
!130 = !{i64 2154660410}
!131 = !{i64 2154660831}
!132 = !{i64 2154661140}
!133 = !{i64 2154661561}
!134 = !{i64 2154661870}
!135 = !{i64 2154662291}
!136 = !{i64 2154662600}
!137 = !{i64 2154663021}
!138 = !{i64 2154663330}
!139 = !{i64 2154663751}
!140 = !{i64 2154664060}
!141 = !{i64 2154664481}
!142 = !{i64 2154664790}
!143 = !{i64 2154665211}
!144 = !{i64 2154668014}
!145 = !{i64 2154668435}
!146 = !{i64 2154668744}
!147 = !{i64 2154669165}
!148 = !{i64 2154669780}
!149 = !{i64 2154670174}
!150 = !{i64 2154670566}
!151 = !{i64 2154670960}
!152 = !{i64 2154671352}
!153 = !{i64 2154671769}
!154 = !{i64 2154672132}
!155 = !{i64 2154672550}
!156 = !{i64 2154672967}
!157 = !{i64 2154673328}
!158 = !{i64 2154673802}
!159 = !{i64 2154674109}
!160 = !{i64 2154674497}
!161 = !{i64 2154675095}
!162 = !{i64 2154675238}
!163 = !{i64 2154677221}
!164 = !{i64 2154677364}
!165 = !{i64 2154544790}
!166 = !{i64 2154545208}
!167 = !{i64 2154543676}
!168 = !{i64 2154544093}
!169 = !{i64 2154544400}
!170 = !{i64 2154545612}
!171 = !{i64 2154546030}
!172 = !{i64 2154678886}
!173 = !{i64 2154679029}
