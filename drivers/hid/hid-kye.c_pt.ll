; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-kye.c_pt.bc'
source_filename = "../drivers/hid/hid-kye.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }

@__initcall__kmod_hid_kye__223_779_kye_driver_init6 = internal global ptr @kye_driver_init, section ".initcall6.init", align 4
@kye_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @kye_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @kye_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kye_report_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kye_driver_exit = internal global ptr @kye_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [33 x i8] c"hid_kye.file=drivers/hid/hid-kye\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"hid_kye.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hid_kye\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"kye\00", [28 x i8] zeroinitializer }, align 32
@kye_devices = internal constant { [11 x %struct.hid_device_id], [48 x i8] } { [11 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1112, i32 135, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20496, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20497, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20506, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20499, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20505, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 312, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 16408, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 339, i32 0 }, %struct.hid_device_id { i16 3, i16 0, i32 1112, i32 20501, i32 0 }, %struct.hid_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@kye_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kye_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hid/hid-kye.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kye_probe._entry_ptr = internal global ptr @kye_probe._entry, section ".printk_index", align 4
@kye_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 715, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@kye_probe._entry_ptr.9 = internal global ptr @kye_probe._entry.7, section ".printk_index", align 4
@kye_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 728, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tablet enabling failed\0A\00", [40 x i8] zeroinitializer }, align 32
@kye_probe._entry_ptr.12 = internal global ptr @kye_probe._entry.10, section ".printk_index", align 4
@kye_tablet_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"tablet-enabling feature report not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kye_tablet_enable\00", [46 x i8] zeroinitializer }, align 32
@kye_tablet_enable._entry_ptr = internal global ptr @kye_tablet_enable._entry, section ".printk_index", align 4
@kye_tablet_enable._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"invalid tablet-enabling feature report\0A\00", [56 x i8] zeroinitializer }, align 32
@kye_tablet_enable._entry_ptr.17 = internal global ptr @kye_tablet_enable._entry.15, section ".printk_index", align 4
@kye_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 597, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"fixing up Kye/Genius Ergo Mouse report descriptor\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kye_report_fixup\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kye_report_fixup._entry_ptr = internal global ptr @kye_report_fixup._entry, section ".printk_index", align 4
@easypen_i405x_rdesc_fixed = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\06\00\FF\09\01\A1\01\85\05\09\01\15\80%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\134\090F|\15&\007\81\02\091F\A0\0F&\00(\81\02\B4\090&\FF\03\81\02\C0\C0", [60 x i8] zeroinitializer }, align 32
@mousepen_i608x_rdesc_fixed = internal global { [177 x i8], [47 x i8] } { [177 x i8] c"\06\00\FF\09\01\A1\01\85\05\09\01\15\80%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\134\090F@\1F&\00P\81\02\091Fp\17&\00<\81\02\B4\090&\FF\03\81\02\C0\C0\05\01\09\02\A1\01\85\11\09\01\A0\14\A4\05\09u\01\19\01)\03%\01\95\03\81\02\95\05\81\01\B4\95\01\A4U\FDe\134u\10\090F@\1F&\00P\81\02\091Fp\17&\00<\81\02\B4u\08\098\15\FF%\01\81\06\81\01\C0\C0", [47 x i8] zeroinitializer }, align 32
@mousepen_i608x_v2_rdesc_fixed = internal global { [181 x i8], [43 x i8] } { [181 x i8] c"\06\00\FF\09\01\A1\01\85\05\09\01\15\80%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\134\090F@\1F'\00\A0\00\00\81\02\091Fp\17&\00x\81\02\B4\090&\FF\07\81\02\C0\C0\05\01\09\02\A1\01\85\11\09\01\A0\14\A4\05\09u\01\19\01)\03%\01\95\03\81\02\95\05\81\01\B4\95\01\A4U\FDe\134u\10\090F@\1F'\00\A0\00\00\81\02\091Fp\17&\00x\81\02\B4u\08\098\15\FF%\01\81\06\81\01\C0\C0", [43 x i8] zeroinitializer }, align 32
@easypen_m610x_rdesc_fixed = internal global { [142 x i8], [50 x i8] } { [142 x i8] c"\06\00\FF\09\01\A1\01\85\05\09\01\15\80%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\134\090F\10''\00\A0\00\00\81\02\091Fj\18&\00d\81\02\B4\090&\FF\03\81\02\C0\C0\05\0C\09\01\A1\01\85\12\14%\01u\01\95\04\0A\1A\02\0Ay\02\0A-\02\0A.\02\81\02\95\01u\14\81\03u \81\03\C0", [50 x i8] zeroinitializer }, align 32
@easypen_m406xe_rdesc_fixed = internal global { [133 x i8], [59 x i8] } { [133 x i8] c"\05\01\09\01\A1\01\85\05\09\01\15\80%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\14%\01u\01\09B\09D\09F\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\134\090Fp\17&\00<\81\02\091F\A0\0F&\00(\81\02\B4\090&\FF\03\81\02\C0\C0\05\0C\09\01\A1\01\85\12\14%\01u\01\95\04\0Ay\02\0A\1A\02\0A-\02\0A.\02\81\02\954\81\03\C0", [59 x i8] zeroinitializer }, align 32
@pensketch_m912_rdesc_fixed = internal global { [251 x i8], [37 x i8] } { [251 x i8] c"\05\01\08\A1\01\85\05\06\00\FF\09\01\15\81%\7Fu\08\95\07\B1\02\C0\05\0D\09\02\A1\01\85\10\09 \A0\09B\09D\09F\14%\01u\01\95\03\81\02\95\04\81\03\092\95\01\81\02u\10\95\01\A4\05\01U\FDe\13\144\090'\00\F0\00\00F\E0.\81\02\091'\00\B4\00\00F(#\81\02\B4\090\14&\FF\07\81\02\C0\C0\05\0D\09!\A1\01\85\11\09!\A0\05\09u\01\19\01)\03\14%\01\95\03\81\02\95\04\81\01\95\01\0B2\00\0D\00\14%\01\81\02\A4\05\01u\10\95\01U\FDe\13\144\090'\00\F0\00\00F\E0.\81\02\091'\00\B4\00\00F(#\81\02\098u\08\95\01\15\FF%\014D\81\06\B4\C0\C0\05\0C\09\01\A1\01\85\12\14%\01u\01\95\08\05\0C\0Aj\02\0A\1A\02\0A\01\02\0A/\02\0A%\02\0A$\02\0A-\02\0A.\02\81\02\950\81\03\C0", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Genius Gila Gaming Mouse\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Genius Gx Imperator Keyboard\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Genius Manticore Keyboard\00", [38 x i8] zeroinitializer }, align 32
@kye_consumer_control_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 571, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fixing up %s report descriptor\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kye_consumer_control_fixup\00", [37 x i8] zeroinitializer }, align 32
@kye_consumer_control_fixup._entry_ptr = internal global ptr @kye_consumer_control_fixup._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 339, i64 20496, i64 20497, i64 20499, i64 20501, i64 20505, i64 20506]
@__sancov_gen_cov_switch_values.26 = internal global [12 x i64] [i64 10, i64 32, i64 135, i64 312, i64 339, i64 16408, i64 20496, i64 20497, i64 20499, i64 20501, i64 20505, i64 20506]
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"kye_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 773, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 779, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 774, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"kye_devices\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 749, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 709, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 715, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 728, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 680, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 685, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 595, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"easypen_i405x_rdesc_fixed\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 23, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"mousepen_i608x_rdesc_fixed\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 81, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant [30 x i8] c"mousepen_i608x_v2_rdesc_fixed\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 180, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"easypen_m610x_rdesc_fixed\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 279, i32 13 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"easypen_m406xe_rdesc_fixed\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 487, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"pensketch_m912_rdesc_fixed\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 357, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 643, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 647, i32 6 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 651, i32 6 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [25 x i8] c"../drivers/hid/hid-kye.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 571, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_kye_driver_exit, ptr @__initcall__kmod_hid_kye__223_779_kye_driver_init6, ptr @kye_consumer_control_fixup._entry, ptr @kye_consumer_control_fixup._entry_ptr, ptr @kye_driver_exit, ptr @kye_probe._entry, ptr @kye_probe._entry.10, ptr @kye_probe._entry.7, ptr @kye_probe._entry_ptr, ptr @kye_probe._entry_ptr.12, ptr @kye_probe._entry_ptr.9, ptr @kye_report_fixup._entry, ptr @kye_report_fixup._entry_ptr, ptr @kye_tablet_enable._entry, ptr @kye_tablet_enable._entry.15, ptr @kye_tablet_enable._entry_ptr, ptr @kye_tablet_enable._entry_ptr.17, ptr @kye_driver, ptr @.str, ptr @.str.1, ptr @kye_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @easypen_i405x_rdesc_fixed, ptr @mousepen_i608x_rdesc_fixed, ptr @mousepen_i608x_v2_rdesc_fixed, ptr @easypen_m610x_rdesc_fixed, ptr @easypen_m406xe_rdesc_fixed, ptr @pensketch_m912_rdesc_fixed, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_devices to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_tablet_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_tablet_enable._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @easypen_i405x_rdesc_fixed to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousepen_i608x_rdesc_fixed to i32), i32 177, i32 224, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mousepen_i608x_v2_rdesc_fixed to i32), i32 181, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @easypen_m610x_rdesc_fixed to i32), i32 142, i32 192, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @easypen_m406xe_rdesc_fixed to i32), i32 133, i32 192, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pensketch_m912_rdesc_fixed to i32), i32 251, i32 288, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kye_consumer_control_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kye_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @kye_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kye_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_unregister_driver(ptr noundef nonnull @kye_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kye_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.8) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %product = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 3
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end8.cleanup_crit_edge [
    i32 20496, label %if.end8.sw.bb_crit_edge
    i32 20497, label %if.end8.sw.bb_crit_edge42
    i32 20506, label %if.end8.sw.bb_crit_edge43
    i32 20499, label %if.end8.sw.bb_crit_edge44
    i32 20505, label %if.end8.sw.bb_crit_edge45
    i32 20501, label %if.end8.sw.bb_crit_edge46
    i32 339, label %sw.bb17
  ]

if.end8.sw.bb_crit_edge46:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.sw.bb_crit_edge45:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.sw.bb_crit_edge44:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.sw.bb_crit_edge43:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.sw.bb_crit_edge42:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.sw.bb_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end8.sw.bb_crit_edge, %if.end8.sw.bb_crit_edge42, %if.end8.sw.bb_crit_edge43, %if.end8.sw.bb_crit_edge44, %if.end8.sw.bb_crit_edge45, %if.end8.sw.bb_crit_edge46
  %report_list.i = getelementptr %struct.hid_device, ptr %hdev, i32 0, i32 15, i32 2, i32 1
  %3 = ptrtoint ptr %report_list.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %head.045.i = load ptr, ptr %report_list.i, align 4
  %cmp.i46.i = icmp eq ptr %head.045.i, %report_list.i
  br i1 %cmp.i46.i, label %sw.bb.do.end14_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.do.end14_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

for.cond.i:                                       ; preds = %for.body.i
  %4 = ptrtoint ptr %head.047.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %head.0.i = load ptr, ptr %head.047.i, align 4
  %cmp.i.i = icmp eq ptr %head.0.i, %report_list.i
  br i1 %cmp.i.i, label %for.cond.i.do.end14_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.do.end14_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %head.047.i = phi ptr [ %head.0.i, %for.cond.i.for.body.i_crit_edge ], [ %head.045.i, %sw.bb.for.body.i_crit_edge ]
  %id.i = getelementptr inbounds %struct.hid_report, ptr %head.047.i, i32 0, i32 2
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp.i = icmp eq i32 %6, 5
  br i1 %cmp.i, label %if.end4.i, label %for.cond.i

if.end4.i:                                        ; preds = %for.body.i
  %maxfield.i = getelementptr inbounds %struct.hid_report, ptr %head.047.i, i32 0, i32 6
  %7 = ptrtoint ptr %maxfield.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxfield.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.i = icmp eq i32 %8, 0
  br i1 %cmp5.i, label %if.end4.i.do.end14_crit_edge, label %lor.lhs.false.i

if.end4.i.do.end14_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %field.i = getelementptr inbounds %struct.hid_report, ptr %head.047.i, i32 0, i32 5
  %9 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %field.i, align 4
  %report_count.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %report_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %report_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp7.i = icmp ult i32 %12, 7
  br i1 %cmp7.i, label %lor.lhs.false.i.do.end14_crit_edge, label %kye_tablet_enable.exit

lor.lhs.false.i.do.end14_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end14

kye_tablet_enable.exit:                           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  %value16.i = getelementptr inbounds %struct.hid_field, ptr %10, i32 0, i32 10
  %13 = ptrtoint ptr %value16.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value16.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 18, ptr %14, align 4
  %arrayidx18.i = getelementptr i32, ptr %14, i32 1
  %16 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %arrayidx18.i, align 4
  %arrayidx19.i = getelementptr i32, ptr %14, i32 2
  %17 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 17, ptr %arrayidx19.i, align 4
  %arrayidx20.i = getelementptr i32, ptr %14, i32 3
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 18, ptr %arrayidx20.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %14, i32 4
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx21.i, align 4
  %arrayidx22.i = getelementptr i32, ptr %14, i32 5
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx22.i, align 4
  %arrayidx23.i = getelementptr i32, ptr %14, i32 6
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx23.i, align 4
  tail call void @hid_hw_request(ptr noundef %hdev, ptr noundef %head.047.i, i32 noundef 9) #4
  br label %cleanup

do.end14:                                         ; preds = %lor.lhs.false.i.do.end14_crit_edge, %if.end4.i.do.end14_crit_edge, %for.cond.i.do.end14_crit_edge, %sw.bb.do.end14_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %sw.bb.do.end14_crit_edge ], [ @.str.16, %lor.lhs.false.i.do.end14_crit_edge ], [ @.str.16, %if.end4.i.do.end14_crit_edge ], [ @.str.13, %for.cond.i.do.end14_crit_edge ]
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.13.sink) #7
  %dev15 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.11) #7
  tail call void @hid_hw_stop(ptr noundef %hdev) #4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end8
  %call18 = tail call i32 @hid_hw_open(ptr noundef %hdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %sw.bb17.cleanup_crit_edge, label %if.then20

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hid_hw_close(ptr noundef %hdev) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %sw.bb17.cleanup_crit_edge, %do.end14, %kye_tablet_enable.exit, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %sw.bb17.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %kye_tablet_enable.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ %call.i, %do.end ], [ %call1, %do.end6 ], [ -19, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kye_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %product, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 135, label %sw.bb
    i32 20496, label %sw.bb53
    i32 20497, label %sw.bb58
    i32 20506, label %sw.bb63
    i32 20499, label %sw.bb68
    i32 20505, label %sw.bb73
    i32 20501, label %sw.bb78
    i32 312, label %sw.bb83
    i32 16408, label %sw.bb84
    i32 339, label %sw.bb86
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %4)
  %cmp = icmp ugt i32 %4, 74
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx = getelementptr i8, ptr %rdesc, i32 61
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %cmp1 = icmp eq i8 %6, 5
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %rdesc, i32 62
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6 = icmp eq i8 %8, 8
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.sw.epilog_crit_edge

land.lhs.true3.sw.epilog_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %rdesc, i32 63
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 25, i8 %10)
  %cmp11 = icmp eq i8 %10, 25
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true8.sw.epilog_crit_edge

land.lhs.true8.sw.epilog_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true13:                                  ; preds = %land.lhs.true8
  %arrayidx14 = getelementptr i8, ptr %rdesc, i32 64
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp16 = icmp eq i8 %12, 8
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true13.sw.epilog_crit_edge

land.lhs.true13.sw.epilog_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true18:                                  ; preds = %land.lhs.true13
  %arrayidx19 = getelementptr i8, ptr %rdesc, i32 65
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 41, i8 %14)
  %cmp21 = icmp eq i8 %14, 41
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true18.sw.epilog_crit_edge

land.lhs.true18.sw.epilog_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true23:                                  ; preds = %land.lhs.true18
  %arrayidx24 = getelementptr i8, ptr %rdesc, i32 66
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %16)
  %cmp26 = icmp eq i8 %16, 15
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true23.sw.epilog_crit_edge

land.lhs.true23.sw.epilog_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true28:                                  ; preds = %land.lhs.true23
  %arrayidx29 = getelementptr i8, ptr %rdesc, i32 71
  %17 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 117, i8 %18)
  %cmp31 = icmp eq i8 %18, 117
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true28.sw.epilog_crit_edge

land.lhs.true28.sw.epilog_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true33:                                  ; preds = %land.lhs.true28
  %arrayidx34 = getelementptr i8, ptr %rdesc, i32 72
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp36 = icmp eq i8 %20, 8
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true33.sw.epilog_crit_edge

land.lhs.true33.sw.epilog_crit_edge:              ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %arrayidx39 = getelementptr i8, ptr %rdesc, i32 73
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %22)
  %cmp41 = icmp eq i8 %22, -107
  br i1 %cmp41, label %land.lhs.true43, label %land.lhs.true38.sw.epilog_crit_edge

land.lhs.true38.sw.epilog_crit_edge:              ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %arrayidx44 = getelementptr i8, ptr %rdesc, i32 74
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp46 = icmp eq i8 %24, 1
  br i1 %cmp46, label %do.end, label %land.lhs.true43.sw.epilog_crit_edge

land.lhs.true43.sw.epilog_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  %25 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %arrayidx4, align 1
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %arrayidx14, align 1
  %27 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %arrayidx24, align 1
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %arrayidx34, align 1
  %29 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %arrayidx44, align 1
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  %30 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 476, i32 %31)
  %cmp54 = icmp eq i32 %31, 476
  br i1 %cmp54, label %if.then56, label %sw.bb53.sw.epilog_crit_edge

sw.bb53.sw.epilog_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then56:                                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 100, ptr %rsize, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %33 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 476, i32 %34)
  %cmp59 = icmp eq i32 %34, 476
  br i1 %cmp59, label %if.then61, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then61:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 177, ptr %rsize, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  %36 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 482, i32 %37)
  %cmp64 = icmp eq i32 %37, 482
  br i1 %cmp64, label %if.then66, label %sw.bb63.sw.epilog_crit_edge

sw.bb63.sw.epilog_crit_edge:                      ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then66:                                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 181, ptr %rsize, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  %39 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 476, i32 %40)
  %cmp69 = icmp eq i32 %40, 476
  br i1 %cmp69, label %if.then71, label %sw.bb68.sw.epilog_crit_edge

sw.bb68.sw.epilog_crit_edge:                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then71:                                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 142, ptr %rsize, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %42 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 476, i32 %43)
  %cmp74 = icmp eq i32 %43, 476
  br i1 %cmp74, label %if.then76, label %sw.bb73.sw.epilog_crit_edge

sw.bb73.sw.epilog_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then76:                                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #6
  %44 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 133, ptr %rsize, align 4
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  %45 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 482, i32 %46)
  %cmp79 = icmp eq i32 %46, 482
  br i1 %cmp79, label %if.then81, label %sw.bb78.sw.epilog_crit_edge

sw.bb78.sw.epilog_crit_edge:                      ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then81:                                        ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 251, ptr %rsize, align 4
  br label %sw.epilog

sw.bb83:                                          ; preds = %entry
  %48 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %49)
  %cmp.not.i = icmp ult i32 %49, 135
  br i1 %cmp.not.i, label %sw.bb83.sw.epilog_crit_edge, label %land.lhs.true.i

sw.bb83.sw.epilog_crit_edge:                      ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %sw.bb83
  %arrayidx.i = getelementptr i8, ptr %rdesc, i32 104
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %51)
  %cmp1.i = icmp eq i8 %51, 5
  br i1 %cmp1.i, label %land.lhs.true3.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %arrayidx5.i = getelementptr i8, ptr %rdesc, i32 105
  %52 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %53)
  %cmp7.i = icmp eq i8 %53, 12
  br i1 %cmp7.i, label %land.lhs.true9.i, label %land.lhs.true3.i.sw.epilog_crit_edge

land.lhs.true3.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true9.i:                                 ; preds = %land.lhs.true3.i
  %arrayidx11.i = getelementptr i8, ptr %rdesc, i32 106
  %54 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %55)
  %cmp13.i = icmp eq i8 %55, 9
  br i1 %cmp13.i, label %land.lhs.true15.i, label %land.lhs.true9.i.sw.epilog_crit_edge

land.lhs.true9.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true15.i:                                ; preds = %land.lhs.true9.i
  %arrayidx17.i = getelementptr i8, ptr %rdesc, i32 107
  %56 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp19.i = icmp eq i8 %57, 1
  br i1 %cmp19.i, label %land.lhs.true21.i, label %land.lhs.true15.i.sw.epilog_crit_edge

land.lhs.true15.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true21.i:                                ; preds = %land.lhs.true15.i
  %arrayidx23.i = getelementptr i8, ptr %rdesc, i32 114
  %58 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %59)
  %cmp25.i = icmp eq i8 %59, 42
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true21.i.sw.epilog_crit_edge

land.lhs.true21.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true27.i:                                ; preds = %land.lhs.true21.i
  %arrayidx29.i = getelementptr i8, ptr %rdesc, i32 116
  %60 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %61)
  %cmp31.i = icmp ugt i8 %61, 47
  br i1 %cmp31.i, label %do.end.i, label %land.lhs.true27.i.sw.epilog_crit_edge

land.lhs.true27.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i:                                         ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21) #7
  %62 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 47, ptr %arrayidx29.i, align 1
  br label %sw.epilog

sw.bb84:                                          ; preds = %entry
  %63 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 114, i32 %64)
  %cmp.not.i125 = icmp ult i32 %64, 114
  br i1 %cmp.not.i125, label %sw.bb84.sw.epilog_crit_edge, label %land.lhs.true.i128

sw.bb84.sw.epilog_crit_edge:                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.i128:                               ; preds = %sw.bb84
  %arrayidx.i126 = getelementptr i8, ptr %rdesc, i32 83
  %65 = ptrtoint ptr %arrayidx.i126 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i126, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %66)
  %cmp1.i127 = icmp eq i8 %66, 5
  br i1 %cmp1.i127, label %land.lhs.true3.i131, label %land.lhs.true.i128.sw.epilog_crit_edge

land.lhs.true.i128.sw.epilog_crit_edge:           ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true3.i131:                              ; preds = %land.lhs.true.i128
  %arrayidx5.i129 = getelementptr i8, ptr %rdesc, i32 84
  %67 = ptrtoint ptr %arrayidx5.i129 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx5.i129, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %68)
  %cmp7.i130 = icmp eq i8 %68, 12
  br i1 %cmp7.i130, label %land.lhs.true9.i134, label %land.lhs.true3.i131.sw.epilog_crit_edge

land.lhs.true3.i131.sw.epilog_crit_edge:          ; preds = %land.lhs.true3.i131
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true9.i134:                              ; preds = %land.lhs.true3.i131
  %arrayidx11.i132 = getelementptr i8, ptr %rdesc, i32 85
  %69 = ptrtoint ptr %arrayidx11.i132 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx11.i132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %70)
  %cmp13.i133 = icmp eq i8 %70, 9
  br i1 %cmp13.i133, label %land.lhs.true15.i137, label %land.lhs.true9.i134.sw.epilog_crit_edge

land.lhs.true9.i134.sw.epilog_crit_edge:          ; preds = %land.lhs.true9.i134
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true15.i137:                             ; preds = %land.lhs.true9.i134
  %arrayidx17.i135 = getelementptr i8, ptr %rdesc, i32 86
  %71 = ptrtoint ptr %arrayidx17.i135 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx17.i135, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp19.i136 = icmp eq i8 %72, 1
  br i1 %cmp19.i136, label %land.lhs.true21.i140, label %land.lhs.true15.i137.sw.epilog_crit_edge

land.lhs.true15.i137.sw.epilog_crit_edge:         ; preds = %land.lhs.true15.i137
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true21.i140:                             ; preds = %land.lhs.true15.i137
  %arrayidx23.i138 = getelementptr i8, ptr %rdesc, i32 93
  %73 = ptrtoint ptr %arrayidx23.i138 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx23.i138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %74)
  %cmp25.i139 = icmp eq i8 %74, 42
  br i1 %cmp25.i139, label %land.lhs.true27.i143, label %land.lhs.true21.i140.sw.epilog_crit_edge

land.lhs.true21.i140.sw.epilog_crit_edge:         ; preds = %land.lhs.true21.i140
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true27.i143:                             ; preds = %land.lhs.true21.i140
  %arrayidx29.i141 = getelementptr i8, ptr %rdesc, i32 95
  %75 = ptrtoint ptr %arrayidx29.i141 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx29.i141, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %76)
  %cmp31.i142 = icmp ugt i8 %76, 47
  br i1 %cmp31.i142, label %do.end.i145, label %land.lhs.true27.i143.sw.epilog_crit_edge

land.lhs.true27.i143.sw.epilog_crit_edge:         ; preds = %land.lhs.true27.i143
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i145:                                      ; preds = %land.lhs.true27.i143
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i144 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i144, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22) #7
  %77 = ptrtoint ptr %arrayidx29.i141 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 47, ptr %arrayidx29.i141, align 1
  br label %sw.epilog

sw.bb86:                                          ; preds = %entry
  %78 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 135, i32 %79)
  %cmp.not.i147 = icmp ult i32 %79, 135
  br i1 %cmp.not.i147, label %sw.bb86.sw.epilog_crit_edge, label %land.lhs.true.i150

sw.bb86.sw.epilog_crit_edge:                      ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true.i150:                               ; preds = %sw.bb86
  %arrayidx.i148 = getelementptr i8, ptr %rdesc, i32 104
  %80 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %81)
  %cmp1.i149 = icmp eq i8 %81, 5
  br i1 %cmp1.i149, label %land.lhs.true3.i153, label %land.lhs.true.i150.sw.epilog_crit_edge

land.lhs.true.i150.sw.epilog_crit_edge:           ; preds = %land.lhs.true.i150
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true3.i153:                              ; preds = %land.lhs.true.i150
  %arrayidx5.i151 = getelementptr i8, ptr %rdesc, i32 105
  %82 = ptrtoint ptr %arrayidx5.i151 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx5.i151, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %83)
  %cmp7.i152 = icmp eq i8 %83, 12
  br i1 %cmp7.i152, label %land.lhs.true9.i156, label %land.lhs.true3.i153.sw.epilog_crit_edge

land.lhs.true3.i153.sw.epilog_crit_edge:          ; preds = %land.lhs.true3.i153
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true9.i156:                              ; preds = %land.lhs.true3.i153
  %arrayidx11.i154 = getelementptr i8, ptr %rdesc, i32 106
  %84 = ptrtoint ptr %arrayidx11.i154 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx11.i154, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %85)
  %cmp13.i155 = icmp eq i8 %85, 9
  br i1 %cmp13.i155, label %land.lhs.true15.i159, label %land.lhs.true9.i156.sw.epilog_crit_edge

land.lhs.true9.i156.sw.epilog_crit_edge:          ; preds = %land.lhs.true9.i156
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true15.i159:                             ; preds = %land.lhs.true9.i156
  %arrayidx17.i157 = getelementptr i8, ptr %rdesc, i32 107
  %86 = ptrtoint ptr %arrayidx17.i157 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx17.i157, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %87)
  %cmp19.i158 = icmp eq i8 %87, 1
  br i1 %cmp19.i158, label %land.lhs.true21.i162, label %land.lhs.true15.i159.sw.epilog_crit_edge

land.lhs.true15.i159.sw.epilog_crit_edge:         ; preds = %land.lhs.true15.i159
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true21.i162:                             ; preds = %land.lhs.true15.i159
  %arrayidx23.i160 = getelementptr i8, ptr %rdesc, i32 114
  %88 = ptrtoint ptr %arrayidx23.i160 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx23.i160, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %89)
  %cmp25.i161 = icmp eq i8 %89, 42
  br i1 %cmp25.i161, label %land.lhs.true27.i165, label %land.lhs.true21.i162.sw.epilog_crit_edge

land.lhs.true21.i162.sw.epilog_crit_edge:         ; preds = %land.lhs.true21.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

land.lhs.true27.i165:                             ; preds = %land.lhs.true21.i162
  %arrayidx29.i163 = getelementptr i8, ptr %rdesc, i32 116
  %90 = ptrtoint ptr %arrayidx29.i163 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx29.i163, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %91)
  %cmp31.i164 = icmp ugt i8 %91, 47
  br i1 %cmp31.i164, label %do.end.i167, label %land.lhs.true27.i165.sw.epilog_crit_edge

land.lhs.true27.i165.sw.epilog_crit_edge:         ; preds = %land.lhs.true27.i165
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.i167:                                      ; preds = %land.lhs.true27.i165
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i166 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i166, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23) #7
  %92 = ptrtoint ptr %arrayidx29.i163 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 47, ptr %arrayidx29.i163, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i167, %land.lhs.true27.i165.sw.epilog_crit_edge, %land.lhs.true21.i162.sw.epilog_crit_edge, %land.lhs.true15.i159.sw.epilog_crit_edge, %land.lhs.true9.i156.sw.epilog_crit_edge, %land.lhs.true3.i153.sw.epilog_crit_edge, %land.lhs.true.i150.sw.epilog_crit_edge, %sw.bb86.sw.epilog_crit_edge, %do.end.i145, %land.lhs.true27.i143.sw.epilog_crit_edge, %land.lhs.true21.i140.sw.epilog_crit_edge, %land.lhs.true15.i137.sw.epilog_crit_edge, %land.lhs.true9.i134.sw.epilog_crit_edge, %land.lhs.true3.i131.sw.epilog_crit_edge, %land.lhs.true.i128.sw.epilog_crit_edge, %sw.bb84.sw.epilog_crit_edge, %do.end.i, %land.lhs.true27.i.sw.epilog_crit_edge, %land.lhs.true21.i.sw.epilog_crit_edge, %land.lhs.true15.i.sw.epilog_crit_edge, %land.lhs.true9.i.sw.epilog_crit_edge, %land.lhs.true3.i.sw.epilog_crit_edge, %land.lhs.true.i.sw.epilog_crit_edge, %sw.bb83.sw.epilog_crit_edge, %if.then81, %sw.bb78.sw.epilog_crit_edge, %if.then76, %sw.bb73.sw.epilog_crit_edge, %if.then71, %sw.bb68.sw.epilog_crit_edge, %if.then66, %sw.bb63.sw.epilog_crit_edge, %if.then61, %sw.bb58.sw.epilog_crit_edge, %if.then56, %sw.bb53.sw.epilog_crit_edge, %do.end, %land.lhs.true43.sw.epilog_crit_edge, %land.lhs.true38.sw.epilog_crit_edge, %land.lhs.true33.sw.epilog_crit_edge, %land.lhs.true28.sw.epilog_crit_edge, %land.lhs.true23.sw.epilog_crit_edge, %land.lhs.true18.sw.epilog_crit_edge, %land.lhs.true13.sw.epilog_crit_edge, %land.lhs.true8.sw.epilog_crit_edge, %land.lhs.true3.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %rdesc.addr.0 = phi ptr [ %rdesc, %entry.sw.epilog_crit_edge ], [ @pensketch_m912_rdesc_fixed, %if.then81 ], [ %rdesc, %sw.bb78.sw.epilog_crit_edge ], [ @easypen_m406xe_rdesc_fixed, %if.then76 ], [ %rdesc, %sw.bb73.sw.epilog_crit_edge ], [ @easypen_m610x_rdesc_fixed, %if.then71 ], [ %rdesc, %sw.bb68.sw.epilog_crit_edge ], [ @mousepen_i608x_v2_rdesc_fixed, %if.then66 ], [ %rdesc, %sw.bb63.sw.epilog_crit_edge ], [ @mousepen_i608x_rdesc_fixed, %if.then61 ], [ %rdesc, %sw.bb58.sw.epilog_crit_edge ], [ @easypen_i405x_rdesc_fixed, %if.then56 ], [ %rdesc, %sw.bb53.sw.epilog_crit_edge ], [ %rdesc, %do.end ], [ %rdesc, %land.lhs.true43.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true38.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true33.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true28.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true23.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true18.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true13.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true8.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true3.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true.sw.epilog_crit_edge ], [ %rdesc, %sw.bb.sw.epilog_crit_edge ], [ %rdesc, %sw.bb83.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true.i.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true3.i.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true9.i.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true15.i.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true21.i.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true27.i.sw.epilog_crit_edge ], [ %rdesc, %do.end.i ], [ %rdesc, %sw.bb84.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true.i128.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true3.i131.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true9.i134.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true15.i137.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true21.i140.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true27.i143.sw.epilog_crit_edge ], [ %rdesc, %do.end.i145 ], [ %rdesc, %sw.bb86.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true.i150.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true3.i153.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true9.i156.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true15.i159.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true21.i162.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true27.i165.sw.epilog_crit_edge ], [ %rdesc, %do.end.i167 ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_hid_kye__223_779_kye_driver_init6, !1, !"__initcall__kmod_hid_kye__223_779_kye_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-kye.c", i32 779, i32 1}
!2 = !{ptr @__exitcall_kye_driver_exit, !1, !"__exitcall_kye_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-kye.c", i32 781, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-kye.c", i32 774, i32 10}
!9 = !{ptr @kye_driver, !10, !"kye_driver", i1 false, i1 false}
!10 = !{!"../drivers/hid/hid-kye.c", i32 773, i32 26}
!11 = !{ptr @kye_devices, !12, !"kye_devices", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-kye.c", i32 749, i32 35}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-kye.c", i32 709, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @kye_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @kye_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hid/hid-kye.c", i32 715, i32 3}
!23 = !{ptr @kye_probe._entry.7, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @kye_probe._entry_ptr.9, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-kye.c", i32 728, i32 4}
!27 = !{ptr @kye_probe._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @kye_probe._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-kye.c", i32 680, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @kye_tablet_enable._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @kye_tablet_enable._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hid/hid-kye.c", i32 685, i32 3}
!36 = !{ptr @kye_tablet_enable._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @kye_tablet_enable._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hid/hid-kye.c", i32 595, i32 4}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @kye_report_fixup._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @kye_report_fixup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hid/hid-kye.c", i32 643, i32 6}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hid/hid-kye.c", i32 647, i32 6}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-kye.c", i32 651, i32 6}
!50 = !{ptr @easypen_i405x_rdesc_fixed, !51, !"easypen_i405x_rdesc_fixed", i1 false, i1 false}
!51 = !{!"../drivers/hid/hid-kye.c", i32 23, i32 13}
!52 = !{ptr @mousepen_i608x_rdesc_fixed, !53, !"mousepen_i608x_rdesc_fixed", i1 false, i1 false}
!53 = !{!"../drivers/hid/hid-kye.c", i32 81, i32 13}
!54 = !{ptr @mousepen_i608x_v2_rdesc_fixed, !55, !"mousepen_i608x_v2_rdesc_fixed", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-kye.c", i32 180, i32 13}
!56 = !{ptr @easypen_m610x_rdesc_fixed, !57, !"easypen_m610x_rdesc_fixed", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-kye.c", i32 279, i32 13}
!58 = !{ptr @easypen_m406xe_rdesc_fixed, !59, !"easypen_m406xe_rdesc_fixed", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-kye.c", i32 487, i32 13}
!60 = !{ptr @pensketch_m912_rdesc_fixed, !61, !"pensketch_m912_rdesc_fixed", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-kye.c", i32 357, i32 13}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-kye.c", i32 571, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @kye_consumer_control_fixup._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @kye_consumer_control_fixup._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
