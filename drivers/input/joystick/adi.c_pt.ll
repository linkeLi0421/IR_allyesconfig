; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/adi.c_pt.bc'
source_filename = "../drivers/input/joystick/adi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gameport_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.69 = type { i32, i32 }
%struct.gameport = type { ptr, [32 x i8], [32 x i8], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, i32, %struct.spinlock, i32, ptr, ptr, ptr, ptr, %struct.mutex, %struct.device, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.adi_port = type { ptr, [2 x %struct.adi], i32, i32 }
%struct.adi = type { ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, [64 x i8], [16 x i8], [64 x i8], [256 x i8] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author223 = internal constant [43 x i8] c"adi.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [52 x i8] c"adi.description=Logitech ADI joystick family driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [36 x i8] c"adi.file=drivers/input/joystick/adi\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [16 x i8] c"adi.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_adi__227_551_adi_drv_init6 = internal global ptr @adi_drv_init, section ".initcall6.init", align 4
@adi_drv = internal global { %struct.gameport_driver, [32 x i8] } { %struct.gameport_driver { ptr @.str.1, ptr @adi_connect, ptr null, ptr @adi_disconnect, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adi_drv_exit = internal global ptr @adi_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adi\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Logitech ADI joystick family driver\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adi_init_digital.seq = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 4, i32 -2, i32 -3, i32 10, i32 -6, i32 -11, i32 -7, i32 -9, i32 11, i32 0], [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adi_id_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014adi: Short ID packet: reported: %d != read: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adi_id_decode\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/joystick/adi.c\00", [35 x i8] zeroinitializer }, align 32
@adi_id_decode._entry_ptr = internal global ptr @adi_id_decode._entry, section ".printk_index", align 4
@adi_id_decode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014adi: Bad data packet length (%d).\0A\00", [59 x i8] zeroinitializer }, align 32
@adi_id_decode._entry_ptr.7 = internal global ptr @adi_id_decode._entry.5, section ".printk_index", align 4
@adi_id_decode._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014adi: Other than 8-dir POVs not supported yet.\0A\00", [47 x i8] zeroinitializer }, align 32
@adi_id_decode._entry_ptr.10 = internal global ptr @adi_id_decode._entry.8, section ".printk_index", align 4
@adi_id_decode._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014adi: Expected length %d != data length %d\0A\00", [51 x i8] zeroinitializer }, align 32
@adi_id_decode._entry_ptr.13 = internal global ptr @adi_id_decode._entry.11, section ".printk_index", align 4
@adi_names = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Logitech %s [%s]\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s/input%d\00", [21 x i8] zeroinitializer }, align 32
@adi_abs = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @adi_wmi_abs, ptr @adi_wmgpe_abs, ptr @adi_wmf_abs, ptr @adi_cm2_abs, ptr @adi_wmi_abs, ptr @adi_wmf_abs, ptr @adi_wmgpe_abs, ptr @adi_wmed3d_abs, ptr @adi_wmgpe_abs, ptr @adi_wmgpe_abs, ptr @adi_wmi_abs], [52 x i8] zeroinitializer }, align 32
@adi_key = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @adi_wmi_key, ptr @adi_wmgpe_key, ptr @adi_cm2_key, ptr @adi_cm2_key, ptr @adi_wmi_key, ptr @adi_cm2_key, ptr @adi_wmgpe_key, ptr @adi_wmed3d_key, ptr @adi_wmgpe_key, ptr @adi_wmgpe_key, ptr @adi_wmi_key], [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WingMan Extreme Digital\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ThunderPad Digital\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SideCar\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CyberMan 2\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WingMan Interceptor\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WingMan Formula\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WingMan GamePad\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WingMan Extreme Digital 3D\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WingMan GamePad Extreme\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WingMan GamePad USB\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unknown Device %#x\00", [45 x i8] zeroinitializer }, align 32
@adi_wmi_abs = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\00\01\06\10\11\12\13\14\15", [23 x i8] zeroinitializer }, align 32
@adi_wmgpe_abs = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\10\11", [28 x i8] zeroinitializer }, align 32
@adi_wmf_abs = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\08\09\0A\10\11\12\13\14\15", [23 x i8] zeroinitializer }, align 32
@adi_cm2_abs = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\02\03\04\05", [26 x i8] zeroinitializer }, align 32
@adi_wmed3d_abs = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\00\01\06\05\10\11", [26 x i8] zeroinitializer }, align 32
@adi_wmi_key = internal global { [9 x i16], [46 x i8] } { [9 x i16] [i16 288, i16 291, i16 289, i16 292, i16 294, i16 295, i16 296, i16 297, i16 276], [46 x i8] zeroinitializer }, align 32
@adi_wmgpe_key = internal global { [11 x i16], [42 x i8] } { [11 x i16] [i16 304, i16 305, i16 306, i16 307, i16 308, i16 309, i16 310, i16 311, i16 315, i16 316, i16 314], [42 x i8] zeroinitializer }, align 32
@adi_cm2_key = internal global { [8 x i16], [16 x i8] } { [8 x i16] [i16 257, i16 258, i16 259, i16 260, i16 261, i16 262, i16 263, i16 264], [16 x i8] zeroinitializer }, align 32
@adi_wmed3d_key = internal global { [7 x i16], [18 x i8] } { [7 x i16] [i16 288, i16 289, i16 290, i16 291, i16 292, i16 294, i16 295], [18 x i8] zeroinitializer }, align 32
@adi_hat_to_axis = internal constant { [9 x %struct.anon.69], [56 x i8] } { [9 x %struct.anon.69] [%struct.anon.69 zeroinitializer, %struct.anon.69 { i32 0, i32 -1 }, %struct.anon.69 { i32 1, i32 -1 }, %struct.anon.69 { i32 1, i32 0 }, %struct.anon.69 { i32 1, i32 1 }, %struct.anon.69 { i32 0, i32 1 }, %struct.anon.69 { i32 -1, i32 1 }, %struct.anon.69 { i32 -1, i32 0 }, %struct.anon.69 { i32 -1, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 6]
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"adi_drv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 542, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 551, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 546, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant [4 x i8] c"seq\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 300, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 322, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 333, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 342, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 365, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"adi_names\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 398, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 399, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"adi_abs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 73, i32 14 }
@___asan_gen_.81 = private unnamed_addr constant [8 x i8] c"adi_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 76, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 57 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 79 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 57, i32 90 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 58, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 58, i32 28 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 58, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 59, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 59, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 60, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 60, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant [12 x i8] c"adi_wmi_abs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 63, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"adi_wmgpe_abs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 62, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"adi_wmf_abs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 66, i32 13 }
@___asan_gen_.126 = private unnamed_addr constant [12 x i8] c"adi_cm2_abs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 65, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant [15 x i8] c"adi_wmed3d_abs\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 64, i32 13 }
@___asan_gen_.132 = private unnamed_addr constant [12 x i8] c"adi_wmi_key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 69, i32 14 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"adi_wmgpe_key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 68, i32 14 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"adi_cm2_key\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 71, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"adi_wmed3d_key\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 70, i32 14 }
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"adi_hat_to_axis\00", align 1
@___asan_gen_.145 = private constant [32 x i8] c"../drivers/input/joystick/adi.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 86, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_adi_drv_exit, ptr @__initcall__kmod_adi__227_551_adi_drv_init6, ptr @adi_drv_exit, ptr @adi_id_decode._entry, ptr @adi_id_decode._entry.11, ptr @adi_id_decode._entry.5, ptr @adi_id_decode._entry.8, ptr @adi_id_decode._entry_ptr, ptr @adi_id_decode._entry_ptr.10, ptr @adi_id_decode._entry_ptr.13, ptr @adi_id_decode._entry_ptr.7, ptr @adi_drv, ptr @.str, ptr @.str.1, ptr @adi_init_digital.seq, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @adi_names, ptr @.str.14, ptr @.str.15, ptr @adi_abs, ptr @adi_key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @adi_wmi_abs, ptr @adi_wmgpe_abs, ptr @adi_wmf_abs, ptr @adi_cm2_abs, ptr @adi_wmed3d_abs, ptr @adi_wmi_key, ptr @adi_wmgpe_key, ptr @adi_cm2_key, ptr @adi_wmed3d_key, ptr @adi_hat_to_axis], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_drv to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_init_digital.seq to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_id_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_id_decode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_id_decode._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_id_decode._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_names to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_abs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_key to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmi_abs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmgpe_abs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmf_abs to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_cm2_abs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmed3d_abs to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmi_key to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmgpe_key to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_cm2_key to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_wmed3d_key to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adi_hat_to_axis to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__gameport_register_driver(ptr noundef nonnull @adi_drv, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adi_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gameport_unregister_driver(ptr noundef nonnull @adi_drv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__gameport_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_connect(ptr noundef %gameport, ptr noundef %drv) #2 align 64 {
entry:
  %buf.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 876) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gameport, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @gameport_open(ptr noundef %gameport, ptr noundef %drv, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.fail1_crit_edge

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end5:                                          ; preds = %if.end
  %trigger.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 6
  %io.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end5
  %arrayidx72.i = phi ptr [ @adi_init_digital.seq, %if.end5 ], [ %arrayidx.i, %for.inc.i.for.body.i_crit_edge ]
  %i.071.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %trigger.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %4(ptr noundef %gameport) #8
  br label %gameport_trigger.exit.i

do.body.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %io.i.i, align 4
  %and.i.i = and i32 %6, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #8, !srcloc !97
  br label %gameport_trigger.exit.i

gameport_trigger.exit.i:                          ; preds = %do.body.i.i, %if.then.i.i
  %8 = lshr i32 265, %i.071.i
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %gameport_trigger.exit.i.if.end.i_crit_edge, label %if.then.i

gameport_trigger.exit.i.if.end.i_crit_edge:       ; preds = %gameport_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %gameport_trigger.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx72.i, align 4
  tail call void @msleep(i32 noundef %11) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %gameport_trigger.exit.i.if.end.i_crit_edge
  %12 = lshr i32 246, %i.071.i
  %13 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not.i = icmp eq i32 %13, 0
  br i1 %cmp4.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool30.not69.i = icmp eq i32 %15, 0
  br i1 %tobool30.not69.i, label %if.then5.i.cond.false47.i_crit_edge, label %while.body.i.preheader

if.then5.i.cond.false47.i_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false47.i

while.body.i.preheader:                           ; preds = %if.then5.i
  %sub.i = sub i32 0, %15
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %__ms.070.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %sub.i, %while.body.i.preheader ]
  %dec.i = add i32 %__ms.070.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #8
  %tobool30.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool30.not.i, label %while.body.i.cond.false47.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.cond.false47.i_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false47.i

cond.false47.i:                                   ; preds = %while.body.i.cond.false47.i_crit_edge, %if.then5.i.cond.false47.i_crit_edge
  %mul34.i = mul i32 %15, -14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %mul34.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.false47.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %arrayidx.i = getelementptr [10 x i32], ptr @adi_init_digital.seq, i32 0, i32 %inc.i
  %exitcond.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.i, label %adi_init_digital.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

adi_init_digital.exit:                            ; preds = %for.inc.i
  tail call fastcc void @adi_read_packet(ptr noundef nonnull %call7.i.i)
  %adi = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1
  %ret = getelementptr inbounds %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp = icmp sgt i32 %19, 9
  br i1 %cmp, label %if.then6, label %adi_init_digital.exit.for.body.preheader_crit_edge

adi_init_digital.exit.for.body.preheader_crit_edge: ; preds = %adi_init_digital.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.then6:                                         ; preds = %adi_init_digital.exit
  %idx.i = getelementptr inbounds %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %idx.i, align 8
  %add.i = add i32 %21, 10
  store i32 %add.i, ptr %idx.i, align 8
  %22 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %23)
  %cmp.i.not = icmp sgt i32 %add.i, %23
  br i1 %cmp.i.not, label %if.then6.lor.lhs.false.i_crit_edge, label %for.body.i138.preheader

if.then6.lor.lhs.false.i_crit_edge:               ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

for.body.i138.preheader:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i136 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %add.i
  %24 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i136, align 1
  %26 = lshr i8 %25, 5
  %27 = and i8 %26, 1
  %sub.i135.1 = add i32 %21, 9
  %arrayidx.i136.1 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.1
  %28 = ptrtoint ptr %arrayidx.i136.1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i136.1, align 1
  %30 = lshr i8 %29, 4
  %31 = and i8 %30, 2
  %or.i.1222 = or i8 %31, %27
  %sub.i135.2 = add i32 %21, 8
  %arrayidx.i136.2 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.2
  %32 = ptrtoint ptr %arrayidx.i136.2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i136.2, align 1
  %34 = lshr i8 %33, 3
  %35 = and i8 %34, 4
  %or.i.2223 = or i8 %35, %or.i.1222
  %sub.i135.3 = add i32 %21, 7
  %arrayidx.i136.3 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.3
  %36 = ptrtoint ptr %arrayidx.i136.3 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i136.3, align 1
  %38 = lshr i8 %37, 2
  %39 = and i8 %38, 8
  %or.i.3224 = or i8 %39, %or.i.2223
  %sub.i135.4 = add i32 %21, 6
  %arrayidx.i136.4 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.4
  %40 = ptrtoint ptr %arrayidx.i136.4 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i136.4, align 1
  %42 = lshr i8 %41, 1
  %43 = and i8 %42, 16
  %or.i.4225 = or i8 %43, %or.i.3224
  %sub.i135.5 = add i32 %21, 5
  %arrayidx.i136.5 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.5
  %44 = ptrtoint ptr %arrayidx.i136.5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i136.5, align 1
  %46 = and i8 %45, 32
  %or.i.5226 = or i8 %46, %or.i.4225
  %sub.i135.6 = add i32 %21, 4
  %arrayidx.i136.6 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.6
  %47 = ptrtoint ptr %arrayidx.i136.6 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i136.6, align 1
  %49 = shl i8 %48, 1
  %50 = and i8 %49, 64
  %or.i.6227 = or i8 %50, %or.i.5226
  %sub.i135.7 = add i32 %21, 3
  %arrayidx.i136.7 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.7
  %51 = ptrtoint ptr %arrayidx.i136.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i136.7, align 1
  %53 = shl i8 %52, 2
  %54 = and i8 %53, -128
  %or.i.7228 = or i8 %54, %or.i.6227
  %or.i.7 = zext i8 %or.i.7228 to i32
  %sub.i135.8 = add i32 %21, 2
  %arrayidx.i136.8 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.8
  %55 = ptrtoint ptr %arrayidx.i136.8 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i136.8, align 1
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %and.i.8 = zext i8 %58 to i32
  %shl.i.8 = shl nuw nsw i32 %and.i.8, 8
  %or.i.8 = or i32 %shl.i.8, %or.i.7
  %sub.i135.9 = add i32 %21, 1
  %arrayidx.i136.9 = getelementptr %struct.adi, ptr %adi, i32 0, i32 15, i32 %sub.i135.9
  %59 = ptrtoint ptr %arrayidx.i136.9 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i136.9, align 1
  %61 = lshr i8 %60, 5
  %62 = and i8 %61, 1
  %and.i.9 = zext i8 %62 to i32
  %shl.i.9 = shl nuw nsw i32 %and.i.9, 9
  %or.i.9 = or i32 %shl.i.9, %or.i.8
  %phi.bo = add nsw i32 %or.i.9, -1
  %phi.bo231 = ashr i32 %phi.bo, 1
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.body.i138.preheader, %if.then6.lor.lhs.false.i_crit_edge
  %retval.0.i207 = phi i32 [ %phi.bo231, %for.body.i138.preheader ], [ -1, %if.then6.lor.lhs.false.i_crit_edge ]
  %idx.i139 = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 3
  %63 = ptrtoint ptr %idx.i139 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %idx.i139, align 8
  %64 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %idx.i, align 8
  %ret6.i = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 2
  %65 = ptrtoint ptr %ret6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ret6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp7.i = icmp slt i32 %66, 1
  br i1 %cmp7.i, label %lor.lhs.false.i.for.body.preheader_crit_edge, label %if.end.i142

lor.lhs.false.i.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.end.i142:                                      ; preds = %lor.lhs.false.i
  %data.i = getelementptr inbounds %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 15
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %data.i, align 4
  %69 = and i8 %68, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i, label %lor.lhs.false10.i, label %if.end.i142.for.body.preheader_crit_edge

if.end.i142.for.body.preheader_crit_edge:         ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false10.i:                                ; preds = %if.end.i142
  %data12.i = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 15
  %70 = ptrtoint ptr %data12.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %data12.i, align 4
  %72 = and i8 %71, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool16.not.not.i = icmp eq i8 %72, 0
  br i1 %tobool16.not.not.i, label %lor.lhs.false10.i.for.body.preheader_crit_edge, label %lor.lhs.false10.i.for.body.i145_crit_edge

lor.lhs.false10.i.for.body.i145_crit_edge:        ; preds = %lor.lhs.false10.i
  br label %for.body.i145

lor.lhs.false10.i.for.body.preheader_crit_edge:   ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %lor.lhs.false10.i.for.body.i145_crit_edge
  %i.053.i = phi i32 [ %add.i144, %for.body.i145.for.body.i145_crit_edge ], [ 1, %lor.lhs.false10.i.for.body.i145_crit_edge ]
  %arrayidx25.i = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 15, i32 %i.053.i
  %73 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx25.i, align 1
  %add.i144 = add i32 %i.053.i, 1
  %add28.i = add i32 %add.i144, %retval.0.i207
  %arrayidx29.i = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 15, i32 %add28.i
  %75 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx29.i, align 1
  %76 = ptrtoint ptr %ret6.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ret6.i, align 4
  %cmp21.not.i = icmp sgt i32 %add.i144, %77
  br i1 %cmp21.not.i, label %for.end.i, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i145

for.end.i:                                        ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ret, align 4
  %add34.i = add i32 %79, %77
  store i32 %add34.i, ptr %ret, align 4
  %80 = ptrtoint ptr %ret6.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %ret6.i, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.end.i, %lor.lhs.false10.i.for.body.preheader_crit_edge, %if.end.i142.for.body.preheader_crit_edge, %lor.lhs.false.i.for.body.preheader_crit_edge, %adi_init_digital.exit.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0211 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %add.ptr = getelementptr %struct.adi, ptr %adi, i32 %i.0211
  %ret.i146 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 2
  %81 = ptrtoint ptr %ret.i146 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %ret.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %82)
  %cmp.i147 = icmp slt i32 %82, 66
  br i1 %cmp.i147, label %for.body.adi_id_decode.exit_crit_edge, label %if.end.i149

for.body.adi_id_decode.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_id_decode.exit

if.end.i149:                                      ; preds = %for.body
  %idx.i.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 3
  %83 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %idx.i.i, align 8
  %add.i.i148 = add i32 %84, 10
  store i32 %add.i.i148, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i148, i32 %82)
  %cmp.i.not.i = icmp sgt i32 %add.i.i148, %82
  br i1 %cmp.i.not.i, label %if.end.i149.if.end6.i_crit_edge, label %for.body.i.preheader.i

if.end.i149.if.end6.i_crit_edge:                  ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

for.body.i.preheader.i:                           ; preds = %if.end.i149
  %arrayidx.i.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i.i148
  %85 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i, align 1
  %87 = lshr i8 %86, 5
  %88 = and i8 %87, 1
  %sub.i.1.i = add i32 %84, 9
  %arrayidx.i.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.1.i
  %89 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.1.i, align 1
  %91 = lshr i8 %90, 4
  %92 = and i8 %91, 2
  %or.i.1211.i = or i8 %92, %88
  %sub.i.2.i = add i32 %84, 8
  %arrayidx.i.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.2.i
  %93 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i.2.i, align 1
  %95 = lshr i8 %94, 3
  %96 = and i8 %95, 4
  %or.i.2212.i = or i8 %or.i.1211.i, %96
  %sub.i.3.i = add i32 %84, 7
  %arrayidx.i.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.3.i
  %97 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.3.i, align 1
  %99 = lshr i8 %98, 2
  %100 = and i8 %99, 8
  %or.i.3213.i = or i8 %or.i.2212.i, %100
  %sub.i.4.i = add i32 %84, 6
  %arrayidx.i.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.4.i
  %101 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.4.i, align 1
  %103 = lshr i8 %102, 1
  %104 = and i8 %103, 16
  %or.i.4214.i = or i8 %or.i.3213.i, %104
  %sub.i.5.i = add i32 %84, 5
  %arrayidx.i.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.5.i
  %105 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.5.i, align 1
  %107 = and i8 %106, 32
  %or.i.5215.i = or i8 %or.i.4214.i, %107
  %sub.i.6.i = add i32 %84, 4
  %arrayidx.i.6.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.6.i
  %108 = ptrtoint ptr %arrayidx.i.6.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i.6.i, align 1
  %110 = shl i8 %109, 1
  %111 = and i8 %110, 64
  %or.i.6216.i = or i8 %or.i.5215.i, %111
  %sub.i.7.i = add i32 %84, 3
  %arrayidx.i.7.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.7.i
  %112 = ptrtoint ptr %arrayidx.i.7.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i.7.i, align 1
  %114 = shl i8 %113, 2
  %115 = and i8 %114, -128
  %or.i.7217.i = or i8 %or.i.6216.i, %115
  %or.i.7.i = zext i8 %or.i.7217.i to i32
  %sub.i.8.i = add i32 %84, 2
  %arrayidx.i.8.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.8.i
  %116 = ptrtoint ptr %arrayidx.i.8.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.i.8.i, align 1
  %118 = lshr i8 %117, 5
  %119 = and i8 %118, 1
  %and.i.8.i = zext i8 %119 to i32
  %shl.i.8.i = shl nuw nsw i32 %and.i.8.i, 8
  %or.i.8.i = or i32 %shl.i.8.i, %or.i.7.i
  %sub.i.9.i = add i32 %84, 1
  %arrayidx.i.9.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i.9.i
  %120 = ptrtoint ptr %arrayidx.i.9.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx.i.9.i, align 1
  %122 = lshr i8 %121, 5
  %123 = and i8 %122, 1
  %and.i.9.i = zext i8 %123 to i32
  %shl.i.9.i = shl nuw nsw i32 %and.i.9.i, 9
  %or.i.9.i = or i32 %shl.i.9.i, %or.i.8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %or.i.9.i)
  %cmp2.i = icmp slt i32 %82, %or.i.9.i
  br i1 %cmp2.i, label %do.end.i, label %for.body.i.preheader.i.if.end6.i_crit_edge

for.body.i.preheader.i.if.end6.i_crit_edge:       ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

do.end.i:                                         ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %or.i.9.i, i32 noundef %82) #12
  br label %adi_id_decode.exit

if.end6.i:                                        ; preds = %for.body.i.preheader.i.if.end6.i_crit_edge, %if.end.i149.if.end6.i_crit_edge
  %add.i2.i = add i32 %84, 14
  %124 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %add.i2.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i2.i, i32 %82)
  %cmp.i4.not.i = icmp sgt i32 %add.i2.i, %82
  br i1 %cmp.i4.not.i, label %if.end6.i.adi_get_bits.exit16.i_crit_edge, label %for.body.i14.preheader.i

if.end6.i.adi_get_bits.exit16.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit16.i

for.body.i14.preheader.i:                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i8.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i2.i
  %125 = ptrtoint ptr %arrayidx.i8.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx.i8.i, align 1
  %127 = lshr i8 %126, 5
  %128 = and i8 %127, 1
  %sub.i7.1.i = add i32 %84, 13
  %arrayidx.i8.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i7.1.i
  %129 = ptrtoint ptr %arrayidx.i8.1.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i8.1.i, align 1
  %131 = lshr i8 %130, 4
  %132 = and i8 %131, 2
  %or.i11.1218.i = or i8 %132, %128
  %sub.i7.2.i = add i32 %84, 12
  %arrayidx.i8.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i7.2.i
  %133 = ptrtoint ptr %arrayidx.i8.2.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx.i8.2.i, align 1
  %135 = lshr i8 %134, 3
  %136 = and i8 %135, 4
  %or.i11.2219.i = or i8 %or.i11.1218.i, %136
  %sub.i7.3.i = add i32 %84, 11
  %arrayidx.i8.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i7.3.i
  %137 = ptrtoint ptr %arrayidx.i8.3.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx.i8.3.i, align 1
  %139 = lshr i8 %138, 2
  %140 = and i8 %139, 8
  %or.i11.3220.i = or i8 %or.i11.2219.i, %140
  br label %adi_get_bits.exit16.i

adi_get_bits.exit16.i:                            ; preds = %for.body.i14.preheader.i, %if.end6.i.adi_get_bits.exit16.i_crit_edge
  %retval.0.i15.i = phi i8 [ 0, %if.end6.i.adi_get_bits.exit16.i_crit_edge ], [ %or.i11.3220.i, %for.body.i14.preheader.i ]
  %add.i18.i = add i32 %84, 18
  %141 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add.i18.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i18.i, i32 %82)
  %cmp.i20.not.i = icmp sgt i32 %add.i18.i, %82
  br i1 %cmp.i20.not.i, label %adi_get_bits.exit16.i.adi_get_bits.exit32.i_crit_edge, label %for.body.i30.preheader.i

adi_get_bits.exit16.i.adi_get_bits.exit32.i_crit_edge: ; preds = %adi_get_bits.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit32.i

for.body.i30.preheader.i:                         ; preds = %adi_get_bits.exit16.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i24.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i18.i
  %142 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx.i24.i, align 1
  %144 = lshr i8 %143, 5
  %145 = and i8 %144, 1
  %sub.i23.1.i = add i32 %84, 17
  %arrayidx.i24.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i23.1.i
  %146 = ptrtoint ptr %arrayidx.i24.1.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i24.1.i, align 1
  %148 = lshr i8 %147, 4
  %149 = and i8 %148, 2
  %or.i27.1221.i = or i8 %149, %145
  %sub.i23.2.i = add i32 %84, 16
  %arrayidx.i24.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i23.2.i
  %150 = ptrtoint ptr %arrayidx.i24.2.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx.i24.2.i, align 1
  %152 = lshr i8 %151, 3
  %153 = and i8 %152, 4
  %or.i27.2222.i = or i8 %or.i27.1221.i, %153
  %sub.i23.3.i = add i32 %84, 15
  %arrayidx.i24.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i23.3.i
  %154 = ptrtoint ptr %arrayidx.i24.3.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i24.3.i, align 1
  %156 = lshr i8 %155, 2
  %157 = and i8 %156, 8
  %or.i27.3223.i = or i8 %or.i27.2222.i, %157
  br label %adi_get_bits.exit32.i

adi_get_bits.exit32.i:                            ; preds = %for.body.i30.preheader.i, %adi_get_bits.exit16.i.adi_get_bits.exit32.i_crit_edge
  %retval.0.i31.i = phi i8 [ 0, %adi_get_bits.exit16.i.adi_get_bits.exit32.i_crit_edge ], [ %or.i27.3223.i, %for.body.i30.preheader.i ]
  %shl.i150 = shl i8 %retval.0.i31.i, 4
  %or.i151 = or i8 %shl.i150, %retval.0.i15.i
  %id.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 4
  %158 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 %or.i151, ptr %id.i, align 4
  %add.i34.i = add i32 %84, 22
  %159 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add.i34.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i34.i, i32 %82)
  %cmp.i36.not.i = icmp sgt i32 %add.i34.i, %82
  br i1 %cmp.i36.not.i, label %adi_get_bits.exit32.i.if.end11.i_crit_edge, label %for.body.i46.preheader.i

adi_get_bits.exit32.i.if.end11.i_crit_edge:       ; preds = %adi_get_bits.exit32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

for.body.i46.preheader.i:                         ; preds = %adi_get_bits.exit32.i
  %sub.i39.2.i = add i32 %84, 20
  %arrayidx.i40.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i39.2.i
  %160 = ptrtoint ptr %arrayidx.i40.2.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx.i40.2.i, align 1
  %162 = lshr i8 %161, 3
  %163 = and i8 %162, 4
  %sub.i39.3.i = add i32 %84, 19
  %arrayidx.i40.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i39.3.i
  %164 = ptrtoint ptr %arrayidx.i40.3.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx.i40.3.i, align 1
  %166 = lshr i8 %165, 2
  %167 = and i8 %166, 8
  %or.i43.3224.i = or i8 %167, %163
  %or.i43.3.i = zext i8 %or.i43.3224.i to i32
  %and.i152 = and i32 %or.i43.3.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i152)
  %tobool.not.i153 = icmp eq i32 %and.i152, 0
  br i1 %tobool.not.i153, label %for.body.i46.preheader.i.if.end11.i_crit_edge, label %if.then10.i

for.body.i46.preheader.i.if.end11.i_crit_edge:    ; preds = %for.body.i46.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then10.i:                                      ; preds = %for.body.i46.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %hats.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 9
  %168 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %hats.i, align 1
  %inc.i154 = add i8 %169, 1
  store i8 %inc.i154, ptr %hats.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %for.body.i46.preheader.i.if.end11.i_crit_edge, %adi_get_bits.exit32.i.if.end11.i_crit_edge
  %retval.0.i47198.i = phi i32 [ %or.i43.3.i, %if.then10.i ], [ %or.i43.3.i, %for.body.i46.preheader.i.if.end11.i_crit_edge ], [ 0, %adi_get_bits.exit32.i.if.end11.i_crit_edge ]
  %add.i50.i = add i32 %84, 32
  %170 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %add.i50.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i50.i, i32 %82)
  %cmp.i52.not.i = icmp sgt i32 %add.i50.i, %82
  br i1 %cmp.i52.not.i, label %adi_get_bits.exit64.thread.i, label %for.body.i62.preheader.i

for.body.i62.preheader.i:                         ; preds = %if.end11.i
  %arrayidx.i56.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i50.i
  %171 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx.i56.i, align 1
  %173 = lshr i8 %172, 5
  %174 = and i8 %173, 1
  %sub.i55.1.i = add i32 %84, 31
  %arrayidx.i56.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.1.i
  %175 = ptrtoint ptr %arrayidx.i56.1.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i56.1.i, align 1
  %177 = lshr i8 %176, 4
  %178 = and i8 %177, 2
  %or.i59.1225.i = or i8 %178, %174
  %sub.i55.2.i = add i32 %84, 30
  %arrayidx.i56.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.2.i
  %179 = ptrtoint ptr %arrayidx.i56.2.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx.i56.2.i, align 1
  %181 = lshr i8 %180, 3
  %182 = and i8 %181, 4
  %or.i59.2226.i = or i8 %or.i59.1225.i, %182
  %sub.i55.3.i = add i32 %84, 29
  %arrayidx.i56.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.3.i
  %183 = ptrtoint ptr %arrayidx.i56.3.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i56.3.i, align 1
  %185 = lshr i8 %184, 2
  %186 = and i8 %185, 8
  %or.i59.3227.i = or i8 %or.i59.2226.i, %186
  %sub.i55.4.i = add i32 %84, 28
  %arrayidx.i56.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.4.i
  %187 = ptrtoint ptr %arrayidx.i56.4.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx.i56.4.i, align 1
  %189 = lshr i8 %188, 1
  %190 = and i8 %189, 16
  %or.i59.4228.i = or i8 %or.i59.3227.i, %190
  %sub.i55.5.i = add i32 %84, 27
  %arrayidx.i56.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.5.i
  %191 = ptrtoint ptr %arrayidx.i56.5.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx.i56.5.i, align 1
  %193 = and i8 %192, 32
  %or.i59.5229.i = or i8 %or.i59.4228.i, %193
  %sub.i55.6.i = add i32 %84, 26
  %arrayidx.i56.6.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.6.i
  %194 = ptrtoint ptr %arrayidx.i56.6.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx.i56.6.i, align 1
  %196 = shl i8 %195, 1
  %197 = and i8 %196, 64
  %or.i59.6230.i = or i8 %or.i59.5229.i, %197
  %sub.i55.7.i = add i32 %84, 25
  %arrayidx.i56.7.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.7.i
  %198 = ptrtoint ptr %arrayidx.i56.7.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx.i56.7.i, align 1
  %200 = shl i8 %199, 2
  %201 = and i8 %200, -128
  %or.i59.7231.i = or i8 %or.i59.6230.i, %201
  %or.i59.7.i = zext i8 %or.i59.7231.i to i32
  %sub.i55.8.i = add i32 %84, 24
  %arrayidx.i56.8.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.8.i
  %202 = ptrtoint ptr %arrayidx.i56.8.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx.i56.8.i, align 1
  %204 = lshr i8 %203, 5
  %205 = and i8 %204, 1
  %and.i57.8.i = zext i8 %205 to i32
  %shl.i58.8.i = shl nuw nsw i32 %and.i57.8.i, 8
  %or.i59.8.i = or i32 %shl.i58.8.i, %or.i59.7.i
  %sub.i55.9.i = add i32 %84, 23
  %arrayidx.i56.9.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i55.9.i
  %206 = ptrtoint ptr %arrayidx.i56.9.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %arrayidx.i56.9.i, align 1
  %208 = lshr i8 %207, 5
  %209 = and i8 %208, 1
  %and.i57.9.i = zext i8 %209 to i32
  %shl.i58.9.i = shl nuw nsw i32 %and.i57.9.i, 9
  %or.i59.9.i = or i32 %shl.i58.9.i, %or.i59.8.i
  %length.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 1
  %210 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %or.i59.9.i, ptr %length.i, align 8
  %211 = add nsw i32 %or.i59.9.i, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -248, i32 %211)
  %212 = icmp ult i32 %211, -248
  br i1 %212, label %for.body.i62.preheader.i.do.end22.i_crit_edge, label %if.end27.i

for.body.i62.preheader.i.do.end22.i_crit_edge:    ; preds = %for.body.i62.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.i

adi_get_bits.exit64.thread.i:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %length200.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 1
  %213 = ptrtoint ptr %length200.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %length200.i, align 8
  br label %do.end22.i

do.end22.i:                                       ; preds = %adi_get_bits.exit64.thread.i, %for.body.i62.preheader.i.do.end22.i_crit_edge
  %length205.i = phi ptr [ %length200.i, %adi_get_bits.exit64.thread.i ], [ %length.i, %for.body.i62.preheader.i.do.end22.i_crit_edge ]
  %retval.0.i63204.i = phi i32 [ 0, %adi_get_bits.exit64.thread.i ], [ %or.i59.9.i, %for.body.i62.preheader.i.do.end22.i_crit_edge ]
  %call25.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %retval.0.i63204.i) #12
  %214 = ptrtoint ptr %length205.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %length205.i, align 4
  br label %adi_id_decode.exit

if.end27.i:                                       ; preds = %for.body.i62.preheader.i
  %add.i66.i = add i32 %84, 36
  %215 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add.i66.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i66.i, i32 %82)
  %cmp.i68.not.i = icmp sgt i32 %add.i66.i, %82
  br i1 %cmp.i68.not.i, label %if.end27.i.adi_get_bits.exit80.i_crit_edge, label %for.body.i78.preheader.i

if.end27.i.adi_get_bits.exit80.i_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit80.i

for.body.i78.preheader.i:                         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i72.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i66.i
  %216 = ptrtoint ptr %arrayidx.i72.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i72.i, align 1
  %218 = lshr i8 %217, 5
  %219 = and i8 %218, 1
  %sub.i71.1.i = add i32 %84, 35
  %arrayidx.i72.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i71.1.i
  %220 = ptrtoint ptr %arrayidx.i72.1.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i72.1.i, align 1
  %222 = lshr i8 %221, 4
  %223 = and i8 %222, 2
  %or.i75.1232.i = or i8 %223, %219
  %sub.i71.2.i = add i32 %84, 34
  %arrayidx.i72.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i71.2.i
  %224 = ptrtoint ptr %arrayidx.i72.2.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i72.2.i, align 1
  %226 = lshr i8 %225, 3
  %227 = and i8 %226, 4
  %or.i75.2233.i = or i8 %or.i75.1232.i, %227
  %sub.i71.3.i = add i32 %84, 33
  %arrayidx.i72.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i71.3.i
  %228 = ptrtoint ptr %arrayidx.i72.3.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %arrayidx.i72.3.i, align 1
  %230 = lshr i8 %229, 2
  %231 = and i8 %230, 8
  %or.i75.3234.i = or i8 %or.i75.2233.i, %231
  br label %adi_get_bits.exit80.i

adi_get_bits.exit80.i:                            ; preds = %for.body.i78.preheader.i, %if.end27.i.adi_get_bits.exit80.i_crit_edge
  %retval.0.i79.i = phi i8 [ 0, %if.end27.i.adi_get_bits.exit80.i_crit_edge ], [ %or.i75.3234.i, %for.body.i78.preheader.i ]
  %axes8.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 7
  %232 = ptrtoint ptr %axes8.i to i32
  call void @__asan_store1_noabort(i32 %232)
  store i8 %retval.0.i79.i, ptr %axes8.i, align 1
  %add.i82.i = add i32 %84, 42
  %233 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %add.i82.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i82.i, i32 %82)
  %cmp.i84.not.i = icmp sgt i32 %add.i82.i, %82
  br i1 %cmp.i84.not.i, label %adi_get_bits.exit80.i.adi_get_bits.exit96.i_crit_edge, label %for.body.i94.preheader.i

adi_get_bits.exit80.i.adi_get_bits.exit96.i_crit_edge: ; preds = %adi_get_bits.exit80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit96.i

for.body.i94.preheader.i:                         ; preds = %adi_get_bits.exit80.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i88.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i82.i
  %234 = ptrtoint ptr %arrayidx.i88.i to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %arrayidx.i88.i, align 1
  %236 = lshr i8 %235, 5
  %237 = and i8 %236, 1
  %sub.i87.1.i = add i32 %84, 41
  %arrayidx.i88.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i87.1.i
  %238 = ptrtoint ptr %arrayidx.i88.1.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx.i88.1.i, align 1
  %240 = lshr i8 %239, 4
  %241 = and i8 %240, 2
  %or.i91.1235.i = or i8 %241, %237
  %sub.i87.2.i = add i32 %84, 40
  %arrayidx.i88.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i87.2.i
  %242 = ptrtoint ptr %arrayidx.i88.2.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx.i88.2.i, align 1
  %244 = lshr i8 %243, 3
  %245 = and i8 %244, 4
  %or.i91.2236.i = or i8 %or.i91.1235.i, %245
  %sub.i87.3.i = add i32 %84, 39
  %arrayidx.i88.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i87.3.i
  %246 = ptrtoint ptr %arrayidx.i88.3.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %arrayidx.i88.3.i, align 1
  %248 = lshr i8 %247, 2
  %249 = and i8 %248, 8
  %or.i91.3237.i = or i8 %or.i91.2236.i, %249
  %sub.i87.4.i = add i32 %84, 38
  %arrayidx.i88.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i87.4.i
  %250 = ptrtoint ptr %arrayidx.i88.4.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %arrayidx.i88.4.i, align 1
  %252 = lshr i8 %251, 1
  %253 = and i8 %252, 16
  %or.i91.4238.i = or i8 %or.i91.3237.i, %253
  %sub.i87.5.i = add i32 %84, 37
  %arrayidx.i88.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i87.5.i
  %254 = ptrtoint ptr %arrayidx.i88.5.i to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %arrayidx.i88.5.i, align 1
  %256 = and i8 %255, 32
  %or.i91.5239.i = or i8 %or.i91.4238.i, %256
  br label %adi_get_bits.exit96.i

adi_get_bits.exit96.i:                            ; preds = %for.body.i94.preheader.i, %adi_get_bits.exit80.i.adi_get_bits.exit96.i_crit_edge
  %retval.0.i95.i = phi i8 [ 0, %adi_get_bits.exit80.i.adi_get_bits.exit96.i_crit_edge ], [ %or.i91.5239.i, %for.body.i94.preheader.i ]
  %buttons.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 5
  %257 = ptrtoint ptr %buttons.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 %retval.0.i95.i, ptr %buttons.i, align 1
  %add.i98.i = add i32 %84, 48
  %258 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 %add.i98.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i98.i, i32 %82)
  %cmp.i100.not.i = icmp sgt i32 %add.i98.i, %82
  br i1 %cmp.i100.not.i, label %adi_get_bits.exit96.i.land.lhs.true.i_crit_edge, label %for.body.i110.preheader.i

adi_get_bits.exit96.i.land.lhs.true.i_crit_edge:  ; preds = %adi_get_bits.exit96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.body.i110.preheader.i:                        ; preds = %adi_get_bits.exit96.i
  %arrayidx.i104.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i98.i
  %259 = ptrtoint ptr %arrayidx.i104.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %arrayidx.i104.i, align 1
  %261 = lshr i8 %260, 5
  %262 = and i8 %261, 1
  %sub.i103.1.i = add i32 %84, 47
  %arrayidx.i104.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i103.1.i
  %263 = ptrtoint ptr %arrayidx.i104.1.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx.i104.1.i, align 1
  %265 = lshr i8 %264, 4
  %266 = and i8 %265, 2
  %or.i107.1240.i = or i8 %266, %262
  %sub.i103.2.i = add i32 %84, 46
  %arrayidx.i104.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i103.2.i
  %267 = ptrtoint ptr %arrayidx.i104.2.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %arrayidx.i104.2.i, align 1
  %269 = lshr i8 %268, 3
  %270 = and i8 %269, 4
  %or.i107.2241.i = or i8 %or.i107.1240.i, %270
  %sub.i103.3.i = add i32 %84, 45
  %arrayidx.i104.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i103.3.i
  %271 = ptrtoint ptr %arrayidx.i104.3.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %arrayidx.i104.3.i, align 1
  %273 = lshr i8 %272, 2
  %274 = and i8 %273, 8
  %or.i107.3242.i = or i8 %or.i107.2241.i, %274
  %sub.i103.4.i = add i32 %84, 44
  %arrayidx.i104.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i103.4.i
  %275 = ptrtoint ptr %arrayidx.i104.4.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %arrayidx.i104.4.i, align 1
  %277 = lshr i8 %276, 1
  %278 = and i8 %277, 16
  %or.i107.4243.i = or i8 %or.i107.3242.i, %278
  %sub.i103.5.i = add i32 %84, 43
  %arrayidx.i104.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i103.5.i
  %279 = ptrtoint ptr %arrayidx.i104.5.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %arrayidx.i104.5.i, align 1
  %281 = and i8 %280, 32
  %or.i107.5244.i = or i8 %or.i107.4243.i, %281
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %or.i107.5244.i)
  %cmp33.not.i = icmp eq i8 %or.i107.5244.i, 8
  br i1 %cmp33.not.i, label %for.body.i110.preheader.i.if.end45.i_crit_edge, label %for.body.i110.preheader.i.land.lhs.true.i_crit_edge

for.body.i110.preheader.i.land.lhs.true.i_crit_edge: ; preds = %for.body.i110.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.body.i110.preheader.i.if.end45.i_crit_edge:   ; preds = %for.body.i110.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

land.lhs.true.i:                                  ; preds = %for.body.i110.preheader.i.land.lhs.true.i_crit_edge, %adi_get_bits.exit96.i.land.lhs.true.i_crit_edge
  %hats35.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 9
  %282 = ptrtoint ptr %hats35.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %hats35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool37.not.i = icmp eq i8 %283, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i.if.end45.i_crit_edge, label %do.end41.i

land.lhs.true.i.if.end45.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

do.end41.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  %284 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 0, ptr %length.i, align 8
  br label %adi_id_decode.exit

if.end45.i:                                       ; preds = %land.lhs.true.i.if.end45.i_crit_edge, %for.body.i110.preheader.i.if.end45.i_crit_edge
  %add.i114.i = add i32 %84, 54
  %285 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %add.i114.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i114.i, i32 %82)
  %cmp.i116.not.i = icmp sgt i32 %add.i114.i, %82
  br i1 %cmp.i116.not.i, label %if.end45.i.adi_get_bits.exit128.i_crit_edge, label %for.body.i126.preheader.i

if.end45.i.adi_get_bits.exit128.i_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit128.i

for.body.i126.preheader.i:                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i120.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i114.i
  %286 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %arrayidx.i120.i, align 1
  %288 = lshr i8 %287, 5
  %289 = and i8 %288, 1
  %sub.i119.1.i = add i32 %84, 53
  %arrayidx.i120.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i119.1.i
  %290 = ptrtoint ptr %arrayidx.i120.1.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx.i120.1.i, align 1
  %292 = lshr i8 %291, 4
  %293 = and i8 %292, 2
  %or.i123.1245.i = or i8 %293, %289
  %sub.i119.2.i = add i32 %84, 52
  %arrayidx.i120.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i119.2.i
  %294 = ptrtoint ptr %arrayidx.i120.2.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %arrayidx.i120.2.i, align 1
  %296 = lshr i8 %295, 3
  %297 = and i8 %296, 4
  %or.i123.2246.i = or i8 %or.i123.1245.i, %297
  %sub.i119.3.i = add i32 %84, 51
  %arrayidx.i120.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i119.3.i
  %298 = ptrtoint ptr %arrayidx.i120.3.i to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %arrayidx.i120.3.i, align 1
  %300 = lshr i8 %299, 2
  %301 = and i8 %300, 8
  %or.i123.3247.i = or i8 %or.i123.2246.i, %301
  %sub.i119.4.i = add i32 %84, 50
  %arrayidx.i120.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i119.4.i
  %302 = ptrtoint ptr %arrayidx.i120.4.i to i32
  call void @__asan_load1_noabort(i32 %302)
  %303 = load i8, ptr %arrayidx.i120.4.i, align 1
  %304 = lshr i8 %303, 1
  %305 = and i8 %304, 16
  %or.i123.4248.i = or i8 %or.i123.3247.i, %305
  %sub.i119.5.i = add i32 %84, 49
  %arrayidx.i120.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i119.5.i
  %306 = ptrtoint ptr %arrayidx.i120.5.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %arrayidx.i120.5.i, align 1
  %308 = and i8 %307, 32
  %or.i123.5249.i = or i8 %or.i123.4248.i, %308
  br label %adi_get_bits.exit128.i

adi_get_bits.exit128.i:                           ; preds = %for.body.i126.preheader.i, %if.end45.i.adi_get_bits.exit128.i_crit_edge
  %retval.0.i127.i = phi i8 [ 0, %if.end45.i.adi_get_bits.exit128.i_crit_edge ], [ %or.i123.5249.i, %for.body.i126.preheader.i ]
  %conv49.i = add i8 %retval.0.i127.i, %retval.0.i95.i
  %309 = ptrtoint ptr %buttons.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 %conv49.i, ptr %buttons.i, align 1
  %add.i130.i = add i32 %84, 58
  %310 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %add.i130.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i130.i, i32 %82)
  %cmp.i132.not.i = icmp sgt i32 %add.i130.i, %82
  br i1 %cmp.i132.not.i, label %adi_get_bits.exit128.i.adi_get_bits.exit144.i_crit_edge, label %for.body.i142.preheader.i

adi_get_bits.exit128.i.adi_get_bits.exit144.i_crit_edge: ; preds = %adi_get_bits.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit144.i

for.body.i142.preheader.i:                        ; preds = %adi_get_bits.exit128.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i136.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i130.i
  %311 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %arrayidx.i136.i, align 1
  %313 = lshr i8 %312, 5
  %314 = and i8 %313, 1
  %sub.i135.1.i = add i32 %84, 57
  %arrayidx.i136.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i135.1.i
  %315 = ptrtoint ptr %arrayidx.i136.1.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx.i136.1.i, align 1
  %317 = lshr i8 %316, 4
  %318 = and i8 %317, 2
  %or.i139.1250.i = or i8 %318, %314
  %sub.i135.2.i = add i32 %84, 56
  %arrayidx.i136.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i135.2.i
  %319 = ptrtoint ptr %arrayidx.i136.2.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %arrayidx.i136.2.i, align 1
  %321 = lshr i8 %320, 3
  %322 = and i8 %321, 4
  %or.i139.2251.i = or i8 %or.i139.1250.i, %322
  %sub.i135.3.i = add i32 %84, 55
  %arrayidx.i136.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i135.3.i
  %323 = ptrtoint ptr %arrayidx.i136.3.i to i32
  call void @__asan_load1_noabort(i32 %323)
  %324 = load i8, ptr %arrayidx.i136.3.i, align 1
  %325 = lshr i8 %324, 2
  %326 = and i8 %325, 8
  %or.i139.3252.i = or i8 %or.i139.2251.i, %326
  br label %adi_get_bits.exit144.i

adi_get_bits.exit144.i:                           ; preds = %for.body.i142.preheader.i, %adi_get_bits.exit128.i.adi_get_bits.exit144.i_crit_edge
  %retval.0.i143.i = phi i8 [ 0, %adi_get_bits.exit128.i.adi_get_bits.exit144.i_crit_edge ], [ %or.i139.3252.i, %for.body.i142.preheader.i ]
  %hats51.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 9
  %327 = ptrtoint ptr %hats51.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %hats51.i, align 1
  %conv54.i = add i8 %328, %retval.0.i143.i
  store i8 %conv54.i, ptr %hats51.i, align 1
  %add.i146.i = add i32 %84, 62
  %329 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store i32 %add.i146.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i146.i, i32 %82)
  %cmp.i148.not.i = icmp sgt i32 %add.i146.i, %82
  br i1 %cmp.i148.not.i, label %adi_get_bits.exit144.i.adi_get_bits.exit160.i_crit_edge, label %for.body.i158.preheader.i

adi_get_bits.exit144.i.adi_get_bits.exit160.i_crit_edge: ; preds = %adi_get_bits.exit144.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit160.i

for.body.i158.preheader.i:                        ; preds = %adi_get_bits.exit144.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i152.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i146.i
  %330 = ptrtoint ptr %arrayidx.i152.i to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %arrayidx.i152.i, align 1
  %332 = lshr i8 %331, 5
  %333 = and i8 %332, 1
  %sub.i151.1.i = add i32 %84, 61
  %arrayidx.i152.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i151.1.i
  %334 = ptrtoint ptr %arrayidx.i152.1.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx.i152.1.i, align 1
  %336 = lshr i8 %335, 4
  %337 = and i8 %336, 2
  %or.i155.1253.i = or i8 %337, %333
  %sub.i151.2.i = add i32 %84, 60
  %arrayidx.i152.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i151.2.i
  %338 = ptrtoint ptr %arrayidx.i152.2.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %arrayidx.i152.2.i, align 1
  %340 = lshr i8 %339, 3
  %341 = and i8 %340, 4
  %or.i155.2254.i = or i8 %or.i155.1253.i, %341
  %sub.i151.3.i = add i32 %84, 59
  %arrayidx.i152.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i151.3.i
  %342 = ptrtoint ptr %arrayidx.i152.3.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx.i152.3.i, align 1
  %344 = lshr i8 %343, 2
  %345 = and i8 %344, 8
  %or.i155.3255.i = or i8 %or.i155.2254.i, %345
  br label %adi_get_bits.exit160.i

adi_get_bits.exit160.i:                           ; preds = %for.body.i158.preheader.i, %adi_get_bits.exit144.i.adi_get_bits.exit160.i_crit_edge
  %retval.0.i159.i = phi i8 [ 0, %adi_get_bits.exit144.i.adi_get_bits.exit160.i_crit_edge ], [ %or.i155.3255.i, %for.body.i158.preheader.i ]
  %and56.i = and i32 %retval.0.i47198.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %adi_get_bits.exit160.i.if.end64.i_crit_edge, label %if.then58.i

adi_get_bits.exit160.i.if.end64.i_crit_edge:      ; preds = %adi_get_bits.exit160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then58.i:                                      ; preds = %adi_get_bits.exit160.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv61.i = sub nsw i8 %retval.0.i79.i, %retval.0.i159.i
  %axes10.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 6
  %346 = ptrtoint ptr %axes10.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %conv61.i, ptr %axes10.i, align 2
  %347 = ptrtoint ptr %axes8.i to i32
  call void @__asan_store1_noabort(i32 %347)
  store i8 %retval.0.i159.i, ptr %axes8.i, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then58.i, %adi_get_bits.exit160.i.if.end64.i_crit_edge
  %add.i162.i = add i32 %84, 66
  %348 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %add.i162.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i162.i, i32 %82)
  %cmp.i164.not.i = icmp sgt i32 %add.i162.i, %82
  br i1 %cmp.i164.not.i, label %if.end64.i.for.end.i160_crit_edge, label %adi_get_bits.exit176.i

if.end64.i.for.end.i160_crit_edge:                ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i160

adi_get_bits.exit176.i:                           ; preds = %if.end64.i
  %arrayidx.i168.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i162.i
  %349 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_load1_noabort(i32 %349)
  %350 = load i8, ptr %arrayidx.i168.i, align 1
  %351 = lshr i8 %350, 5
  %352 = and i8 %351, 1
  %sub.i167.1.i = add i32 %84, 65
  %arrayidx.i168.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i167.1.i
  %353 = ptrtoint ptr %arrayidx.i168.1.i to i32
  call void @__asan_load1_noabort(i32 %353)
  %354 = load i8, ptr %arrayidx.i168.1.i, align 1
  %355 = lshr i8 %354, 4
  %356 = and i8 %355, 2
  %or.i171.1256.i = or i8 %356, %352
  %sub.i167.2.i = add i32 %84, 64
  %arrayidx.i168.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i167.2.i
  %357 = ptrtoint ptr %arrayidx.i168.2.i to i32
  call void @__asan_load1_noabort(i32 %357)
  %358 = load i8, ptr %arrayidx.i168.2.i, align 1
  %359 = lshr i8 %358, 3
  %360 = and i8 %359, 4
  %or.i171.2257.i = or i8 %or.i171.1256.i, %360
  %sub.i167.3.i = add i32 %84, 63
  %arrayidx.i168.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i167.3.i
  %361 = ptrtoint ptr %arrayidx.i168.3.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx.i168.3.i, align 1
  %363 = lshr i8 %362, 2
  %364 = and i8 %363, 8
  %or.i171.3258.i = or i8 %or.i171.2257.i, %364
  %or.i171.3.i = zext i8 %or.i171.3258.i to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or.i171.3258.i)
  %cmp66209.not.i = icmp eq i8 %or.i171.3258.i, 0
  br i1 %cmp66209.not.i, label %adi_get_bits.exit176.i.for.end.i160_crit_edge, label %for.body.preheader.i

adi_get_bits.exit176.i.for.end.i160_crit_edge:    ; preds = %adi_get_bits.exit176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i160

for.body.preheader.i:                             ; preds = %adi_get_bits.exit176.i
  %365 = ptrtoint ptr %ret.i146 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %ret.i146, align 4
  br label %for.body.i155

for.body.i155:                                    ; preds = %adi_get_bits.exit192.i.for.body.i155_crit_edge, %for.body.preheader.i
  %i.0210.i = phi i32 [ %inc70.i, %adi_get_bits.exit192.i.for.body.i155_crit_edge ], [ 0, %for.body.preheader.i ]
  %367 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %idx.i.i, align 8
  %add.i178.i = add i32 %368, 8
  store i32 %add.i178.i, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i178.i, i32 %366)
  %cmp.i180.not.i = icmp sgt i32 %add.i178.i, %366
  br i1 %cmp.i180.not.i, label %for.body.i155.adi_get_bits.exit192.i_crit_edge, label %for.body.i190.preheader.i

for.body.i155.adi_get_bits.exit192.i_crit_edge:   ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit192.i

for.body.i190.preheader.i:                        ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i184.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %add.i178.i
  %369 = ptrtoint ptr %arrayidx.i184.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx.i184.i, align 1
  %371 = lshr i8 %370, 5
  %372 = and i8 %371, 1
  %sub.i183.1.i = add i32 %368, 7
  %arrayidx.i184.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.1.i
  %373 = ptrtoint ptr %arrayidx.i184.1.i to i32
  call void @__asan_load1_noabort(i32 %373)
  %374 = load i8, ptr %arrayidx.i184.1.i, align 1
  %375 = lshr i8 %374, 4
  %376 = and i8 %375, 2
  %or.i187.1259.i = or i8 %376, %372
  %sub.i183.2.i = add i32 %368, 6
  %arrayidx.i184.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.2.i
  %377 = ptrtoint ptr %arrayidx.i184.2.i to i32
  call void @__asan_load1_noabort(i32 %377)
  %378 = load i8, ptr %arrayidx.i184.2.i, align 1
  %379 = lshr i8 %378, 3
  %380 = and i8 %379, 4
  %or.i187.2260.i = or i8 %or.i187.1259.i, %380
  %sub.i183.3.i = add i32 %368, 5
  %arrayidx.i184.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.3.i
  %381 = ptrtoint ptr %arrayidx.i184.3.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx.i184.3.i, align 1
  %383 = lshr i8 %382, 2
  %384 = and i8 %383, 8
  %or.i187.3261.i = or i8 %or.i187.2260.i, %384
  %sub.i183.4.i = add i32 %368, 4
  %arrayidx.i184.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.4.i
  %385 = ptrtoint ptr %arrayidx.i184.4.i to i32
  call void @__asan_load1_noabort(i32 %385)
  %386 = load i8, ptr %arrayidx.i184.4.i, align 1
  %387 = lshr i8 %386, 1
  %388 = and i8 %387, 16
  %or.i187.4262.i = or i8 %or.i187.3261.i, %388
  %sub.i183.5.i = add i32 %368, 3
  %arrayidx.i184.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.5.i
  %389 = ptrtoint ptr %arrayidx.i184.5.i to i32
  call void @__asan_load1_noabort(i32 %389)
  %390 = load i8, ptr %arrayidx.i184.5.i, align 1
  %391 = and i8 %390, 32
  %or.i187.5263.i = or i8 %or.i187.4262.i, %391
  %sub.i183.6.i = add i32 %368, 2
  %arrayidx.i184.6.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.6.i
  %392 = ptrtoint ptr %arrayidx.i184.6.i to i32
  call void @__asan_load1_noabort(i32 %392)
  %393 = load i8, ptr %arrayidx.i184.6.i, align 1
  %394 = shl i8 %393, 1
  %395 = and i8 %394, 64
  %or.i187.6264.i = or i8 %or.i187.5263.i, %395
  %sub.i183.7.i = add i32 %368, 1
  %arrayidx.i184.7.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 15, i32 %sub.i183.7.i
  %396 = ptrtoint ptr %arrayidx.i184.7.i to i32
  call void @__asan_load1_noabort(i32 %396)
  %397 = load i8, ptr %arrayidx.i184.7.i, align 1
  %398 = shl i8 %397, 2
  %399 = and i8 %398, -128
  %or.i187.7265.i = or i8 %or.i187.6264.i, %399
  br label %adi_get_bits.exit192.i

adi_get_bits.exit192.i:                           ; preds = %for.body.i190.preheader.i, %for.body.i155.adi_get_bits.exit192.i_crit_edge
  %retval.0.i191.i = phi i8 [ 0, %for.body.i155.adi_get_bits.exit192.i_crit_edge ], [ %or.i187.7265.i, %for.body.i190.preheader.i ]
  %arrayidx.i156 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 13, i32 %i.0210.i
  %400 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %retval.0.i191.i, ptr %arrayidx.i156, align 1
  %inc70.i = add nuw nsw i32 %i.0210.i, 1
  %exitcond.not.i157 = icmp eq i32 %inc70.i, %or.i171.3.i
  br i1 %exitcond.not.i157, label %adi_get_bits.exit192.i.for.end.i160_crit_edge, label %adi_get_bits.exit192.i.for.body.i155_crit_edge

adi_get_bits.exit192.i.for.body.i155_crit_edge:   ; preds = %adi_get_bits.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i155

adi_get_bits.exit192.i.for.end.i160_crit_edge:    ; preds = %adi_get_bits.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i160

for.end.i160:                                     ; preds = %adi_get_bits.exit192.i.for.end.i160_crit_edge, %adi_get_bits.exit176.i.for.end.i160_crit_edge, %if.end64.i.for.end.i160_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %adi_get_bits.exit176.i.for.end.i160_crit_edge ], [ 0, %if.end64.i.for.end.i160_crit_edge ], [ %or.i171.3.i, %adi_get_bits.exit192.i.for.end.i160_crit_edge ]
  %arrayidx72.i158 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 13, i32 %i.0.lcssa.i
  %401 = ptrtoint ptr %arrayidx72.i158 to i32
  call void @__asan_store1_noabort(i32 %401)
  store i8 0, ptr %arrayidx72.i158, align 1
  %402 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load1_noabort(i32 %402)
  %403 = load i8, ptr %buttons.i, align 1
  %conv74.i = zext i8 %403 to i32
  %add75.i = add nuw nsw i32 %conv74.i, 8
  %axes1076.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 6
  %404 = ptrtoint ptr %axes1076.i to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %axes1076.i, align 2
  %conv77.i = zext i8 %405 to i32
  %mul.i159 = mul nuw nsw i32 %conv77.i, 10
  %add78.i = add nuw nsw i32 %add75.i, %mul.i159
  %406 = ptrtoint ptr %axes8.i to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %axes8.i, align 1
  %conv80.i = zext i8 %407 to i32
  %mul81.i = shl nuw nsw i32 %conv80.i, 3
  %add82.i = add nuw nsw i32 %add78.i, %mul81.i
  %408 = ptrtoint ptr %hats51.i to i32
  call void @__asan_load1_noabort(i32 %408)
  %409 = load i8, ptr %hats51.i, align 1
  %conv84.i = zext i8 %409 to i32
  %mul85.i = shl nuw nsw i32 %conv84.i, 2
  %add86.i = add nuw nsw i32 %add82.i, %mul85.i
  %410 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %411, i32 %add86.i)
  %cmp88.not.i = icmp eq i32 %411, %add86.i
  br i1 %cmp88.not.i, label %for.end.i160.if.end104.i_crit_edge, label %land.lhs.true90.i

for.end.i160.if.end104.i_crit_edge:               ; preds = %for.end.i160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

land.lhs.true90.i:                                ; preds = %for.end.i160
  %and92.i = and i32 %add86.i, 1
  %add93.i = add nuw nsw i32 %and92.i, %add86.i
  call void @__sanitizer_cov_trace_cmp4(i32 %411, i32 %add93.i)
  %cmp94.not.i = icmp eq i32 %411, %add93.i
  br i1 %cmp94.not.i, label %land.lhs.true90.i.if.end104.i_crit_edge, label %do.end99.i

land.lhs.true90.i.if.end104.i_crit_edge:          ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104.i

do.end99.i:                                       ; preds = %land.lhs.true90.i
  call void @__sanitizer_cov_trace_pc() #10
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %add86.i, i32 noundef %411) #12
  %412 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %412)
  store i32 0, ptr %length.i, align 8
  br label %adi_id_decode.exit

if.end104.i:                                      ; preds = %land.lhs.true90.i.if.end104.i_crit_edge, %for.end.i160.if.end104.i_crit_edge
  %413 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %id.i, align 4
  %415 = zext i8 %414 to i64
  call void @__sanitizer_cov_trace_switch(i64 %415, ptr @__sancov_gen_cov_switch_values)
  switch i8 %414, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 6, label %sw.bb111.i
  ]

sw.bb.i:                                          ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %pad.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 8
  %416 = ptrtoint ptr %pad.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 4, ptr %pad.i, align 8
  %sub109.i = add i8 %403, -4
  %417 = ptrtoint ptr %buttons.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 %sub109.i, ptr %buttons.i, align 1
  br label %adi_id_decode.exit

sw.bb111.i:                                       ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %pad112.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 8
  %418 = ptrtoint ptr %pad112.i to i32
  call void @__asan_store1_noabort(i32 %418)
  store i8 0, ptr %pad112.i, align 8
  %sub115.i = add i8 %403, -4
  %419 = ptrtoint ptr %buttons.i to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 %sub115.i, ptr %buttons.i, align 1
  br label %adi_id_decode.exit

sw.default.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #10
  %pad117.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 8
  %420 = ptrtoint ptr %pad117.i to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 -1, ptr %pad117.i, align 8
  br label %adi_id_decode.exit

adi_id_decode.exit:                               ; preds = %sw.default.i, %sw.bb111.i, %sw.bb.i, %do.end99.i, %do.end41.i, %do.end22.i, %do.end.i, %for.body.adi_id_decode.exit_crit_edge
  %length = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 %i.0211, i32 1
  %421 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %422)
  %tobool15.not = icmp eq i32 %422, 0
  br i1 %tobool15.not, label %adi_id_decode.exit.for.inc_crit_edge, label %if.end17

adi_id_decode.exit.for.inc_crit_edge:             ; preds = %adi_id_decode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end17:                                         ; preds = %adi_id_decode.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #8
  %423 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  %call.i = call ptr @input_allocate_device() #8
  %424 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %424)
  store ptr %call.i, ptr %add.ptr, align 4
  %tobool.not.i161 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i161, label %adi_init_input.exit, label %if.end.i168

if.end.i168:                                      ; preds = %if.end17
  %id.i162 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 4
  %425 = ptrtoint ptr %id.i162 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %id.i162, align 4
  %conv.i = zext i8 %426 to i32
  %427 = call i8 @llvm.umin.i8(i8 %426, i8 10) #8
  %428 = zext i8 %427 to i32
  %arrayidx.i163 = getelementptr [11 x ptr], ptr @adi_names, i32 0, i32 %428
  %429 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %arrayidx.i163, align 4
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 64, ptr noundef %430, i32 noundef %conv.i) #8
  %name.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 12
  %cname.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 13
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 64, ptr noundef nonnull @.str.14, ptr noundef nonnull %buf.i, ptr noundef %cname.i) #8
  %phys.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 14
  %431 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %call7.i.i, align 8
  %phys12.i = getelementptr inbounds %struct.gameport, ptr %432, i32 0, i32 2
  %call14.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys.i, i32 noundef 64, ptr noundef nonnull @.str.15, ptr noundef %phys12.i, i32 noundef %i.0211) #8
  %arrayidx15.i = getelementptr [11 x ptr], ptr @adi_abs, i32 0, i32 %428
  %433 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %arrayidx15.i, align 4
  %abs.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 10
  %435 = ptrtoint ptr %abs.i to i32
  call void @__asan_store4_noabort(i32 %435)
  store ptr %434, ptr %abs.i, align 4
  %arrayidx16.i = getelementptr [11 x ptr], ptr @adi_key, i32 0, i32 %428
  %436 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %arrayidx16.i, align 4
  %key.i = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 11
  %438 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %438)
  store ptr %437, ptr %key.i, align 8
  %439 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %name.i, ptr %call.i, align 8
  %phys22.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 1
  %440 = ptrtoint ptr %phys22.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr %phys.i, ptr %phys22.i, align 4
  %id23.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3
  %441 = ptrtoint ptr %id23.i to i32
  call void @__asan_store2_noabort(i32 %441)
  store i16 20, ptr %id23.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 1
  %442 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %442)
  store i16 3, ptr %vendor.i, align 2
  %443 = ptrtoint ptr %id.i162 to i32
  call void @__asan_load1_noabort(i32 %443)
  %444 = load i8, ptr %id.i162, align 4
  %conv26.i = zext i8 %444 to i16
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 2
  %445 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %445)
  store i16 %conv26.i, ptr %product.i, align 4
  %version.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 3, i32 3
  %446 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %446)
  store i16 256, ptr %version.i, align 2
  %447 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %call7.i.i, align 8
  %dev30.i = getelementptr inbounds %struct.gameport, ptr %448, i32 0, i32 21
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 1
  %449 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %dev30.i, ptr %parent.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 40, i32 8
  %450 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store ptr %call7.i.i, ptr %driver_data.i.i.i, align 4
  %open.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 31
  %451 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr @adi_open, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 32
  %452 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr @adi_close, ptr %close.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 5
  %453 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %453)
  store i32 10, ptr %evbit.i, align 8
  %axes10.i164 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 6
  %axes8.i165 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 7
  %hats.i166 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 9
  %pad.i167 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 8
  %454 = ptrtoint ptr %axes10.i164 to i32
  call void @__asan_load1_noabort(i32 %454)
  %455 = load i8, ptr %axes10.i164, align 2
  %conv33103.i = zext i8 %455 to i32
  %456 = ptrtoint ptr %axes8.i165 to i32
  call void @__asan_load1_noabort(i32 %456)
  %457 = load i8, ptr %axes8.i165, align 1
  %conv34104.i = zext i8 %457 to i32
  %add105.i = add nuw nsw i32 %conv34104.i, %conv33103.i
  %458 = ptrtoint ptr %hats.i166 to i32
  call void @__asan_load1_noabort(i32 %458)
  %459 = load i8, ptr %hats.i166, align 1
  %conv35106.i = zext i8 %459 to i32
  %460 = ptrtoint ptr %pad.i167 to i32
  call void @__asan_load1_noabort(i32 %460)
  %461 = load i8, ptr %pad.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %461)
  %cmp37107.i = icmp ne i8 %461, -1
  %conv38108.neg.i = sext i1 %cmp37107.i to i32
  %add39109.neg.i = sub nsw i32 %conv38108.neg.i, %conv35106.i
  %mul110.neg.i = shl nsw i32 %add39109.neg.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add105.i, i32 %mul110.neg.i)
  %cmp41112.not.i = icmp eq i32 %add105.i, %mul110.neg.i
  br i1 %cmp41112.not.i, label %if.end.i168.for.cond47.preheader.i_crit_edge, label %for.body.lr.ph.i169

if.end.i168.for.cond47.preheader.i_crit_edge:     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader.i

for.body.lr.ph.i169:                              ; preds = %if.end.i168
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 8
  br label %for.body.i174

for.cond47.preheader.i:                           ; preds = %for.body.i174.for.cond47.preheader.i_crit_edge, %if.end.i168.for.cond47.preheader.i_crit_edge
  %buttons.i170 = getelementptr %struct.adi, ptr %adi, i32 %i.0211, i32 5
  %462 = ptrtoint ptr %buttons.i170 to i32
  call void @__asan_load1_noabort(i32 %462)
  %463 = load i8, ptr %buttons.i170, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %463)
  %cmp49115.not.i = icmp eq i8 %463, 0
  br i1 %cmp49115.not.i, label %for.cond47.preheader.i.adi_init_input.exit.thread_crit_edge, label %for.body51.lr.ph.i

for.cond47.preheader.i.adi_init_input.exit.thread_crit_edge: ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_init_input.exit.thread

for.body51.lr.ph.i:                               ; preds = %for.cond47.preheader.i
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call.i, i32 0, i32 6
  br label %for.body51.i

for.body.i174:                                    ; preds = %for.body.i174.for.body.i174_crit_edge, %for.body.lr.ph.i169
  %i.0113.i = phi i32 [ 0, %for.body.lr.ph.i169 ], [ %inc.i171, %for.body.i174.for.body.i174_crit_edge ]
  %464 = ptrtoint ptr %abs.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %abs.i, align 4
  %arrayidx44.i = getelementptr i8, ptr %465, i32 %i.0113.i
  %466 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %466)
  %467 = load i8, ptr %arrayidx44.i, align 1
  %conv45.i = zext i8 %467 to i32
  call void @_set_bit(i32 noundef %conv45.i, ptr noundef %absbit.i) #8
  %inc.i171 = add nuw nsw i32 %i.0113.i, 1
  %468 = ptrtoint ptr %axes10.i164 to i32
  call void @__asan_load1_noabort(i32 %468)
  %469 = load i8, ptr %axes10.i164, align 2
  %conv33.i = zext i8 %469 to i32
  %470 = ptrtoint ptr %axes8.i165 to i32
  call void @__asan_load1_noabort(i32 %470)
  %471 = load i8, ptr %axes8.i165, align 1
  %conv34.i = zext i8 %471 to i32
  %add.i172 = add nuw nsw i32 %conv34.i, %conv33.i
  %472 = ptrtoint ptr %hats.i166 to i32
  call void @__asan_load1_noabort(i32 %472)
  %473 = load i8, ptr %hats.i166, align 1
  %conv35.i = zext i8 %473 to i32
  %474 = ptrtoint ptr %pad.i167 to i32
  call void @__asan_load1_noabort(i32 %474)
  %475 = load i8, ptr %pad.i167, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %475)
  %cmp37.i = icmp ne i8 %475, -1
  %conv38.i = zext i1 %cmp37.i to i32
  %add39.i = add nuw nsw i32 %conv38.i, %conv35.i
  %mul.i173 = shl nuw nsw i32 %add39.i, 1
  %add40.i = add nuw nsw i32 %add.i172, %mul.i173
  %cmp41.i = icmp ult i32 %inc.i171, %add40.i
  br i1 %cmp41.i, label %for.body.i174.for.body.i174_crit_edge, label %for.body.i174.for.cond47.preheader.i_crit_edge

for.body.i174.for.cond47.preheader.i_crit_edge:   ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond47.preheader.i

for.body.i174.for.body.i174_crit_edge:            ; preds = %for.body.i174
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i174

for.body51.i:                                     ; preds = %for.body51.i.for.body51.i_crit_edge, %for.body51.lr.ph.i
  %i.1116.i = phi i32 [ 0, %for.body51.lr.ph.i ], [ %inc57.i, %for.body51.i.for.body51.i_crit_edge ]
  %476 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %key.i, align 8
  %arrayidx53.i = getelementptr i16, ptr %477, i32 %i.1116.i
  %478 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load2_noabort(i32 %478)
  %479 = load i16, ptr %arrayidx53.i, align 2
  %conv54.i175 = sext i16 %479 to i32
  call void @_set_bit(i32 noundef %conv54.i175, ptr noundef %keybit.i) #8
  %inc57.i = add nuw nsw i32 %i.1116.i, 1
  %480 = ptrtoint ptr %buttons.i170 to i32
  call void @__asan_load1_noabort(i32 %480)
  %481 = load i8, ptr %buttons.i170, align 1
  %conv48.i = zext i8 %481 to i32
  %cmp49.i = icmp ult i32 %inc57.i, %conv48.i
  br i1 %cmp49.i, label %for.body51.i.for.body51.i_crit_edge, label %for.body51.i.adi_init_input.exit.thread_crit_edge

for.body51.i.adi_init_input.exit.thread_crit_edge: ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_init_input.exit.thread

for.body51.i.for.body51.i_crit_edge:              ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body51.i

adi_init_input.exit.thread:                       ; preds = %for.body51.i.adi_init_input.exit.thread_crit_edge, %for.cond47.preheader.i.adi_init_input.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #8
  br label %for.inc

adi_init_input.exit:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #8
  br label %fail2

for.inc:                                          ; preds = %adi_init_input.exit.thread, %adi_id_decode.exit.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0211, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %length27 = getelementptr inbounds %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %482 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %length27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %483)
  %tobool28.not = icmp eq i32 %483, 0
  br i1 %tobool28.not, label %land.lhs.true, label %for.end.if.end34_crit_edge

for.end.if.end34_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true:                                    ; preds = %for.end
  %length31 = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %484 = ptrtoint ptr %length31 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %length31, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %485)
  %tobool32.not = icmp eq i32 %485, 0
  br i1 %tobool32.not, label %land.lhs.true.fail2_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true.fail2_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %for.end.if.end34_crit_edge
  %poll_handler.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 16
  %486 = ptrtoint ptr %poll_handler.i to i32
  call void @__asan_store4_noabort(i32 %486)
  store ptr @adi_poll, ptr %poll_handler.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 13
  %487 = ptrtoint ptr %poll_interval.i to i32
  call void @__asan_store4_noabort(i32 %487)
  store i32 20, ptr %poll_interval.i, align 8
  call void @msleep(i32 noundef 10) #8
  %call35 = call fastcc i32 @adi_read(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.for.body42.preheader_crit_edge, label %if.then37

if.end34.for.body42.preheader_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.preheader

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @msleep(i32 noundef 4) #8
  %call38 = call fastcc i32 @adi_read(ptr noundef nonnull %call7.i.i)
  br label %for.body42.preheader

for.body42.preheader:                             ; preds = %if.then37, %if.end34.for.body42.preheader_crit_edge
  br label %for.body42

for.body42:                                       ; preds = %for.inc58.for.body42_crit_edge, %for.body42.preheader
  %i.1215 = phi i32 [ %inc59, %for.inc58.for.body42_crit_edge ], [ 0, %for.body42.preheader ]
  %length45 = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 %i.1215, i32 1
  %488 = ptrtoint ptr %length45 to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load i32, ptr %length45, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %489)
  %cmp46 = icmp sgt i32 %489, 0
  br i1 %cmp46, label %if.then47, label %for.body42.for.inc58_crit_edge

for.body42.for.inc58_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc58

if.then47:                                        ; preds = %for.body42
  %arrayidx44 = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 %i.1215
  %add.ptr50 = getelementptr %struct.adi, ptr %adi, i32 %i.1215
  %length.i177 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 1
  %490 = ptrtoint ptr %length.i177 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %length.i177, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool.not.i178 = icmp eq i32 %491, 0
  br i1 %tobool.not.i178, label %if.then47.adi_init_center.exit_crit_edge, label %for.cond.preheader.i184

if.then47.adi_init_center.exit_crit_edge:         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_init_center.exit

for.cond.preheader.i184:                          ; preds = %if.then47
  %axes10.i179 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 6
  %axes8.i180 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 7
  %hats.i181 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 9
  %pad.i182 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 8
  %492 = ptrtoint ptr %axes10.i179 to i32
  call void @__asan_load1_noabort(i32 %492)
  %493 = load i8, ptr %axes10.i179, align 2
  %conv73.i = zext i8 %493 to i32
  %494 = ptrtoint ptr %axes8.i180 to i32
  call void @__asan_load1_noabort(i32 %494)
  %495 = load i8, ptr %axes8.i180, align 1
  %conv174.i = zext i8 %495 to i32
  %add75.i183 = add nuw nsw i32 %conv174.i, %conv73.i
  %496 = ptrtoint ptr %hats.i181 to i32
  call void @__asan_load1_noabort(i32 %496)
  %497 = load i8, ptr %hats.i181, align 1
  %conv276.i = zext i8 %497 to i32
  %498 = ptrtoint ptr %pad.i182 to i32
  call void @__asan_load1_noabort(i32 %498)
  %499 = load i8, ptr %pad.i182, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %499)
  %cmp77.i = icmp ne i8 %499, -1
  %conv478.i = zext i1 %cmp77.i to i32
  %add579.i = add nuw nsw i32 %conv478.i, %conv276.i
  %mul80.i = shl nuw nsw i32 %add579.i, 1
  %add681.i = sub nsw i32 0, %add75.i183
  call void @__sanitizer_cov_trace_cmp4(i32 %mul80.i, i32 %add681.i)
  %cmp782.not.i = icmp eq i32 %mul80.i, %add681.i
  br i1 %cmp782.not.i, label %for.cond.preheader.i184.adi_init_center.exit_crit_edge, label %for.body.lr.ph.i187

for.cond.preheader.i184.adi_init_center.exit_crit_edge: ; preds = %for.cond.preheader.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_init_center.exit

for.body.lr.ph.i187:                              ; preds = %for.cond.preheader.i184
  %abs.i185 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 10
  %id.i186 = getelementptr %struct.adi, ptr %adi, i32 %i.1215, i32 4
  br label %for.body.i191

for.body.i191:                                    ; preds = %for.inc.i201.for.body.i191_crit_edge, %for.body.lr.ph.i187
  %add86.i188 = phi i32 [ %add75.i183, %for.body.lr.ph.i187 ], [ %add.i197, %for.inc.i201.for.body.i191_crit_edge ]
  %conv85.i = phi i32 [ %conv73.i, %for.body.lr.ph.i187 ], [ %conv.i196, %for.inc.i201.for.body.i191_crit_edge ]
  %i.083.i = phi i32 [ 0, %for.body.lr.ph.i187 ], [ %inc.i195, %for.inc.i201.for.body.i191_crit_edge ]
  %500 = ptrtoint ptr %abs.i185 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %abs.i185, align 4
  %arrayidx.i189 = getelementptr i8, ptr %501, i32 %i.083.i
  %502 = ptrtoint ptr %arrayidx.i189 to i32
  call void @__asan_load1_noabort(i32 %502)
  %503 = load i8, ptr %arrayidx.i189, align 1
  %conv9.i = zext i8 %503 to i32
  %504 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %add.ptr50, align 4
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %505, i32 0, i32 26
  %506 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i190 = icmp eq ptr %507, null
  br i1 %tobool.not.i.i190, label %for.body.i191.input_abs_get_val.exit.i_crit_edge, label %cond.true.i.i

for.body.i191.input_abs_get_val.exit.i_crit_edge: ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_get_val.exit.i

cond.true.i.i:                                    ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i192 = getelementptr %struct.input_absinfo, ptr %507, i32 %conv9.i
  %508 = ptrtoint ptr %arrayidx.i.i192 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %arrayidx.i.i192, align 4
  br label %input_abs_get_val.exit.i

input_abs_get_val.exit.i:                         ; preds = %cond.true.i.i, %for.body.i191.input_abs_get_val.exit.i_crit_edge
  %cond.i.i = phi i32 [ %509, %cond.true.i.i ], [ 0, %for.body.i191.input_abs_get_val.exit.i_crit_edge ]
  %510 = and i8 %503, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %510)
  %switch.i = icmp eq i8 %510, 6
  br i1 %switch.i, label %input_abs_get_val.exit.i.if.then18.i_crit_edge, label %lor.lhs.false14.i

input_abs_get_val.exit.i.if.then18.i_crit_edge:   ; preds = %input_abs_get_val.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

lor.lhs.false14.i:                                ; preds = %input_abs_get_val.exit.i
  %511 = ptrtoint ptr %id.i186 to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %id.i186, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %512)
  %cmp16.i193 = icmp eq i8 %512, 8
  br i1 %cmp16.i193, label %lor.lhs.false14.i.if.then18.i_crit_edge, label %lor.lhs.false14.i.if.end23.i_crit_edge

lor.lhs.false14.i.if.end23.i_crit_edge:           ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i

lor.lhs.false14.i.if.then18.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18.i

if.then18.i:                                      ; preds = %lor.lhs.false14.i.if.then18.i_crit_edge, %input_abs_get_val.exit.i.if.then18.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %conv85.i)
  %cmp21.i = icmp ult i32 %i.083.i, %conv85.i
  %cond.i = select i1 %cmp21.i, i32 512, i32 128
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i, %lor.lhs.false14.i.if.end23.i_crit_edge
  %x.0.i = phi i32 [ %cond.i, %if.then18.i ], [ %cond.i.i, %lor.lhs.false14.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %conv85.i)
  %cmp26.i = icmp ult i32 %i.083.i, %conv85.i
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul30.i = shl i32 %x.0.i, 1
  %sub.i194 = add i32 %mul30.i, -64
  call void @input_set_abs_params(ptr noundef %505, i32 noundef %conv9.i, i32 noundef 64, i32 noundef %sub.i194, i32 noundef 2, i32 noundef 16) #8
  br label %for.inc.i201

if.else.i:                                        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083.i, i32 %add86.i188)
  %cmp36.i = icmp ult i32 %i.083.i, %add86.i188
  br i1 %cmp36.i, label %if.then38.i, label %if.else42.i

if.then38.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul40.i = shl i32 %x.0.i, 1
  %sub41.i = add i32 %mul40.i, -48
  call void @input_set_abs_params(ptr noundef %505, i32 noundef %conv9.i, i32 noundef 48, i32 noundef %sub41.i, i32 noundef 1, i32 noundef 16) #8
  br label %for.inc.i201

if.else42.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @input_set_abs_params(ptr noundef %505, i32 noundef %conv9.i, i32 noundef -1, i32 noundef 1, i32 noundef 0, i32 noundef 0) #8
  br label %for.inc.i201

for.inc.i201:                                     ; preds = %if.else42.i, %if.then38.i, %if.then28.i
  %inc.i195 = add nuw nsw i32 %i.083.i, 1
  %513 = ptrtoint ptr %axes10.i179 to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %axes10.i179, align 2
  %conv.i196 = zext i8 %514 to i32
  %515 = ptrtoint ptr %axes8.i180 to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %axes8.i180, align 1
  %conv1.i = zext i8 %516 to i32
  %add.i197 = add nuw nsw i32 %conv1.i, %conv.i196
  %517 = ptrtoint ptr %hats.i181 to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %hats.i181, align 1
  %conv2.i = zext i8 %518 to i32
  %519 = ptrtoint ptr %pad.i182 to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %pad.i182, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %520)
  %cmp.i198 = icmp ne i8 %520, -1
  %conv4.i = zext i1 %cmp.i198 to i32
  %add5.i = add nuw nsw i32 %conv4.i, %conv2.i
  %mul.i199 = shl nuw nsw i32 %add5.i, 1
  %add6.i = add nuw nsw i32 %mul.i199, %add.i197
  %cmp7.i200 = icmp ult i32 %inc.i195, %add6.i
  br i1 %cmp7.i200, label %for.inc.i201.for.body.i191_crit_edge, label %for.inc.i201.adi_init_center.exit_crit_edge

for.inc.i201.adi_init_center.exit_crit_edge:      ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_init_center.exit

for.inc.i201.for.body.i191_crit_edge:             ; preds = %for.inc.i201
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i191

adi_init_center.exit:                             ; preds = %for.inc.i201.adi_init_center.exit_crit_edge, %for.cond.preheader.i184.adi_init_center.exit_crit_edge, %if.then47.adi_init_center.exit_crit_edge
  %521 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %arrayidx44, align 4
  %call53 = call i32 @input_register_device(ptr noundef %522) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %adi_init_center.exit.for.inc58_crit_edge, label %while.cond.preheader

adi_init_center.exit.for.inc58_crit_edge:         ; preds = %adi_init_center.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc58

while.cond.preheader:                             ; preds = %adi_init_center.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1215)
  %cmp61218.not = icmp eq i32 %i.1215, 0
  br i1 %cmp61218.not, label %while.cond.preheader.fail2_crit_edge, label %while.body

while.cond.preheader.fail2_crit_edge:             ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

for.inc58:                                        ; preds = %adi_init_center.exit.for.inc58_crit_edge, %for.body42.for.inc58_crit_edge
  %inc59 = add nuw nsw i32 %i.1215, 1
  %exitcond221.not = icmp eq i32 %inc59, 2
  br i1 %exitcond221.not, label %for.inc58.cleanup_crit_edge, label %for.inc58.for.body42_crit_edge

for.inc58.for.body42_crit_edge:                   ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42

for.inc58.cleanup_crit_edge:                      ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond.preheader
  %523 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load i32, ptr %length27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %524)
  %cmp65 = icmp sgt i32 %524, 0
  br i1 %cmp65, label %if.then66, label %while.body.fail2_crit_edge

while.body.fail2_crit_edge:                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail2

if.then66:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %525 = ptrtoint ptr %adi to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %adi, align 4
  call void @input_unregister_device(ptr noundef %526) #8
  %527 = ptrtoint ptr %adi to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr null, ptr %adi, align 4
  br label %fail2

fail2:                                            ; preds = %if.then66, %while.body.fail2_crit_edge, %while.cond.preheader.fail2_crit_edge, %land.lhs.true.fail2_crit_edge, %adi_init_input.exit
  %err.0 = phi i32 [ -12, %adi_init_input.exit ], [ -19, %land.lhs.true.fail2_crit_edge ], [ %call53, %if.then66 ], [ %call53, %while.body.fail2_crit_edge ], [ %call53, %while.cond.preheader.fail2_crit_edge ]
  %528 = ptrtoint ptr %adi to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %adi, align 4
  call void @input_free_device(ptr noundef %529) #8
  %arrayidx78.1 = getelementptr %struct.adi_port, ptr %call7.i.i, i32 0, i32 1, i32 1
  %530 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %arrayidx78.1, align 4
  call void @input_free_device(ptr noundef %531) #8
  call void @gameport_close(ptr noundef %gameport) #8
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end.fail1_crit_edge
  %err.1 = phi i32 [ %call2, %if.end.fail1_crit_edge ], [ %err.0, %fail2 ]
  %532 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %532)
  store ptr null, ptr %driver_data.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %fail1, %for.inc58.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adi_disconnect(ptr noundef %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %length = getelementptr %struct.adi_port, ptr %1, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.adi_port, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %length.1 = getelementptr %struct.adi_port, ptr %1, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %length.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.1 = icmp sgt i32 %7, 0
  br i1 %cmp1.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1 = getelementptr %struct.adi_port, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1, align 4
  tail call void @input_unregister_device(ptr noundef %9) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  tail call void @gameport_close(ptr noundef %gameport) #8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gameport_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adi_read_packet(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adi1 = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port, align 4
  %speed.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 4
  %ret = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4
  %3 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed.i, align 8
  %mul.i = mul i32 %4, 200
  %div.i = sdiv i32 %mul.i, 1000
  %ret.1 = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 1, i32 2
  %5 = ptrtoint ptr %ret.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ret.1, align 4
  %6 = load i32, ptr %speed.i, align 8
  %mul.i.1 = mul i32 %6, 200
  %div.i.1 = sdiv i32 %mul.i.1, 1000
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !98
  %and.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry.do.end16_crit_edge
  %trigger.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %trigger.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %1) #8
  br label %gameport_trigger.exit

do.body.i:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %io.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %io.i, align 4
  %and.i141 = and i32 %11, 1048575
  %add.i = or i32 %and.i141, -18874368
  %12 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -1) #8, !srcloc !97
  br label %gameport_trigger.exit

gameport_trigger.exit:                            ; preds = %do.body.i, %if.then.i
  %read.i = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read.i, align 4
  %tobool.not.i142 = icmp eq ptr %14, null
  br i1 %tobool.not.i142, label %if.else.i, label %if.then.i143

if.then.i143:                                     ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call zeroext i8 %14(ptr noundef %1) #8
  br label %gameport_read.exit

if.else.i:                                        ; preds = %gameport_trigger.exit
  call void @__sanitizer_cov_trace_pc() #10
  %io.i144 = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %io.i144 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io.i144, align 4
  %and.i145 = and i32 %16, 1048575
  %add.i146 = or i32 %and.i145, -18874368
  %17 = inttoptr i32 %add.i146 to ptr
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  br label %gameport_read.exit

gameport_read.exit:                               ; preds = %if.else.i, %if.then.i143
  %retval.0.i = phi i8 [ %call.i, %if.then.i143 ], [ %18, %if.else.i ]
  %io.i151 = getelementptr inbounds %struct.gameport, ptr %1, i32 0, i32 3
  br label %do.body18

do.body18:                                        ; preds = %for.inc64.1.do.body18_crit_edge, %gameport_read.exit
  %t.sroa.9.0 = phi i32 [ %div.i.1, %gameport_read.exit ], [ %t.sroa.9.1, %for.inc64.1.do.body18_crit_edge ]
  %t.sroa.0.0 = phi i32 [ %div.i, %gameport_read.exit ], [ %t.sroa.0.1, %for.inc64.1.do.body18_crit_edge ]
  %s.sroa.0.0 = phi i32 [ 0, %gameport_read.exit ], [ %s.sroa.0.1, %for.inc64.1.do.body18_crit_edge ]
  %s.sroa.6.0 = phi i32 [ 0, %gameport_read.exit ], [ %s.sroa.6.1, %for.inc64.1.do.body18_crit_edge ]
  %v.0 = phi i8 [ %retval.0.i, %gameport_read.exit ], [ %retval.0.i155, %for.inc64.1.do.body18_crit_edge ]
  %19 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i, align 4
  %tobool.not.i148 = icmp eq ptr %20, null
  br i1 %tobool.not.i148, label %if.else.i154, label %if.then.i150

if.then.i150:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %call.i149 = tail call zeroext i8 %20(ptr noundef %1) #8
  br label %gameport_read.exit156

if.else.i154:                                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %io.i151 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io.i151, align 4
  %and.i152 = and i32 %22, 1048575
  %add.i153 = or i32 %and.i152, -18874368
  %23 = inttoptr i32 %add.i153 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  br label %gameport_read.exit156

gameport_read.exit156:                            ; preds = %if.else.i154, %if.then.i150
  %retval.0.i155 = phi i8 [ %call.i149, %if.then.i150 ], [ %24, %if.else.i154 ]
  %xor140 = xor i8 %retval.0.i155, %v.0
  %dec = add i32 %t.sroa.0.0, -1
  %25 = and i8 %xor140, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.0.0)
  %tobool31.not = icmp eq i32 %s.sroa.0.0, 0
  %or.cond171 = select i1 %tobool29.not, i1 true, i1 %tobool31.not
  br i1 %or.cond171, label %if.else56, label %if.then32

if.then32:                                        ; preds = %gameport_read.exit156
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %25)
  %cmp35.not = icmp eq i8 %25, 48
  br i1 %cmp35.not, label %if.then32.for.inc64_crit_edge, label %land.lhs.true37

if.then32.for.inc64_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64

land.lhs.true37:                                  ; preds = %if.then32
  %26 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %27)
  %cmp40 = icmp slt i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp44 = icmp sgt i32 %dec, 0
  %or.cond = select i1 %cmp40, i1 %cmp44, i1 false
  br i1 %or.cond, label %if.then46, label %land.lhs.true37.for.inc64_crit_edge

land.lhs.true37.for.inc64_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64

if.then46:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  %inc50 = add nsw i32 %27, 1
  %28 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %inc50, ptr %ret, align 4
  %arrayidx51 = getelementptr %struct.adi, ptr %adi1, i32 0, i32 15, i32 %inc50
  %29 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %xor140, ptr %arrayidx51, align 1
  %30 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed.i, align 8
  %mul.i158 = mul i32 %31, 40
  %div.i159 = sdiv i32 %mul.i158, 1000
  br label %for.inc64

if.else56:                                        ; preds = %gameport_read.exit156
  call void @__sanitizer_cov_trace_pc() #10
  %32 = and i8 %retval.0.i155, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool59.not = icmp eq i8 %32, 0
  %spec.select = select i1 %tobool59.not, i32 1, i32 %s.sroa.0.0
  br label %for.inc64

for.inc64:                                        ; preds = %if.else56, %if.then46, %land.lhs.true37.for.inc64_crit_edge, %if.then32.for.inc64_crit_edge
  %t.sroa.0.1 = phi i32 [ %div.i159, %if.then46 ], [ 0, %land.lhs.true37.for.inc64_crit_edge ], [ 0, %if.then32.for.inc64_crit_edge ], [ %dec, %if.else56 ]
  %s.sroa.0.1 = phi i32 [ %s.sroa.0.0, %if.then46 ], [ %s.sroa.0.0, %land.lhs.true37.for.inc64_crit_edge ], [ %s.sroa.0.0, %if.then32.for.inc64_crit_edge ], [ %spec.select, %if.else56 ]
  %33 = lshr i8 %xor140, 2
  %dec.1 = add i32 %t.sroa.9.0, -1
  %34 = and i8 %33, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool29.not.1 = icmp eq i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %s.sroa.6.0)
  %tobool31.not.1 = icmp eq i32 %s.sroa.6.0, 0
  %or.cond172 = select i1 %tobool29.not.1, i1 true, i1 %tobool31.not.1
  br i1 %or.cond172, label %if.else56.1, label %if.then32.1

if.then32.1:                                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %34)
  %cmp35.not.1 = icmp eq i8 %34, 48
  br i1 %cmp35.not.1, label %if.then32.1.for.inc64.1_crit_edge, label %land.lhs.true37.1

if.then32.1.for.inc64.1_crit_edge:                ; preds = %if.then32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64.1

land.lhs.true37.1:                                ; preds = %if.then32.1
  %35 = ptrtoint ptr %ret.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ret.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %36)
  %cmp40.1 = icmp slt i32 %36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp44.1 = icmp sgt i32 %dec.1, 0
  %or.cond.1 = select i1 %cmp40.1, i1 %cmp44.1, i1 false
  br i1 %or.cond.1, label %if.then46.1, label %land.lhs.true37.1.for.inc64.1_crit_edge

land.lhs.true37.1.for.inc64.1_crit_edge:          ; preds = %land.lhs.true37.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc64.1

if.then46.1:                                      ; preds = %land.lhs.true37.1
  call void @__sanitizer_cov_trace_pc() #10
  %inc50.1 = add nsw i32 %36, 1
  %37 = ptrtoint ptr %ret.1 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %inc50.1, ptr %ret.1, align 4
  %arrayidx51.1 = getelementptr %struct.adi, ptr %adi1, i32 1, i32 15, i32 %inc50.1
  %38 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %33, ptr %arrayidx51.1, align 1
  %39 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed.i, align 8
  %mul.i158.1 = mul i32 %40, 40
  %div.i159.1 = sdiv i32 %mul.i158.1, 1000
  br label %for.inc64.1

if.else56.1:                                      ; preds = %for.inc64
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %retval.0.i155)
  %tobool59.not.1 = icmp ult i8 %retval.0.i155, 64
  %spec.select173 = select i1 %tobool59.not.1, i32 1, i32 %s.sroa.6.0
  br label %for.inc64.1

for.inc64.1:                                      ; preds = %if.else56.1, %if.then46.1, %land.lhs.true37.1.for.inc64.1_crit_edge, %if.then32.1.for.inc64.1_crit_edge
  %t.sroa.9.1 = phi i32 [ %div.i159.1, %if.then46.1 ], [ 0, %land.lhs.true37.1.for.inc64.1_crit_edge ], [ 0, %if.then32.1.for.inc64.1_crit_edge ], [ %dec.1, %if.else56.1 ]
  %s.sroa.6.1 = phi i32 [ %s.sroa.6.0, %if.then46.1 ], [ %s.sroa.6.0, %land.lhs.true37.1.for.inc64.1_crit_edge ], [ %s.sroa.6.0, %if.then32.1.for.inc64.1_crit_edge ], [ %spec.select173, %if.else56.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.0.1)
  %cmp74 = icmp sgt i32 %t.sroa.0.1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %t.sroa.9.1)
  %cmp77 = icmp sgt i32 %t.sroa.9.1, 0
  %or.cond170 = select i1 %cmp74, i1 true, i1 %cmp77
  br i1 %or.cond170, label %for.inc64.1.do.body18_crit_edge, label %do.body80

for.inc64.1.do.body18_crit_edge:                  ; preds = %for.inc64.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

do.body80:                                        ; preds = %for.inc64.1
  br i1 %tobool.not, label %if.then89, label %do.body80.do.body91_crit_edge

do.body80.do.body91_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body91

if.then89:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_on() #8
  br label %do.body91

do.body91:                                        ; preds = %if.then89, %do.body80.do.body91_crit_edge
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !101
  %and.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool99.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool99.not, label %if.then103, label %do.body91.do.end106_crit_edge, !prof !102

do.body91.do.end106_crit_edge:                    ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end106

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end106

do.end106:                                        ; preds = %if.then103, %do.body91.do.end106_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #8, !srcloc !103
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adi_poll(ptr nocapture noundef readonly %gameport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.gameport, ptr %gameport, i32 0, i32 21, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @adi_read(ptr noundef %1)
  %bad = getelementptr inbounds %struct.adi_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bad, align 4
  %sub = sub i32 %3, %call1
  store i32 %sub, ptr %bad, align 4
  %reads = getelementptr inbounds %struct.adi_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %reads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reads, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %reads, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adi_read(ptr noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @adi_read_packet(ptr noundef %port)
  %adi = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1
  %length = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %idx.i = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %idx.i, align 4
  %idx3.i = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %idx3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %idx3.i, align 4
  %ret.i = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ret.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false.i

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false.i:                                  ; preds = %entry
  %ret6.i = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 1, i32 2
  %6 = ptrtoint ptr %ret6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp7.i = icmp slt i32 %7, 1
  br i1 %cmp7.i, label %lor.lhs.false.i.for.body.preheader_crit_edge, label %if.end.i

lor.lhs.false.i.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

if.end.i:                                         ; preds = %lor.lhs.false.i
  %data.i = getelementptr inbounds %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 15
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 4
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false10.i, label %if.end.i.for.body.preheader_crit_edge

if.end.i.for.body.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false10.i:                                ; preds = %if.end.i
  %data12.i = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 1, i32 15
  %11 = ptrtoint ptr %data12.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data12.i, align 4
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not.not.i = icmp eq i8 %13, 0
  br i1 %tobool16.not.not.i, label %lor.lhs.false10.i.for.body.preheader_crit_edge, label %for.body.lr.ph.i

lor.lhs.false10.i.for.body.preheader_crit_edge:   ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false10.i
  %sub.i = add i32 %1, -1
  %shr.i = ashr i32 %sub.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.053.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 1, i32 15, i32 %i.053.i
  %14 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25.i, align 1
  %add.i = add i32 %i.053.i, 1
  %add28.i = add i32 %add.i, %shr.i
  %arrayidx29.i = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 0, i32 15, i32 %add28.i
  %16 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx29.i, align 1
  %17 = ptrtoint ptr %ret6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ret6.i, align 4
  %cmp21.not.i = icmp sgt i32 %add.i, %18
  br i1 %cmp21.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ret.i, align 4
  %add34.i = add i32 %20, %18
  store i32 %add34.i, ptr %ret.i, align 4
  %21 = ptrtoint ptr %ret6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %ret6.i, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.end.i, %lor.lhs.false10.i.for.body.preheader_crit_edge, %if.end.i.for.body.preheader_crit_edge, %lor.lhs.false.i.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %result.024 = phi i32 [ %result.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.019 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %length3 = getelementptr %struct.adi_port, ptr %port, i32 0, i32 1, i32 %i.019, i32 1
  %22 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr %struct.adi, ptr %adi, i32 %i.019
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 4
  %abs2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 10
  %26 = ptrtoint ptr %abs2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %abs2.i, align 4
  %key3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 11
  %28 = ptrtoint ptr %key3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %key3.i, align 4
  %ret.i13 = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 2
  %30 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ret.i13, align 4
  %length.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 1
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp.i14 = icmp slt i32 %31, %33
  br i1 %cmp.i14, label %if.then.adi_decode.exit_crit_edge, label %lor.lhs.false.i15

if.then.adi_decode.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_decode.exit

lor.lhs.false.i15:                                ; preds = %if.then
  %id.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 4
  %34 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %35 to i32
  %idx.i.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 3
  %36 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %idx.i.i, align 4
  %add.i.i = add i32 %37, 4
  store i32 %add.i.i, ptr %idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %31)
  %cmp.i.not.i = icmp sgt i32 %add.i.i, %31
  br i1 %cmp.i.not.i, label %lor.lhs.false.i15.adi_get_bits.exit.i_crit_edge, label %for.body.i.preheader.i

lor.lhs.false.i15.adi_get_bits.exit.i_crit_edge:  ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit.i

for.body.i.preheader.i:                           ; preds = %lor.lhs.false.i15
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i.i
  %38 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i.i, align 1
  %40 = lshr i8 %39, 5
  %41 = and i8 %40, 1
  %sub.i.1.i = add i32 %37, 3
  %arrayidx.i.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i.1.i
  %42 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.1.i, align 1
  %44 = lshr i8 %43, 4
  %45 = and i8 %44, 2
  %or.i.1278.i = or i8 %45, %41
  %sub.i.2.i = add i32 %37, 2
  %arrayidx.i.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i.2.i
  %46 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.2.i, align 1
  %48 = lshr i8 %47, 3
  %49 = and i8 %48, 4
  %or.i.2279.i = or i8 %or.i.1278.i, %49
  %sub.i.3.i = add i32 %37, 1
  %arrayidx.i.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i.3.i
  %50 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.3.i, align 1
  %52 = lshr i8 %51, 2
  %53 = and i8 %52, 8
  %or.i.3280.i = or i8 %or.i.2279.i, %53
  %or.i.3.i = zext i8 %or.i.3280.i to i32
  br label %adi_get_bits.exit.i

adi_get_bits.exit.i:                              ; preds = %for.body.i.preheader.i, %lor.lhs.false.i15.adi_get_bits.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %lor.lhs.false.i15.adi_get_bits.exit.i_crit_edge ], [ %or.i.3.i, %for.body.i.preheader.i ]
  %add.i139.i = add i32 %37, 8
  %54 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i139.i, ptr %idx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i139.i, i32 %31)
  %cmp.i141.not.i = icmp sgt i32 %add.i139.i, %31
  br i1 %cmp.i141.not.i, label %adi_get_bits.exit.i.adi_get_bits.exit153.i_crit_edge, label %for.body.i151.preheader.i

adi_get_bits.exit.i.adi_get_bits.exit153.i_crit_edge: ; preds = %adi_get_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit153.i

for.body.i151.preheader.i:                        ; preds = %adi_get_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i145.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i139.i
  %55 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i145.i, align 1
  %57 = lshr i8 %56, 5
  %58 = and i8 %57, 1
  %sub.i144.1.i = add i32 %37, 7
  %arrayidx.i145.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i144.1.i
  %59 = ptrtoint ptr %arrayidx.i145.1.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i145.1.i, align 1
  %61 = lshr i8 %60, 4
  %62 = and i8 %61, 2
  %or.i148.1281.i = or i8 %62, %58
  %sub.i144.2.i = add i32 %37, 6
  %arrayidx.i145.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i144.2.i
  %63 = ptrtoint ptr %arrayidx.i145.2.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i145.2.i, align 1
  %65 = lshr i8 %64, 3
  %66 = and i8 %65, 4
  %or.i148.2282.i = or i8 %or.i148.1281.i, %66
  %sub.i144.3.i = add i32 %37, 5
  %arrayidx.i145.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i144.3.i
  %67 = ptrtoint ptr %arrayidx.i145.3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.i145.3.i, align 1
  %69 = lshr i8 %68, 2
  %70 = and i8 %69, 8
  %or.i148.3283.i = or i8 %or.i148.2282.i, %70
  %71 = shl nuw i8 %or.i148.3283.i, 4
  %phi.bo.i = zext i8 %71 to i32
  br label %adi_get_bits.exit153.i

adi_get_bits.exit153.i:                           ; preds = %for.body.i151.preheader.i, %adi_get_bits.exit.i.adi_get_bits.exit153.i_crit_edge
  %retval.0.i152.i = phi i32 [ 0, %adi_get_bits.exit.i.adi_get_bits.exit153.i_crit_edge ], [ %phi.bo.i, %for.body.i151.preheader.i ]
  %or.i = or i32 %retval.0.i152.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %conv.i)
  %cmp5.not.i = icmp eq i32 %or.i, %conv.i
  br i1 %cmp5.not.i, label %for.cond.preheader.i16, label %adi_get_bits.exit153.i.adi_decode.exit_crit_edge

adi_get_bits.exit153.i.adi_decode.exit_crit_edge: ; preds = %adi_get_bits.exit153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_decode.exit

for.cond.preheader.i16:                           ; preds = %adi_get_bits.exit153.i
  %axes10.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 6
  %72 = ptrtoint ptr %axes10.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %axes10.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp8255.not.i = icmp eq i8 %73, 0
  br i1 %cmp8255.not.i, label %for.cond.preheader.i16.for.cond12.preheader.i_crit_edge, label %for.cond.preheader.i16.for.body.i17_crit_edge

for.cond.preheader.i16.for.body.i17_crit_edge:    ; preds = %for.cond.preheader.i16
  br label %for.body.i17

for.cond.preheader.i16.for.cond12.preheader.i_crit_edge: ; preds = %for.cond.preheader.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %adi_get_bits.exit169.i.for.cond12.preheader.i_crit_edge, %for.cond.preheader.i16.for.cond12.preheader.i_crit_edge
  %abs.0.lcssa.i = phi ptr [ %27, %for.cond.preheader.i16.for.cond12.preheader.i_crit_edge ], [ %incdec.ptr.i, %adi_get_bits.exit169.i.for.cond12.preheader.i_crit_edge ]
  %axes8.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 7
  %74 = ptrtoint ptr %axes8.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %axes8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp14259.not.i = icmp eq i8 %75, 0
  br i1 %cmp14259.not.i, label %for.cond12.preheader.i.for.cond23.preheader.i_crit_edge, label %for.cond12.preheader.i.for.body16.i_crit_edge

for.cond12.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body16.i

for.cond12.preheader.i.for.cond23.preheader.i_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader.i

for.body.i17:                                     ; preds = %adi_get_bits.exit169.i.for.body.i17_crit_edge, %for.cond.preheader.i16.for.body.i17_crit_edge
  %i.0257.i = phi i32 [ %inc.i, %adi_get_bits.exit169.i.for.body.i17_crit_edge ], [ 0, %for.cond.preheader.i16.for.body.i17_crit_edge ]
  %abs.0256.i = phi ptr [ %incdec.ptr.i, %adi_get_bits.exit169.i.for.body.i17_crit_edge ], [ %27, %for.cond.preheader.i16.for.body.i17_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %abs.0256.i, i32 1
  %76 = ptrtoint ptr %abs.0256.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %abs.0256.i, align 1
  %conv10.i = zext i8 %77 to i32
  %78 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %idx.i.i, align 4
  %add.i155.i = add i32 %79, 10
  store i32 %add.i155.i, ptr %idx.i.i, align 4
  %80 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i155.i, i32 %81)
  %cmp.i157.not.i = icmp sgt i32 %add.i155.i, %81
  br i1 %cmp.i157.not.i, label %for.body.i17.adi_get_bits.exit169.i_crit_edge, label %for.body.i167.preheader.i

for.body.i17.adi_get_bits.exit169.i_crit_edge:    ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit169.i

for.body.i167.preheader.i:                        ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i161.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i155.i
  %82 = ptrtoint ptr %arrayidx.i161.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx.i161.i, align 1
  %84 = lshr i8 %83, 5
  %85 = and i8 %84, 1
  %sub.i160.1.i = add i32 %79, 9
  %arrayidx.i161.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.1.i
  %86 = ptrtoint ptr %arrayidx.i161.1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.i161.1.i, align 1
  %88 = lshr i8 %87, 4
  %89 = and i8 %88, 2
  %or.i164.1284.i = or i8 %89, %85
  %sub.i160.2.i = add i32 %79, 8
  %arrayidx.i161.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.2.i
  %90 = ptrtoint ptr %arrayidx.i161.2.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx.i161.2.i, align 1
  %92 = lshr i8 %91, 3
  %93 = and i8 %92, 4
  %or.i164.2285.i = or i8 %or.i164.1284.i, %93
  %sub.i160.3.i = add i32 %79, 7
  %arrayidx.i161.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.3.i
  %94 = ptrtoint ptr %arrayidx.i161.3.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx.i161.3.i, align 1
  %96 = lshr i8 %95, 2
  %97 = and i8 %96, 8
  %or.i164.3286.i = or i8 %or.i164.2285.i, %97
  %sub.i160.4.i = add i32 %79, 6
  %arrayidx.i161.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.4.i
  %98 = ptrtoint ptr %arrayidx.i161.4.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx.i161.4.i, align 1
  %100 = lshr i8 %99, 1
  %101 = and i8 %100, 16
  %or.i164.4287.i = or i8 %or.i164.3286.i, %101
  %sub.i160.5.i = add i32 %79, 5
  %arrayidx.i161.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.5.i
  %102 = ptrtoint ptr %arrayidx.i161.5.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx.i161.5.i, align 1
  %104 = and i8 %103, 32
  %or.i164.5288.i = or i8 %or.i164.4287.i, %104
  %sub.i160.6.i = add i32 %79, 4
  %arrayidx.i161.6.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.6.i
  %105 = ptrtoint ptr %arrayidx.i161.6.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i161.6.i, align 1
  %107 = shl i8 %106, 1
  %108 = and i8 %107, 64
  %or.i164.6289.i = or i8 %or.i164.5288.i, %108
  %sub.i160.7.i = add i32 %79, 3
  %arrayidx.i161.7.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.7.i
  %109 = ptrtoint ptr %arrayidx.i161.7.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx.i161.7.i, align 1
  %111 = shl i8 %110, 2
  %112 = and i8 %111, -128
  %or.i164.7290.i = or i8 %or.i164.6289.i, %112
  %or.i164.7.i = zext i8 %or.i164.7290.i to i32
  %sub.i160.8.i = add i32 %79, 2
  %arrayidx.i161.8.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.8.i
  %113 = ptrtoint ptr %arrayidx.i161.8.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx.i161.8.i, align 1
  %115 = lshr i8 %114, 5
  %116 = and i8 %115, 1
  %and.i162.8.i = zext i8 %116 to i32
  %shl.i163.8.i = shl nuw nsw i32 %and.i162.8.i, 8
  %or.i164.8.i = or i32 %shl.i163.8.i, %or.i164.7.i
  %sub.i160.9.i = add i32 %79, 1
  %arrayidx.i161.9.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i160.9.i
  %117 = ptrtoint ptr %arrayidx.i161.9.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i161.9.i, align 1
  %119 = lshr i8 %118, 5
  %120 = and i8 %119, 1
  %and.i162.9.i = zext i8 %120 to i32
  %shl.i163.9.i = shl nuw nsw i32 %and.i162.9.i, 9
  %or.i164.9.i = or i32 %shl.i163.9.i, %or.i164.8.i
  br label %adi_get_bits.exit169.i

adi_get_bits.exit169.i:                           ; preds = %for.body.i167.preheader.i, %for.body.i17.adi_get_bits.exit169.i_crit_edge
  %retval.0.i168.i = phi i32 [ 0, %for.body.i17.adi_get_bits.exit169.i_crit_edge ], [ %or.i164.9.i, %for.body.i167.preheader.i ]
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv10.i, i32 noundef %retval.0.i168.i) #8
  %inc.i = add nuw nsw i32 %i.0257.i, 1
  %121 = ptrtoint ptr %axes10.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %axes10.i, align 2
  %conv7.i = zext i8 %122 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %adi_get_bits.exit169.i.for.body.i17_crit_edge, label %adi_get_bits.exit169.i.for.cond12.preheader.i_crit_edge

adi_get_bits.exit169.i.for.cond12.preheader.i_crit_edge: ; preds = %adi_get_bits.exit169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.preheader.i

adi_get_bits.exit169.i.for.body.i17_crit_edge:    ; preds = %adi_get_bits.exit169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i17

for.cond23.preheader.i:                           ; preds = %adi_get_bits.exit185.i.for.cond23.preheader.i_crit_edge, %for.cond12.preheader.i.for.cond23.preheader.i_crit_edge
  %abs.1.lcssa.i = phi ptr [ %abs.0.lcssa.i, %for.cond12.preheader.i.for.cond23.preheader.i_crit_edge ], [ %incdec.ptr17.i, %adi_get_bits.exit185.i.for.cond23.preheader.i_crit_edge ]
  %buttons.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 5
  %123 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %buttons.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp25264.not.i = icmp eq i8 %124, 0
  br i1 %cmp25264.not.i, label %for.cond23.preheader.i.for.cond52.preheader.i_crit_edge, label %for.body29.lr.ph.i

for.cond23.preheader.i.for.cond52.preheader.i_crit_edge: ; preds = %for.cond23.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond52.preheader.i

for.body29.lr.ph.i:                               ; preds = %for.cond23.preheader.i
  %pad.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 8
  br label %for.body29.i

for.body16.i:                                     ; preds = %adi_get_bits.exit185.i.for.body16.i_crit_edge, %for.cond12.preheader.i.for.body16.i_crit_edge
  %i.1261.i = phi i32 [ %inc21.i, %adi_get_bits.exit185.i.for.body16.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body16.i_crit_edge ]
  %abs.1260.i = phi ptr [ %incdec.ptr17.i, %adi_get_bits.exit185.i.for.body16.i_crit_edge ], [ %abs.0.lcssa.i, %for.cond12.preheader.i.for.body16.i_crit_edge ]
  %incdec.ptr17.i = getelementptr i8, ptr %abs.1260.i, i32 1
  %125 = ptrtoint ptr %abs.1260.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %abs.1260.i, align 1
  %conv18.i = zext i8 %126 to i32
  %127 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %idx.i.i, align 4
  %add.i171.i = add i32 %128, 8
  store i32 %add.i171.i, ptr %idx.i.i, align 4
  %129 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i171.i, i32 %130)
  %cmp.i173.not.i = icmp sgt i32 %add.i171.i, %130
  br i1 %cmp.i173.not.i, label %for.body16.i.adi_get_bits.exit185.i_crit_edge, label %for.body.i183.preheader.i

for.body16.i.adi_get_bits.exit185.i_crit_edge:    ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit185.i

for.body.i183.preheader.i:                        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i177.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i171.i
  %131 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.i177.i, align 1
  %133 = lshr i8 %132, 5
  %134 = and i8 %133, 1
  %sub.i176.1.i = add i32 %128, 7
  %arrayidx.i177.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.1.i
  %135 = ptrtoint ptr %arrayidx.i177.1.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %arrayidx.i177.1.i, align 1
  %137 = lshr i8 %136, 4
  %138 = and i8 %137, 2
  %or.i180.1291.i = or i8 %138, %134
  %sub.i176.2.i = add i32 %128, 6
  %arrayidx.i177.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.2.i
  %139 = ptrtoint ptr %arrayidx.i177.2.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i177.2.i, align 1
  %141 = lshr i8 %140, 3
  %142 = and i8 %141, 4
  %or.i180.2292.i = or i8 %or.i180.1291.i, %142
  %sub.i176.3.i = add i32 %128, 5
  %arrayidx.i177.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.3.i
  %143 = ptrtoint ptr %arrayidx.i177.3.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx.i177.3.i, align 1
  %145 = lshr i8 %144, 2
  %146 = and i8 %145, 8
  %or.i180.3293.i = or i8 %or.i180.2292.i, %146
  %sub.i176.4.i = add i32 %128, 4
  %arrayidx.i177.4.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.4.i
  %147 = ptrtoint ptr %arrayidx.i177.4.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i177.4.i, align 1
  %149 = lshr i8 %148, 1
  %150 = and i8 %149, 16
  %or.i180.4294.i = or i8 %or.i180.3293.i, %150
  %sub.i176.5.i = add i32 %128, 3
  %arrayidx.i177.5.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.5.i
  %151 = ptrtoint ptr %arrayidx.i177.5.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.i177.5.i, align 1
  %153 = and i8 %152, 32
  %or.i180.5295.i = or i8 %or.i180.4294.i, %153
  %sub.i176.6.i = add i32 %128, 2
  %arrayidx.i177.6.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.6.i
  %154 = ptrtoint ptr %arrayidx.i177.6.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx.i177.6.i, align 1
  %156 = shl i8 %155, 1
  %157 = and i8 %156, 64
  %or.i180.6296.i = or i8 %or.i180.5295.i, %157
  %sub.i176.7.i = add i32 %128, 1
  %arrayidx.i177.7.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i176.7.i
  %158 = ptrtoint ptr %arrayidx.i177.7.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i177.7.i, align 1
  %160 = shl i8 %159, 2
  %161 = and i8 %160, -128
  %or.i180.7297.i = or i8 %or.i180.6296.i, %161
  %or.i180.7.i = zext i8 %or.i180.7297.i to i32
  br label %adi_get_bits.exit185.i

adi_get_bits.exit185.i:                           ; preds = %for.body.i183.preheader.i, %for.body16.i.adi_get_bits.exit185.i_crit_edge
  %retval.0.i184.i = phi i32 [ 0, %for.body16.i.adi_get_bits.exit185.i_crit_edge ], [ %or.i180.7.i, %for.body.i183.preheader.i ]
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv18.i, i32 noundef %retval.0.i184.i) #8
  %inc21.i = add nuw nsw i32 %i.1261.i, 1
  %162 = ptrtoint ptr %axes8.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %axes8.i, align 1
  %conv13.i = zext i8 %163 to i32
  %cmp14.i = icmp ult i32 %inc21.i, %conv13.i
  br i1 %cmp14.i, label %adi_get_bits.exit185.i.for.body16.i_crit_edge, label %adi_get_bits.exit185.i.for.cond23.preheader.i_crit_edge

adi_get_bits.exit185.i.for.cond23.preheader.i_crit_edge: ; preds = %adi_get_bits.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader.i

adi_get_bits.exit185.i.for.body16.i_crit_edge:    ; preds = %adi_get_bits.exit185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body16.i

for.cond52.preheader.i:                           ; preds = %adi_get_bits.exit217.i.for.cond52.preheader.i_crit_edge, %for.cond23.preheader.i.for.cond52.preheader.i_crit_edge
  %abs.2.lcssa.i = phi ptr [ %abs.1.lcssa.i, %for.cond23.preheader.i.for.cond52.preheader.i_crit_edge ], [ %abs.3.i, %adi_get_bits.exit217.i.for.cond52.preheader.i_crit_edge ]
  %key.0.lcssa.i = phi ptr [ %29, %for.cond23.preheader.i.for.cond52.preheader.i_crit_edge ], [ %incdec.ptr46.i, %adi_get_bits.exit217.i.for.cond52.preheader.i_crit_edge ]
  %hats.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 9
  %164 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %hats.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp54271.not.i = icmp eq i8 %165, 0
  br i1 %cmp54271.not.i, label %for.cond52.preheader.i.for.cond70.preheader.i_crit_edge, label %for.cond52.preheader.i.for.body56.i_crit_edge

for.cond52.preheader.i.for.body56.i_crit_edge:    ; preds = %for.cond52.preheader.i
  br label %for.body56.i

for.cond52.preheader.i.for.cond70.preheader.i_crit_edge: ; preds = %for.cond52.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond70.preheader.i

for.body29.i:                                     ; preds = %adi_get_bits.exit217.i.for.body29.i_crit_edge, %for.body29.lr.ph.i
  %i.2267.i = phi i32 [ 0, %for.body29.lr.ph.i ], [ %inc50.i, %adi_get_bits.exit217.i.for.body29.i_crit_edge ]
  %key.0266.i = phi ptr [ %29, %for.body29.lr.ph.i ], [ %incdec.ptr46.i, %adi_get_bits.exit217.i.for.body29.i_crit_edge ]
  %abs.2265.i = phi ptr [ %abs.1.lcssa.i, %for.body29.lr.ph.i ], [ %abs.3.i, %adi_get_bits.exit217.i.for.body29.i_crit_edge ]
  %166 = ptrtoint ptr %pad.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %pad.i, align 4
  %conv30.i = sext i8 %167 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2267.i, i32 %conv30.i)
  %cmp31.i = icmp eq i32 %i.2267.i, %conv30.i
  br i1 %cmp31.i, label %if.then33.i, label %for.body29.i.if.end45.i_crit_edge

for.body29.i.if.end45.i_crit_edge:                ; preds = %for.body29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i

if.then33.i:                                      ; preds = %for.body29.i
  %168 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %idx.i.i, align 4
  %add.i187.i = add i32 %169, 4
  store i32 %add.i187.i, ptr %idx.i.i, align 4
  %170 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i187.i, i32 %171)
  %cmp.i189.not.i = icmp sgt i32 %add.i187.i, %171
  br i1 %cmp.i189.not.i, label %if.then33.i.adi_get_bits.exit201.i_crit_edge, label %for.body.i199.preheader.i

if.then33.i.adi_get_bits.exit201.i_crit_edge:     ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit201.i

for.body.i199.preheader.i:                        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i193.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i187.i
  %172 = ptrtoint ptr %arrayidx.i193.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i193.i, align 1
  %174 = lshr i8 %173, 5
  %175 = and i8 %174, 1
  %sub.i192.1.i = add i32 %169, 3
  %arrayidx.i193.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i192.1.i
  %176 = ptrtoint ptr %arrayidx.i193.1.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %arrayidx.i193.1.i, align 1
  %178 = lshr i8 %177, 4
  %179 = and i8 %178, 2
  %or.i196.1301.i = or i8 %179, %175
  %sub.i192.2.i = add i32 %169, 2
  %arrayidx.i193.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i192.2.i
  %180 = ptrtoint ptr %arrayidx.i193.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx.i193.2.i, align 1
  %182 = lshr i8 %181, 3
  %183 = and i8 %182, 4
  %or.i196.2302.i = or i8 %or.i196.1301.i, %183
  %sub.i192.3.i = add i32 %169, 1
  %arrayidx.i193.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i192.3.i
  %184 = ptrtoint ptr %arrayidx.i193.3.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx.i193.3.i, align 1
  %186 = lshr i8 %185, 2
  %187 = and i8 %186, 8
  %or.i196.3303.i = or i8 %or.i196.2302.i, %187
  %or.i196.3.i = zext i8 %or.i196.3303.i to i32
  br label %adi_get_bits.exit201.i

adi_get_bits.exit201.i:                           ; preds = %for.body.i199.preheader.i, %if.then33.i.adi_get_bits.exit201.i_crit_edge
  %retval.0.i200.i = phi i32 [ 0, %if.then33.i.adi_get_bits.exit201.i_crit_edge ], [ %or.i196.3.i, %for.body.i199.preheader.i ]
  %incdec.ptr35.i = getelementptr i8, ptr %abs.2265.i, i32 1
  %188 = ptrtoint ptr %abs.2265.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %abs.2265.i, align 1
  %conv36.i = zext i8 %189 to i32
  %shr135.i = lshr i32 %retval.0.i200.i, 2
  %and.i = and i32 %shr135.i, 1
  %and37.i = and i32 %retval.0.i200.i, 1
  %sub.i18 = sub nsw i32 %and.i, %and37.i
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv36.i, i32 noundef %sub.i18) #8
  %incdec.ptr38.i = getelementptr i8, ptr %abs.2265.i, i32 2
  %190 = ptrtoint ptr %incdec.ptr35.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %incdec.ptr35.i, align 1
  %conv39.i = zext i8 %191 to i32
  %shr40136.i = lshr i32 %retval.0.i200.i, 1
  %and41.i = and i32 %shr40136.i, 1
  %192 = shl i32 %retval.0.i200.i, 28
  %193 = ashr i32 %192, 31
  %sub44.i = add nsw i32 %193, %and41.i
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv39.i, i32 noundef %sub44.i) #8
  br label %if.end45.i

if.end45.i:                                       ; preds = %adi_get_bits.exit201.i, %for.body29.i.if.end45.i_crit_edge
  %abs.3.i = phi ptr [ %incdec.ptr38.i, %adi_get_bits.exit201.i ], [ %abs.2265.i, %for.body29.i.if.end45.i_crit_edge ]
  %incdec.ptr46.i = getelementptr i16, ptr %key.0266.i, i32 1
  %194 = ptrtoint ptr %key.0266.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %key.0266.i, align 2
  %conv47.i = sext i16 %195 to i32
  %196 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %idx.i.i, align 4
  %add.i203.i = add i32 %197, 1
  store i32 %add.i203.i, ptr %idx.i.i, align 4
  %198 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i203.i, i32 %199)
  %cmp.i205.not.i = icmp sgt i32 %add.i203.i, %199
  br i1 %cmp.i205.not.i, label %if.end45.i.adi_get_bits.exit217.i_crit_edge, label %for.body.i215.preheader.i

if.end45.i.adi_get_bits.exit217.i_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit217.i

for.body.i215.preheader.i:                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i209.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i203.i
  %200 = ptrtoint ptr %arrayidx.i209.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %arrayidx.i209.i, align 1
  %202 = lshr i8 %201, 5
  %203 = and i8 %202, 1
  %and.i210.i = zext i8 %203 to i32
  br label %adi_get_bits.exit217.i

adi_get_bits.exit217.i:                           ; preds = %for.body.i215.preheader.i, %if.end45.i.adi_get_bits.exit217.i_crit_edge
  %retval.0.i216.i = phi i32 [ 0, %if.end45.i.adi_get_bits.exit217.i_crit_edge ], [ %and.i210.i, %for.body.i215.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i216.i)
  %tobool.i.i = icmp ne i32 %retval.0.i216.i, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %conv47.i, i32 noundef %lnot.ext.i.i) #8
  %inc50.i = add nuw nsw i32 %i.2267.i, 1
  %204 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %buttons.i, align 1
  %conv24.i = zext i8 %205 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc50.i, i32 %conv24.i)
  %cmp25.i = icmp ult i32 %inc50.i, %conv24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.2267.i)
  %cmp27.i = icmp ult i32 %i.2267.i, 62
  %or.cond.i = and i1 %cmp27.i, %cmp25.i
  br i1 %or.cond.i, label %adi_get_bits.exit217.i.for.body29.i_crit_edge, label %adi_get_bits.exit217.i.for.cond52.preheader.i_crit_edge

adi_get_bits.exit217.i.for.cond52.preheader.i_crit_edge: ; preds = %adi_get_bits.exit217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond52.preheader.i

adi_get_bits.exit217.i.for.body29.i_crit_edge:    ; preds = %adi_get_bits.exit217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body29.i

for.cond70.preheader.i:                           ; preds = %adi_get_bits.exit233.thread.i.for.cond70.preheader.i_crit_edge, %for.cond52.preheader.i.for.cond70.preheader.i_crit_edge
  %206 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %buttons.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %207)
  %cmp73275.i = icmp ugt i8 %207, 63
  br i1 %cmp73275.i, label %for.cond70.preheader.i.for.body75.i_crit_edge, label %for.cond70.preheader.i.for.end81.i_crit_edge

for.cond70.preheader.i.for.end81.i_crit_edge:     ; preds = %for.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81.i

for.cond70.preheader.i.for.body75.i_crit_edge:    ; preds = %for.cond70.preheader.i
  br label %for.body75.i

for.body56.i:                                     ; preds = %adi_get_bits.exit233.thread.i.for.body56.i_crit_edge, %for.cond52.preheader.i.for.body56.i_crit_edge
  %i.3273.i = phi i32 [ %inc68.i, %adi_get_bits.exit233.thread.i.for.body56.i_crit_edge ], [ 0, %for.cond52.preheader.i.for.body56.i_crit_edge ]
  %abs.4272.i = phi ptr [ %incdec.ptr64.i, %adi_get_bits.exit233.thread.i.for.body56.i_crit_edge ], [ %abs.2.lcssa.i, %for.cond52.preheader.i.for.body56.i_crit_edge ]
  %208 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %idx.i.i, align 4
  %add.i219.i = add i32 %209, 4
  store i32 %add.i219.i, ptr %idx.i.i, align 4
  %210 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i219.i, i32 %211)
  %cmp.i221.not.i = icmp sgt i32 %add.i219.i, %211
  br i1 %cmp.i221.not.i, label %for.body56.i.adi_get_bits.exit233.thread.i_crit_edge, label %for.body.i231.preheader.i

for.body56.i.adi_get_bits.exit233.thread.i_crit_edge: ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit233.thread.i

for.body.i231.preheader.i:                        ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i225.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i219.i
  %212 = ptrtoint ptr %arrayidx.i225.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i225.i, align 1
  %214 = lshr i8 %213, 5
  %215 = and i8 %214, 1
  %sub.i224.1.i = add i32 %209, 3
  %arrayidx.i225.1.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i224.1.i
  %216 = ptrtoint ptr %arrayidx.i225.1.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx.i225.1.i, align 1
  %218 = lshr i8 %217, 4
  %219 = and i8 %218, 2
  %or.i228.1298.i = or i8 %219, %215
  %sub.i224.2.i = add i32 %209, 2
  %arrayidx.i225.2.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i224.2.i
  %220 = ptrtoint ptr %arrayidx.i225.2.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %arrayidx.i225.2.i, align 1
  %222 = lshr i8 %221, 3
  %223 = and i8 %222, 4
  %or.i228.2299.i = or i8 %or.i228.1298.i, %223
  %sub.i224.3.i = add i32 %209, 1
  %arrayidx.i225.3.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %sub.i224.3.i
  %224 = ptrtoint ptr %arrayidx.i225.3.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i225.3.i, align 1
  %226 = lshr i8 %225, 2
  %227 = and i8 %226, 8
  %or.i228.3300.i = or i8 %or.i228.2299.i, %227
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %or.i228.3300.i)
  %cmp58.i = icmp ugt i8 %or.i228.3300.i, 8
  %narrow.i = select i1 %cmp58.i, i8 0, i8 %or.i228.3300.i
  %spec.select.i = zext i8 %narrow.i to i32
  br label %adi_get_bits.exit233.thread.i

adi_get_bits.exit233.thread.i:                    ; preds = %for.body.i231.preheader.i, %for.body56.i.adi_get_bits.exit233.thread.i_crit_edge
  %228 = phi i32 [ 0, %for.body56.i.adi_get_bits.exit233.thread.i_crit_edge ], [ %spec.select.i, %for.body.i231.preheader.i ]
  %incdec.ptr62.i = getelementptr i8, ptr %abs.4272.i, i32 1
  %229 = ptrtoint ptr %abs.4272.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %abs.4272.i, align 1
  %conv63.i = zext i8 %230 to i32
  %arrayidx.i = getelementptr [9 x %struct.anon.69], ptr @adi_hat_to_axis, i32 0, i32 %228
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv63.i, i32 noundef %232) #8
  %incdec.ptr64.i = getelementptr i8, ptr %abs.4272.i, i32 2
  %233 = ptrtoint ptr %incdec.ptr62.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %incdec.ptr62.i, align 1
  %conv65.i = zext i8 %234 to i32
  %y.i = getelementptr [9 x %struct.anon.69], ptr @adi_hat_to_axis, i32 0, i32 %228, i32 1
  %235 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %y.i, align 4
  tail call void @input_event(ptr noundef %25, i32 noundef 3, i32 noundef %conv65.i, i32 noundef %236) #8
  %inc68.i = add nuw nsw i32 %i.3273.i, 1
  %237 = ptrtoint ptr %hats.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %hats.i, align 1
  %conv53.i = zext i8 %238 to i32
  %cmp54.i = icmp ult i32 %inc68.i, %conv53.i
  br i1 %cmp54.i, label %adi_get_bits.exit233.thread.i.for.body56.i_crit_edge, label %adi_get_bits.exit233.thread.i.for.cond70.preheader.i_crit_edge

adi_get_bits.exit233.thread.i.for.cond70.preheader.i_crit_edge: ; preds = %adi_get_bits.exit233.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond70.preheader.i

adi_get_bits.exit233.thread.i.for.body56.i_crit_edge: ; preds = %adi_get_bits.exit233.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i

for.body75.i:                                     ; preds = %adi_get_bits.exit249.i.for.body75.i_crit_edge, %for.cond70.preheader.i.for.body75.i_crit_edge
  %i.4277.i = phi i32 [ %inc80.i, %adi_get_bits.exit249.i.for.body75.i_crit_edge ], [ 63, %for.cond70.preheader.i.for.body75.i_crit_edge ]
  %key.1276.i = phi ptr [ %incdec.ptr76.i, %adi_get_bits.exit249.i.for.body75.i_crit_edge ], [ %key.0.lcssa.i, %for.cond70.preheader.i.for.body75.i_crit_edge ]
  %incdec.ptr76.i = getelementptr i16, ptr %key.1276.i, i32 1
  %239 = ptrtoint ptr %key.1276.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %key.1276.i, align 2
  %conv77.i = sext i16 %240 to i32
  %241 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %idx.i.i, align 4
  %add.i235.i = add i32 %242, 1
  store i32 %add.i235.i, ptr %idx.i.i, align 4
  %243 = ptrtoint ptr %ret.i13 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %ret.i13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i235.i, i32 %244)
  %cmp.i237.not.i = icmp sgt i32 %add.i235.i, %244
  br i1 %cmp.i237.not.i, label %for.body75.i.adi_get_bits.exit249.i_crit_edge, label %for.body.i247.preheader.i

for.body75.i.adi_get_bits.exit249.i_crit_edge:    ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adi_get_bits.exit249.i

for.body.i247.preheader.i:                        ; preds = %for.body75.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i241.i = getelementptr %struct.adi, ptr %adi, i32 %i.019, i32 15, i32 %add.i235.i
  %245 = ptrtoint ptr %arrayidx.i241.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx.i241.i, align 1
  %247 = lshr i8 %246, 5
  %248 = and i8 %247, 1
  %and.i242.i = zext i8 %248 to i32
  br label %adi_get_bits.exit249.i

adi_get_bits.exit249.i:                           ; preds = %for.body.i247.preheader.i, %for.body75.i.adi_get_bits.exit249.i_crit_edge
  %retval.0.i248.i = phi i32 [ 0, %for.body75.i.adi_get_bits.exit249.i_crit_edge ], [ %and.i242.i, %for.body.i247.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i248.i)
  %tobool.i250.i = icmp ne i32 %retval.0.i248.i, 0
  %lnot.ext.i251.i = zext i1 %tobool.i250.i to i32
  tail call void @input_event(ptr noundef %25, i32 noundef 1, i32 noundef %conv77.i, i32 noundef %lnot.ext.i251.i) #8
  %inc80.i = add nuw nsw i32 %i.4277.i, 1
  %249 = ptrtoint ptr %buttons.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %buttons.i, align 1
  %conv72.i = zext i8 %250 to i32
  %cmp73.i = icmp ult i32 %inc80.i, %conv72.i
  br i1 %cmp73.i, label %adi_get_bits.exit249.i.for.body75.i_crit_edge, label %adi_get_bits.exit249.i.for.end81.i_crit_edge

adi_get_bits.exit249.i.for.end81.i_crit_edge:     ; preds = %adi_get_bits.exit249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81.i

adi_get_bits.exit249.i.for.body75.i_crit_edge:    ; preds = %adi_get_bits.exit249.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75.i

for.end81.i:                                      ; preds = %adi_get_bits.exit249.i.for.end81.i_crit_edge, %for.cond70.preheader.i.for.end81.i_crit_edge
  tail call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %adi_decode.exit

adi_decode.exit:                                  ; preds = %for.end81.i, %adi_get_bits.exit153.i.adi_decode.exit_crit_edge, %if.then.adi_decode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.end81.i ], [ -1, %adi_get_bits.exit153.i.adi_decode.exit_crit_edge ], [ -1, %if.then.adi_decode.exit_crit_edge ]
  %or = or i32 %retval.0.i, %result.024
  br label %for.inc

for.inc:                                          ; preds = %adi_decode.exit, %for.body.for.inc_crit_edge
  %result.1 = phi i32 [ %or, %adi_decode.exit ], [ %result.024, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 %result.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adi_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_start_polling(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adi_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @gameport_stop_polling(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_start_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gameport_stop_polling(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/adi.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/input/joystick/adi.c", i32 25, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/input/joystick/adi.c", i32 26, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_adi__227_551_adi_drv_init6, !8, !"__initcall__kmod_adi__227_551_adi_drv_init6", i1 false, i1 false}
!8 = !{!"../drivers/input/joystick/adi.c", i32 551, i32 1}
!9 = !{ptr @__exitcall_adi_drv_exit, !8, !"__exitcall_adi_drv_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/input/joystick/adi.c", i32 546, i32 17}
!13 = !{ptr @adi_drv, !14, !"adi_drv", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/adi.c", i32 542, i32 31}
!15 = !{ptr @adi_init_digital.seq, !16, !"seq", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/adi.c", i32 300, i32 19}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/adi.c", i32 322, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @adi_id_decode._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @adi_id_decode._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/joystick/adi.c", i32 333, i32 3}
!25 = !{ptr @adi_id_decode._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @adi_id_decode._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/joystick/adi.c", i32 342, i32 3}
!29 = !{ptr @adi_id_decode._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @adi_id_decode._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/joystick/adi.c", i32 365, i32 3}
!33 = !{ptr @adi_id_decode._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @adi_id_decode._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/joystick/adi.c", i32 398, i32 43}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/joystick/adi.c", i32 399, i32 43}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/joystick/adi.c", i32 57, i32 30}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/joystick/adi.c", i32 57, i32 57}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/joystick/adi.c", i32 57, i32 79}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/joystick/adi.c", i32 57, i32 90}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/joystick/adi.c", i32 58, i32 5}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/input/joystick/adi.c", i32 58, i32 28}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/joystick/adi.c", i32 58, i32 47}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/joystick/adi.c", i32 59, i32 5}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/joystick/adi.c", i32 59, i32 35}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/joystick/adi.c", i32 60, i32 5}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/joystick/adi.c", i32 60, i32 28}
!61 = !{ptr @adi_names, !62, !"adi_names", i1 false, i1 false}
!62 = !{!"../drivers/input/joystick/adi.c", i32 57, i32 14}
!63 = !{ptr @adi_abs, !64, !"adi_abs", i1 false, i1 false}
!64 = !{!"../drivers/input/joystick/adi.c", i32 73, i32 14}
!65 = !{ptr @adi_wmi_abs, !66, !"adi_wmi_abs", i1 false, i1 false}
!66 = !{!"../drivers/input/joystick/adi.c", i32 63, i32 13}
!67 = !{ptr @adi_wmgpe_abs, !68, !"adi_wmgpe_abs", i1 false, i1 false}
!68 = !{!"../drivers/input/joystick/adi.c", i32 62, i32 13}
!69 = !{ptr @adi_wmf_abs, !70, !"adi_wmf_abs", i1 false, i1 false}
!70 = !{!"../drivers/input/joystick/adi.c", i32 66, i32 13}
!71 = !{ptr @adi_cm2_abs, !72, !"adi_cm2_abs", i1 false, i1 false}
!72 = !{!"../drivers/input/joystick/adi.c", i32 65, i32 13}
!73 = !{ptr @adi_wmed3d_abs, !74, !"adi_wmed3d_abs", i1 false, i1 false}
!74 = !{!"../drivers/input/joystick/adi.c", i32 64, i32 13}
!75 = !{ptr @adi_key, !76, !"adi_key", i1 false, i1 false}
!76 = !{!"../drivers/input/joystick/adi.c", i32 76, i32 15}
!77 = !{ptr @adi_wmi_key, !78, !"adi_wmi_key", i1 false, i1 false}
!78 = !{!"../drivers/input/joystick/adi.c", i32 69, i32 14}
!79 = !{ptr @adi_wmgpe_key, !80, !"adi_wmgpe_key", i1 false, i1 false}
!80 = !{!"../drivers/input/joystick/adi.c", i32 68, i32 14}
!81 = !{ptr @adi_cm2_key, !82, !"adi_cm2_key", i1 false, i1 false}
!82 = !{!"../drivers/input/joystick/adi.c", i32 71, i32 14}
!83 = !{ptr @adi_wmed3d_key, !84, !"adi_wmed3d_key", i1 false, i1 false}
!84 = !{!"../drivers/input/joystick/adi.c", i32 70, i32 14}
!85 = !{ptr @adi_hat_to_axis, !86, !"adi_hat_to_axis", i1 false, i1 false}
!86 = !{!"../drivers/input/joystick/adi.c", i32 86, i32 3}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 2153581549}
!97 = !{i64 6021803}
!98 = !{i64 592726, i64 592787}
!99 = !{i64 6022198}
!100 = !{i64 2153582124}
!101 = !{i64 595458}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 595743}
