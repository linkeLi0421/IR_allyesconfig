; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-uclogic-params.c_pt.bc'
source_filename = "../drivers/hid/hid-uclogic-params.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.uclogic_params = type { i8, ptr, i32, i8, %struct.uclogic_params_pen, %struct.uclogic_params_frame, i8 }
%struct.uclogic_params_pen = type { ptr, i32, i32, i32, i8 }
%struct.uclogic_params_frame = type { ptr, i32, i32, i32, i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/hid/hid-uclogic-params.c\00", [63 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pf1209_fixed_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_pf1209_fixed_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_wp4030u_fixed_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_wp4030u_fixed_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 920, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pen probing failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"uclogic_params_init\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr = internal global ptr @uclogic_params_init._entry, section ".printk_index", align 4
@uclogic_params_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 925, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pen parameters not found\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.11 = internal global ptr @uclogic_params_init._entry.8, section ".printk_index", align 4
@uclogic_rdesc_wp5540u_fixed_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_wp5540u_fixed_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_wp8060u_fixed_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_wp8060u_fixed_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_wp1062_fixed_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_wp1062_fixed_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_twhl850_fixed0_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_twhl850_fixed0_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_twhl850_fixed1_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_twhl850_fixed1_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_twhl850_fixed2_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_twhl850_fixed2_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_twha60_fixed0_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_twha60_fixed0_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_rdesc_twha60_fixed1_arr = external dso_local global [0 x i8], align 1
@uclogic_rdesc_twha60_fixed1_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1027, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.13 = internal global ptr @uclogic_params_init._entry.12, section ".printk_index", align 4
@uclogic_params_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 1031, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.15 = internal global ptr @uclogic_params_init._entry.14, section ".printk_index", align 4
@uclogic_params_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1046, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.17 = internal global ptr @uclogic_params_init._entry.16, section ".printk_index", align 4
@uclogic_rdesc_xppen_deco01_frame_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_xppen_deco01_frame_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1074, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.19 = internal global ptr @uclogic_params_init._entry.18, section ".printk_index", align 4
@uclogic_rdesc_ugee_g5_frame_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_ugee_g5_frame_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.3, i32 1085, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed creating buttonpad parameters: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.22 = internal global ptr @uclogic_params_init._entry.20, section ".printk_index", align 4
@uclogic_params_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 1093, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.24 = internal global ptr @uclogic_params_init._entry.23, section ".printk_index", align 4
@uclogic_params_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 1108, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.26 = internal global ptr @uclogic_params_init._entry.25, section ".printk_index", align 4
@uclogic_rdesc_ugee_ex07_buttonpad_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_ugee_ex07_buttonpad_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.3, i32 1119, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.28 = internal global ptr @uclogic_params_init._entry.27, section ".printk_index", align 4
@uclogic_params_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.3, i32 1123, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_init._entry_ptr.30 = internal global ptr @uclogic_params_init._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hid_uclogic\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"uclogic_params_init_with_opt_desc\00", [62 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"device report descriptor matches the expected size, replacing\0A\00", [33 x i8] zeroinitializer }, align 32
@uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 -90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"device report descriptor doesn't match the expected size (%u != %u), preserving\0A\00", [47 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uclogic_params_pen_init_v1\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"string descriptor with pen parameters not found, assuming not compatible\0A\00", [54 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 173, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed retrieving pen parameters: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v1._entry_ptr = internal global ptr @uclogic_params_pen_init_v1._entry, section ".printk_index", align 4
@uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"string descriptor with pen parameters has invalid length (got %d, expected %d), assuming not compatible\0A\00", [55 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v1_template_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_pen_v1_template_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_get_str_desc.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uclogic_params_get_str_desc\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"string descriptor #%hhu not found\0A\00", [61 x i8] zeroinitializer }, align 32
@uclogic_params_get_str_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 97, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed retrieving string descriptor #%u: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@uclogic_params_get_str_desc._entry_ptr = internal global ptr @uclogic_params_get_str_desc._entry, section ".printk_index", align 4
@uclogic_params_huion_init.transition_ver = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HUION_T153_160607\00", [46 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.3, i32 752, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed retrieving Huion firmware version: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uclogic_params_huion_init\00", [38 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry_ptr = internal global ptr @uclogic_params_huion_init._entry, section ".printk_index", align 4
@uclogic_params_huion_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"transition firmware detected, not probing pen v2 parameters\0A\00", [35 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.43, ptr @.str.3, i32 765, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed probing pen v2 parameters: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry_ptr.47 = internal global ptr @uclogic_params_huion_init._entry.45, section ".printk_index", align 4
@uclogic_params_huion_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.48, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pen v2 parameters found\0A\00", [39 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v2_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_buttonpad_v2_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_huion_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.43, ptr @.str.3, i32 778, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed creating v2 buttonpad parameters: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry_ptr.51 = internal global ptr @uclogic_params_huion_init._entry.49, section ".printk_index", align 4
@uclogic_params_huion_init.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.52, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pen v2 parameters not found\0A\00", [35 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.43, ptr @.str.3, i32 792, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed probing pen v1 parameters: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry_ptr.55 = internal global ptr @uclogic_params_huion_init._entry.53, section ".printk_index", align 4
@uclogic_params_huion_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.56, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pen v1 parameters found\0A\00", [39 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.43, ptr @.str.3, i32 801, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"v1 buttonpad probing failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init._entry_ptr.59 = internal global ptr @uclogic_params_huion_init._entry.57, section ".printk_index", align 4
@uclogic_params_huion_init.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.60, i8 0, i8 -55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"buttonpad v1 parameters%s found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" not\00", [27 x i8] zeroinitializer }, align 32
@uclogic_params_huion_init.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.43, ptr @.str.3, ptr @.str.63, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pen v1 parameters not found\0A\00", [35 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.64, ptr @.str.3, ptr @.str.36, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"uclogic_params_pen_init_v2\00", [37 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.64, ptr @.str.3, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@uclogic_params_pen_init_v2._entry_ptr = internal global ptr @uclogic_params_pen_init_v2._entry, section ".printk_index", align 4
@uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.64, ptr @.str.3, ptr @.str.38, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"string descriptor with pen parameters seems to contain only text, assuming not compatible\0A\00", [37 x i8] zeroinitializer }, align 32
@uclogic_rdesc_pen_v2_template_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_pen_v2_template_size = external dso_local local_unnamed_addr constant i32, align 4
@uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"uclogic_params_frame_init_v1_buttonpad\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"generic button -enabling string descriptor not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HK On\00", [26 x i8] zeroinitializer }, align 32
@uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.66, ptr @.str.3, ptr @.str.69, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"invalid response to enabling generic buttons: \22%s\22\0A\00", [44 x i8] zeroinitializer }, align 32
@uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.31, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"generic buttons enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@uclogic_rdesc_buttonpad_v1_arr = external dso_local constant [0 x i8], align 1
@uclogic_rdesc_buttonpad_v1_size = external dso_local local_unnamed_addr constant i32, align 4
@switch.table.uclogic_params_pen_inrange_to_str = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [26 x i64] [i64 24, i64 32, i64 341770770, i64 561578067, i64 561578103, i64 627834989, i64 627834990, i64 683475010, i64 683475029, i64 683475057, i64 683475060, i64 683475061, i64 683475092, i64 1430454275, i64 1430454276, i64 1430454277, i64 1430454338, i64 1430454341, i64 1430454343, i64 1430454349, i64 1430454372, i64 1430454382, i64 1430454401, i64 1430455586, i64 1430456193, i64 1430466609]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 37, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 39, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 41, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 593, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 918, i32 6 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 924, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1027, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1031, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1046, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1074, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1083, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1093, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1108, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1117, i32 5 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 1123, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 654, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 663, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 169, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 173, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 176, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 92, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 95, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"transition_ver\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 720, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 751, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 758, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 764, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 768, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 776, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 785, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 791, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 795, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 801, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 804, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 812, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 297, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 301, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 320, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 478, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 482, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 483, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.260 = private constant [36 x i8] c"../drivers/hid/hid-uclogic-params.c\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.260, i32 487, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [47 x i8] c"switch.table.uclogic_params_pen_inrange_to_str\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @uclogic_params_get_str_desc._entry, ptr @uclogic_params_get_str_desc._entry_ptr, ptr @uclogic_params_huion_init._entry, ptr @uclogic_params_huion_init._entry.45, ptr @uclogic_params_huion_init._entry.49, ptr @uclogic_params_huion_init._entry.53, ptr @uclogic_params_huion_init._entry.57, ptr @uclogic_params_huion_init._entry_ptr, ptr @uclogic_params_huion_init._entry_ptr.47, ptr @uclogic_params_huion_init._entry_ptr.51, ptr @uclogic_params_huion_init._entry_ptr.55, ptr @uclogic_params_huion_init._entry_ptr.59, ptr @uclogic_params_init._entry, ptr @uclogic_params_init._entry.12, ptr @uclogic_params_init._entry.14, ptr @uclogic_params_init._entry.16, ptr @uclogic_params_init._entry.18, ptr @uclogic_params_init._entry.20, ptr @uclogic_params_init._entry.23, ptr @uclogic_params_init._entry.25, ptr @uclogic_params_init._entry.27, ptr @uclogic_params_init._entry.29, ptr @uclogic_params_init._entry.8, ptr @uclogic_params_init._entry_ptr, ptr @uclogic_params_init._entry_ptr.11, ptr @uclogic_params_init._entry_ptr.13, ptr @uclogic_params_init._entry_ptr.15, ptr @uclogic_params_init._entry_ptr.17, ptr @uclogic_params_init._entry_ptr.19, ptr @uclogic_params_init._entry_ptr.22, ptr @uclogic_params_init._entry_ptr.24, ptr @uclogic_params_init._entry_ptr.26, ptr @uclogic_params_init._entry_ptr.28, ptr @uclogic_params_init._entry_ptr.30, ptr @uclogic_params_pen_init_v1._entry, ptr @uclogic_params_pen_init_v1._entry_ptr, ptr @uclogic_params_pen_init_v2._entry, ptr @uclogic_params_pen_init_v2._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.21, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @uclogic_params_huion_init.transition_ver, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @switch.table.uclogic_params_pen_inrange_to_str], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_pen_init_v1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_get_str_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init.transition_ver to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_huion_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uclogic_params_pen_init_v2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.uclogic_params_pen_inrange_to_str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @uclogic_params_pen_inrange_to_str(i32 noundef %inrange) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inrange)
  %0 = icmp ult i32 %inrange, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.uclogic_params_pen_inrange_to_str, i32 0, i32 %inrange
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @uclogic_params_cleanup(ptr nocapture noundef %params) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %params, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %desc_ptr = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_ptr, align 4
  tail call void @kfree(ptr noundef %3) #9
  %pen_unused = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 3
  %4 = ptrtoint ptr %pen_unused to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pen_unused, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %pen = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 4
  %6 = ptrtoint ptr %pen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pen, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = call ptr @memset(ptr %pen, i32 0, i32 20)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %frame = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 5
  %9 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %frame, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = call ptr @memset(ptr %params, i32 0, i32 60)
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uclogic_params_get_desc(ptr noundef readonly %params, ptr noundef writeonly %pdesc, ptr noundef writeonly %psize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %params, null
  %cmp1 = icmp eq ptr %pdesc, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %psize, null
  %or.cond129 = or i1 %or.cond, %cmp3
  br i1 %or.cond129, label %entry.cleanup85_crit_edge, label %if.end

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end:                                           ; preds = %entry
  %desc_ptr = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 1
  %0 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_ptr, align 4
  %cmp4.not = icmp eq ptr %1, null
  %pen_unused = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 3
  %2 = ptrtoint ptr %pen_unused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pen_unused, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.rhs, label %if.end.land.end_crit_edge

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pen = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 4
  %4 = ptrtoint ptr %pen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pen, align 4
  %cmp6 = icmp ne ptr %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %6 = phi i1 [ false, %if.end.land.end_crit_edge ], [ %cmp6, %land.rhs ]
  %frame = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 5
  %7 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frame, align 4
  %cmp9.not = icmp eq ptr %8, null
  br i1 %cmp4.not, label %land.end.if.end13_crit_edge, label %if.then12

land.end.if.end13_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %desc_size = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 2
  %9 = ptrtoint ptr %desc_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc_size, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.end.if.end13_crit_edge
  %size.0 = phi i32 [ %10, %if.then12 ], [ 0, %land.end.if.end13_crit_edge ]
  br i1 %6, label %if.then15, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %desc_size17 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %desc_size17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_size17, align 4
  %add18 = add i32 %12, %size.0
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end13.if.end19_crit_edge
  %size.1 = phi i32 [ %add18, %if.then15 ], [ %size.0, %if.end13.if.end19_crit_edge ]
  br i1 %cmp9.not, label %if.end25, label %if.end25.thread

if.end25.thread:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %desc_size23 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %desc_size23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %desc_size23, align 4
  %add24 = add i32 %14, %size.1
  br label %if.end8.i

if.end25:                                         ; preds = %if.end19
  %cmp4.not.not = xor i1 %cmp4.not, true
  %brmerge = select i1 %cmp4.not.not, i1 true, i1 %6
  br i1 %brmerge, label %if.end25.if.end8.i_crit_edge, label %if.end25.if.end84_crit_edge

if.end25.if.end84_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.end25.if.end8.i_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end25.if.end8.i_crit_edge, %if.end25.thread
  %size.2136 = phi i32 [ %add24, %if.end25.thread ], [ %size.1, %if.end25.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.2136, i32 noundef 3264) #12
  %cmp32 = icmp eq ptr %call9.i, null
  br i1 %cmp32, label %if.end8.i.cleanup85_crit_edge, label %if.end34

if.end8.i.cleanup85_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup85

if.end34:                                         ; preds = %if.end8.i
  br i1 %cmp4.not, label %if.end34.if.end40_crit_edge, label %if.then36

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %desc_ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_ptr, align 4
  %desc_size38 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 2
  %17 = ptrtoint ptr %desc_size38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc_size38, align 4
  %19 = call ptr @memcpy(ptr %call9.i, ptr %16, i32 %18)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 %18
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %if.end34.if.end40_crit_edge
  %p.0 = phi ptr [ %add.ptr, %if.then36 ], [ %call9.i, %if.end34.if.end40_crit_edge ]
  br i1 %6, label %if.then42, label %if.end40.if.end50_crit_edge

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %pen43 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 4
  %20 = ptrtoint ptr %pen43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pen43, align 4
  %desc_size46 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %desc_size46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc_size46, align 4
  %24 = call ptr @memcpy(ptr %p.0, ptr %21, i32 %23)
  %add.ptr49 = getelementptr i8, ptr %p.0, i32 %23
  br label %if.end50

if.end50:                                         ; preds = %if.then42, %if.end40.if.end50_crit_edge
  %p.1 = phi ptr [ %add.ptr49, %if.then42 ], [ %p.0, %if.end40.if.end50_crit_edge ]
  br i1 %cmp9.not, label %if.end50.if.end60_crit_edge, label %if.then52

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frame, align 4
  %desc_size56 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %desc_size56 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %desc_size56, align 4
  %29 = call ptr @memcpy(ptr %p.1, ptr %26, i32 %28)
  %30 = load i32, ptr %desc_size56, align 4
  %add.ptr59 = getelementptr i8, ptr %p.1, i32 %30
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %if.end50.if.end60_crit_edge
  %p.2 = phi ptr [ %add.ptr59, %if.then52 ], [ %p.1, %if.end50.if.end60_crit_edge ]
  %add.ptr61 = getelementptr i8, ptr %call9.i, i32 %size.2136
  %cmp62.not = icmp eq ptr %p.2, %add.ptr61
  br i1 %cmp62.not, label %if.end60.if.end77_crit_edge, label %do.end, !prof !151

if.end60.if.end77_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

do.end:                                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 593, i32 noundef 9, ptr noundef null) #9
  br label %if.end77

if.end77:                                         ; preds = %do.end, %if.end60.if.end77_crit_edge
  %31 = ptrtoint ptr %psize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %size.2136, ptr %psize, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end77, %if.end25.if.end84_crit_edge
  %desc.0 = phi ptr [ %call9.i, %if.end77 ], [ null, %if.end25.if.end84_crit_edge ]
  %32 = ptrtoint ptr %pdesc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %desc.0, ptr %pdesc, align 4
  br label %cleanup85

cleanup85:                                        ; preds = %if.end84, %if.end8.i.cleanup85_crit_edge, %entry.cleanup85_crit_edge
  %retval.1 = phi i32 [ 0, %if.end84 ], [ -22, %entry.cleanup85_crit_edge ], [ -12, %if.end8.i.cleanup85_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uclogic_params_init(ptr noundef writeonly %params, ptr noundef %hdev) local_unnamed_addr #1 align 64 {
entry:
  %found = alloca i8, align 1
  %p = alloca %struct.uclogic_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #9
  %0 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %found, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %p) #9
  %1 = call ptr @memset(ptr %p, i32 0, i32 60)
  %cmp = icmp eq ptr %params, null
  %cmp1 = icmp eq ptr %hdev, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %2 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %5, i32 -28
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber11 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber11, align 2
  %vendor = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 10
  %10 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vendor, align 4
  %shl = shl i32 %11, 16
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %12 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %product, align 8
  %and = and i32 %13, 65535
  %or = or i32 %and, %shl
  %14 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %if.end.sw.epilog223_crit_edge [
    i32 1430454338, label %sw.bb
    i32 1430454275, label %sw.bb16
    i32 1430454276, label %sw.bb21
    i32 1430454277, label %sw.bb47
    i32 1430454372, label %sw.bb53
    i32 1430455586, label %sw.bb59
    i32 1430456193, label %sw.bb79
    i32 627834990, label %if.end.sw.bb99_crit_edge
    i32 627834989, label %if.end.sw.bb99_crit_edge327
    i32 1430454382, label %if.end.sw.bb99_crit_edge328
    i32 1430454349, label %if.end.sw.bb99_crit_edge329
    i32 1430454401, label %if.end.sw.bb99_crit_edge330
    i32 1430466609, label %if.end.sw.bb99_crit_edge331
    i32 1430454341, label %if.end.sw.bb99_crit_edge332
    i32 1430454343, label %if.end.sw.bb99_crit_edge333
    i32 561578067, label %if.end.sw.bb105_crit_edge
    i32 561578103, label %if.end.sw.bb105_crit_edge334
    i32 683475061, label %if.end.sw.bb105_crit_edge335
    i32 683475092, label %if.end.sw.bb105_crit_edge336
    i32 683475029, label %if.end.sw.bb105_crit_edge337
    i32 683475010, label %sw.bb129
    i32 341770770, label %if.end.sw.bb151_crit_edge
    i32 683475060, label %if.end.sw.bb151_crit_edge338
    i32 683475057, label %sw.bb188
  ]

if.end.sw.bb151_crit_edge338:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb151

if.end.sw.bb151_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb151

if.end.sw.bb105_crit_edge337:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105

if.end.sw.bb105_crit_edge336:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105

if.end.sw.bb105_crit_edge335:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105

if.end.sw.bb105_crit_edge334:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105

if.end.sw.bb105_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb105

if.end.sw.bb99_crit_edge333:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge332:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge331:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge330:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge329:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge328:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge327:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.bb99_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.end.sw.epilog223_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb:                                            ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_pf1209_fixed_size to i32))
  %15 = load i32, ptr @uclogic_rdesc_pf1209_fixed_size, align 4
  %call12 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 234, ptr noundef nonnull @uclogic_rdesc_pf1209_fixed_arr, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %sw.bb.sw.epilog223_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.sw.epilog223_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb16:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_wp4030u_fixed_size to i32))
  %16 = load i32, ptr @uclogic_rdesc_wp4030u_fixed_size, align 4
  %call17 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 212, ptr noundef nonnull @uclogic_rdesc_wp4030u_fixed_arr, i32 noundef %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %sw.bb16.sw.epilog223_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb16.sw.epilog223_crit_edge:                   ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb21:                                          ; preds = %if.end
  %dev_rsize = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 1
  %17 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 232, i32 %18)
  %cmp22 = icmp eq i32 %18, 232
  br i1 %cmp22, label %if.then23, label %if.else40

if.then23:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp24 = icmp eq i8 %9, 0
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then23
  %pen = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call27 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28.not = icmp eq i32 %call27, 0
  br i1 %cmp28.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call27) #13
  br label %cleanup

if.end32:                                         ; preds = %if.then26
  %19 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %do.end36, label %if.end32.sw.epilog223_crit_edge

if.end32.sw.epilog223_crit_edge:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

do.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %sw.epilog223

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

if.else40:                                        ; preds = %sw.bb21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_wp5540u_fixed_size to i32))
  %22 = load i32, ptr @uclogic_rdesc_wp5540u_fixed_size, align 4
  %call41 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 212, ptr noundef nonnull @uclogic_rdesc_wp5540u_fixed_arr, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42.not = icmp eq i32 %call41, 0
  br i1 %cmp42.not, label %if.else40.sw.epilog223_crit_edge, label %if.else40.cleanup_crit_edge

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else40.sw.epilog223_crit_edge:                 ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb47:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_wp8060u_fixed_size to i32))
  %23 = load i32, ptr @uclogic_rdesc_wp8060u_fixed_size, align 4
  %call48 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 212, ptr noundef nonnull @uclogic_rdesc_wp8060u_fixed_arr, i32 noundef %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %sw.bb47.sw.epilog223_crit_edge, label %sw.bb47.cleanup_crit_edge

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb47.sw.epilog223_crit_edge:                   ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb53:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_wp1062_fixed_size to i32))
  %24 = load i32, ptr @uclogic_rdesc_wp1062_fixed_size, align 4
  %call54 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 254, ptr noundef nonnull @uclogic_rdesc_wp1062_fixed_arr, i32 noundef %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55.not = icmp eq i32 %call54, 0
  br i1 %cmp55.not, label %sw.bb53.sw.epilog223_crit_edge, label %sw.bb53.cleanup_crit_edge

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb53.sw.epilog223_crit_edge:                   ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb59:                                          ; preds = %if.end
  %25 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %9, label %sw.bb59.sw.epilog223_crit_edge [
    i8 0, label %sw.bb61
    i8 1, label %sw.bb67
    i8 2, label %sw.bb73
  ]

sw.bb59.sw.epilog223_crit_edge:                   ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb61:                                          ; preds = %sw.bb59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed0_size to i32))
  %26 = load i32, ptr @uclogic_rdesc_twhl850_fixed0_size, align 4
  %call62 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 182, ptr noundef nonnull @uclogic_rdesc_twhl850_fixed0_arr, i32 noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63.not = icmp eq i32 %call62, 0
  br i1 %cmp63.not, label %sw.bb61.sw.epilog223_crit_edge, label %sw.bb61.cleanup_crit_edge

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb61.sw.epilog223_crit_edge:                   ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb67:                                          ; preds = %sw.bb59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed1_size to i32))
  %27 = load i32, ptr @uclogic_rdesc_twhl850_fixed1_size, align 4
  %call68 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 161, ptr noundef nonnull @uclogic_rdesc_twhl850_fixed1_arr, i32 noundef %27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69.not = icmp eq i32 %call68, 0
  br i1 %cmp69.not, label %sw.bb67.sw.epilog223_crit_edge, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb67.sw.epilog223_crit_edge:                   ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb73:                                          ; preds = %sw.bb59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_twhl850_fixed2_size to i32))
  %28 = load i32, ptr @uclogic_rdesc_twhl850_fixed2_size, align 4
  %call74 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 92, ptr noundef nonnull @uclogic_rdesc_twhl850_fixed2_arr, i32 noundef %28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75.not = icmp eq i32 %call74, 0
  br i1 %cmp75.not, label %sw.bb73.sw.epilog223_crit_edge, label %sw.bb73.cleanup_crit_edge

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb73.sw.epilog223_crit_edge:                   ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb79:                                          ; preds = %if.end
  %parent3 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent3, align 8
  %config = getelementptr i8, ptr %30, i32 952
  %31 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config, align 8
  %bNumInterfaces4 = getelementptr inbounds %struct.usb_config_descriptor, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %bNumInterfaces4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bNumInterfaces4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cmp81.not = icmp eq i8 %34, 3
  br i1 %cmp81.not, label %sw.bb79.sw.bb99_crit_edge, label %if.then83

sw.bb79.sw.bb99_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb99

if.then83:                                        ; preds = %sw.bb79
  %35 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %9, label %if.then83.sw.epilog223_crit_edge [
    i8 0, label %sw.bb85
    i8 1, label %sw.bb91
  ]

if.then83.sw.epilog223_crit_edge:                 ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb85:                                          ; preds = %if.then83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed0_size to i32))
  %36 = load i32, ptr @uclogic_rdesc_twha60_fixed0_size, align 4
  %call86 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 254, ptr noundef nonnull @uclogic_rdesc_twha60_fixed0_arr, i32 noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %sw.bb85.sw.epilog223_crit_edge, label %sw.bb85.cleanup_crit_edge

sw.bb85.cleanup_crit_edge:                        ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb85.sw.epilog223_crit_edge:                   ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb91:                                          ; preds = %if.then83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_twha60_fixed1_size to i32))
  %37 = load i32, ptr @uclogic_rdesc_twha60_fixed1_size, align 4
  %call92 = call fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef nonnull %p, ptr noundef nonnull %hdev, i32 noundef 139, ptr noundef nonnull @uclogic_rdesc_twha60_fixed1_arr, i32 noundef %37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93.not = icmp eq i32 %call92, 0
  br i1 %cmp93.not, label %sw.bb91.sw.epilog223_crit_edge, label %sw.bb91.cleanup_crit_edge

sw.bb91.cleanup_crit_edge:                        ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb91.sw.epilog223_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb99:                                          ; preds = %sw.bb79.sw.bb99_crit_edge, %if.end.sw.bb99_crit_edge, %if.end.sw.bb99_crit_edge327, %if.end.sw.bb99_crit_edge328, %if.end.sw.bb99_crit_edge329, %if.end.sw.bb99_crit_edge330, %if.end.sw.bb99_crit_edge331, %if.end.sw.bb99_crit_edge332, %if.end.sw.bb99_crit_edge333
  %call100 = call fastcc i32 @uclogic_params_huion_init(ptr noundef nonnull %p, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101.not = icmp eq i32 %call100, 0
  br i1 %cmp101.not, label %sw.bb99.sw.epilog223_crit_edge, label %sw.bb99.cleanup_crit_edge

sw.bb99.cleanup_crit_edge:                        ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb99.sw.epilog223_crit_edge:                   ; preds = %sw.bb99
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

sw.bb105:                                         ; preds = %if.end.sw.bb105_crit_edge, %if.end.sw.bb105_crit_edge334, %if.end.sw.bb105_crit_edge335, %if.end.sw.bb105_crit_edge336, %if.end.sw.bb105_crit_edge337
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp107 = icmp eq i8 %9, 1
  br i1 %cmp107, label %if.then109, label %if.else127

if.then109:                                       ; preds = %sw.bb105
  %pen110 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call111 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen110, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112.not = icmp eq i32 %call111, 0
  br i1 %cmp112.not, label %if.end119, label %do.end117

do.end117:                                        ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call111) #13
  br label %cleanup

if.end119:                                        ; preds = %if.then109
  %38 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool120.not = icmp eq i8 %39, 0
  br i1 %tobool120.not, label %do.end124, label %if.end119.sw.epilog223_crit_edge

if.end119.sw.epilog223_crit_edge:                 ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog223

do.end124:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  %40 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

if.else127:                                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call ptr @memset(ptr %p, i32 0, i32 60)
  %pen_unused.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 3
  %42 = ptrtoint ptr %pen_unused.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %pen_unused.i, align 4
  br label %sw.epilog223

sw.bb129:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp131 = icmp eq i8 %9, 1
  br i1 %cmp131, label %if.then133, label %if.else149

if.then133:                                       ; preds = %sw.bb129
  %pen134 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call135 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen134, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %cmp136.not = icmp eq i32 %call135, 0
  br i1 %cmp136.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.then133
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call135) #13
  br label %cleanup

if.end143:                                        ; preds = %if.then133
  %frame = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_xppen_deco01_frame_size to i32))
  %43 = load i32, ptr @uclogic_rdesc_xppen_deco01_frame_size, align 4
  %cmp.i = icmp eq ptr %frame, null
  br i1 %cmp.i, label %if.end143.cleanup_crit_edge, label %lor.lhs.false.i

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end143
  %call.i = call ptr @kmemdup(ptr noundef nonnull @uclogic_rdesc_xppen_deco01_frame_arr, i32 noundef %43, i32 noundef 3264) #9
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %uclogic_params_frame_init_with_desc.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

uclogic_params_frame_init_with_desc.exit:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 3
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 8)
  store i64 0, ptr %44, align 4
  %46 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %frame, align 4
  %desc_size7.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %desc_size7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %desc_size7.i, align 4
  %id8.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %id8.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %id8.i, align 4
  br label %sw.epilog223

if.else149:                                       ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #11
  %49 = call ptr @memset(ptr %p, i32 0, i32 60)
  %pen_unused.i297 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 3
  %50 = ptrtoint ptr %pen_unused.i297 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %pen_unused.i297, align 4
  br label %sw.epilog223

sw.bb151:                                         ; preds = %if.end.sw.bb151_crit_edge, %if.end.sw.bb151_crit_edge338
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp153.not = icmp eq i8 %9, 1
  br i1 %cmp153.not, label %if.end156, label %if.then155

if.then155:                                       ; preds = %sw.bb151
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

if.end156:                                        ; preds = %sw.bb151
  %pen157 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call158 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen157, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159.not = icmp eq i32 %call158, 0
  br i1 %cmp159.not, label %if.else166, label %do.end164

do.end164:                                        ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call158) #13
  br label %cleanup

if.else166:                                       ; preds = %if.end156
  %52 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool167.not = icmp eq i8 %53, 0
  br i1 %tobool167.not, label %do.end184, label %if.then168

if.then168:                                       ; preds = %if.else166
  %frame169 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_ugee_g5_frame_size to i32))
  %54 = load i32, ptr @uclogic_rdesc_ugee_g5_frame_size, align 4
  %cmp.i298 = icmp eq ptr %frame169, null
  br i1 %cmp.i298, label %if.then168.do.end176_crit_edge, label %lor.lhs.false.i300

if.then168.do.end176_crit_edge:                   ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end176

lor.lhs.false.i300:                               ; preds = %if.then168
  %call.i301 = call ptr @kmemdup(ptr noundef nonnull @uclogic_rdesc_ugee_g5_frame_arr, i32 noundef %54, i32 noundef 3264) #9
  %cmp3.i302 = icmp eq ptr %call.i301, null
  br i1 %cmp3.i302, label %lor.lhs.false.i300.do.end176_crit_edge, label %if.end178

lor.lhs.false.i300.do.end176_crit_edge:           ; preds = %lor.lhs.false.i300
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end176

do.end176:                                        ; preds = %lor.lhs.false.i300.do.end176_crit_edge, %if.then168.do.end176_crit_edge
  %retval.0.i306.ph = phi i32 [ -12, %lor.lhs.false.i300.do.end176_crit_edge ], [ -22, %if.then168.do.end176_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i306.ph) #13
  br label %cleanup

if.end178:                                        ; preds = %lor.lhs.false.i300
  call void @__sanitizer_cov_trace_pc() #11
  %55 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 163208757250, ptr %55, align 4
  %57 = ptrtoint ptr %frame169 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i301, ptr %frame169, align 4
  %desc_size7.i303 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %desc_size7.i303 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %54, ptr %desc_size7.i303, align 4
  %id8.i304 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 2
  %59 = ptrtoint ptr %id8.i304 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 6, ptr %id8.i304, align 4
  br label %sw.epilog223

do.end184:                                        ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  %60 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

sw.bb188:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp190.not = icmp eq i8 %9, 1
  br i1 %cmp190.not, label %if.end193, label %if.then192

if.then192:                                       ; preds = %sw.bb188
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

if.end193:                                        ; preds = %sw.bb188
  %pen194 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call195 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen194, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %cmp196.not = icmp eq i32 %call195, 0
  br i1 %cmp196.not, label %if.else203, label %do.end201

do.end201:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %call195) #13
  br label %cleanup

if.else203:                                       ; preds = %if.end193
  %62 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool204.not = icmp eq i8 %63, 0
  br i1 %tobool204.not, label %do.end219, label %if.then205

if.then205:                                       ; preds = %if.else203
  %frame206 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_ugee_ex07_buttonpad_size to i32))
  %64 = load i32, ptr @uclogic_rdesc_ugee_ex07_buttonpad_size, align 4
  %cmp.i308 = icmp eq ptr %frame206, null
  br i1 %cmp.i308, label %if.then205.do.end213_crit_edge, label %lor.lhs.false.i310

if.then205.do.end213_crit_edge:                   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end213

lor.lhs.false.i310:                               ; preds = %if.then205
  %call.i311 = call ptr @kmemdup(ptr noundef nonnull @uclogic_rdesc_ugee_ex07_buttonpad_arr, i32 noundef %64, i32 noundef 3264) #9
  %cmp3.i312 = icmp eq ptr %call.i311, null
  br i1 %cmp3.i312, label %lor.lhs.false.i310.do.end213_crit_edge, label %uclogic_params_frame_init_with_desc.exit317

lor.lhs.false.i310.do.end213_crit_edge:           ; preds = %lor.lhs.false.i310
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end213

uclogic_params_frame_init_with_desc.exit317:      ; preds = %lor.lhs.false.i310
  call void @__sanitizer_cov_trace_pc() #11
  %65 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 3
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 8)
  store i64 0, ptr %65, align 4
  %67 = ptrtoint ptr %frame206 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i311, ptr %frame206, align 4
  %desc_size7.i313 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 1
  %68 = ptrtoint ptr %desc_size7.i313 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %64, ptr %desc_size7.i313, align 4
  %id8.i314 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 2
  %69 = ptrtoint ptr %id8.i314 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %id8.i314, align 4
  br label %sw.epilog223

do.end213:                                        ; preds = %lor.lhs.false.i310.do.end213_crit_edge, %if.then205.do.end213_crit_edge
  %retval.0.i316.ph = phi i32 [ -12, %lor.lhs.false.i310.do.end213_crit_edge ], [ -22, %if.then205.do.end213_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i316.ph) #13
  br label %cleanup

do.end219:                                        ; preds = %if.else203
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  %70 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %p, align 4
  br label %sw.epilog223

sw.epilog223:                                     ; preds = %do.end219, %uclogic_params_frame_init_with_desc.exit317, %if.then192, %do.end184, %if.end178, %if.then155, %if.else149, %uclogic_params_frame_init_with_desc.exit, %if.else127, %do.end124, %if.end119.sw.epilog223_crit_edge, %sw.bb99.sw.epilog223_crit_edge, %sw.bb91.sw.epilog223_crit_edge, %sw.bb85.sw.epilog223_crit_edge, %if.then83.sw.epilog223_crit_edge, %sw.bb73.sw.epilog223_crit_edge, %sw.bb67.sw.epilog223_crit_edge, %sw.bb61.sw.epilog223_crit_edge, %sw.bb59.sw.epilog223_crit_edge, %sw.bb53.sw.epilog223_crit_edge, %sw.bb47.sw.epilog223_crit_edge, %if.else40.sw.epilog223_crit_edge, %if.else, %do.end36, %if.end32.sw.epilog223_crit_edge, %sw.bb16.sw.epilog223_crit_edge, %sw.bb.sw.epilog223_crit_edge, %if.end.sw.epilog223_crit_edge
  %71 = call ptr @memcpy(ptr %params, ptr %p, i32 60)
  %72 = call ptr @memset(ptr %p, i32 0, i32 60)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog223, %do.end213, %do.end201, %do.end176, %do.end164, %lor.lhs.false.i.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %do.end141, %do.end117, %sw.bb99.cleanup_crit_edge, %sw.bb91.cleanup_crit_edge, %sw.bb85.cleanup_crit_edge, %sw.bb73.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge, %sw.bb61.cleanup_crit_edge, %sw.bb53.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %if.else40.cleanup_crit_edge, %do.end, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %rc.0 = phi i32 [ 0, %sw.epilog223 ], [ %call195, %do.end201 ], [ %retval.0.i316.ph, %do.end213 ], [ %call158, %do.end164 ], [ %retval.0.i306.ph, %do.end176 ], [ %call135, %do.end141 ], [ %call111, %do.end117 ], [ %call100, %sw.bb99.cleanup_crit_edge ], [ %call92, %sw.bb91.cleanup_crit_edge ], [ %call86, %sw.bb85.cleanup_crit_edge ], [ %call74, %sw.bb73.cleanup_crit_edge ], [ %call68, %sw.bb67.cleanup_crit_edge ], [ %call62, %sw.bb61.cleanup_crit_edge ], [ %call54, %sw.bb53.cleanup_crit_edge ], [ %call48, %sw.bb47.cleanup_crit_edge ], [ %call27, %do.end ], [ %call41, %if.else40.cleanup_crit_edge ], [ %call17, %sw.bb16.cleanup_crit_edge ], [ %call12, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end143.cleanup_crit_edge ]
  %73 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %p, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i, label %if.then.i, label %cleanup.uclogic_params_cleanup.exit_crit_edge

cleanup.uclogic_params_cleanup.exit_crit_edge:    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %uclogic_params_cleanup.exit

if.then.i:                                        ; preds = %cleanup
  %desc_ptr.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 1
  %75 = ptrtoint ptr %desc_ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc_ptr.i, align 4
  call void @kfree(ptr noundef %76) #9
  %pen_unused.i318 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 3
  %77 = ptrtoint ptr %pen_unused.i318 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %pen_unused.i318, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool1.not.i = icmp eq i8 %78, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pen.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %79 = ptrtoint ptr %pen.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pen.i, align 4
  call void @kfree(ptr noundef %80) #9
  %81 = call ptr @memset(ptr %pen.i, i32 0, i32 20)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %frame.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  %82 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %frame.i, align 4
  call void @kfree(ptr noundef %83) #9
  br label %uclogic_params_cleanup.exit

uclogic_params_cleanup.exit:                      ; preds = %if.end.i, %cleanup.uclogic_params_cleanup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %p) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_init_with_opt_desc(ptr noundef writeonly %params, ptr noundef %hdev, i32 noundef %orig_desc_size, ptr noundef %desc_ptr, i32 noundef %desc_size) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %params, null
  %cmp1 = icmp eq ptr %hdev, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false2:                                   ; preds = %entry
  %cmp3 = icmp ne ptr %desc_ptr, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_size)
  %cmp4.not = icmp eq i32 %desc_size, 0
  %or.cond52 = or i1 %cmp3, %cmp4.not
  br i1 %or.cond52, label %if.end, label %lor.lhs.false2.cleanup_crit_edge

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %dev_rsize = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_rsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %orig_desc_size)
  %cmp5 = icmp eq i32 %1, %orig_desc_size
  br i1 %cmp5, label %do.body, label %do.body15

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_init_with_opt_desc, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !153

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call11 = tail call ptr @kmemdup(ptr noundef %desc_ptr, i32 noundef %desc_size, i32 noundef 3264) #9
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %do.end.cleanup_crit_edge, label %do.end.if.end33_crit_edge

do.end.if.end33_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_init_with_opt_desc, %if.then27)) #9
          to label %if.end33 [label %if.then27], !srcloc !153

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %2 = ptrtoint ptr %dev_rsize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_rsize, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug242, ptr noundef %dev28, ptr noundef nonnull @.str.34, i32 noundef %3, i32 noundef %orig_desc_size) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %do.body15, %do.end.if.end33_crit_edge
  %desc_copy_size.0 = phi i32 [ %desc_size, %do.end.if.end33_crit_edge ], [ 0, %if.then27 ], [ 0, %do.body15 ]
  %desc_copy_ptr.0 = phi ptr [ %call11, %do.end.if.end33_crit_edge ], [ null, %if.then27 ], [ null, %do.body15 ]
  %4 = call ptr @memset(ptr %params, i32 0, i32 60)
  %desc_ptr34 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %desc_ptr34 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %desc_copy_ptr.0, ptr %desc_ptr34, align 4
  %desc_size35 = getelementptr inbounds %struct.uclogic_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %desc_size35 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %desc_copy_size.0, ptr %desc_size35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %rc.0 = phi i32 [ 0, %if.end33 ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef null) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_pen_init_v1(ptr noundef writeonly %pen, ptr noundef writeonly %pfound, ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  %buf = alloca ptr, align 4
  %desc_params = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %desc_params) #9
  %1 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 1
  %2 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 2
  %3 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 3
  %4 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 4
  %cmp = icmp eq ptr %pen, null
  %cmp1 = icmp eq ptr %pfound, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %hdev, null
  %or.cond99 = or i1 %or.cond, %cmp3
  %5 = call ptr @memset(ptr %desc_params, i32 255, i32 20)
  br i1 %or.cond99, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @uclogic_params_get_str_desc(ptr noundef nonnull %buf, ptr noundef nonnull %hdev, i8 noundef zeroext 100, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call)
  %cmp4 = icmp eq i32 %call, -32
  br i1 %cmp4, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_pen_init_v1, %if.then9)) #9
          to label %finish [label %if.then9], !srcloc !153

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  br label %finish

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %do.end15, label %if.else17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.37, i32 noundef %call) #13
  br label %cleanup

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call)
  %cmp18.not = icmp eq i32 %call, 12
  br i1 %cmp18.not, label %if.end39, label %do.body20

do.body20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_pen_init_v1, %if.then32)) #9
          to label %finish [label %if.then32], !srcloc !153

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug234, ptr noundef %dev33, ptr noundef nonnull @.str.38, i32 noundef %call, i32 noundef 12) #9
  br label %finish

if.end39:                                         ; preds = %if.else17
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %add.ptr, align 1
  %10 = call i16 @llvm.bswap.i16(i16 %9) #9
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %desc_params to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %desc_params, align 4
  %add.ptr41 = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr41 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr41, align 1
  %14 = call i16 @llvm.bswap.i16(i16 %13) #9
  %conv43 = zext i16 %14 to i32
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv43, ptr %2, align 4
  %add.ptr45 = getelementptr i8, ptr %7, i32 8
  %16 = ptrtoint ptr %add.ptr45 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %add.ptr45, align 1
  %18 = call i16 @llvm.bswap.i16(i16 %17) #9
  %conv47 = zext i16 %18 to i32
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv47, ptr %4, align 4
  %add.ptr49 = getelementptr i8, ptr %7, i32 10
  %20 = ptrtoint ptr %add.ptr49 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr49, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp52 = icmp eq i16 %21, 0
  br i1 %cmp52, label %if.then54, label %if.else57

if.then54:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %1, align 4
  br label %if.end64

if.else57:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %23 = call i16 @llvm.bswap.i16(i16 %21) #9
  %conv51 = zext i16 %23 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %div105 = udiv i32 %mul, %conv51
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div105, ptr %1, align 4
  %mul61 = mul nuw nsw i32 %conv43, 1000
  %div62106 = udiv i32 %mul61, %conv51
  br label %if.end64

if.end64:                                         ; preds = %if.else57, %if.then54
  %storemerge = phi i32 [ %div62106, %if.else57 ], [ 0, %if.then54 ]
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %storemerge, ptr %3, align 4
  call void @kfree(ptr noundef %7) #9
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_pen_v1_template_size to i32))
  %27 = load i32, ptr @uclogic_rdesc_pen_v1_template_size, align 4
  %call65 = call ptr @uclogic_rdesc_template_apply(ptr noundef nonnull @uclogic_rdesc_pen_v1_template_arr, i32 noundef %27, ptr noundef nonnull %desc_params, i32 noundef 5) #9
  %cmp66 = icmp eq ptr %call65, null
  br i1 %cmp66, label %if.end64.cleanup_crit_edge, label %if.end69

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %28 = getelementptr inbounds i8, ptr %pen, i32 16
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %28, align 4
  %30 = ptrtoint ptr %pen to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call65, ptr %pen, align 4
  %desc_size = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 1
  %31 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %27, ptr %desc_size, align 4
  %id = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 2
  %32 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 7, ptr %id, align 4
  %inrange = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 3
  %33 = ptrtoint ptr %inrange to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %inrange, align 4
  br label %finish

finish:                                           ; preds = %if.end69, %if.then32, %do.body20, %if.then9, %do.body
  %found.0.off0 = phi i1 [ false, %if.then9 ], [ false, %if.then32 ], [ true, %if.end69 ], [ false, %do.body ], [ false, %do.body20 ]
  %frombool72 = zext i1 %found.0.off0 to i8
  %34 = ptrtoint ptr %pfound to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool72, ptr %pfound, align 1
  br label %cleanup

cleanup:                                          ; preds = %finish, %if.end64.cleanup_crit_edge, %do.end15, %entry.cleanup_crit_edge
  %rc.0 = phi i32 [ 0, %finish ], [ %call, %do.end15 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end64.cleanup_crit_edge ]
  call void @kfree(ptr noundef null) #9
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %36) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %desc_params) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %rc.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_huion_init(ptr noundef writeonly %params, ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  %found = alloca i8, align 1
  %p = alloca %struct.uclogic_params, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #9
  %0 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %found, align 1, !annotation !152
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %p) #9
  %1 = call ptr @memset(ptr %p, i32 0, i32 60)
  %cmp = icmp eq ptr %params, null
  %cmp1 = icmp eq ptr %hdev, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %parent2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -128
  %cur_altsetting = getelementptr i8, ptr %3, i32 -28
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber8 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber8, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp9.not = icmp eq i8 %9, 0
  br i1 %cmp9.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memset(ptr %p, i32 0, i32 60)
  %pen_unused.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 3
  %11 = ptrtoint ptr %pen_unused.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pen_unused.i, align 4
  br label %output

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 19) #14
  %cmp13 = icmp eq ptr %call7.i.i, null
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @usb_string(ptr noundef %add.ptr, i32 noundef 201, ptr noundef nonnull %call7.i.i, i32 noundef 19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call17)
  %cmp18 = icmp eq i32 %call17, -32
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %call7.i.i, align 8
  br label %if.end26

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp21 = icmp slt i32 %call17, 0
  br i1 %cmp21, label %do.end, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call17) #13
  br label %cleanup

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.then20
  %call27 = tail call i32 @strcmp(ptr noundef nonnull %call7.i.i, ptr noundef nonnull dereferenceable(18) @uclogic_params_huion_init.transition_ver) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %do.body31, label %if.else41

do.body31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then36)) #9
          to label %if.end98 [label %if.then36], !srcloc !153

if.then36:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.44) #9
  br label %if.end98

if.else41:                                        ; preds = %if.end26
  %pen = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call42 = call fastcc i32 @uclogic_params_pen_init_v2(ptr noundef %pen, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.else50, label %do.end48

do.end48:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %call42) #13
  br label %cleanup

if.else50:                                        ; preds = %if.else41
  %14 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool51.not = icmp eq i8 %15, 0
  br i1 %tobool51.not, label %do.body81, label %do.body53

do.body53:                                        ; preds = %if.else50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then65)) #9
          to label %do.end69 [label %if.then65], !srcloc !153

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %do.body53
  %frame = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v2_size to i32))
  %16 = load i32, ptr @uclogic_rdesc_buttonpad_v2_size, align 4
  %cmp.i = icmp eq ptr %frame, null
  br i1 %cmp.i, label %do.end69.do.end76_crit_edge, label %lor.lhs.false.i

do.end69.do.end76_crit_edge:                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76

lor.lhs.false.i:                                  ; preds = %do.end69
  %call.i = call ptr @kmemdup(ptr noundef nonnull @uclogic_rdesc_buttonpad_v2_arr, i32 noundef %16, i32 noundef 3264) #9
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %lor.lhs.false.i.do.end76_crit_edge, label %if.end78

lor.lhs.false.i.do.end76_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end76

do.end76:                                         ; preds = %lor.lhs.false.i.do.end76_crit_edge, %do.end69.do.end76_crit_edge
  %retval.0.i235.ph = phi i32 [ -12, %lor.lhs.false.i.do.end76_crit_edge ], [ -22, %do.end69.do.end76_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %retval.0.i235.ph) #13
  br label %cleanup

if.end78:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 0, ptr %17, align 4
  %19 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %frame, align 4
  %desc_size7.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %desc_size7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %16, ptr %desc_size7.i, align 4
  %id8.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %id8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 247, ptr %id8.i, align 4
  %pen_frame_flag = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 6
  %22 = ptrtoint ptr %pen_frame_flag to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 32, ptr %pen_frame_flag, align 4
  br label %output

do.body81:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then93)) #9
          to label %if.end98 [label %if.then93], !srcloc !153

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.52) #9
  br label %if.end98

if.end98:                                         ; preds = %if.then93, %do.body81, %if.then36, %do.body31
  %pen99 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %call100 = call fastcc i32 @uclogic_params_pen_init_v1(ptr noundef %pen99, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101.not = icmp eq i32 %call100, 0
  br i1 %cmp101.not, label %if.else108, label %do.end106

do.end106:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %call100) #13
  br label %cleanup

if.else108:                                       ; preds = %if.end98
  %23 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool109.not = icmp eq i8 %24, 0
  br i1 %tobool109.not, label %do.body163, label %do.body111

do.body111:                                       ; preds = %if.else108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then123)) #9
          to label %do.end127 [label %if.then123], !srcloc !153

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.56) #9
  br label %do.end127

do.end127:                                        ; preds = %if.then123, %do.body111
  %frame128 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  %call129 = call fastcc i32 @uclogic_params_frame_init_v1_buttonpad(ptr noundef %frame128, ptr noundef nonnull %found, ptr noundef nonnull %hdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %cmp130.not = icmp eq i32 %call129, 0
  br i1 %cmp130.not, label %do.body138, label %do.end135

do.end135:                                        ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %call129) #13
  br label %cleanup

do.body138:                                       ; preds = %do.end127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then150)) #9
          to label %do.end156 [label %if.then150], !srcloc !153

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool152.not = icmp eq i8 %26, 0
  %cond = select i1 %tobool152.not, ptr @.str.62, ptr @.str.61
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef nonnull %cond) #9
  br label %do.end156

do.end156:                                        ; preds = %if.then150, %do.body138
  %27 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %found, align 1, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool157.not = icmp eq i8 %28, 0
  br i1 %tobool157.not, label %do.end156.output_crit_edge, label %if.then158

do.end156.output_crit_edge:                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #11
  br label %output

if.then158:                                       ; preds = %do.end156
  call void @__sanitizer_cov_trace_pc() #11
  %pen_frame_flag159 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 6
  %29 = ptrtoint ptr %pen_frame_flag159 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 32, ptr %pen_frame_flag159, align 4
  br label %output

do.body163:                                       ; preds = %if.else108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_huion_init, %if.then175)) #9
          to label %do.end179 [label %if.then175], !srcloc !153

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_huion_init.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.63) #9
  br label %do.end179

do.end179:                                        ; preds = %if.then175, %do.body163
  %30 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %p, align 4
  br label %output

output:                                           ; preds = %do.end179, %if.then158, %do.end156.output_crit_edge, %if.end78, %if.then11
  %ver_ptr.0 = phi ptr [ null, %if.then11 ], [ %call7.i.i, %if.then158 ], [ %call7.i.i, %do.end156.output_crit_edge ], [ %call7.i.i, %do.end179 ], [ %call7.i.i, %if.end78 ]
  %31 = call ptr @memcpy(ptr %params, ptr %p, i32 60)
  %32 = call ptr @memset(ptr %p, i32 0, i32 60)
  br label %cleanup

cleanup:                                          ; preds = %output, %do.end135, %do.end106, %do.end76, %do.end48, %do.end, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %ver_ptr.1 = phi ptr [ %ver_ptr.0, %output ], [ %call7.i.i, %do.end106 ], [ %call7.i.i, %do.end135 ], [ %call7.i.i, %do.end48 ], [ %call7.i.i, %do.end76 ], [ %call7.i.i, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end12.cleanup_crit_edge ]
  %rc.0 = phi i32 [ 0, %output ], [ %call100, %do.end106 ], [ %call129, %do.end135 ], [ %call42, %do.end48 ], [ %retval.0.i235.ph, %do.end76 ], [ %call17, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @kfree(ptr noundef %ver_ptr.1) #9
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %p, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i, label %if.then.i, label %cleanup.uclogic_params_cleanup.exit_crit_edge

cleanup.uclogic_params_cleanup.exit_crit_edge:    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %uclogic_params_cleanup.exit

if.then.i:                                        ; preds = %cleanup
  %desc_ptr.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %desc_ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc_ptr.i, align 4
  call void @kfree(ptr noundef %36) #9
  %pen_unused.i236 = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 3
  %37 = ptrtoint ptr %pen_unused.i236 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pen_unused.i236, align 4, !range !150
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool1.not.i = icmp eq i8 %38, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %pen.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 4
  %39 = ptrtoint ptr %pen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pen.i, align 4
  call void @kfree(ptr noundef %40) #9
  %41 = call ptr @memset(ptr %pen.i, i32 0, i32 20)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  %frame.i = getelementptr inbounds %struct.uclogic_params, ptr %p, i32 0, i32 5
  %42 = ptrtoint ptr %frame.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %frame.i, align 4
  call void @kfree(ptr noundef %43) #9
  br label %uclogic_params_cleanup.exit

uclogic_params_cleanup.exit:                      ; preds = %if.end.i, %cleanup.uclogic_params_cleanup.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %p) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #9
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_get_str_desc(ptr noundef writeonly %pbuf, ptr noundef %hdev, i8 noundef zeroext %idx, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %hdev, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent1, align 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #12
  %cmp2 = icmp eq ptr %call9.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %shl.i = shl i32 %5, 8
  %or6 = or i32 %shl.i, -2147483520
  %conv = zext i8 %idx to i32
  %6 = zext i8 %idx to i16
  %conv7 = or i16 %6, 768
  %conv8 = trunc i32 %len to i16
  %call9 = tail call i32 @usb_control_msg(ptr noundef %add.ptr, i32 noundef %or6, i8 noundef zeroext 6, i8 noundef zeroext -128, i16 noundef zeroext %conv7, i16 noundef zeroext 1033, ptr noundef nonnull %call9.i, i16 noundef zeroext %conv8, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call9)
  %cmp10 = icmp eq i32 %call9, -32
  br i1 %cmp10, label %do.body, label %if.else

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_get_str_desc.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_get_str_desc, %if.then17)) #9
          to label %cleanup [label %if.then17], !srcloc !153

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_get_str_desc.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv) #9
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp21 = icmp slt i32 %call9, 0
  br i1 %cmp21, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %call9) #13
  br label %cleanup

if.end30:                                         ; preds = %if.else
  %cmp31.not = icmp eq ptr %pbuf, null
  br i1 %cmp31.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %pbuf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %do.end26, %if.then17, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %buf.0 = phi ptr [ %call9.i, %if.then17 ], [ %call9.i, %do.end26 ], [ null, %if.then33 ], [ %call9.i, %if.end30.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call9.i, %do.body ]
  %rc.0 = phi i32 [ -32, %if.then17 ], [ %call9, %do.end26 ], [ %call9, %if.then33 ], [ %call9, %if.end30.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -32, %do.body ]
  tail call void @kfree(ptr noundef %buf.0) #9
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @uclogic_rdesc_template_apply(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_pen_init_v2(ptr noundef writeonly %pen, ptr noundef writeonly %pfound, ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  %buf = alloca ptr, align 4
  %desc_params = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %desc_params) #9
  %1 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 1
  %2 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 2
  %3 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 3
  %4 = getelementptr inbounds [5 x i32], ptr %desc_params, i32 0, i32 4
  %cmp = icmp eq ptr %pen, null
  %cmp1 = icmp eq ptr %pfound, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %hdev, null
  %or.cond145 = or i1 %or.cond, %cmp3
  %5 = call ptr @memset(ptr %desc_params, i32 255, i32 20)
  br i1 %or.cond145, label %entry.cleanup110_crit_edge, label %if.end

entry.cleanup110_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @uclogic_params_get_str_desc(ptr noundef nonnull %buf, ptr noundef nonnull %hdev, i8 noundef zeroext -56, i32 noundef 18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call)
  %cmp4 = icmp eq i32 %call, -32
  br i1 %cmp4, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_pen_init_v2, %if.then9)) #9
          to label %finish [label %if.then9], !srcloc !153

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.36) #9
  br label %finish

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %do.end15, label %if.else17

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev16 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.37, i32 noundef %call) #13
  br label %cleanup110

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %call)
  %cmp18.not = icmp eq i32 %call, 18
  br i1 %cmp18.not, label %for.cond.preheader, label %do.body20

for.cond.preheader:                               ; preds = %if.else17
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = add i8 %9, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %10)
  %11 = icmp ult i8 %10, 95
  br i1 %11, label %land.rhs45, label %for.cond.preheader.if.end75_crit_edge

for.cond.preheader.if.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.body20:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_pen_init_v2, %if.then32)) #9
          to label %finish [label %if.then32], !srcloc !153

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug236, ptr noundef %dev33, ptr noundef nonnull @.str.38, i32 noundef %call, i32 noundef 18) #9
  br label %finish

for.cond:                                         ; preds = %land.rhs45
  %arrayidx.1 = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.1, align 1
  %14 = add i8 %13, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %14)
  %15 = icmp ult i8 %14, 95
  br i1 %15, label %land.rhs45.1, label %for.cond.if.end75_crit_edge

for.cond.if.end75_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.1:                                     ; preds = %for.cond
  %arrayidx46.1 = getelementptr i8, ptr %7, i32 5
  %16 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx46.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp48.1 = icmp eq i8 %17, 0
  br i1 %cmp48.1, label %for.cond.1, label %land.rhs45.1.if.end75_crit_edge

land.rhs45.1.if.end75_crit_edge:                  ; preds = %land.rhs45.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.1:                                       ; preds = %land.rhs45.1
  %arrayidx.2 = getelementptr i8, ptr %7, i32 6
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.2, align 1
  %20 = add i8 %19, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %20)
  %21 = icmp ult i8 %20, 95
  br i1 %21, label %land.rhs45.2, label %for.cond.1.if.end75_crit_edge

for.cond.1.if.end75_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.2:                                     ; preds = %for.cond.1
  %arrayidx46.2 = getelementptr i8, ptr %7, i32 7
  %22 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx46.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp48.2 = icmp eq i8 %23, 0
  br i1 %cmp48.2, label %for.cond.2, label %land.rhs45.2.if.end75_crit_edge

land.rhs45.2.if.end75_crit_edge:                  ; preds = %land.rhs45.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.2:                                       ; preds = %land.rhs45.2
  %arrayidx.3 = getelementptr i8, ptr %7, i32 8
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.3, align 1
  %26 = add i8 %25, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %26)
  %27 = icmp ult i8 %26, 95
  br i1 %27, label %land.rhs45.3, label %for.cond.2.if.end75_crit_edge

for.cond.2.if.end75_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.3:                                     ; preds = %for.cond.2
  %arrayidx46.3 = getelementptr i8, ptr %7, i32 9
  %28 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx46.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp48.3 = icmp eq i8 %29, 0
  br i1 %cmp48.3, label %for.cond.3, label %land.rhs45.3.if.end75_crit_edge

land.rhs45.3.if.end75_crit_edge:                  ; preds = %land.rhs45.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.3:                                       ; preds = %land.rhs45.3
  %arrayidx.4 = getelementptr i8, ptr %7, i32 10
  %30 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.4, align 1
  %32 = add i8 %31, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %32)
  %33 = icmp ult i8 %32, 95
  br i1 %33, label %land.rhs45.4, label %for.cond.3.if.end75_crit_edge

for.cond.3.if.end75_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.4:                                     ; preds = %for.cond.3
  %arrayidx46.4 = getelementptr i8, ptr %7, i32 11
  %34 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx46.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp48.4 = icmp eq i8 %35, 0
  br i1 %cmp48.4, label %for.cond.4, label %land.rhs45.4.if.end75_crit_edge

land.rhs45.4.if.end75_crit_edge:                  ; preds = %land.rhs45.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.4:                                       ; preds = %land.rhs45.4
  %arrayidx.5 = getelementptr i8, ptr %7, i32 12
  %36 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5, align 1
  %38 = add i8 %37, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %38)
  %39 = icmp ult i8 %38, 95
  br i1 %39, label %land.rhs45.5, label %for.cond.4.if.end75_crit_edge

for.cond.4.if.end75_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.5:                                     ; preds = %for.cond.4
  %arrayidx46.5 = getelementptr i8, ptr %7, i32 13
  %40 = ptrtoint ptr %arrayidx46.5 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx46.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp48.5 = icmp eq i8 %41, 0
  br i1 %cmp48.5, label %for.cond.5, label %land.rhs45.5.if.end75_crit_edge

land.rhs45.5.if.end75_crit_edge:                  ; preds = %land.rhs45.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.5:                                       ; preds = %land.rhs45.5
  %arrayidx.6 = getelementptr i8, ptr %7, i32 14
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.6, align 1
  %44 = add i8 %43, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %44)
  %45 = icmp ult i8 %44, 95
  br i1 %45, label %land.rhs45.6, label %for.cond.5.if.end75_crit_edge

for.cond.5.if.end75_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.6:                                     ; preds = %for.cond.5
  %arrayidx46.6 = getelementptr i8, ptr %7, i32 15
  %46 = ptrtoint ptr %arrayidx46.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp48.6 = icmp eq i8 %47, 0
  br i1 %cmp48.6, label %for.cond.6, label %land.rhs45.6.if.end75_crit_edge

land.rhs45.6.if.end75_crit_edge:                  ; preds = %land.rhs45.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.6:                                       ; preds = %land.rhs45.6
  %arrayidx.7 = getelementptr i8, ptr %7, i32 16
  %48 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.7, align 1
  %50 = add i8 %49, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %50)
  %51 = icmp ult i8 %50, 95
  br i1 %51, label %land.rhs45.7, label %for.cond.6.if.end75_crit_edge

for.cond.6.if.end75_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.rhs45.7:                                     ; preds = %for.cond.6
  %arrayidx46.7 = getelementptr i8, ptr %7, i32 17
  %52 = ptrtoint ptr %arrayidx46.7 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx46.7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %cmp48.7 = icmp eq i8 %53, 0
  br i1 %cmp48.7, label %for.cond.7, label %land.rhs45.7.if.end75_crit_edge

land.rhs45.7.if.end75_crit_edge:                  ; preds = %land.rhs45.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

for.cond.7:                                       ; preds = %land.rhs45.7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_pen_init_v2, %if.then67)) #9
          to label %finish [label %if.then67], !srcloc !153

land.rhs45:                                       ; preds = %for.cond.preheader
  %arrayidx46 = getelementptr i8, ptr %7, i32 3
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp48 = icmp eq i8 %55, 0
  br i1 %cmp48, label %for.cond, label %land.rhs45.if.end75_crit_edge

land.rhs45.if.end75_crit_edge:                    ; preds = %land.rhs45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then67:                                        ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  %dev68 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug237, ptr noundef %dev68, ptr noundef nonnull @.str.65) #9
  br label %finish

if.end75:                                         ; preds = %land.rhs45.if.end75_crit_edge, %land.rhs45.7.if.end75_crit_edge, %for.cond.6.if.end75_crit_edge, %land.rhs45.6.if.end75_crit_edge, %for.cond.5.if.end75_crit_edge, %land.rhs45.5.if.end75_crit_edge, %for.cond.4.if.end75_crit_edge, %land.rhs45.4.if.end75_crit_edge, %for.cond.3.if.end75_crit_edge, %land.rhs45.3.if.end75_crit_edge, %for.cond.2.if.end75_crit_edge, %land.rhs45.2.if.end75_crit_edge, %for.cond.1.if.end75_crit_edge, %land.rhs45.1.if.end75_crit_edge, %for.cond.if.end75_crit_edge, %for.cond.preheader.if.end75_crit_edge
  %56 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %57, i32 2
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr, align 1
  %conv.i = zext i8 %59 to i32
  %arrayidx1.i = getelementptr i8, ptr %57, i32 3
  %60 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %61 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %arrayidx3.i = getelementptr i8, ptr %57, i32 4
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %63 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 16
  %or6.i = or i32 %or.i, %shl5.i
  %64 = ptrtoint ptr %desc_params to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or6.i, ptr %desc_params, align 4
  %add.ptr78 = getelementptr i8, ptr %57, i32 5
  %65 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr78, align 1
  %conv.i153 = zext i8 %66 to i32
  %arrayidx1.i154 = getelementptr i8, ptr %57, i32 6
  %67 = ptrtoint ptr %arrayidx1.i154 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx1.i154, align 1
  %conv2.i155 = zext i8 %68 to i32
  %shl.i156 = shl nuw nsw i32 %conv2.i155, 8
  %or.i157 = or i32 %shl.i156, %conv.i153
  %arrayidx3.i158 = getelementptr i8, ptr %57, i32 7
  %69 = ptrtoint ptr %arrayidx3.i158 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx3.i158, align 1
  %conv4.i159 = zext i8 %70 to i32
  %shl5.i160 = shl nuw nsw i32 %conv4.i159, 16
  %or6.i161 = or i32 %or.i157, %shl5.i160
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or6.i161, ptr %2, align 4
  %add.ptr81 = getelementptr i8, ptr %57, i32 8
  %72 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %add.ptr81, align 1
  %74 = call i16 @llvm.bswap.i16(i16 %73) #9
  %conv83 = zext i16 %74 to i32
  %75 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv83, ptr %4, align 4
  %add.ptr85 = getelementptr i8, ptr %57, i32 10
  %76 = ptrtoint ptr %add.ptr85 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %add.ptr85, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %cmp88 = icmp eq i16 %77, 0
  br i1 %cmp88, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %1, align 4
  br label %if.end100

if.else93:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %79 = call i16 @llvm.bswap.i16(i16 %77) #9
  %conv87 = zext i16 %79 to i32
  %mul = mul i32 %or6.i, 1000
  %div = sdiv i32 %mul, %conv87
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %div, ptr %1, align 4
  %mul97 = mul i32 %or6.i161, 1000
  %div98 = sdiv i32 %mul97, %conv87
  br label %if.end100

if.end100:                                        ; preds = %if.else93, %if.then90
  %storemerge = phi i32 [ %div98, %if.else93 ], [ 0, %if.then90 ]
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge, ptr %3, align 4
  call void @kfree(ptr noundef %57) #9
  %82 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %buf, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_pen_v2_template_size to i32))
  %83 = load i32, ptr @uclogic_rdesc_pen_v2_template_size, align 4
  %call101 = call ptr @uclogic_rdesc_template_apply(ptr noundef nonnull @uclogic_rdesc_pen_v2_template_arr, i32 noundef %83, ptr noundef nonnull %desc_params, i32 noundef 5) #9
  %cmp102 = icmp eq ptr %call101, null
  br i1 %cmp102, label %if.end100.cleanup110_crit_edge, label %if.end105

if.end100.cleanup110_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup110

if.end105:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  %84 = getelementptr inbounds i8, ptr %pen, i32 16
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %84, align 4
  %86 = ptrtoint ptr %pen to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call101, ptr %pen, align 4
  %desc_size = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 1
  %87 = ptrtoint ptr %desc_size to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %83, ptr %desc_size, align 4
  %id = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 2
  %88 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8, ptr %id, align 4
  %inrange = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 3
  %89 = ptrtoint ptr %inrange to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 2, ptr %inrange, align 4
  %fragmented_hires = getelementptr inbounds %struct.uclogic_params_pen, ptr %pen, i32 0, i32 4
  %90 = ptrtoint ptr %fragmented_hires to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %fragmented_hires, align 4
  br label %finish

finish:                                           ; preds = %if.end105, %if.then67, %for.cond.7, %if.then32, %do.body20, %if.then9, %do.body
  %found.0.off0 = phi i1 [ false, %if.then9 ], [ false, %if.then32 ], [ true, %if.end105 ], [ false, %do.body ], [ false, %do.body20 ], [ false, %for.cond.7 ], [ false, %if.then67 ]
  %frombool108 = zext i1 %found.0.off0 to i8
  %91 = ptrtoint ptr %pfound to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %frombool108, ptr %pfound, align 1
  br label %cleanup110

cleanup110:                                       ; preds = %finish, %if.end100.cleanup110_crit_edge, %do.end15, %entry.cleanup110_crit_edge
  %rc.0 = phi i32 [ 0, %finish ], [ %call, %do.end15 ], [ -22, %entry.cleanup110_crit_edge ], [ -12, %if.end100.cleanup110_crit_edge ]
  call void @kfree(ptr noundef null) #9
  %92 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %93) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %desc_params) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uclogic_params_frame_init_v1_buttonpad(ptr noundef writeonly %frame, ptr noundef writeonly %pfound, ptr noundef %hdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %frame, null
  %cmp1 = icmp eq ptr %pfound, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %hdev, null
  %or.cond87 = or i1 %or.cond, %cmp3
  br i1 %or.cond87, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %parent4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent4, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #14
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %3, i32 -128
  %call8 = tail call i32 @usb_string(ptr noundef %add.ptr, i32 noundef 123, ptr noundef nonnull %call7.i.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %call8)
  %cmp9 = icmp eq i32 %call8, -32
  br i1 %cmp9, label %do.body, label %if.else

do.body:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_frame_init_v1_buttonpad, %if.then15)) #9
          to label %if.end65 [label %if.then15], !srcloc !153

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.67) #9
  br label %if.end65

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp18 = icmp slt i32 %call8, 0
  br i1 %cmp18, label %if.else.cleanup_crit_edge, label %if.else20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else20:                                        ; preds = %if.else
  %call21 = tail call i32 @strncmp(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.68, i32 noundef %call8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22.not = icmp eq i32 %call21, 0
  br i1 %cmp22.not, label %do.body42, label %do.body24

do.body24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_frame_init_v1_buttonpad, %if.then36)) #9
          to label %if.end65 [label %if.then36], !srcloc !153

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef nonnull %call7.i.i) #9
  br label %if.end65

do.body42:                                        ; preds = %if.else20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uclogic_params_frame_init_v1_buttonpad, %if.then54)) #9
          to label %lor.lhs.false.i [label %if.then54], !srcloc !153

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.70) #9
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then54, %do.body42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @uclogic_rdesc_buttonpad_v1_size to i32))
  %5 = load i32, ptr @uclogic_rdesc_buttonpad_v1_size, align 4
  %call.i = tail call ptr @kmemdup(ptr noundef nonnull @uclogic_rdesc_buttonpad_v1_arr, i32 noundef %5, i32 noundef 3264) #9
  %cmp3.i = icmp eq ptr %call.i, null
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %uclogic_params_frame_init_with_desc.exit.thread

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

uclogic_params_frame_init_with_desc.exit.thread:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = getelementptr inbounds i8, ptr %frame, i32 12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 0, ptr %6, align 4
  %8 = ptrtoint ptr %frame to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %frame, align 4
  %desc_size7.i = getelementptr inbounds %struct.uclogic_params_frame, ptr %frame, i32 0, i32 1
  %9 = ptrtoint ptr %desc_size7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %5, ptr %desc_size7.i, align 4
  %id8.i = getelementptr inbounds %struct.uclogic_params_frame, ptr %frame, i32 0, i32 2
  %10 = ptrtoint ptr %id8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 247, ptr %id8.i, align 4
  br label %if.end65

if.end65:                                         ; preds = %uclogic_params_frame_init_with_desc.exit.thread, %if.then36, %do.body24, %if.then15, %do.body
  %found.0.off0 = phi i1 [ false, %if.then15 ], [ false, %if.then36 ], [ false, %do.body ], [ false, %do.body24 ], [ true, %uclogic_params_frame_init_with_desc.exit.thread ]
  %frombool67 = zext i1 %found.0.off0 to i8
  %11 = ptrtoint ptr %pfound to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool67, ptr %pfound, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %lor.lhs.false.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %str_buf.0 = phi ptr [ %call7.i.i, %if.end65 ], [ %call7.i.i, %if.else.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call7.i.i, %lor.lhs.false.i.cleanup_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.end65 ], [ %call8, %if.else.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef %str_buf.0) #9
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !128, !129, !131, !132, !133, !135, !137, !138, !140}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-uclogic-params.c", i32 37, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/hid/hid-uclogic-params.c", i32 39, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hid/hid-uclogic-params.c", i32 41, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hid/hid-uclogic-params.c", i32 593, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-uclogic-params.c", i32 918, i32 6}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @uclogic_params_init._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @uclogic_params_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-uclogic-params.c", i32 924, i32 6}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @uclogic_params_init._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @uclogic_params_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @uclogic_params_init._entry.12, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1027, i32 5}
!22 = !{ptr @uclogic_params_init._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @uclogic_params_init._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1031, i32 5}
!25 = !{ptr @uclogic_params_init._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @uclogic_params_init._entry.16, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1046, i32 5}
!28 = !{ptr @uclogic_params_init._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @uclogic_params_init._entry.18, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1074, i32 4}
!31 = !{ptr @uclogic_params_init._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1083, i32 5}
!34 = !{ptr @uclogic_params_init._entry.20, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @uclogic_params_init._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @uclogic_params_init._entry.23, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1093, i32 4}
!38 = !{ptr @uclogic_params_init._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @uclogic_params_init._entry.25, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1108, i32 4}
!41 = !{ptr @uclogic_params_init._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @uclogic_params_init._entry.27, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1117, i32 5}
!44 = !{ptr @uclogic_params_init._entry_ptr.28, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @uclogic_params_init._entry.29, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-uclogic-params.c", i32 1123, i32 4}
!47 = !{ptr @uclogic_params_init._entry_ptr.30, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hid/hid-uclogic-params.c", i32 654, i32 3}
!50 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.33, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug241, !49, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hid/hid-uclogic-params.c", i32 663, i32 3}
!55 = !{ptr @uclogic_params_init_with_opt_desc.__UNIQUE_ID_ddebug242, !54, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hid/hid-uclogic-params.c", i32 169, i32 3}
!58 = !{ptr @.str.36, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug233, !57, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hid/hid-uclogic-params.c", i32 173, i32 3}
!62 = !{ptr @uclogic_params_pen_init_v1._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @uclogic_params_pen_init_v1._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hid/hid-uclogic-params.c", i32 176, i32 3}
!66 = !{ptr @uclogic_params_pen_init_v1.__UNIQUE_ID_ddebug234, !65, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-uclogic-params.c", i32 92, i32 3}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @uclogic_params_get_str_desc.__UNIQUE_ID_ddebug232, !68, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!71 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-uclogic-params.c", i32 95, i32 3}
!73 = !{ptr @uclogic_params_get_str_desc._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @uclogic_params_get_str_desc._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @uclogic_params_huion_init.transition_ver, !76, !"transition_ver", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-uclogic-params.c", i32 720, i32 20}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hid/hid-uclogic-params.c", i32 751, i32 3}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @uclogic_params_huion_init._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @uclogic_params_huion_init._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hid/hid-uclogic-params.c", i32 758, i32 3}
!84 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug243, !83, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hid/hid-uclogic-params.c", i32 764, i32 4}
!87 = !{ptr @uclogic_params_huion_init._entry.45, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @uclogic_params_huion_init._entry_ptr.47, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hid/hid-uclogic-params.c", i32 768, i32 4}
!91 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug244, !90, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-uclogic-params.c", i32 776, i32 5}
!94 = !{ptr @uclogic_params_huion_init._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @uclogic_params_huion_init._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-uclogic-params.c", i32 785, i32 3}
!98 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug245, !97, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!99 = !{ptr @.str.54, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-uclogic-params.c", i32 791, i32 3}
!101 = !{ptr @uclogic_params_huion_init._entry.53, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @uclogic_params_huion_init._entry_ptr.55, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.56, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-uclogic-params.c", i32 795, i32 3}
!105 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug246, !104, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!106 = !{ptr @.str.58, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hid/hid-uclogic-params.c", i32 801, i32 4}
!108 = !{ptr @uclogic_params_huion_init._entry.57, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @uclogic_params_huion_init._entry_ptr.59, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hid/hid-uclogic-params.c", i32 804, i32 3}
!112 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug247, !111, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!113 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hid/hid-uclogic-params.c", i32 812, i32 2}
!117 = !{ptr @uclogic_params_huion_init.__UNIQUE_ID_ddebug248, !116, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hid/hid-uclogic-params.c", i32 297, i32 3}
!120 = !{ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug235, !119, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!121 = !{ptr @uclogic_params_pen_init_v2._entry, !122, !"_entry", i1 false, i1 false}
!122 = !{!"../drivers/hid/hid-uclogic-params.c", i32 301, i32 3}
!123 = !{ptr @uclogic_params_pen_init_v2._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug236, !125, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-uclogic-params.c", i32 304, i32 3}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hid/hid-uclogic-params.c", i32 320, i32 4}
!128 = !{ptr @uclogic_params_pen_init_v2.__UNIQUE_ID_ddebug237, !127, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hid/hid-uclogic-params.c", i32 478, i32 3}
!131 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug238, !130, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hid/hid-uclogic-params.c", i32 482, i32 30}
!135 = !{ptr @.str.69, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hid/hid-uclogic-params.c", i32 483, i32 3}
!137 = !{ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug239, !136, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hid/hid-uclogic-params.c", i32 487, i32 3}
!140 = !{ptr @uclogic_params_frame_init_v1_buttonpad.__UNIQUE_ID_ddebug240, !139, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i8 0, i8 2}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{!"auto-init"}
!153 = !{i64 2148970031, i64 2148970036, i64 2148970049, i64 2148970093, i64 2148970127, i64 2148970148}
