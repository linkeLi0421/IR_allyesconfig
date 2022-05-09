; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/dw9768.c_pt.bc'
source_filename = "../drivers/media/i2c/dw9768.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dw9768 = type { [2 x %struct.regulator_bulk_data], %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_subdev, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__initcall__kmod_dw9768__293_546_dw9768_i2c_driver_init6 = internal global ptr @dw9768_i2c_driver_init, section ".initcall6.init", align 4
@dw9768_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @dw9768_remove, ptr @dw9768_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw9768_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9768_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dw9768_i2c_driver_exit = internal global ptr @dw9768_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [55 x i8] c"dw9768.author=Dongchun Zhu <dongchun.zhu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [37 x i8] c"dw9768.description=DW9768 VCM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [37 x i8] c"dw9768.file=drivers/media/i2c/dw9768\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [22 x i8] c"dw9768.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw9768\00", [25 x i8] zeroinitializer }, align 32
@dw9768_of_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dongwoon,dw9768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"giantec,gt9769\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@dw9768_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9768_runtime_suspend, ptr @dw9768_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw9768_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"I2C write fail: %d\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw9768_release\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/dw9768.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw9768_release._entry_ptr = internal global ptr @dw9768_release._entry, section ".printk_index", align 4
@dw9768_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dongwoon,aac-mode\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dongwoon,clock-presc\00", [43 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dongwoon,aac-timing\00", [44 x i8] zeroinitializer }, align 32
@dw9768_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dw9768_probe\00", [19 x i8] zeroinitializer }, align 32
@dw9768_probe._entry_ptr = internal global ptr @dw9768_probe._entry, section ".printk_index", align 4
@dw9768_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @dw9768_open, ptr @dw9768_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@dw9768_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to power on: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dw9768_probe._entry_ptr.13 = internal global ptr @dw9768_probe._entry.11, section ".printk_index", align 4
@dw9768_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register V4L2 subdev: %d\00", [61 x i8] zeroinitializer }, align 32
@dw9768_probe._entry_ptr.16 = internal global ptr @dw9768_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@dw9768_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @dw9768_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@dw9768_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw9768:399:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@dw9768_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable regulators\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw9768_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@dw9768_runtime_resume._entry_ptr = internal global ptr @dw9768_runtime_resume._entry, section ".printk_index", align 4
@dw9768_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C failure: %d\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dw9768_init\00", [20 x i8] zeroinitializer }, align 32
@dw9768_init._entry_ptr = internal global ptr @dw9768_init._entry, section ".printk_index", align 4
@switch.table.dw9768_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 48, i32 70, i32 75, i32 70, i32 113], [44 x i8] zeroinitializer }, align 32
@switch.table.dw9768_probe.24 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 200, i32 100, i32 50, i32 25, i32 800, i32 400], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"dw9768_i2c_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 537, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 539, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"dw9768_of_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 524, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"dw9768_pm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 531, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 295, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"dw9768_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 392, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 432, i32 44 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 436, i32 44 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 440, i32 44 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 453, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"dw9768_int_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 387, i32 46 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 481, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 488, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 96, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 97, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"dw9768_ctrl_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 371, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 399, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 337, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [30 x i8] c"../drivers/media/i2c/dw9768.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 276, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"switch.table.dw9768_probe\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"switch.table.dw9768_probe.24\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_dw9768_i2c_driver_exit, ptr @__initcall__kmod_dw9768__293_546_dw9768_i2c_driver_init6, ptr @dw9768_i2c_driver_exit, ptr @dw9768_init._entry, ptr @dw9768_init._entry_ptr, ptr @dw9768_probe._entry, ptr @dw9768_probe._entry.11, ptr @dw9768_probe._entry.14, ptr @dw9768_probe._entry_ptr, ptr @dw9768_probe._entry_ptr.13, ptr @dw9768_probe._entry_ptr.16, ptr @dw9768_release._entry, ptr @dw9768_release._entry_ptr, ptr @dw9768_runtime_resume._entry, ptr @dw9768_runtime_resume._entry_ptr, ptr @dw9768_i2c_driver, ptr @.str, ptr @dw9768_of_table, ptr @dw9768_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dw9768_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dw9768_int_ops, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @dw9768_ctrl_ops, ptr @dw9768_init_controls._key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.dw9768_probe, ptr @switch.table.dw9768_probe.24], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_of_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9768_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw9768_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dw9768_probe.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dw9768_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw9768_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @dw9768_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  %ctrls = getelementptr i8, ptr %1, i32 -188
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @dw9768_runtime_suspend(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 424, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 3
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @dw9768_ops) #6
  %aac_mode = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 4
  %0 = ptrtoint ptr %aac_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %aac_mode, align 4
  %aac_timing = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %aac_timing to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 32, ptr %aac_timing, align 4
  %clock_presc = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %clock_presc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %clock_presc, align 4
  %call2 = tail call ptr @dev_fwnode(ptr noundef %dev1) #6
  %call.i111 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %call2, ptr noundef nonnull @.str.6, ptr noundef %aac_mode, i32 noundef 1) #6
  %call5 = tail call ptr @dev_fwnode(ptr noundef %dev1) #6
  %call.i112 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %call5, ptr noundef nonnull @.str.7, ptr noundef %clock_presc, i32 noundef 1) #6
  %call8 = tail call ptr @dev_fwnode(ptr noundef %dev1) #6
  %call.i113 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %call8, ptr noundef nonnull @.str.8, ptr noundef %aac_timing, i32 noundef 1) #6
  %3 = ptrtoint ptr %aac_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %aac_mode, align 4
  %5 = ptrtoint ptr %clock_presc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clock_presc, align 4
  %7 = ptrtoint ptr %aac_timing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %aac_timing, align 4
  %switch.tableidx = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 5
  br i1 %9, label %switch.lookup, label %if.end.dw9768_find_ot_multi.exit.i_crit_edge

if.end.dw9768_find_ot_multi.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw9768_find_ot_multi.exit.i

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.dw9768_probe, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %dw9768_find_ot_multi.exit.i

dw9768_find_ot_multi.exit.i:                      ; preds = %switch.lookup, %if.end.dw9768_find_ot_multi.exit.i_crit_edge
  %cur_ot_multi_base100.1.3.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 70, %if.end.dw9768_find_ot_multi.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %6)
  %11 = icmp ult i32 %6, 6
  br i1 %11, label %switch.lookup122, label %dw9768_find_ot_multi.exit.i.dw9768_cal_move_delay.exit_crit_edge

dw9768_find_ot_multi.exit.i.dw9768_cal_move_delay.exit_crit_edge: ; preds = %dw9768_find_ot_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw9768_cal_move_delay.exit

switch.lookup122:                                 ; preds = %dw9768_find_ot_multi.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep123 = getelementptr inbounds [6 x i32], ptr @switch.table.dw9768_probe.24, i32 0, i32 %6
  %12 = ptrtoint ptr %switch.gep123 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load124 = load i32, ptr %switch.gep123, align 4
  br label %dw9768_cal_move_delay.exit

dw9768_cal_move_delay.exit:                       ; preds = %switch.lookup122, %dw9768_find_ot_multi.exit.i.dw9768_cal_move_delay.exit_crit_edge
  %cur_clk_dividing_rate_base100.1.5.i.i = phi i32 [ %switch.load124, %switch.lookup122 ], [ 100, %dw9768_find_ot_multi.exit.i.dw9768_cal_move_delay.exit_crit_edge ]
  %add.i = add i32 %8, 63
  %mul.i = mul i32 %cur_ot_multi_base100.1.3.i.i, %add.i
  %mul2.i = mul i32 %mul.i, %cur_clk_dividing_rate_base100.1.5.i.i
  %div.i = udiv i32 %mul2.i, 100
  %move_delay_us = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %move_delay_us to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div.i, ptr %move_delay_us, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.17, ptr %call.i, align 4
  %arrayidx15.1 = getelementptr [2 x %struct.regulator_bulk_data], ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.18, ptr %arrayidx15.1, align 4
  %call17 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end

do.end:                                           ; preds = %dw9768_cal_move_delay.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end20:                                         ; preds = %dw9768_cal_move_delay.exit
  %ctrls.i = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 1
  %call.i114 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrls.i, i32 noundef 1, ptr noundef nonnull @dw9768_init_controls._key, ptr noundef nonnull @.str.19) #6
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrls.i, ptr noundef nonnull @dw9768_ctrl_ops, i32 noundef 10094858, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 0) #6
  %focus.i = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %focus.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %focus.i, align 4
  %error.i = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end24, label %if.end20.err_free_handler_crit_edge

if.end20.err_free_handler_crit_edge:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_handler

if.end24:                                         ; preds = %if.end20
  %ctrl_handler.i = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ctrls.i, ptr %ctrl_handler.i, align 4
  %flags = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 3, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dw9768_int_ops, ptr %internal_ops, align 4
  %call28 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end24.err_free_handler_crit_edge, label %if.end31

if.end24.err_free_handler_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_handler

if.end31:                                         ; preds = %if.end24
  %function = getelementptr inbounds %struct.dw9768, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %23 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 131075, ptr %function, align 4
  %call.i115 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %24 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i116 = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i116, label %if.end31.if.end44_crit_edge, label %if.then36

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then36:                                        ; preds = %if.end31
  %call37 = tail call i32 @dw9768_runtime_resume(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.then36.if.end44_crit_edge

if.then36.if.end44_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.end42:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call37) #9
  br label %err_free_handler

if.end44:                                         ; preds = %if.then36.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %call46 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end52

do.end51:                                         ; preds = %if.end44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call46) #9
  %25 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load.i118 = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i118)
  %tobool.not.i119 = icmp ult i16 %bf.load.i118, 8192
  br i1 %tobool.not.i119, label %if.then55, label %if.else

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %call.i120 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #6
  br label %cleanup

if.then55:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %err_free_handler

if.else:                                          ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call i32 @dw9768_runtime_suspend(ptr noundef %dev1)
  br label %err_free_handler

err_free_handler:                                 ; preds = %if.else, %if.then55, %do.end42, %if.end24.err_free_handler_crit_edge, %if.end20.err_free_handler_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end24.err_free_handler_crit_edge ], [ %18, %if.end20.err_free_handler_crit_edge ], [ %call46, %if.then55 ], [ %call46, %if.else ], [ %call37, %do.end42 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrls.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_handler, %if.end52, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end ], [ %ret.1, %err_free_handler ], [ 0, %if.end52 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %focus.i = getelementptr i8, ptr %1, i32 -4
  %4 = ptrtoint ptr %focus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %focus.i, align 4
  %val1.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %val1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val1.i, align 4
  %and.i = and i32 %7, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %and.i)
  %cmp1.i = icmp sgt i32 %and.i, -1
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %move_delay_us.i = getelementptr i8, ptr %1, i32 208
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %val.02.i = phi i32 [ %and.i, %for.body.lr.ph.i ], [ %sub.i, %if.end.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %val.02.i to i16
  %8 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i, align 4
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %9, i8 noundef zeroext 3, i16 noundef zeroext %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.1, i32 noundef %call.i.i.i) #9
  br label %dw9768_release.exit

if.end.i:                                         ; preds = %for.body.i
  %11 = ptrtoint ptr %move_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %move_delay_us.i, align 4
  %add.i = add i32 %12, 1000
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %add.i, i32 noundef 2) #6
  %sub.i = add nsw i32 %val.02.i, -16
  %cmp.i = icmp sgt i32 %val.02.i, 15
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %for.end.i.dw9768_release.exit_crit_edge, label %if.end8.i

for.end.i.dw9768_release.exit_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw9768_release.exit

if.end8.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  br label %dw9768_release.exit

dw9768_release.exit:                              ; preds = %if.end8.i, %for.end.i.dw9768_release.exit_crit_edge, %do.end.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -212
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %add.ptr.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -212
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %add.ptr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.disable_regulator_crit_edge, label %if.end.i

if.end.disable_regulator_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end.i:                                         ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.disable_regulator_crit_edge, label %if.end5.i

if.end.i.disable_regulator_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end5.i:                                        ; preds = %if.end.i
  %aac_mode.i = getelementptr i8, ptr %1, i32 196
  %4 = ptrtoint ptr %aac_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aac_mode.i, align 4
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.end5.i.disable_regulator_crit_edge, label %dw9768_mod_reg.exit.i

if.end5.i.disable_regulator_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

dw9768_mod_reg.exit.i:                            ; preds = %if.end5.i
  %.tr.i = trunc i32 %5 to i8
  %conv.i = shl i8 %.tr.i, 5
  %8 = trunc i32 %call1.i.i to i8
  %9 = and i8 %8, 31
  %conv7.i.i = or i8 %9, %conv.i
  %call8.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 6, i8 noundef zeroext %conv7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp7.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp7.i, label %dw9768_mod_reg.exit.i.disable_regulator_crit_edge, label %if.end10.i

dw9768_mod_reg.exit.i.disable_regulator_crit_edge: ; preds = %dw9768_mod_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end10.i:                                       ; preds = %dw9768_mod_reg.exit.i
  %clock_presc.i = getelementptr i8, ptr %1, i32 204
  %10 = ptrtoint ptr %clock_presc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clock_presc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp11.not.i = icmp eq i32 %11, 1
  br i1 %cmp11.not.i, label %if.end10.i.if.end21.i_crit_edge, label %if.then13.i

if.end10.i.if.end21.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end10.i
  %12 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i77.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77.i)
  %cmp.i78.i = icmp slt i32 %call1.i77.i, 0
  br i1 %cmp.i78.i, label %if.then13.i.disable_regulator_crit_edge, label %dw9768_mod_reg.exit84.i

if.then13.i.disable_regulator_crit_edge:          ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

dw9768_mod_reg.exit84.i:                          ; preds = %if.then13.i
  %conv15.i = trunc i32 %11 to i8
  %and61.i.i = and i8 %conv15.i, 7
  %14 = trunc i32 %call1.i77.i to i8
  %15 = and i8 %14, -8
  %conv7.i80.i = or i8 %15, %and61.i.i
  %call8.i81.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 6, i8 noundef zeroext %conv7.i80.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i81.i)
  %cmp17.i = icmp slt i32 %call8.i81.i, 0
  br i1 %cmp17.i, label %dw9768_mod_reg.exit84.i.disable_regulator_crit_edge, label %dw9768_mod_reg.exit84.i.if.end21.i_crit_edge

dw9768_mod_reg.exit84.i.if.end21.i_crit_edge:     ; preds = %dw9768_mod_reg.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

dw9768_mod_reg.exit84.i.disable_regulator_crit_edge: ; preds = %dw9768_mod_reg.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end21.i:                                       ; preds = %dw9768_mod_reg.exit84.i.if.end21.i_crit_edge, %if.end10.i.if.end21.i_crit_edge
  %aac_timing.i = getelementptr i8, ptr %1, i32 200
  %16 = ptrtoint ptr %aac_timing.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aac_timing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp22.not.i = icmp eq i32 %17, 32
  br i1 %cmp22.not.i, label %if.end21.i.if.end32.i_crit_edge, label %if.then24.i

if.end21.i.if.end32.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then24.i:                                      ; preds = %if.end21.i
  %conv26.i = trunc i32 %17 to i8
  %call27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 7, i8 noundef zeroext %conv26.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %if.then24.i.disable_regulator_crit_edge, label %if.then24.i.if.end32.i_crit_edge

if.then24.i.if.end32.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then24.i.disable_regulator_crit_edge:          ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

if.end32.i:                                       ; preds = %if.then24.i.if.end32.i_crit_edge, %if.end21.i.if.end32.i_crit_edge
  %focus.i = getelementptr i8, ptr %1, i32 -4
  %18 = ptrtoint ptr %focus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %focus.i, align 4
  %val33.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %val33.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val33.i, align 4
  %rem.i = srem i32 %21, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %21)
  %cmp36.not91.i = icmp sgt i32 %rem.i, %21
  br i1 %cmp36.not91.i, label %if.end32.i.cleanup_crit_edge, label %for.body.lr.ph.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end32.i
  %move_delay_us.i = getelementptr i8, ptr %1, i32 208
  br label %for.body.i

for.body.i:                                       ; preds = %if.end41.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %val.092.i = phi i32 [ %rem.i, %for.body.lr.ph.i ], [ %add43.i, %if.end41.i.for.body.i_crit_edge ]
  %conv38.i = trunc i32 %val.092.i to i16
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv38.i) #6
  %call.i.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %23, i8 noundef zeroext 3, i16 noundef zeroext %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end41.i, label %dw9768_init.exit

if.end41.i:                                       ; preds = %for.body.i
  %25 = ptrtoint ptr %move_delay_us.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %move_delay_us.i, align 4
  %add.i = add i32 %26, 1000
  tail call void @usleep_range_state(i32 noundef %26, i32 noundef %add.i, i32 noundef 2) #6
  %add43.i = add i32 %val.092.i, 16
  %27 = ptrtoint ptr %focus.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %focus.i, align 4
  %val35.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 22
  %29 = ptrtoint ptr %val35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val35.i, align 4
  %cmp36.not.i = icmp sgt i32 %add43.i, %30
  br i1 %cmp36.not.i, label %if.end41.i.cleanup_crit_edge, label %if.end41.i.for.body.i_crit_edge

if.end41.i.for.body.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end41.i.cleanup_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dw9768_init.exit:                                 ; preds = %for.body.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %call.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp4 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp4, label %dw9768_init.exit.disable_regulator_crit_edge, label %dw9768_init.exit.cleanup_crit_edge

dw9768_init.exit.cleanup_crit_edge:               ; preds = %dw9768_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

dw9768_init.exit.disable_regulator_crit_edge:     ; preds = %dw9768_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulator

disable_regulator:                                ; preds = %dw9768_init.exit.disable_regulator_crit_edge, %if.then24.i.disable_regulator_crit_edge, %dw9768_mod_reg.exit84.i.disable_regulator_crit_edge, %if.then13.i.disable_regulator_crit_edge, %dw9768_mod_reg.exit.i.disable_regulator_crit_edge, %if.end5.i.disable_regulator_crit_edge, %if.end.i.disable_regulator_crit_edge, %if.end.disable_regulator_crit_edge
  %retval.0.i20 = phi i32 [ %call.i.i.i, %dw9768_init.exit.disable_regulator_crit_edge ], [ %call1.i77.i, %if.then13.i.disable_regulator_crit_edge ], [ %call1.i.i, %if.end5.i.disable_regulator_crit_edge ], [ %call27.i, %if.then24.i.disable_regulator_crit_edge ], [ %call8.i81.i, %dw9768_mod_reg.exit84.i.disable_regulator_crit_edge ], [ %call8.i.i, %dw9768_mod_reg.exit.i.disable_regulator_crit_edge ], [ %call2.i, %if.end.i.disable_regulator_crit_edge ], [ %call1.i, %if.end.disable_regulator_crit_edge ]
  %call9 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %add.ptr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_regulator, %dw9768_init.exit.cleanup_crit_edge, %if.end41.i.cleanup_crit_edge, %if.end32.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ %retval.0.i20, %disable_regulator ], [ 0, %dw9768_init.exit.cleanup_crit_edge ], [ 0, %if.end32.i.cleanup_crit_edge ], [ 0, %if.end41.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10094858, i32 %1)
  %cmp = icmp eq i32 %1, 10094858
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %conv = trunc i32 %5 to i16
  %dev_priv.i.i = getelementptr i8, ptr %3, i32 340
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 3, i16 noundef zeroext %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %entry.pm_runtime_resume_and_get.exit_crit_edge

entry.pm_runtime_resume_and_get.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !84
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !85
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9768_close(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 14
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_dw9768__293_546_dw9768_i2c_driver_init6, !1, !"__initcall__kmod_dw9768__293_546_dw9768_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/dw9768.c", i32 546, i32 1}
!2 = !{ptr @__exitcall_dw9768_i2c_driver_exit, !1, !"__exitcall_dw9768_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/dw9768.c", i32 548, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/dw9768.c", i32 549, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/dw9768.c", i32 550, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/dw9768.c", i32 539, i32 11}
!12 = !{ptr @dw9768_i2c_driver, !13, !"dw9768_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/dw9768.c", i32 537, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/dw9768.c", i32 295, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dw9768_release._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dw9768_release._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/dw9768.c", i32 432, i32 44}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/dw9768.c", i32 436, i32 44}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/dw9768.c", i32 440, i32 44}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/dw9768.c", i32 453, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @dw9768_probe._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @dw9768_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/i2c/dw9768.c", i32 481, i32 4}
!35 = !{ptr @dw9768_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dw9768_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/dw9768.c", i32 488, i32 3}
!39 = !{ptr @dw9768_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dw9768_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @dw9768_ops, !42, !"dw9768_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/dw9768.c", i32 392, i32 37}
!43 = distinct !{null, !44, !"aac_mode_ot_multi", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/dw9768.c", i32 133, i32 46}
!45 = distinct !{null, !46, !"presc_dividing_rate", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/dw9768.c", i32 140, i32 52}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/dw9768.c", i32 96, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/dw9768.c", i32 97, i32 2}
!51 = distinct !{null, !52, !"dw9768_supply_names", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/dw9768.c", i32 95, i32 27}
!53 = !{ptr @dw9768_init_controls._key, !54, !"_key", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/dw9768.c", i32 399, i32 2}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dw9768_ctrl_ops, !57, !"dw9768_ctrl_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/dw9768.c", i32 371, i32 35}
!58 = !{ptr @dw9768_int_ops, !59, !"dw9768_int_ops", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/dw9768.c", i32 387, i32 46}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/dw9768.c", i32 337, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dw9768_runtime_resume._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @dw9768_runtime_resume._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/dw9768.c", i32 276, i32 4}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dw9768_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dw9768_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @dw9768_of_table, !71, !"dw9768_of_table", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/dw9768.c", i32 524, i32 34}
!72 = !{ptr @dw9768_pm_ops, !73, !"dw9768_pm_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/dw9768.c", i32 531, i32 32}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i64 2148200311}
!84 = !{i64 685134, i64 685159, i64 685181, i64 685197, i64 685209, i64 685229, i64 685253, i64 685269, i64 685281}
!85 = !{i64 2148200499}
