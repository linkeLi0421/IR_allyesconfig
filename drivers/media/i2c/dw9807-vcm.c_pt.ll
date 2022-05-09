; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/dw9807-vcm.c_pt.bc'
source_filename = "../drivers/media/i2c/dw9807-vcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dw9807_device = type { %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16 }
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

@__initcall__kmod_dw9807_vcm__293_317_dw9807_i2c_driver_init6 = internal global ptr @dw9807_i2c_driver_init, section ".initcall6.init", align 4
@dw9807_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @dw9807_remove, ptr @dw9807_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw9807_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9807_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dw9807_i2c_driver_exit = internal global ptr @dw9807_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [31 x i8] c"dw9807_vcm.author=Chiang, Alan\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [41 x i8] c"dw9807_vcm.description=DW9807 VCM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [45 x i8] c"dw9807_vcm.file=drivers/media/i2c/dw9807-vcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [26 x i8] c"dw9807_vcm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw9807\00", [25 x i8] zeroinitializer }, align 32
@dw9807_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dongwoon,dw9807-vcm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw9807_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw9807_vcm_suspend, ptr @dw9807_vcm_resume, ptr @dw9807_vcm_suspend, ptr @dw9807_vcm_resume, ptr @dw9807_vcm_suspend, ptr @dw9807_vcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9807_vcm_suspend, ptr @dw9807_vcm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw9807_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } zeroinitializer, align 32
@dw9807_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @dw9807_open, ptr @dw9807_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@dw9807_vcm_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @dw9807_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@dw9807_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dw9807_vcm:163:(hdl)->_lock\00", [36 x i8] zeroinitializer }, align 32
@dw9807_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s fail error: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw9807_init_controls\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/i2c/dw9807-vcm.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw9807_init_controls._entry_ptr = internal global ptr @dw9807_init_controls._entry, section ".printk_index", align 4
@dw9807_set_dac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 94, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cannot do the write operation because VCM is busy\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dw9807_set_dac\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dw9807_set_dac._entry_ptr = internal global ptr @dw9807_set_dac._entry, section ".printk_index", align 4
@dw9807_set_dac._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"I2C write MSB fail ret=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@dw9807_set_dac._entry_ptr.12 = internal global ptr @dw9807_set_dac._entry.10, section ".printk_index", align 4
@dw9807_i2c_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"I2C write STATUS address fail ret = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw9807_i2c_check\00", [47 x i8] zeroinitializer }, align 32
@dw9807_i2c_check._entry_ptr = internal global ptr @dw9807_i2c_check._entry, section ".printk_index", align 4
@dw9807_i2c_check._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"I2C read STATUS value fail ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dw9807_i2c_check._entry_ptr.17 = internal global ptr @dw9807_i2c_check._entry.15, section ".printk_index", align 4
@dw9807_vcm_suspend.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dw9807_vcm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 248, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s I2C failure: %d\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dw9807_vcm_suspend\00", [45 x i8] zeroinitializer }, align 32
@dw9807_vcm_suspend._entry_ptr = internal global ptr @dw9807_vcm_suspend._entry, section ".printk_index", align 4
@dw9807_vcm_suspend._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I2C write CTL fail ret = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@dw9807_vcm_suspend._entry_ptr.22 = internal global ptr @dw9807_vcm_suspend._entry.20, section ".printk_index", align 4
@dw9807_vcm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.23, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw9807_vcm_resume\00", [46 x i8] zeroinitializer }, align 32
@dw9807_vcm_resume._entry_ptr = internal global ptr @dw9807_vcm_resume._entry, section ".printk_index", align 4
@dw9807_vcm_resume._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@dw9807_vcm_resume._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.23, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dw9807_vcm_resume._entry_ptr.26 = internal global ptr @dw9807_vcm_resume._entry.25, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"dw9807_i2c_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 307, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 309, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"dw9807_of_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 296, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"dw9807_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 302, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"dw9807_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 148, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [15 x i8] c"dw9807_int_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 143, i32 46 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"dw9807_vcm_ctrl_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 127, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 163, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 170, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 93, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 103, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 61, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 68, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 248, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 255, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 279, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private constant [34 x i8] c"../drivers/media/i2c/dw9807-vcm.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 288, i32 4 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_dw9807_i2c_driver_exit, ptr @__initcall__kmod_dw9807_vcm__293_317_dw9807_i2c_driver_init6, ptr @dw9807_i2c_check._entry, ptr @dw9807_i2c_check._entry.15, ptr @dw9807_i2c_check._entry_ptr, ptr @dw9807_i2c_check._entry_ptr.17, ptr @dw9807_i2c_driver_exit, ptr @dw9807_init_controls._entry, ptr @dw9807_init_controls._entry_ptr, ptr @dw9807_set_dac._entry, ptr @dw9807_set_dac._entry.10, ptr @dw9807_set_dac._entry_ptr, ptr @dw9807_set_dac._entry_ptr.12, ptr @dw9807_vcm_resume._entry, ptr @dw9807_vcm_resume._entry.25, ptr @dw9807_vcm_resume._entry_ptr, ptr @dw9807_vcm_resume._entry_ptr.26, ptr @dw9807_vcm_suspend._entry, ptr @dw9807_vcm_suspend._entry.20, ptr @dw9807_vcm_suspend._entry_ptr, ptr @dw9807_vcm_suspend._entry_ptr.22, ptr @dw9807_i2c_driver, ptr @.str, ptr @dw9807_of_table, ptr @dw9807_pm_ops, ptr @dw9807_ops, ptr @dw9807_int_ops, ptr @dw9807_vcm_ctrl_ops, ptr @dw9807_init_controls._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @dw9807_vcm_resume._rs, ptr @.str.24], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_set_dac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_set_dac._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_i2c_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_i2c_check._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_suspend._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_resume._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9807_vcm_resume._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dw9807_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw9807_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @dw9807_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %add.ptr.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 384, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @dw9807_ops) #6
  %flags = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 4
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw9807_int_ops, ptr %internal_ops, align 4
  %dev_priv.i.i = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @dw9807_init_controls._key, ptr noundef nonnull @.str.1) #6
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @dw9807_vcm_ctrl_ops, i32 noundef 10094858, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 0) #6
  %ctrl_handler.i = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %ctrl_handler.i, align 4
  %error.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %dw9807_init_controls.exit

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

dw9807_init_controls.exit:                        ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %7) #9
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %dw9807_init_controls.exit.if.end5_crit_edge, label %dw9807_init_controls.exit.err_cleanup_crit_edge

dw9807_init_controls.exit.err_cleanup_crit_edge:  ; preds = %dw9807_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

dw9807_init_controls.exit.if.end5_crit_edge:      ; preds = %dw9807_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %dw9807_init_controls.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call7 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.err_cleanup_crit_edge, label %if.end10

if.end5.err_cleanup_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end10:                                         ; preds = %if.end5
  %function = getelementptr inbounds %struct.dw9807_device, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 131075, ptr %function, align 4
  %call14 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end10.err_cleanup_crit_edge, label %if.end17

if.end10.err_cleanup_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call.i42 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i43 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup

err_cleanup:                                      ; preds = %if.end10.err_cleanup_crit_edge, %if.end5.err_cleanup_crit_edge, %dw9807_init_controls.exit.err_cleanup_crit_edge
  %rval.0 = phi i32 [ %9, %dw9807_init_controls.exit.err_cleanup_crit_edge ], [ %call7, %if.end5.err_cleanup_crit_edge ], [ %call14, %if.end10.err_cleanup_crit_edge ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rval.0, %err_cleanup ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_close(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
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
  %dev_priv.i = getelementptr inbounds %struct.dw9807_device, ptr %3, i32 0, i32 1, i32 11
  %4 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %conv = trunc i32 %7 to i16
  %current_val = getelementptr inbounds %struct.dw9807_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %current_val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %current_val, align 4
  %9 = load i32, ptr %val, align 4
  %conv2 = trunc i32 %9 to i16
  %call3 = tail call fastcc i32 @dw9807_set_dac(ptr noundef %5, i16 noundef zeroext %conv2)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw9807_set_dac(ptr noundef %client, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %status_addr.i75 = alloca i8, align 1
  %status_result.i76 = alloca i8, align 1
  %status_addr.i = alloca i8, align 1
  %status_result.i = alloca i8, align 1
  %tx_data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tx_data) #6
  %0 = getelementptr inbounds [3 x i8], ptr %tx_data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %tx_data, i32 0, i32 2
  %2 = ptrtoint ptr %tx_data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %tx_data, align 1
  %3 = lshr i16 %data, 8
  %4 = trunc i16 %3 to i8
  %conv1 = and i8 %4, 3
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %0, align 1
  %conv5 = trunc i16 %data to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv5, ptr %1, align 1
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 89) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_addr.i) #6
  %7 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 5, ptr %status_addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_result.i) #6
  %8 = ptrtoint ptr %status_result.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %status_result.i, align 1, !annotation !85
  %call.i.i109 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %status_addr.i, i32 noundef 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %cmp.i110 = icmp slt i32 %call.i.i109, 0
  br i1 %cmp.i110, label %entry.do.end.i_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then27.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.i.i.lcssa = phi i32 [ %call.i.i109, %entry.do.end.i_crit_edge ], [ %call.i.i, %if.then27.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.lcssa) #9
  br label %for.end.thread

if.end.i:                                         ; preds = %if.then27.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call.i19.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %status_result.i, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp2.i = icmp slt i32 %call.i19.i, 0
  br i1 %cmp2.i, label %do.end6.i, label %dw9807_i2c_check.exit

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i, ptr noundef nonnull @.str.16, i32 noundef %call.i19.i) #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %do.end6.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call.i19.i, %do.end6.i ], [ %call.i.i.lcssa, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_addr.i) #6
  br label %cleanup

dw9807_i2c_check.exit:                            ; preds = %if.end.i
  %9 = ptrtoint ptr %status_result.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %status_result.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_result.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_addr.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp15 = icmp eq i8 %10, 0
  br i1 %cmp15, label %dw9807_i2c_check.exit.if.end44_crit_edge, label %land.lhs.true

dw9807_i2c_check.exit.if.end44_crit_edge:         ; preds = %dw9807_i2c_check.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true:                                    ; preds = %dw9807_i2c_check.exit
  %call19 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then23, label %if.then27

if.then23:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_addr.i75) #6
  %11 = ptrtoint ptr %status_addr.i75 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %status_addr.i75, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_result.i76) #6
  %12 = ptrtoint ptr %status_result.i76 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %status_result.i76, align 1, !annotation !85
  %call.i.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %status_addr.i75, i32 noundef 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %cmp.i78 = icmp slt i32 %call.i.i77, 0
  br i1 %cmp.i78, label %do.end.i80, label %if.end.i83

do.end.i80:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i79 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i79, ptr noundef nonnull @.str.13, i32 noundef %call.i.i77) #9
  br label %if.then35

if.end.i83:                                       ; preds = %if.then23
  %call.i19.i81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %status_result.i76, i32 noundef 1, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i81)
  %cmp2.i82 = icmp slt i32 %call.i19.i81, 0
  br i1 %cmp2.i82, label %do.end6.i85, label %for.end

do.end6.i85:                                      ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  %dev7.i84 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7.i84, ptr noundef nonnull @.str.16, i32 noundef %call.i19.i81) #9
  br label %if.then35

if.then27:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_addr.i) #6
  %13 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %status_addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status_result.i) #6
  %14 = ptrtoint ptr %status_result.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %status_result.i, align 1, !annotation !85
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %status_addr.i, i32 noundef 1, i16 noundef zeroext 0) #6
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then27.do.end.i_crit_edge, label %if.then27.if.end.i_crit_edge

if.then27.if.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then27.do.end.i_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

for.end:                                          ; preds = %if.end.i83
  %15 = ptrtoint ptr %status_result.i76 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %status_result.i76, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_result.i76) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_addr.i75) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %.not = icmp eq i8 %16, 0
  br i1 %.not, label %for.end.if.end44_crit_edge, label %17

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then35:                                        ; preds = %do.end6.i85, %do.end.i80
  %retval.0.i88.ph = phi i32 [ %call.i19.i81, %do.end6.i85 ], [ %call.i.i77, %do.end.i80 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_result.i76) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status_addr.i75) #6
  br label %cleanup

17:                                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end44:                                         ; preds = %for.end.if.end44_crit_edge, %dw9807_i2c_check.exit.if.end44_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_data, i32 noundef 3, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp slt i32 %call.i, 0
  br i1 %cmp46, label %do.end51, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %dev52 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.11, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end44.cleanup_crit_edge, %17, %if.then35, %for.end.thread
  %retval.0 = phi i32 [ %call.i, %do.end51 ], [ 0, %if.end44.cleanup_crit_edge ], [ -16, %17 ], [ %retval.0.i88.ph, %if.then35 ], [ %retval.0.i.ph, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tx_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_vcm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %tx_data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_data) #6
  %2 = ptrtoint ptr %tx_data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 513, ptr %tx_data, align 2
  %current_val = getelementptr i8, ptr %1, i32 196
  %3 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %current_val, align 4
  %5 = and i16 %4, -16
  %and = zext i16 %5 to i32
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %val.036 = phi i32 [ %and, %entry ], [ %sub, %if.end10.for.body_crit_edge ]
  %conv3 = trunc i32 %val.036 to i16
  %call4 = tail call fastcc i32 @dw9807_set_dac(ptr noundef %add.ptr, i16 noundef zeroext %conv3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %for.body.if.end10_crit_edge, label %do.body

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body:                                          ; preds = %for.body
  %.b35 = load i1, ptr @dw9807_vcm_suspend.__print_once, align 1
  br i1 %.b35, label %do.body.if.end10_crit_edge, label %if.then6

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dw9807_vcm_suspend.__print_once, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %call4) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body.if.end10_crit_edge, %for.body.if.end10_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %sub = add nsw i32 %val.036, -16
  %cmp = icmp sgt i32 %val.036, 15
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end10
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %tx_data, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp12 = icmp slt i32 %call.i, 0
  br i1 %cmp12, label %do.end17, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end17 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9807_vcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  %tx_data = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_data) #6
  %2 = ptrtoint ptr %tx_data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 512, ptr %tx_data, align 2
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %tx_data, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %current_val = getelementptr i8, ptr %1, i32 196
  %3 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %current_val, align 4
  %5 = and i16 %4, 15
  %rem = zext i16 %5 to i32
  %conv539 = zext i16 %4 to i32
  %sub40 = add nuw nsw i32 %conv539, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub40, i32 %rem)
  %cmp641 = icmp ugt i32 %sub40, %rem
  br i1 %cmp641, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %if.end.for.body_crit_edge
  %val.042 = phi i32 [ %add22, %if.end21.for.body_crit_edge ], [ %rem, %if.end.for.body_crit_edge ]
  %conv8 = trunc i32 %val.042 to i16
  %call9 = call fastcc i32 @dw9807_set_dac(ptr noundef %add.ptr, i16 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %for.body.if.end21_crit_edge, label %do.body11

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body11:                                        ; preds = %for.body
  %call12 = call i32 @___ratelimit(ptr noundef nonnull @dw9807_vcm_resume._rs, ptr noundef nonnull @.str.23) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body11.if.end21_crit_edge, label %do.end17

do.body11.if.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.23, i32 noundef %call9) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end17, %do.body11.if.end21_crit_edge, %for.body.if.end21_crit_edge
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %add22 = add nuw nsw i32 %val.042, 16
  %6 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %current_val, align 4
  %conv5 = zext i16 %7 to i32
  %sub = add nuw nsw i32 %conv5, 15
  %cmp6 = icmp ult i32 %add22, %sub
  br i1 %cmp6, label %if.end21.for.body_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !56, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_dw9807_vcm__293_317_dw9807_i2c_driver_init6, !1, !"__initcall__kmod_dw9807_vcm__293_317_dw9807_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 317, i32 1}
!2 = !{ptr @__exitcall_dw9807_i2c_driver_exit, !1, !"__exitcall_dw9807_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 319, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 320, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 321, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 309, i32 11}
!12 = !{ptr @dw9807_i2c_driver, !13, !"dw9807_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 307, i32 26}
!14 = !{ptr @dw9807_ops, !15, !"dw9807_ops", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 148, i32 37}
!16 = !{ptr @dw9807_int_ops, !17, !"dw9807_int_ops", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 143, i32 46}
!18 = !{ptr @dw9807_init_controls._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 163, i32 2}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 170, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @dw9807_init_controls._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @dw9807_init_controls._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @dw9807_vcm_ctrl_ops, !30, !"dw9807_vcm_ctrl_ops", i1 false, i1 false}
!30 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 127, i32 35}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 93, i32 4}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dw9807_set_dac._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @dw9807_set_dac._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 103, i32 3}
!39 = !{ptr @dw9807_set_dac._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @dw9807_set_dac._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 61, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dw9807_i2c_check._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dw9807_i2c_check._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 68, i32 3}
!48 = !{ptr @dw9807_i2c_check._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dw9807_i2c_check._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @dw9807_of_table, !51, !"dw9807_of_table", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 296, i32 34}
!52 = !{ptr @dw9807_pm_ops, !53, !"dw9807_pm_ops", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 302, i32 32}
!54 = distinct !{null, !55, !"__print_once", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 248, i32 4}
!56 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @dw9807_vcm_suspend._entry, !55, !"_entry", i1 false, i1 false}
!59 = !{ptr @dw9807_vcm_suspend._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 255, i32 3}
!62 = !{ptr @dw9807_vcm_suspend._entry.20, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dw9807_vcm_suspend._entry_ptr.22, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 279, i32 3}
!66 = !{ptr @dw9807_vcm_resume._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @dw9807_vcm_resume._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/dw9807-vcm.c", i32 288, i32 4}
!70 = !{ptr @dw9807_vcm_resume._rs, !69, !"_rs", i1 false, i1 false}
!71 = !{ptr @dw9807_vcm_resume._entry.25, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @dw9807_vcm_resume._entry_ptr.26, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148309168}
!83 = !{i64 793991, i64 794016, i64 794038, i64 794054, i64 794066, i64 794086, i64 794110, i64 794126, i64 794138}
!84 = !{i64 2148309356}
!85 = !{!"auto-init"}
