; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-alps.c_pt.bc'
source_filename = "../drivers/hid/hid-alps.c"
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
%struct.atomic_t = type { i32 }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.alps_dev = type { ptr, ptr, ptr, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t4_input_report = type { i8, i8, [5 x %struct.t4_contact_data], i8, [5 x i8], [5 x i8], [5 x i8], [5 x i8], i8, i16 }
%struct.t4_contact_data = type { i8, i8, i8, i8, i8 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_hid_alps__224_853_alps_driver_init6 = internal global ptr @alps_driver_init, section ".initcall6.init", align 4
@alps_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @alps_id, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @alps_probe, ptr @alps_remove, ptr null, ptr @alps_raw_event, ptr null, ptr null, ptr null, ptr null, ptr @alps_input_mapping, ptr null, ptr @alps_input_configured, ptr null, ptr null, ptr @alps_post_resume, ptr @alps_post_reset, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_alps_driver_exit = internal global ptr @alps_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [52 x i8] c"hid_alps.author=Masaki Ota <masaki.ota@jp.alps.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [37 x i8] c"hid_alps.description=ALPS HID driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [35 x i8] c"hid_alps.file=drivers/hid/hid-alps\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [21 x i8] c"hid_alps.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid_alps\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hid-alps\00", [23 x i8] zeroinitializer }, align 32
@alps_id = internal constant { [4 x %struct.hid_device_id], [32 x i8] } { [4 x %struct.hid_device_id] [%struct.hid_device_id { i16 -1, i16 0, i32 1102, i32 4619, i32 0 }, %struct.hid_device_id { i16 -1, i16 0, i32 1102, i32 4629, i32 0 }, %struct.hid_device_id { i16 -1, i16 0, i32 1102, i32 4620, i32 0 }, %struct.hid_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@alps_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 797, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alps_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-alps.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@alps_probe._entry_ptr = internal global ptr @alps_probe._entry, section ".printk_index", align 4
@alps_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 816, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@alps_probe._entry_ptr.9 = internal global ptr @alps_probe._entry.7, section ".printk_index", align 4
@alps_input_configured.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alps_input_configured\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Opening low level driver\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DualPoint Stick\00", [16 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 963, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already started\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hid_device_io_start\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@hid_device_io_start._entry_ptr = internal global ptr @hid_device_io_start._entry, section ".printk_index", align 4
@T4_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 616, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed T4_PRM_ID_CONFIG_3 (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"T4_init\00", [24 x i8] zeroinitializer }, align 32
@T4_init._entry_ptr = internal global ptr @T4_init._entry, section ".printk_index", align 4
@T4_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 631, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed PRM_SYS_CONFIG_1 (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@T4_init._entry_ptr.21 = internal global ptr @T4_init._entry.19, section ".printk_index", align 4
@T4_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.4, i32 637, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@T4_init._entry_ptr.23 = internal global ptr @T4_init._entry.22, section ".printk_index", align 4
@T4_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.4, i32 644, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed T4_PRM_FEED_CONFIG_1 (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@T4_init._entry_ptr.26 = internal global ptr @T4_init._entry.24, section ".printk_index", align 4
@T4_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.18, ptr @.str.4, i32 651, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed T4_PRM_FEED_CONFIG_4 (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@T4_init._entry_ptr.29 = internal global ptr @T4_init._entry.27, section ".printk_index", align 4
@t4_read_write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 200, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to read command (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"t4_read_write_register\00", [41 x i8] zeroinitializer }, align 32
@t4_read_write_register._entry_ptr = internal global ptr @t4_read_write_register._entry, section ".printk_index", align 4
@t4_read_write_register._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed read register (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@t4_read_write_register._entry_ptr.34 = internal global ptr @t4_read_write_register._entry.32, section ".printk_index", align 4
@t4_read_write_register._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.4, i32 223, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"read register address error (%x,%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@t4_read_write_register._entry_ptr.37 = internal global ptr @t4_read_write_register._entry.35, section ".printk_index", align 4
@t4_read_write_register._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.4, i32 229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read register size error (%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_read_write_register._entry_ptr.40 = internal global ptr @t4_read_write_register._entry.38, section ".printk_index", align 4
@t4_read_write_register._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"read register checksum error (%x,%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@t4_read_write_register._entry_ptr.43 = internal global ptr @t4_read_write_register._entry.41, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@u1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed U1_DEV_CTRL_1 (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"u1_init\00", [24 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr = internal global ptr @u1_init._entry, section ".printk_index", align 4
@u1_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.4, i32 516, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to change TP mode (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.48 = internal global ptr @u1_init._entry.46, section ".printk_index", align 4
@u1_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.4, i32 523, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed U1_NUM_SENS_X (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.51 = internal global ptr @u1_init._entry.49, section ".printk_index", align 4
@u1_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.4, i32 530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed U1_NUM_SENS_Y (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.54 = internal global ptr @u1_init._entry.52, section ".printk_index", align 4
@u1_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.4, i32 537, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed U1_PITCH_SENS_X (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.57 = internal global ptr @u1_init._entry.55, section ".printk_index", align 4
@u1_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.45, ptr @.str.4, i32 544, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed U1_PITCH_SENS_Y (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.60 = internal global ptr @u1_init._entry.58, section ".printk_index", align 4
@u1_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.45, ptr @.str.4, i32 551, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed U1_RESO_DWN_ABS (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.63 = internal global ptr @u1_init._entry.61, section ".printk_index", align 4
@u1_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.45, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed U1_PAD_BTN (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.66 = internal global ptr @u1_init._entry.64, section ".printk_index", align 4
@u1_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.45, ptr @.str.4, i32 584, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed U1_DEVICE_TYP (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.69 = internal global ptr @u1_init._entry.67, section ".printk_index", align 4
@u1_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.45, ptr @.str.4, i32 592, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed SP mode (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.72 = internal global ptr @u1_init._entry.70, section ".printk_index", align 4
@u1_init._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.45, ptr @.str.4, i32 599, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed U1_SP_BTN (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@u1_init._entry_ptr.75 = internal global ptr @u1_init._entry.73, section ".printk_index", align 4
@u1_read_write_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.76, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"u1_read_write_register\00", [41 x i8] zeroinitializer }, align 32
@u1_read_write_register._entry_ptr = internal global ptr @u1_read_write_register._entry, section ".printk_index", align 4
@u1_read_write_register._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.76, ptr @.str.4, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@u1_read_write_register._entry_ptr.78 = internal global ptr @u1_read_write_register._entry.77, section ".printk_index", align 4
@hid_device_io_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.15, i32 983, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"io already stopped\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hid_device_io_stop\00", [45 x i8] zeroinitializer }, align 32
@hid_device_io_stop._entry_ptr = internal global ptr @hid_device_io_stop._entry, section ".printk_index", align 4
@alps_post_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.81, ptr @.str.4, i32 462, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alps_post_reset\00", [16 x i8] zeroinitializer }, align 32
@alps_post_reset._entry_ptr = internal global ptr @alps_post_reset._entry, section ".printk_index", align 4
@alps_post_reset._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.81, ptr @.str.4, i32 470, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@alps_post_reset._entry_ptr.83 = internal global ptr @alps_post_reset._entry.82, section ".printk_index", align 4
@alps_post_reset._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.81, ptr @.str.4, i32 480, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@alps_post_reset._entry_ptr.85 = internal global ptr @alps_post_reset._entry.84, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 4619, i64 4620, i64 4629, i64 4638]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 6]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"alps_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 839, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 853, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 840, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant [8 x i8] c"alps_id\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 828, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 797, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 816, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 683, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 740, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 963, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 616, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 631, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 637, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 644, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 651, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 200, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 215, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 222, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 228, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 235, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 507, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 516, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 523, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 530, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 537, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 544, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 551, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 569, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 584, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 592, i32 4 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 599, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 286, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 302, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.297, i32 983, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 461, i32 4 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 469, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.309 = private constant [26 x i8] c"../drivers/hid/hid-alps.c\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.309, i32 479, i32 4 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @T4_init._entry, ptr @T4_init._entry.19, ptr @T4_init._entry.22, ptr @T4_init._entry.24, ptr @T4_init._entry.27, ptr @T4_init._entry_ptr, ptr @T4_init._entry_ptr.21, ptr @T4_init._entry_ptr.23, ptr @T4_init._entry_ptr.26, ptr @T4_init._entry_ptr.29, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_alps_driver_exit, ptr @__initcall__kmod_hid_alps__224_853_alps_driver_init6, ptr @alps_driver_exit, ptr @alps_post_reset._entry, ptr @alps_post_reset._entry.82, ptr @alps_post_reset._entry.84, ptr @alps_post_reset._entry_ptr, ptr @alps_post_reset._entry_ptr.83, ptr @alps_post_reset._entry_ptr.85, ptr @alps_probe._entry, ptr @alps_probe._entry.7, ptr @alps_probe._entry_ptr, ptr @alps_probe._entry_ptr.9, ptr @hid_device_io_start._entry, ptr @hid_device_io_start._entry_ptr, ptr @hid_device_io_stop._entry, ptr @hid_device_io_stop._entry_ptr, ptr @t4_read_write_register._entry, ptr @t4_read_write_register._entry.32, ptr @t4_read_write_register._entry.35, ptr @t4_read_write_register._entry.38, ptr @t4_read_write_register._entry.41, ptr @t4_read_write_register._entry_ptr, ptr @t4_read_write_register._entry_ptr.34, ptr @t4_read_write_register._entry_ptr.37, ptr @t4_read_write_register._entry_ptr.40, ptr @t4_read_write_register._entry_ptr.43, ptr @u1_init._entry, ptr @u1_init._entry.46, ptr @u1_init._entry.49, ptr @u1_init._entry.52, ptr @u1_init._entry.55, ptr @u1_init._entry.58, ptr @u1_init._entry.61, ptr @u1_init._entry.64, ptr @u1_init._entry.67, ptr @u1_init._entry.70, ptr @u1_init._entry.73, ptr @u1_init._entry_ptr, ptr @u1_init._entry_ptr.48, ptr @u1_init._entry_ptr.51, ptr @u1_init._entry_ptr.54, ptr @u1_init._entry_ptr.57, ptr @u1_init._entry_ptr.60, ptr @u1_init._entry_ptr.63, ptr @u1_init._entry_ptr.66, ptr @u1_init._entry_ptr.69, ptr @u1_init._entry_ptr.72, ptr @u1_init._entry_ptr.75, ptr @u1_read_write_register._entry, ptr @u1_read_write_register._entry.77, ptr @u1_read_write_register._entry_ptr, ptr @u1_read_write_register._entry_ptr.78, ptr @alps_driver, ptr @.str, ptr @.str.1, ptr @alps_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.79, ptr @.str.80, ptr @.str.81], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_id to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @T4_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @T4_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @T4_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @T4_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @T4_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_read_write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_read_write_register._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_read_write_register._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_read_write_register._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_read_write_register._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_init._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_read_write_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u1_read_write_register._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_device_io_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_post_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_post_reset._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alps_post_reset._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @alps_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alps_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @hid_unregister_driver(ptr noundef nonnull @alps_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_probe(ptr noundef %hdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdev1 = getelementptr inbounds %struct.alps_dev, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %hdev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %hdev, ptr %hdev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %quirks = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 8
  %or = or i32 %3, 536870912
  store i32 %or, ptr %quirks, align 8
  %call.i35 = tail call i32 @hid_open_report(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool3.not = icmp eq i32 %call.i35, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %sw.default [
    i32 4620, label %if.end6.sw.epilog_crit_edge
    i32 4619, label %if.end6.sw.bb7_crit_edge
    i32 4629, label %if.end6.sw.bb7_crit_edge36
    i32 4638, label %if.end6.sw.bb7_crit_edge37
  ]

if.end6.sw.bb7_crit_edge37:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end6.sw.bb7_crit_edge36:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end6.sw.bb7_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6.sw.bb7_crit_edge, %if.end6.sw.bb7_crit_edge36, %if.end6.sw.bb7_crit_edge37
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %if.end6.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.default ], [ 0, %sw.bb7 ], [ 1, %if.end6.sw.epilog_crit_edge ]
  %dev_type9 = getelementptr inbounds %struct.alps_dev, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dev_type9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %dev_type9, align 4
  %call10 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef 45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.2, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %sw.epilog.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i35, %if.end.cleanup.sink.split_crit_edge ], [ %call10, %sw.epilog.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.8.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @hid_hw_stop(ptr noundef %hdev) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_raw_event(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %report, ptr noundef readonly %data, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4620, i32 %3)
  %cond = icmp eq i32 %3, 4620
  %tobool.not.i = icmp eq ptr %data, null
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.cond.preheader.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

for.cond.preheader.i:                             ; preds = %sw.bb
  %max_fingers.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %max_fingers.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_fingers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %y_max.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 10
  %y_min.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.t4_input_report, ptr %data, i32 0, i32 2, i32 %i.03.i
  %x_hi.i = getelementptr %struct.t4_input_report, ptr %data, i32 0, i32 2, i32 %i.03.i, i32 2
  %6 = ptrtoint ptr %x_hi.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %x_hi.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %x_lo.i = getelementptr %struct.t4_input_report, ptr %data, i32 0, i32 2, i32 %i.03.i, i32 1
  %8 = ptrtoint ptr %x_lo.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %x_lo.i, align 1
  %conv5.i = zext i8 %9 to i32
  %or.i = or i32 %shl.i, %conv5.i
  %y_hi.i = getelementptr %struct.t4_input_report, ptr %data, i32 0, i32 2, i32 %i.03.i, i32 4
  %10 = ptrtoint ptr %y_hi.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %y_hi.i, align 1
  %y_lo.i = getelementptr %struct.t4_input_report, ptr %data, i32 0, i32 2, i32 %i.03.i, i32 3
  %12 = ptrtoint ptr %y_lo.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %y_lo.i, align 1
  %14 = ptrtoint ptr %y_max.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y_max.i, align 4
  %16 = ptrtoint ptr %y_min.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %y_min.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %20 = icmp sgt i8 %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or.i)
  %cmp25.i = icmp eq i32 %or.i, 65535
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %22, i32 noundef 3, i32 noundef 47, i32 noundef %i.03.i) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %not.cmp25.i = xor i1 %cmp25.i, true
  %cmp30.i = select i1 %not.cmp25.i, i1 %20, i1 false
  %call.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %24, i32 noundef 0, i1 noundef zeroext %cmp30.i) #8
  br i1 %cmp30.i, label %if.end34.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end34.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %z.0.i = select i1 %cmp25.i, i32 0, i32 62
  %conv8.i = zext i8 %11 to i32
  %shl9.neg.i = mul nsw i32 %conv8.i, -256
  %conv12.i = zext i8 %13 to i32
  %or13.neg4.i = sub nsw i32 %shl9.neg.i, %conv12.i
  %sub.i = add i32 %or13.neg4.i, %15
  %add.i = add i32 %sub.i, %17
  %y.0.i = select i1 %cmp25.i, i32 0, i32 %add.i
  %x.0.i = select i1 %cmp25.i, i32 0, i32 %or.i
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 3, i32 noundef 53, i32 noundef %x.0.i) #8
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %28, i32 noundef 3, i32 noundef 54, i32 noundef %y.0.i) #8
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %30, i32 noundef 3, i32 noundef 58, i32 noundef %z.0.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end34.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %31 = ptrtoint ptr %max_fingers.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %max_fingers.i, align 4
  %conv.i = zext i8 %32 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  tail call void @input_mt_sync_frame(ptr noundef %34) #8
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %button.i = getelementptr inbounds %struct.t4_input_report, ptr %data, i32 0, i32 3
  %37 = ptrtoint ptr %button.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %button.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.i = icmp ne i8 %38, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef 272, i32 noundef %lnot.ext.i.i) #8
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %entry
  br i1 %tobool.not.i, label %sw.default.sw.epilog_crit_edge, label %if.end.i

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.default
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 1
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %40, label %if.end.i.sw.epilog_crit_edge [
    i8 6, label %sw.bb34.i
    i8 2, label %if.end.i.sw.bb.i_crit_edge
    i8 3, label %if.end.i.sw.bb.i_crit_edge14
  ]

if.end.i.sw.bb.i_crit_edge14:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge14
  %max_fingers.i8 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %max_fingers.i8 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %max_fingers.i8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp15.not.i = icmp eq i8 %43, 0
  br i1 %cmp15.not.i, label %sw.bb.i.for.end.i12_crit_edge, label %sw.bb.i.for.body.i9_crit_edge

sw.bb.i.for.body.i9_crit_edge:                    ; preds = %sw.bb.i
  br label %for.body.i9

sw.bb.i.for.end.i12_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i12

for.body.i9:                                      ; preds = %if.end19.i.for.body.i9_crit_edge, %sw.bb.i.for.body.i9_crit_edge
  %i.016.i = phi i32 [ %inc.i10, %if.end19.i.for.body.i9_crit_edge ], [ 0, %sw.bb.i.for.body.i9_crit_edge ]
  %mul.i = mul nuw nsw i32 %i.016.i, 5
  %arrayidx3.i = getelementptr i8, ptr %data, i32 %mul.i
  %add.ptr.i = getelementptr i8, ptr %arrayidx3.i, i32 3
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %add.ptr.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %arrayidx3.i, i32 5
  %46 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %add.ptr5.i, align 1
  %arrayidx8.i = getelementptr i8, ptr %arrayidx3.i, i32 7
  %48 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx8.i, align 1
  %50 = and i8 %49, 127
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %52, i32 noundef 3, i32 noundef 47, i32 noundef %i.016.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp10.not.i = icmp eq i8 %50, 0
  br i1 %cmp10.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call i16 @llvm.bswap.i16(i16 %47) #8
  %54 = tail call i16 @llvm.bswap.i16(i16 %45) #8
  %and.i = zext i8 %50 to i32
  %conv7.i = zext i16 %53 to i32
  %conv4.i = zext i16 %54 to i32
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %call14.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %56, i32 noundef 0, i1 noundef zeroext true) #8
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %58, i32 noundef 3, i32 noundef 53, i32 noundef %conv4.i) #8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %60, i32 noundef 3, i32 noundef 54, i32 noundef %conv7.i) #8
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  tail call void @input_event(ptr noundef %62, i32 noundef 3, i32 noundef 58, i32 noundef %and.i) #8
  br label %if.end19.i

if.else.i:                                        ; preds = %for.body.i9
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %64, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then12.i
  %inc.i10 = add nuw nsw i32 %i.016.i, 1
  %65 = ptrtoint ptr %max_fingers.i8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %max_fingers.i8, align 4
  %conv1.i = zext i8 %66 to i32
  %cmp.i11 = icmp ult i32 %inc.i10, %conv1.i
  br i1 %cmp.i11, label %if.end19.i.for.body.i9_crit_edge, label %if.end19.i.for.end.i12_crit_edge

if.end19.i.for.end.i12_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i12

if.end19.i.for.body.i9_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i9

for.end.i12:                                      ; preds = %if.end19.i.for.end.i12_crit_edge, %sw.bb.i.for.end.i12_crit_edge
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  tail call void @input_mt_sync_frame(ptr noundef %68) #8
  br label %cleanup.sink.split.i

sw.bb34.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr35.i = getelementptr i8, ptr %data, i32 2
  %69 = ptrtoint ptr %add.ptr35.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 2)
  %70 = load i16, ptr %add.ptr35.i, align 1
  %71 = tail call i16 @llvm.bswap.i16(i16 %70) #8
  %add.ptr37.i = getelementptr i8, ptr %data, i32 4
  %72 = ptrtoint ptr %add.ptr37.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %add.ptr37.i, align 1
  %74 = tail call i16 @llvm.bswap.i16(i16 %73) #8
  %75 = sdiv i16 %71, 8
  %76 = sdiv i16 %74, 8
  %input2.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 1
  %77 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %input2.i, align 4
  %conv44.i = sext i16 %75 to i32
  tail call void @input_event(ptr noundef %78, i32 noundef 2, i32 noundef 0, i32 noundef %conv44.i) #8
  %79 = ptrtoint ptr %input2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %input2.i, align 4
  %conv46.i = sext i16 %76 to i32
  tail call void @input_event(ptr noundef %80, i32 noundef 2, i32 noundef 1, i32 noundef %conv46.i) #8
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb34.i, %for.end.i12
  %hdata.sink.i = phi ptr [ %1, %for.end.i12 ], [ %input2.i, %sw.bb34.i ]
  %81 = ptrtoint ptr %hdata.sink.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hdata.sink.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %data, i32 1
  %83 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx22.i, align 1
  %85 = and i8 %84, 1
  %86 = zext i8 %85 to i32
  tail call void @input_event(ptr noundef %82, i32 noundef 1, i32 noundef 272, i32 noundef %86) #8
  %87 = ptrtoint ptr %hdata.sink.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hdata.sink.i, align 4
  %89 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx22.i, align 1
  %91 = lshr i8 %90, 1
  %.lobit12.i = and i8 %91, 1
  %92 = zext i8 %.lobit12.i to i32
  tail call void @input_event(ptr noundef %88, i32 noundef 1, i32 noundef 273, i32 noundef %92) #8
  %93 = ptrtoint ptr %hdata.sink.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hdata.sink.i, align 4
  %95 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx22.i, align 1
  %97 = lshr i8 %96, 2
  %.lobit13.i = and i8 %97, 1
  %98 = zext i8 %.lobit13.i to i32
  tail call void @input_event(ptr noundef %94, i32 noundef 1, i32 noundef 274, i32 noundef %98) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cleanup.sink.split.i, %for.end.i
  %hdata.sink.i.sink = phi ptr [ %hdata.sink.i, %cleanup.sink.split.i ], [ %1, %for.end.i ]
  %99 = ptrtoint ptr %hdata.sink.i.sink to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hdata.sink.i.sink, align 4
  tail call void @input_event(ptr noundef %100, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.i.sw.epilog_crit_edge, %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %sw.default.sw.epilog_crit_edge ], [ 0, %if.end.i.sw.epilog_crit_edge ], [ 1, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @alps_input_mapping(ptr nocapture noundef readnone %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef readnone %field, ptr nocapture noundef readnone %usage, ptr nocapture noundef readnone %bit, ptr nocapture noundef readnone %max) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_input_configured(ptr noundef %hdev, ptr nocapture noundef readonly %hi) #2 align 64 {
entry:
  %tmp.i185 = alloca i8, align 1
  %dev_ctrl.i = alloca i8, align 1
  %sen_line_num_x.i = alloca i8, align 1
  %sen_line_num_y.i = alloca i8, align 1
  %pitch_x.i = alloca i8, align 1
  %pitch_y.i = alloca i8, align 1
  %resolution.i = alloca i8, align 1
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alps_input_configured.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alps_input_configured, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !159

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @alps_input_configured.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call7 = tail call i32 @hid_hw_open(ptr noundef %hdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  %io_started.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 35
  %5 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %io_started.i, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.13) #11
  br label %hid_device_io_start.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %io_started.i, align 4
  %driver_input_lock.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @up(ptr noundef %driver_input_lock.i) #8
  br label %hid_device_io_start.exit

hid_device_io_start.exit:                         ; preds = %if.end.i, %do.end.i
  %dev_type = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %9, label %hid_device_io_start.exit.if.end16_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb12
  ]

hid_device_io_start.exit.if.end16_crit_edge:      ; preds = %hid_device_io_start.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

sw.bb:                                            ; preds = %hid_device_io_start.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #8
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %tmp.i, align 1, !annotation !161
  %call.i = call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 50032, ptr noundef nonnull %tmp.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i181, label %if.end.i184

do.end.i181:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i180 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i180, ptr noundef nonnull @.str.17, i32 noundef %call.i) #11
  br label %T4_init.exit

if.end.i184:                                      ; preds = %sw.bb
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp.i, align 1
  %conv.i = zext i8 %13 to i32
  %and.i = and i8 %13, 15
  %and2.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i182 = icmp eq i32 %and2.i, 0
  %cond.i = select i1 %tobool.not.i182, i8 0, i8 -16
  %or.i183 = or i8 %and.i, 16
  %add.i = add nsw i8 %or.i183, %cond.i
  %14 = lshr i8 %13, 4
  %and7.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %cond9.i = select i1 %tobool8.not.i, i8 0, i8 -16
  %or10.i = add nuw nsw i8 %14, 12
  %add11.i = add nsw i8 %or10.i, %cond9.i
  %conv13.i = zext i8 %add.i to i32
  %mul.i = shl nuw nsw i32 %conv13.i, 8
  %x_max.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %x_max.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i, ptr %x_max.i, align 4
  %x_min.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %x_min.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %x_min.i, align 4
  %conv14.i = zext i8 %add11.i to i32
  %mul15.i = shl nuw nsw i32 %conv14.i, 8
  %y_max.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %y_max.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul15.i, ptr %y_max.i, align 4
  %y_min.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %y_min.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %y_min.i, align 4
  %y_active_len_mm.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %y_active_len_mm.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %y_active_len_mm.i, align 4
  %x_active_len_mm.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %x_active_len_mm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %x_active_len_mm.i, align 4
  %btn_cnt.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %btn_cnt.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %btn_cnt.i, align 4
  %call16.i = call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49858, ptr noundef nonnull %tmp.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.end22.i, label %if.end24.i

do.end22.i:                                       ; preds = %if.end.i184
  call void @__sanitizer_cov_trace_pc() #10
  %dev23.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.20, i32 noundef %call16.i) #11
  br label %T4_init.exit

if.end24.i:                                       ; preds = %if.end.i184
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tmp.i, align 1
  %24 = or i8 %23, 2
  %call28.i = tail call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49858, ptr noundef null, i8 noundef zeroext %24, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev35.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i, ptr noundef nonnull @.str.20, i32 noundef %call28.i) #11
  br label %T4_init.exit

if.end36.i:                                       ; preds = %if.end24.i
  %call37.i = tail call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49860, ptr noundef null, i8 noundef zeroext 120, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %do.end43.i, label %if.end45.i

do.end43.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev44.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44.i, ptr noundef nonnull @.str.25, i32 noundef %call37.i) #11
  br label %T4_init.exit

if.end45.i:                                       ; preds = %if.end36.i
  %call46.i = tail call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49882, ptr noundef null, i8 noundef zeroext 1, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %do.end52.i, label %if.end54.i

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev53.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.28, i32 noundef %call46.i) #11
  br label %T4_init.exit

if.end54.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_fingers.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %max_fingers.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %max_fingers.i, align 4
  %has_sp.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %has_sp.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %has_sp.i, align 1
  br label %T4_init.exit

T4_init.exit:                                     ; preds = %if.end54.i, %do.end52.i, %do.end43.i, %do.end34.i, %do.end22.i, %do.end.i181
  %ret.0.i = phi i32 [ %call.i, %do.end.i181 ], [ %call16.i, %do.end22.i ], [ %call28.i, %do.end34.i ], [ %call37.i, %do.end43.i ], [ %call46.i, %do.end52.i ], [ 0, %if.end54.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #8
  br label %sw.epilog

sw.bb12:                                          ; preds = %hid_device_io_start.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i185) #8
  %27 = ptrtoint ptr %tmp.i185 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %tmp.i185, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dev_ctrl.i) #8
  %28 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %dev_ctrl.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sen_line_num_x.i) #8
  %29 = ptrtoint ptr %sen_line_num_x.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %sen_line_num_x.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sen_line_num_y.i) #8
  %30 = ptrtoint ptr %sen_line_num_y.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %sen_line_num_y.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pitch_x.i) #8
  %31 = ptrtoint ptr %pitch_x.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %pitch_x.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pitch_y.i) #8
  %32 = ptrtoint ptr %pitch_y.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %pitch_y.i, align 1, !annotation !161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %resolution.i) #8
  %33 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %resolution.i, align 1, !annotation !161
  %call.i186 = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388672, ptr noundef nonnull %dev_ctrl.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %cmp.i187 = icmp slt i32 %call.i186, 0
  br i1 %cmp.i187, label %do.end.i189, label %if.end.i190

do.end.i189:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i188 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i188, ptr noundef nonnull @.str.44, i32 noundef %call.i186) #11
  br label %u1_init.exit

if.end.i190:                                      ; preds = %sw.bb12
  %34 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %dev_ctrl.i, align 1
  %36 = and i8 %35, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i190.do.end10.i_crit_edge, label %if.end.i.i

if.end.i190.do.end10.i_crit_edge:                 ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

if.end.i.i:                                       ; preds = %if.end.i190
  %38 = or i8 %36, 2
  %39 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 5, ptr %call7.i.i.i.i, align 8
  %40 = getelementptr i8, ptr %call7.i.i.i.i, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -46, ptr %40, align 1
  %42 = getelementptr i8, ptr %call7.i.i.i.i, i32 6
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %38, ptr %42, align 2
  %add.ptr.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 2
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 1073774592, ptr %add.ptr.i.i, align 2
  %add.6.i.i = add i8 %36, -93
  %arrayidx11.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 7
  %45 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %add.6.i.i, ptr %arrayidx11.i.i, align 1
  %call12.i.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %u1_read_write_register.exit.thread205.i, label %if.end12.i

u1_read_write_register.exit.thread205.i:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.30, i32 noundef %call12.i.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %do.end10.i

do.end10.i:                                       ; preds = %u1_read_write_register.exit.thread205.i, %if.end.i190.do.end10.i_crit_edge
  %retval.0.i204.i = phi i32 [ %call12.i.i, %u1_read_write_register.exit.thread205.i ], [ -12, %if.end.i190.do.end10.i_crit_edge ]
  %dev11.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i204.i) #11
  br label %u1_init.exit

if.end12.i:                                       ; preds = %if.end.i.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  %call13.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388679, ptr noundef nonnull %sen_line_num_x.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %do.end19.i, label %if.end21.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev20.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.50, i32 noundef %call13.i) #11
  br label %u1_init.exit

if.end21.i:                                       ; preds = %if.end12.i
  %call22.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388680, ptr noundef nonnull %sen_line_num_y.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev29.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.53, i32 noundef %call22.i) #11
  br label %u1_init.exit

if.end30.i:                                       ; preds = %if.end21.i
  %call31.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388681, ptr noundef nonnull %pitch_x.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev38.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.56, i32 noundef %call31.i) #11
  br label %u1_init.exit

if.end39.i:                                       ; preds = %if.end30.i
  %call40.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388682, ptr noundef nonnull %pitch_y.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end46.i, label %if.end48.i

do.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev47.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i, ptr noundef nonnull @.str.59, i32 noundef %call40.i) #11
  br label %u1_init.exit

if.end48.i:                                       ; preds = %if.end39.i
  %call49.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388686, ptr noundef nonnull %resolution.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %cmp50.i = icmp slt i32 %call49.i, 0
  br i1 %cmp50.i, label %do.end55.i, label %if.end57.i

do.end55.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev56.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.62, i32 noundef %call49.i) #11
  br label %u1_init.exit

if.end57.i:                                       ; preds = %if.end48.i
  %46 = ptrtoint ptr %pitch_x.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pitch_x.i, align 1
  %conv58.i = zext i8 %47 to i32
  %48 = ptrtoint ptr %sen_line_num_x.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %sen_line_num_x.i, align 1
  %conv59.i = zext i8 %49 to i32
  %sub.i = add nsw i32 %conv59.i, -1
  %mul.i191 = mul nsw i32 %sub.i, %conv58.i
  %div.i = sdiv i32 %mul.i191, 10
  %x_active_len_mm.i192 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %x_active_len_mm.i192 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div.i, ptr %x_active_len_mm.i192, align 4
  %51 = ptrtoint ptr %pitch_y.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %pitch_y.i, align 1
  %conv60.i = zext i8 %52 to i32
  %53 = ptrtoint ptr %sen_line_num_y.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sen_line_num_y.i, align 1
  %conv61.i = zext i8 %54 to i32
  %sub62.i = add nsw i32 %conv61.i, -1
  %mul63.i = mul nsw i32 %sub62.i, %conv60.i
  %div64.i = sdiv i32 %mul63.i, 10
  %y_active_len_mm.i193 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 8
  %55 = ptrtoint ptr %y_active_len_mm.i193 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div64.i, ptr %y_active_len_mm.i193, align 4
  %56 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %resolution.i, align 1
  %conv65.i = zext i8 %57 to i32
  %shl.i194 = shl nuw nsw i32 %conv65.i, 2
  %mul68.i = mul nsw i32 %shl.i194, %sub.i
  %x_max.i195 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %x_max.i195 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul68.i, ptr %x_max.i195, align 4
  %x_min.i196 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %x_min.i196 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %x_min.i196, align 4
  %mul73.i = mul nsw i32 %shl.i194, %sub62.i
  %y_max.i197 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 10
  %60 = ptrtoint ptr %y_max.i197 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %mul73.i, ptr %y_max.i197, align 4
  %y_min.i198 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 12
  %61 = ptrtoint ptr %y_min.i198 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %y_min.i198, align 4
  %call74.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388690, ptr noundef nonnull %tmp.i185, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp slt i32 %call74.i, 0
  br i1 %cmp75.i, label %do.end80.i, label %if.end82.i

do.end80.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev81.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81.i, ptr noundef nonnull @.str.65, i32 noundef %call74.i) #11
  br label %u1_init.exit

if.end82.i:                                       ; preds = %if.end57.i
  %62 = ptrtoint ptr %tmp.i185 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %tmp.i185, align 1
  %conv83.i = zext i8 %63 to i32
  %and84.i = and i32 %conv83.i, 15
  %64 = lshr i32 %conv83.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and84.i, i32 %64)
  %cmp87.i = icmp eq i32 %and84.i, %64
  %spec.select.i = select i1 %cmp87.i, i32 %and84.i, i32 1
  %65 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 13
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select.i, ptr %65, align 4
  %has_sp.i199 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %has_sp.i199 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %has_sp.i199, align 1
  %call94.i = call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388675, ptr noundef nonnull %tmp.i185, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %cmp95.i = icmp slt i32 %call94.i, 0
  br i1 %cmp95.i, label %do.end100.i, label %if.end102.i

do.end100.i:                                      ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev101.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev101.i, ptr noundef nonnull @.str.68, i32 noundef %call94.i) #11
  br label %u1_init.exit

if.end102.i:                                      ; preds = %if.end82.i
  %68 = ptrtoint ptr %tmp.i185 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %tmp.i185, align 1
  %70 = and i8 %69, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i200 = icmp eq i8 %70, 0
  br i1 %tobool.not.i200, label %if.end102.i.if.end128.i_crit_edge, label %if.then105.i

if.end102.i.if.end128.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128.i

if.then105.i:                                     ; preds = %if.end102.i
  %71 = or i8 %36, -126
  %72 = ptrtoint ptr %dev_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %dev_ctrl.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %73 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i183.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i184.i = icmp eq ptr %call7.i.i.i183.i, null
  br i1 %tobool.not.i184.i, label %if.then105.i.do.end115.i_crit_edge, label %if.end.i194.i

if.then105.i.do.end115.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end115.i

if.end.i194.i:                                    ; preds = %if.then105.i
  %74 = ptrtoint ptr %call7.i.i.i183.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 5, ptr %call7.i.i.i183.i, align 8
  %75 = getelementptr i8, ptr %call7.i.i.i183.i, i32 1
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 -46, ptr %75, align 1
  %77 = getelementptr i8, ptr %call7.i.i.i183.i, i32 6
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %71, ptr %77, align 2
  %add.ptr.i185.i = getelementptr i8, ptr %call7.i.i.i183.i, i32 2
  %79 = ptrtoint ptr %add.ptr.i185.i to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 1073774592, ptr %add.ptr.i185.i, align 2
  %add.6.i190.i = add i8 %71, -95
  %arrayidx11.i191.i = getelementptr i8, ptr %call7.i.i.i183.i, i32 7
  %80 = ptrtoint ptr %arrayidx11.i191.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %add.6.i190.i, ptr %arrayidx11.i191.i, align 1
  %call12.i192.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i.i183.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i192.i)
  %cmp13.i193.i = icmp slt i32 %call12.i192.i, 0
  br i1 %cmp13.i193.i, label %u1_read_write_register.exit201.thread211.i, label %if.end117.i

u1_read_write_register.exit201.thread211.i:       ; preds = %if.end.i194.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i195.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i195.i, ptr noundef nonnull @.str.30, i32 noundef %call12.i192.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i183.i) #8
  br label %do.end115.i

do.end115.i:                                      ; preds = %u1_read_write_register.exit201.thread211.i, %if.then105.i.do.end115.i_crit_edge
  %retval.0.i200210.i = phi i32 [ %call12.i192.i, %u1_read_write_register.exit201.thread211.i ], [ -12, %if.then105.i.do.end115.i_crit_edge ]
  %dev116.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev116.i, ptr noundef nonnull @.str.71, i32 noundef %retval.0.i200210.i) #11
  br label %u1_init.exit

if.end117.i:                                      ; preds = %if.end.i194.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i183.i) #8
  %sp_btn_info.i = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 6
  %call118.i = tail call fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef 8388767, ptr noundef %sp_btn_info.i, i8 noundef zeroext 0, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %cmp119.i = icmp slt i32 %call118.i, 0
  br i1 %cmp119.i, label %do.end124.i, label %if.end126.i

do.end124.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev125.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev125.i, ptr noundef nonnull @.str.74, i32 noundef %call118.i) #11
  br label %u1_init.exit

if.end126.i:                                      ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %has_sp.i199 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %has_sp.i199, align 1
  br label %if.end128.i

if.end128.i:                                      ; preds = %if.end126.i, %if.end102.i.if.end128.i_crit_edge
  %max_fingers.i201 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %max_fingers.i201 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 5, ptr %max_fingers.i201, align 4
  br label %u1_init.exit

u1_init.exit:                                     ; preds = %if.end128.i, %do.end124.i, %do.end115.i, %do.end100.i, %do.end80.i, %do.end55.i, %do.end46.i, %do.end37.i, %do.end28.i, %do.end19.i, %do.end10.i, %do.end.i189
  %ret.1.i = phi i32 [ %call.i186, %do.end.i189 ], [ %retval.0.i204.i, %do.end10.i ], [ %call13.i, %do.end19.i ], [ %call22.i, %do.end28.i ], [ %call31.i, %do.end37.i ], [ %call40.i, %do.end46.i ], [ %call49.i, %do.end55.i ], [ %call74.i, %do.end80.i ], [ %call94.i, %do.end100.i ], [ %retval.0.i200210.i, %do.end115.i ], [ %call118.i, %do.end124.i ], [ 0, %if.end128.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %resolution.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pitch_y.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pitch_x.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sen_line_num_y.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sen_line_num_x.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dev_ctrl.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i185) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %u1_init.exit, %T4_init.exit
  %ret.0 = phi i32 [ %ret.1.i, %u1_init.exit ], [ %ret.0.i, %T4_init.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool14.not = icmp eq i32 %ret.0, 0
  br i1 %tobool14.not, label %sw.epilog.if.end16_crit_edge, label %sw.epilog.exit_crit_edge

sw.epilog.exit_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.epilog.if.end16_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog.if.end16_crit_edge, %hid_device_io_start.exit.if.end16_crit_edge
  %evbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 5
  %83 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %evbit, align 4
  %or.i = or i32 %84, 8
  store i32 %or.i, ptr %evbit, align 4
  %x_min = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 11
  %85 = ptrtoint ptr %x_min to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %x_min, align 4
  %x_max = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 9
  %87 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %x_max, align 4
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 53, i32 noundef %86, i32 noundef %88, i32 noundef 0, i32 noundef 0) #8
  %y_min = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 12
  %89 = ptrtoint ptr %y_min to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %y_min, align 4
  %y_max = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 10
  %91 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %y_max, align 4
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 54, i32 noundef %90, i32 noundef %92, i32 noundef 0, i32 noundef 0) #8
  %x_active_len_mm = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 7
  %93 = ptrtoint ptr %x_active_len_mm to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %x_active_len_mm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool17.not = icmp eq i32 %94, 0
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %land.lhs.true

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end16
  %y_active_len_mm = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 8
  %95 = ptrtoint ptr %y_active_len_mm to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %y_active_len_mm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool18.not = icmp eq i32 %96, 0
  br i1 %tobool18.not, label %land.lhs.true.if.end26_crit_edge, label %if.then19

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true
  %97 = ptrtoint ptr %x_max to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %x_max, align 4
  %99 = ptrtoint ptr %y_max to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %y_max, align 4
  %sub23 = add i32 %100, -1
  %div25 = udiv i32 %sub23, %96
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %absinfo.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 26
  %101 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i202 = icmp eq ptr %102, null
  br i1 %tobool.not.i202, label %if.then19.input_abs_set_res.exit_crit_edge, label %if.then.i

if.then19.input_abs_set_res.exit_crit_edge:       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %input_abs_set_res.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %98, -1
  %div = udiv i32 %sub, %94
  %resolution.i203 = getelementptr %struct.input_absinfo, ptr %102, i32 53, i32 5
  %103 = ptrtoint ptr %resolution.i203 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div, ptr %resolution.i203, align 4
  br label %input_abs_set_res.exit

input_abs_set_res.exit:                           ; preds = %if.then.i, %if.then19.input_abs_set_res.exit_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef %3) #8
  %104 = ptrtoint ptr %absinfo.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %absinfo.i, align 8
  %tobool.not.i206 = icmp eq ptr %105, null
  br i1 %tobool.not.i206, label %input_abs_set_res.exit.if.end26_crit_edge, label %if.then.i208

input_abs_set_res.exit.if.end26_crit_edge:        ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then.i208:                                     ; preds = %input_abs_set_res.exit
  call void @__sanitizer_cov_trace_pc() #10
  %resolution.i207 = getelementptr %struct.input_absinfo, ptr %105, i32 54, i32 5
  %106 = ptrtoint ptr %resolution.i207 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div25, ptr %resolution.i207, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then.i208, %input_abs_set_res.exit.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  tail call void @input_set_abs_params(ptr noundef %3, i32 noundef 58, i32 noundef 0, i32 noundef 64, i32 noundef 0, i32 noundef 0) #8
  %max_fingers = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %max_fingers to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %max_fingers, align 4
  %conv = zext i8 %108 to i32
  %call27 = tail call i32 @input_mt_init_slots(ptr noundef %3, i32 noundef %conv, i32 noundef 1) #8
  %109 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %evbit, align 4
  %or.i166 = or i32 %110, 2
  store i32 %or.i166, ptr %evbit, align 4
  %btn_cnt = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 13
  %111 = ptrtoint ptr %btn_cnt to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %btn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp = icmp eq i32 %112, 1
  br i1 %cmp, label %if.then31, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %propbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 4
  %113 = ptrtoint ptr %propbit to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %propbit, align 4
  %or.i167 = or i32 %114, 4
  store i32 %or.i167, ptr %propbit, align 4
  %115 = ptrtoint ptr %btn_cnt to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load i32, ptr %btn_cnt, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end26.if.end33_crit_edge
  %116 = phi i32 [ %.pr, %if.then31 ], [ %112, %if.end26.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp35221.not = icmp eq i32 %116, 0
  br i1 %cmp35221.not, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  %keybit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.0222, 272
  %rem.i = and i32 %add, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %add, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i, align 4
  %or.i168 = or i32 %118, %shl.i
  store i32 %or.i168, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.0222, 1
  %119 = ptrtoint ptr %btn_cnt to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %btn_cnt, align 4
  %cmp35 = icmp ult i32 %inc, %120
  br i1 %cmp35, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end33.for.end_crit_edge
  %has_sp = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 5
  %121 = ptrtoint ptr %has_sp to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %has_sp, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool38.not = icmp eq i8 %122, 0
  br i1 %tobool38.not, label %for.end.exit_crit_edge, label %if.then39

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then39:                                        ; preds = %for.end
  %call40 = tail call ptr @input_allocate_device() #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then39.exit_crit_edge, label %if.end43

if.then39.exit_crit_edge:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end43:                                         ; preds = %if.then39
  %input244 = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 1
  %123 = ptrtoint ptr %input244 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call40, ptr %input244, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 1
  %124 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %phys, align 4
  %phys45 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 1
  %126 = ptrtoint ptr %phys45 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %phys45, align 4
  %127 = ptrtoint ptr %call40 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @.str.12, ptr %call40, align 8
  %id = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 3
  %128 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 24, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 1
  %129 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %vendor, align 2
  %vendor48 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 3, i32 1
  %131 = ptrtoint ptr %vendor48 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %vendor48, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  %132 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %product, align 4
  %product51 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 3, i32 2
  %134 = ptrtoint ptr %product51 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %133, ptr %product51, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 3
  %135 = ptrtoint ptr %version to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %version, align 2
  %version54 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 3, i32 3
  %137 = ptrtoint ptr %version54 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 %136, ptr %version54, align 2
  %parent = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %138 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %parent, align 8
  %parent57 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 40, i32 1
  %140 = ptrtoint ptr %parent57 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %parent57, align 8
  %driver_data.i.i211 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 40, i32 8
  %141 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %hdev, ptr %driver_data.i.i211, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 31
  %142 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @alps_sp_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 32
  %143 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @alps_sp_close, ptr %close, align 4
  %evbit58 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 5
  %144 = ptrtoint ptr %evbit58 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %evbit58, align 4
  %or.i169 = or i32 %145, 2
  store i32 %or.i169, ptr %evbit58, align 4
  %sp_btn_info = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 6
  %146 = ptrtoint ptr %sp_btn_info to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %sp_btn_info, align 2
  %148 = and i8 %147, 15
  %and = zext i8 %148 to i32
  %sp_btn_cnt = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 14
  %149 = ptrtoint ptr %sp_btn_cnt to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %and, ptr %sp_btn_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp63223.not = icmp eq i8 %148, 0
  br i1 %cmp63223.not, label %if.end43.for.end71_crit_edge, label %for.body65.lr.ph

if.end43.for.end71_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body65.lr.ph:                                 ; preds = %if.end43
  %keybit67 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 6
  br label %for.body65

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.body65.lr.ph
  %i.1224 = phi i32 [ 0, %for.body65.lr.ph ], [ %inc70, %for.body65.for.body65_crit_edge ]
  %add66 = add i32 %i.1224, 272
  %rem.i170 = and i32 %add66, 31
  %shl.i171 = shl nuw i32 1, %rem.i170
  %div2.i172 = lshr i32 %add66, 5
  %add.ptr.i173 = getelementptr i32, ptr %keybit67, i32 %div2.i172
  %150 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i173, align 4
  %or.i174 = or i32 %151, %shl.i171
  store i32 %or.i174, ptr %add.ptr.i173, align 4
  %inc70 = add nuw i32 %i.1224, 1
  %152 = ptrtoint ptr %sp_btn_cnt to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sp_btn_cnt, align 4
  %cmp63 = icmp ult i32 %inc70, %153
  br i1 %cmp63, label %for.body65.for.body65_crit_edge, label %for.body65.for.end71_crit_edge

for.body65.for.end71_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body65

for.end71:                                        ; preds = %for.body65.for.end71_crit_edge, %if.end43.for.end71_crit_edge
  %154 = ptrtoint ptr %evbit58 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %evbit58, align 4
  %or.i175 = or i32 %155, 4
  store i32 %or.i175, ptr %evbit58, align 4
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 7
  %156 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %relbit, align 4
  %or.i177 = or i32 %157, 3
  store i32 %or.i177, ptr %relbit, align 4
  %propbit77 = getelementptr inbounds %struct.input_dev, ptr %call40, i32 0, i32 4
  %158 = ptrtoint ptr %propbit77 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %propbit77, align 4
  %or.i179 = or i32 %159, 33
  store i32 %or.i179, ptr %propbit77, align 4
  %160 = ptrtoint ptr %input244 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %input244, align 4
  %call82 = tail call i32 @input_register_device(ptr noundef %161) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.end71.exit_crit_edge, label %if.then84

for.end71.exit_crit_edge:                         ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then84:                                        ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_free_device(ptr noundef nonnull %call40) #8
  br label %exit

exit:                                             ; preds = %if.then84, %for.end71.exit_crit_edge, %if.then39.exit_crit_edge, %for.end.exit_crit_edge, %sw.epilog.exit_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sw.epilog.exit_crit_edge ], [ -2, %if.then84 ], [ 0, %for.end71.exit_crit_edge ], [ 0, %for.end.exit_crit_edge ], [ -12, %if.then39.exit_crit_edge ]
  %162 = ptrtoint ptr %io_started.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %io_started.i, align 4, !range !160
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i213 = icmp eq i8 %163, 0
  br i1 %tobool.not.i213, label %do.end.i215, label %if.end.i217

do.end.i215:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i214 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i214, ptr noundef nonnull @.str.79) #11
  br label %hid_device_io_stop.exit

if.end.i217:                                      ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %io_started.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %io_started.i, align 4
  %driver_input_lock.i216 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 17
  tail call void @down(ptr noundef %driver_input_lock.i216) #8
  br label %hid_device_io_stop.exit

hid_device_io_stop.exit:                          ; preds = %if.end.i217, %do.end.i215
  tail call void @hid_hw_close(ptr noundef %hdev) #8
  br label %cleanup

cleanup:                                          ; preds = %hid_device_io_stop.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %hid_device_io_stop.exit ], [ %call7, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_post_resume(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alps_post_reset(ptr noundef %hdev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_post_reset(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_type = getelementptr inbounds %struct.alps_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %3, label %entry.exit_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb10
  ]

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

sw.bb:                                            ; preds = %entry
  %call1 = tail call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49860, ptr noundef null, i8 noundef zeroext 120, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call1) #11
  br label %exit

if.end:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef 49882, ptr noundef null, i8 noundef zeroext 1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.28, i32 noundef %call2) #11
  br label %exit

sw.bb10:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %sw.bb10.do.end16_crit_edge, label %if.end.i

sw.bb10.do.end16_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end.i:                                         ; preds = %sw.bb10
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 5, ptr %call7.i.i.i, align 8
  %7 = getelementptr i8, ptr %call7.i.i.i, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -46, ptr %7, align 1
  %9 = getelementptr i8, ptr %call7.i.i.i, i32 6
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -126, ptr %9, align 2
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 1073774592, ptr %add.ptr.i, align 2
  %arrayidx11.i = getelementptr i8, ptr %call7.i.i.i, i32 7
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 35, ptr %arrayidx11.i, align 1
  %call12.i = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %u1_read_write_register.exit.thread34, label %u1_read_write_register.exit

u1_read_write_register.exit.thread34:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.30, i32 noundef %call12.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end16

u1_read_write_register.exit:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %exit

do.end16:                                         ; preds = %u1_read_write_register.exit.thread34, %sw.bb10.do.end16_crit_edge
  %retval.0.i33 = phi i32 [ %call12.i, %u1_read_write_register.exit.thread34 ], [ -12, %sw.bb10.do.end16_crit_edge ]
  %dev17 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.47, i32 noundef %retval.0.i33) #11
  br label %exit

exit:                                             ; preds = %do.end16, %u1_read_write_register.exit, %do.end7, %if.end.exit_crit_edge, %do.end, %entry.exit_crit_edge
  %ret.0 = phi i32 [ -1, %entry.exit_crit_edge ], [ %retval.0.i33, %do.end16 ], [ 0, %u1_read_write_register.exit ], [ %call1, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.exit_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_open(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alps_sp_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @hid_hw_open(ptr noundef %1) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alps_sp_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @hid_hw_close(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @t4_read_write_register(ptr noundef %hdev, i32 noundef %address, ptr nocapture noundef writeonly %read_val, i8 noundef zeroext %write_val, i1 noundef zeroext %read_flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 52) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 7, ptr %call7.i.i, align 8
  %spec.select = select i1 %read_flag, i8 8, i8 7
  %spec.select149 = select i1 %read_flag, i8 0, i8 %write_val
  %2 = getelementptr i8, ptr %call7.i.i, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 1
  %4 = getelementptr i8, ptr %call7.i.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select149, ptr %4, align 8
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 2
  %6 = tail call i32 @llvm.bswap.i32(i32 %address) #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr, align 2
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 6
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %arrayidx8, align 2
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx9, align 1
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i16
  %add5.i = add nuw nsw i16 %conv.i, 255
  %add9.i = add nuw nsw i16 %conv.i, 510
  %arrayidx.i.1 = getelementptr i8, ptr %call7.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.1, align 2
  %conv.i.1 = zext i8 %13 to i16
  %add5.i.1 = add nuw nsw i16 %add5.i, %conv.i.1
  %add9.i.1 = add nuw nsw i16 %add5.i.1, %add9.i
  %arrayidx.i.2 = getelementptr i8, ptr %call7.i.i, i32 3
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.2, align 1
  %conv.i.2 = zext i8 %15 to i16
  %add5.i.2 = add nuw nsw i16 %add5.i.1, %conv.i.2
  %add9.i.2 = add nuw nsw i16 %add5.i.2, %add9.i.1
  %arrayidx.i.3 = getelementptr i8, ptr %call7.i.i, i32 4
  %16 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.3, align 4
  %conv.i.3 = zext i8 %17 to i16
  %add5.i.3 = add nuw nsw i16 %add5.i.2, %conv.i.3
  %add9.i.3 = add nuw nsw i16 %add5.i.3, %add9.i.2
  %arrayidx.i.4 = getelementptr i8, ptr %call7.i.i, i32 5
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.4, align 1
  %conv.i.4 = zext i8 %19 to i16
  %add5.i.4 = add nuw nsw i16 %add5.i.3, %conv.i.4
  %add9.i.4 = add nuw nsw i16 %add5.i.4, %add9.i.3
  %arrayidx.i.5 = getelementptr i8, ptr %call7.i.i, i32 6
  %20 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.5, align 2
  %conv.i.5 = zext i8 %21 to i16
  %add5.i.5 = add nuw nsw i16 %add5.i.4, %conv.i.5
  %add9.i.5 = add i16 %add5.i.5, %add9.i.4
  %arrayidx.i.6 = getelementptr i8, ptr %call7.i.i, i32 7
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.6, align 1
  %conv.i.6 = zext i8 %23 to i16
  %add5.i.6 = add i16 %add5.i.5, %conv.i.6
  %add9.i.6 = add i16 %add5.i.6, %add9.i.5
  %arrayidx.i.7 = getelementptr i8, ptr %call7.i.i, i32 8
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.7, align 8
  %conv.i.7 = zext i8 %25 to i16
  %add5.i.7 = add i16 %add5.i.6, %conv.i.7
  %add9.i.7 = add i16 %add5.i.7, %add9.i.6
  %and.i = and i16 %add5.i.7, 255
  %26 = lshr i16 %add5.i.7, 8
  %add15.i = add nuw nsw i16 %and.i, %26
  %and18.i = and i16 %add9.i.7, 255
  %27 = lshr i16 %add9.i.7, 8
  %add21.i = add nuw nsw i16 %and18.i, %27
  %phi.bo.i = mul i16 %add21.i, 257
  %and24.i = and i16 %add15.i, 255
  %28 = lshr i16 %add15.i, 8
  %add27.i = add nuw nsw i16 %and24.i, %28
  %or.i = or i16 %phi.bo.i, %add27.i
  %conv = trunc i16 %add27.i to i8
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 9
  %29 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %arrayidx11, align 1
  %30 = lshr i16 %or.i, 8
  %conv13 = trunc i16 %30 to i8
  %arrayidx14 = getelementptr i8, ptr %call7.i.i, i32 10
  %31 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv13, ptr %arrayidx14, align 2
  %arrayidx15 = getelementptr i8, ptr %call7.i.i, i32 11
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx15, align 1
  %call16 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 7, ptr noundef nonnull %call7.i.i, i32 noundef 52, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call16) #11
  br label %exit

if.end19:                                         ; preds = %if.end
  br i1 %read_flag, label %if.then21, label %if.end19.exit_readbuf_crit_edge

if.end19.exit_readbuf_crit_edge:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_readbuf

if.then21:                                        ; preds = %if.end19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 52) #12
  %tobool23.not = icmp eq ptr %call7.i.i117, null
  br i1 %tobool23.not, label %if.then21.exit_crit_edge, label %if.end25

if.then21.exit_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end25:                                         ; preds = %if.then21
  %call26 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 7, ptr noundef nonnull %call7.i.i117, i32 noundef 52, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev33 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.33, i32 noundef %call26) #11
  br label %exit_readbuf

if.end34:                                         ; preds = %if.end25
  %arrayidx35 = getelementptr i8, ptr %call7.i.i117, i32 6
  %34 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %address)
  %cmp36.not = icmp eq i32 %35, %address
  br i1 %cmp36.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %dev42 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.36, i32 noundef %35, i32 noundef %address) #11
  br label %exit_readbuf

if.end44:                                         ; preds = %if.end34
  %arrayidx45 = getelementptr i8, ptr %call7.i.i117, i32 10
  %36 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %37)
  %cmp47.not = icmp eq i16 %37, 1
  br i1 %cmp47.not, label %do.body.i136, label %do.end52

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %conv46 = zext i16 %37 to i32
  %dev53 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.39, i32 noundef %conv46) #11
  br label %exit_readbuf

do.body.i136:                                     ; preds = %if.end44
  %arrayidx.i129 = getelementptr i8, ptr %call7.i.i117, i32 6
  %38 = ptrtoint ptr %arrayidx.i129 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i129, align 2
  %conv.i130 = zext i8 %39 to i16
  %add5.i131 = add nuw nsw i16 %conv.i130, 255
  %add9.i132 = add nuw nsw i16 %conv.i130, 510
  %arrayidx.i129.1 = getelementptr i8, ptr %call7.i.i117, i32 7
  %40 = ptrtoint ptr %arrayidx.i129.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i129.1, align 1
  %conv.i130.1 = zext i8 %41 to i16
  %add5.i131.1 = add nuw nsw i16 %add5.i131, %conv.i130.1
  %add9.i132.1 = add nuw nsw i16 %add5.i131.1, %add9.i132
  %arrayidx.i129.2 = getelementptr i8, ptr %call7.i.i117, i32 8
  %42 = ptrtoint ptr %arrayidx.i129.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i129.2, align 8
  %conv.i130.2 = zext i8 %43 to i16
  %add5.i131.2 = add nuw nsw i16 %add5.i131.1, %conv.i130.2
  %add9.i132.2 = add nuw nsw i16 %add5.i131.2, %add9.i132.1
  %arrayidx.i129.3 = getelementptr i8, ptr %call7.i.i117, i32 9
  %44 = ptrtoint ptr %arrayidx.i129.3 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i129.3, align 1
  %conv.i130.3 = zext i8 %45 to i16
  %add5.i131.3 = add nuw nsw i16 %add5.i131.2, %conv.i130.3
  %add9.i132.3 = add nuw nsw i16 %add5.i131.3, %add9.i132.2
  %arrayidx.i129.4 = getelementptr i8, ptr %call7.i.i117, i32 10
  %46 = ptrtoint ptr %arrayidx.i129.4 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i129.4, align 2
  %conv.i130.4 = zext i8 %47 to i16
  %add5.i131.4 = add nuw nsw i16 %add5.i131.3, %conv.i130.4
  %add9.i132.4 = add nuw nsw i16 %add5.i131.4, %add9.i132.3
  %arrayidx.i129.5 = getelementptr i8, ptr %call7.i.i117, i32 11
  %48 = ptrtoint ptr %arrayidx.i129.5 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i129.5, align 1
  %conv.i130.5 = zext i8 %49 to i16
  %add5.i131.5 = add nuw nsw i16 %add5.i131.4, %conv.i130.5
  %add9.i132.5 = add i16 %add5.i131.5, %add9.i132.4
  %arrayidx.i129.6 = getelementptr i8, ptr %call7.i.i117, i32 12
  %50 = ptrtoint ptr %arrayidx.i129.6 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i129.6, align 4
  %conv.i130.6 = zext i8 %51 to i16
  %add5.i131.6 = add i16 %add5.i131.5, %conv.i130.6
  %add9.i132.6 = add i16 %add5.i131.6, %add9.i132.5
  %and.i137 = and i16 %add5.i131.6, 255
  %52 = lshr i16 %add5.i131.6, 8
  %add15.i138 = add nuw nsw i16 %and.i137, %52
  %and18.i139 = and i16 %add9.i132.6, 255
  %53 = lshr i16 %add9.i132.6, 8
  %add21.i140 = add nuw nsw i16 %and18.i139, %53
  %phi.bo.i143 = mul i16 %add21.i140, 257
  %phi.bo65.i144 = and i16 %phi.bo.i143, -256
  %and24.i145 = and i16 %add15.i138, 255
  %54 = lshr i16 %add15.i138, 8
  %add27.i146 = add nuw nsw i16 %and24.i145, %54
  %or.i147 = or i16 %phi.bo65.i144, %add27.i146
  %arrayidx58 = getelementptr i8, ptr %call7.i.i117, i32 13
  %55 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx58, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %56, i16 %or.i147)
  %cmp61.not = icmp eq i16 %56, %or.i147
  br i1 %cmp61.not, label %if.end71, label %do.end66

do.end66:                                         ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  %conv60 = zext i16 %or.i147 to i32
  %conv59 = zext i16 %56 to i32
  %dev67 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67, ptr noundef nonnull @.str.42, i32 noundef %conv59, i32 noundef %conv60) #11
  br label %exit_readbuf

if.end71:                                         ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx72 = getelementptr i8, ptr %call7.i.i117, i32 12
  %57 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx72, align 4
  %59 = ptrtoint ptr %read_val to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %read_val, align 1
  br label %exit_readbuf

exit_readbuf:                                     ; preds = %if.end71, %do.end66, %do.end52, %do.end41, %do.end32, %if.end19.exit_readbuf_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end32 ], [ -22, %do.end41 ], [ -22, %do.end52 ], [ -22, %do.end66 ], [ 0, %if.end71 ], [ 0, %if.end19.exit_readbuf_crit_edge ]
  %readbuf.1 = phi ptr [ %call7.i.i117, %do.end32 ], [ %call7.i.i117, %do.end41 ], [ %call7.i.i117, %do.end52 ], [ %call7.i.i117, %do.end66 ], [ %call7.i.i117, %if.end71 ], [ null, %if.end19.exit_readbuf_crit_edge ]
  tail call void @kfree(ptr noundef %readbuf.1) #8
  br label %exit

exit:                                             ; preds = %exit_readbuf, %if.then21.exit_crit_edge, %do.end
  %ret.1 = phi i32 [ %call16, %do.end ], [ %ret.0, %exit_readbuf ], [ -12, %if.then21.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u1_read_write_register(ptr noundef %hdev, i32 noundef %address, ptr nocapture noundef writeonly %read_val, i8 noundef zeroext %write_val, i1 noundef zeroext %read_flag) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 5, ptr %call7.i.i, align 8
  %spec.select = select i1 %read_flag, i8 -47, i8 -46
  %spec.select66 = select i1 %read_flag, i8 0, i8 %write_val
  %2 = getelementptr i8, ptr %call7.i.i, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %spec.select, ptr %2, align 1
  %4 = getelementptr i8, ptr %call7.i.i, i32 6
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select66, ptr %4, align 2
  %add.ptr = getelementptr i8, ptr %call7.i.i, i32 2
  %6 = tail call i32 @llvm.bswap.i32(i32 %address) #8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %6, ptr %add.ptr, align 2
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i.i, align 8
  %add = add i8 %9, 10
  %add.1 = add i8 %spec.select, %add
  %10 = lshr i32 %6, 24
  %11 = trunc i32 %10 to i8
  %add.2 = add i8 %add.1, %11
  %12 = lshr i32 %6, 16
  %13 = trunc i32 %12 to i8
  %add.3 = add i8 %add.2, %13
  %14 = lshr i32 %6, 8
  %15 = trunc i32 %14 to i8
  %add.4 = add i8 %add.3, %15
  %16 = trunc i32 %6 to i8
  %add.5 = add i8 %add.4, %16
  %add.6 = add i8 %spec.select66, %add.5
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 7
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %add.6, ptr %arrayidx11, align 1
  %call12 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %call12) #11
  br label %exit

if.end16:                                         ; preds = %if.end
  br i1 %read_flag, label %if.then18, label %if.end16.exit_crit_edge

if.end16.exit_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then18:                                        ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i63 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 8) #12
  %tobool20.not = icmp eq ptr %call7.i.i63, null
  br i1 %tobool20.not, label %if.then18.exit_crit_edge, label %if.end22

if.then18.exit_crit_edge:                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end22:                                         ; preds = %if.then18
  %call23 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext 5, ptr noundef nonnull %call7.i.i63, i32 noundef 8, i8 noundef zeroext 2, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end29, label %if.end31

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %dev30 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.33, i32 noundef %call23) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #8
  br label %exit

if.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx32 = getelementptr i8, ptr %call7.i.i63, i32 6
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx32, align 2
  %21 = ptrtoint ptr %read_val to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %read_val, align 1
  tail call void @kfree(ptr noundef nonnull %call7.i.i63) #8
  br label %exit

exit:                                             ; preds = %if.end31, %do.end29, %if.then18.exit_crit_edge, %if.end16.exit_crit_edge, %do.end
  %ret.0 = phi i32 [ %call12, %do.end ], [ %call23, %do.end29 ], [ -12, %if.then18.exit_crit_edge ], [ 0, %if.end31 ], [ 0, %if.end16.exit_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !137, !138, !139, !140, !142, !143, !144, !146, !147, !149}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @__initcall__kmod_hid_alps__224_853_alps_driver_init6, !1, !"__initcall__kmod_hid_alps__224_853_alps_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-alps.c", i32 853, i32 1}
!2 = !{ptr @__exitcall_alps_driver_exit, !1, !"__exitcall_alps_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-alps.c", i32 855, i32 1}
!5 = !{ptr @__UNIQUE_ID_description226, !6, !"__UNIQUE_ID_description226", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-alps.c", i32 856, i32 1}
!7 = !{ptr @__UNIQUE_ID_file227, !8, !"__UNIQUE_ID_file227", i1 false, i1 false}
!8 = !{!"../drivers/hid/hid-alps.c", i32 857, i32 1}
!9 = !{ptr @__UNIQUE_ID_license228, !8, !"__UNIQUE_ID_license228", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hid/hid-alps.c", i32 840, i32 10}
!13 = !{ptr @alps_driver, !14, !"alps_driver", i1 false, i1 false}
!14 = !{!"../drivers/hid/hid-alps.c", i32 839, i32 26}
!15 = !{ptr @alps_id, !16, !"alps_id", i1 false, i1 false}
!16 = !{!"../drivers/hid/hid-alps.c", i32 828, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hid/hid-alps.c", i32 797, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @alps_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @alps_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-alps.c", i32 816, i32 3}
!27 = !{ptr @alps_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @alps_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hid/hid-alps.c", i32 683, i32 2}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @alps_input_configured.__UNIQUE_ID_ddebug223, !30, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hid/hid-alps.c", i32 740, i32 18}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/hid.h", i32 963, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hid_device_io_start._entry, !36, !"_entry", i1 false, i1 false}
!41 = !{ptr @hid_device_io_start._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-alps.c", i32 616, i32 3}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @T4_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @T4_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hid/hid-alps.c", i32 631, i32 3}
!49 = !{ptr @T4_init._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @T4_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @T4_init._entry.22, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-alps.c", i32 637, i32 3}
!53 = !{ptr @T4_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hid/hid-alps.c", i32 644, i32 3}
!56 = !{ptr @T4_init._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @T4_init._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hid/hid-alps.c", i32 651, i32 3}
!60 = !{ptr @T4_init._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @T4_init._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hid/hid-alps.c", i32 200, i32 3}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @t4_read_write_register._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @t4_read_write_register._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-alps.c", i32 215, i32 4}
!69 = !{ptr @t4_read_write_register._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @t4_read_write_register._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-alps.c", i32 222, i32 4}
!73 = !{ptr @t4_read_write_register._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @t4_read_write_register._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-alps.c", i32 228, i32 4}
!77 = !{ptr @t4_read_write_register._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @t4_read_write_register._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-alps.c", i32 235, i32 4}
!81 = !{ptr @t4_read_write_register._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @t4_read_write_register._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-alps.c", i32 507, i32 3}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @u1_init._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @u1_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hid/hid-alps.c", i32 516, i32 3}
!90 = !{ptr @u1_init._entry.46, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @u1_init._entry_ptr.48, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hid/hid-alps.c", i32 523, i32 3}
!94 = !{ptr @u1_init._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @u1_init._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hid/hid-alps.c", i32 530, i32 3}
!98 = !{ptr @u1_init._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @u1_init._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hid/hid-alps.c", i32 537, i32 3}
!102 = !{ptr @u1_init._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @u1_init._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hid/hid-alps.c", i32 544, i32 3}
!106 = !{ptr @u1_init._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @u1_init._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hid/hid-alps.c", i32 551, i32 3}
!110 = !{ptr @u1_init._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @u1_init._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hid/hid-alps.c", i32 569, i32 3}
!114 = !{ptr @u1_init._entry.64, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @u1_init._entry_ptr.66, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.68, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hid/hid-alps.c", i32 584, i32 3}
!118 = !{ptr @u1_init._entry.67, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @u1_init._entry_ptr.69, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.71, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hid/hid-alps.c", i32 592, i32 4}
!122 = !{ptr @u1_init._entry.70, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @u1_init._entry_ptr.72, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.74, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hid/hid-alps.c", i32 599, i32 4}
!126 = !{ptr @u1_init._entry.73, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @u1_init._entry_ptr.75, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.76, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hid/hid-alps.c", i32 286, i32 3}
!130 = !{ptr @u1_read_write_register._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @u1_read_write_register._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @u1_read_write_register._entry.77, !133, !"_entry", i1 false, i1 false}
!133 = !{!"../drivers/hid/hid-alps.c", i32 302, i32 4}
!134 = !{ptr @u1_read_write_register._entry_ptr.78, !133, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.79, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/hid.h", i32 983, i32 3}
!137 = !{ptr @.str.80, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @hid_device_io_stop._entry, !136, !"_entry", i1 false, i1 false}
!139 = !{ptr @hid_device_io_stop._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.81, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hid/hid-alps.c", i32 461, i32 4}
!142 = !{ptr @alps_post_reset._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @alps_post_reset._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @alps_post_reset._entry.82, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/hid/hid-alps.c", i32 469, i32 4}
!146 = !{ptr @alps_post_reset._entry_ptr.83, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @alps_post_reset._entry.84, !148, !"_entry", i1 false, i1 false}
!148 = !{!"../drivers/hid/hid-alps.c", i32 479, i32 4}
!149 = !{ptr @alps_post_reset._entry_ptr.85, !148, !"_entry_ptr", i1 false, i1 false}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!159 = !{i64 2148709938, i64 2148709943, i64 2148709956, i64 2148710000, i64 2148710034, i64 2148710055}
!160 = !{i8 0, i8 2}
!161 = !{!"auto-init"}
