; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/dw9714.c_pt.bc'
source_filename = "../drivers/media/i2c/dw9714.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_internal_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dw9714_device = type { %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16 }
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

@__initcall__kmod_dw9714__293_269_dw9714_i2c_driver_init6 = internal global ptr @dw9714_i2c_driver_init, section ".initcall6.init", align 4
@dw9714_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @dw9714_remove, ptr @dw9714_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw9714_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9714_pm_ops, ptr null, ptr null }, ptr @dw9714_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_dw9714_i2c_driver_exit = internal global ptr @dw9714_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [51 x i8] c"dw9714.author=Tianshu Qiu <tian.shu.qiu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [28 x i8] c"dw9714.author=Jian Xu Zheng\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [46 x i8] c"dw9714.author=Yuning Pu <yuning.pu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"dw9714.author=Jouni Ukkonen <jouni.ukkonen@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [58 x i8] c"dw9714.author=Tommi Franttila <tommi.franttila@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [37 x i8] c"dw9714.description=DW9714 VCM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [37 x i8] c"dw9714.file=drivers/media/i2c/dw9714\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [22 x i8] c"dw9714.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dw9714\00", [25 x i8] zeroinitializer }, align 32
@dw9714_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dongwoon,dw9714\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dw9714_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @dw9714_vcm_suspend, ptr @dw9714_vcm_resume, ptr @dw9714_vcm_suspend, ptr @dw9714_vcm_resume, ptr @dw9714_vcm_suspend, ptr @dw9714_vcm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw9714_vcm_suspend, ptr @dw9714_vcm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@dw9714_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"dw9714\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dw9714_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @dw9714_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dw9714_int_ops = internal constant { %struct.v4l2_subdev_internal_ops, [44 x i8] } { %struct.v4l2_subdev_internal_ops { ptr null, ptr null, ptr @dw9714_open, ptr @dw9714_close, ptr null }, [44 x i8] zeroinitializer }, align 32
@dw9714_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subdev_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@dw9714_vcm_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @dw9714_set_ctrl }, [20 x i8] zeroinitializer }, align 32
@dw9714_init_controls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dw9714:126:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@dw9714_init_controls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s fail error: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dw9714_init_controls\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/media/i2c/dw9714.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw9714_init_controls._entry_ptr = internal global ptr @dw9714_init_controls._entry, section ".printk_index", align 4
@dw9714_i2c_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 58, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"I2C write fail\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dw9714_i2c_write\00", [47 x i8] zeroinitializer }, align 32
@dw9714_i2c_write._entry_ptr = internal global ptr @dw9714_i2c_write._entry, section ".printk_index", align 4
@dw9714_vcm_suspend.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@dw9714_vcm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s I2C failure: %d\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dw9714_vcm_suspend\00", [45 x i8] zeroinitializer }, align 32
@dw9714_vcm_suspend._entry_ptr = internal global ptr @dw9714_vcm_suspend._entry, section ".printk_index", align 4
@dw9714_vcm_resume._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dw9714_vcm_resume = private unnamed_addr constant [18 x i8] c"dw9714_vcm_resume\00", align 1
@dw9714_vcm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.dw9714_vcm_resume, ptr @.str.4, i32 234, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dw9714_vcm_resume._entry_ptr = internal global ptr @dw9714_vcm_resume._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"dw9714_i2c_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 258, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 260, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"dw9714_of_table\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 247, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"dw9714_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 253, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"dw9714_id_table\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 241, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"dw9714_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 110, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"dw9714_int_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 99, i32 46 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"dw9714_core_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 104, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"dw9714_vcm_ctrl_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 83, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 126, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 132, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 58, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 208, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private constant [30 x i8] c"../drivers/media/i2c/dw9714.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 233, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_dw9714_i2c_driver_exit, ptr @__initcall__kmod_dw9714__293_269_dw9714_i2c_driver_init6, ptr @dw9714_i2c_driver_exit, ptr @dw9714_i2c_write._entry, ptr @dw9714_i2c_write._entry_ptr, ptr @dw9714_init_controls._entry, ptr @dw9714_init_controls._entry_ptr, ptr @dw9714_vcm_resume._entry, ptr @dw9714_vcm_resume._entry_ptr, ptr @dw9714_vcm_suspend._entry, ptr @dw9714_vcm_suspend._entry_ptr, ptr @dw9714_i2c_driver, ptr @.str, ptr @dw9714_of_table, ptr @dw9714_pm_ops, ptr @dw9714_id_table, ptr @dw9714_ops, ptr @dw9714_int_ops, ptr @dw9714_core_ops, ptr @dw9714_vcm_ctrl_ops, ptr @dw9714_init_controls._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dw9714_vcm_resume._rs, ptr @.str.11], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_int_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_vcm_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_init_controls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_init_controls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_i2c_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_vcm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_vcm_resume._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw9714_vcm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @dw9714_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw9714_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @dw9714_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_remove(ptr noundef %client) #2 align 64 {
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
define internal i32 @dw9714_probe(ptr noundef %client) #2 align 64 {
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
  %sd = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @dw9714_ops) #6
  %flags = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %or = or i32 %1, 12
  store i32 %or, ptr %flags, align 4
  %internal_ops = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %internal_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @dw9714_int_ops, ptr %internal_ops, align 4
  %call.i42 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @dw9714_init_controls._key, ptr noundef nonnull @.str.1) #6
  %call1.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef nonnull %call.i, ptr noundef nonnull @dw9714_vcm_ctrl_ops, i32 noundef 10094858, i64 noundef 0, i64 noundef 1023, i64 noundef 1, i64 noundef 0) #6
  %error.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %dw9714_init_controls.exit.thread, label %dw9714_init_controls.exit

dw9714_init_controls.exit.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_handler.i45 = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %ctrl_handler.i45 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %ctrl_handler.i45, align 4
  br label %if.end5

dw9714_init_controls.exit:                        ; preds = %if.end
  %dev.i = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 14
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %4) #9
  %8 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %error.i, align 4
  %ctrl_handler.i = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %ctrl_handler.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %dw9714_init_controls.exit.if.end5_crit_edge, label %dw9714_init_controls.exit.err_cleanup_crit_edge

dw9714_init_controls.exit.err_cleanup_crit_edge:  ; preds = %dw9714_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

dw9714_init_controls.exit.if.end5_crit_edge:      ; preds = %dw9714_init_controls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %dw9714_init_controls.exit.if.end5_crit_edge, %dw9714_init_controls.exit.thread
  %call7 = tail call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end5.err_cleanup_crit_edge, label %if.end10

if.end5.err_cleanup_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_cleanup

if.end10:                                         ; preds = %if.end5
  %function = getelementptr inbounds %struct.dw9714_device, ptr %call.i, i32 0, i32 1, i32 0, i32 3
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
  %call.i43 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev) #6
  %call.i44 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 0) #6
  br label %cleanup

err_cleanup:                                      ; preds = %if.end10.err_cleanup_crit_edge, %if.end5.err_cleanup_crit_edge, %dw9714_init_controls.exit.err_cleanup_crit_edge
  %rval.0 = phi i32 [ %.pr, %dw9714_init_controls.exit.err_cleanup_crit_edge ], [ %call7, %if.end5.err_cleanup_crit_edge ], [ %call14, %if.end10.err_cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_open(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !74
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.pm_runtime_resume_and_get.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_resume_and_get.exit

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %pm_runtime_resume_and_get.exit

pm_runtime_resume_and_get.exit:                   ; preds = %do.end11.i.i.i.i.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge, %entry.pm_runtime_resume_and_get.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %if.then.i.pm_runtime_resume_and_get.exit_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_close(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %fh) #2 align 64 {
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
define internal i32 @dw9714_set_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %val.i.i = alloca i16, align 2
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
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %conv = trunc i32 %5 to i16
  %dev_priv.i.i = getelementptr inbounds %struct.dw9714_device, ptr %3, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %current_val.i = getelementptr inbounds %struct.dw9714_device, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %current_val.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %current_val.i, align 4
  %shl.i = shl i16 %conv, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #6
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %shl.i, ptr %val.i.i, align 2
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %val.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.dw9714_t_focus_vcm.exit_crit_edge, label %do.end.i.i

if.then.dw9714_t_focus_vcm.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %dw9714_t_focus_vcm.exit

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.7) #9
  br label %dw9714_t_focus_vcm.exit

dw9714_t_focus_vcm.exit:                          ; preds = %do.end.i.i, %if.then.dw9714_t_focus_vcm.exit_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end.i.i ], [ 0, %if.then.dw9714_t_focus_vcm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dw9714_t_focus_vcm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %dw9714_t_focus_vcm.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_vcm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_val = getelementptr i8, ptr %1, i32 196
  %2 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %current_val, align 4
  %4 = and i16 %3, -16
  %and = zext i16 %4 to i32
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %entry
  %val.019 = phi i32 [ %and, %entry ], [ %sub, %if.end10.for.body_crit_edge ]
  %val.0.tr = trunc i32 %val.019 to i16
  %conv3 = shl i16 %val.0.tr, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv3, ptr %val.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %dw9714_i2c_write.exit.thread, label %do.body

dw9714_i2c_write.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %if.end10

do.body:                                          ; preds = %for.body
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %.b16 = load i1, ptr @dw9714_vcm_suspend.__print_once, align 1
  br i1 %.b16, label %do.body.if.end10_crit_edge, label %if.then6

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @dw9714_vcm_suspend.__print_once, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef -5) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body.if.end10_crit_edge, %dw9714_i2c_write.exit.thread
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %sub = add nsw i32 %val.019, -16
  %cmp = icmp sgt i32 %val.019, 15
  br i1 %cmp, label %if.end10.for.body_crit_edge, label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw9714_vcm_resume(ptr noundef %dev) #2 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %current_val = getelementptr i8, ptr %1, i32 196
  %2 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %current_val, align 4
  %4 = and i16 %3, 15
  %rem = zext i16 %4 to i32
  %conv323 = zext i16 %3 to i32
  %sub24 = add nuw nsw i32 %conv323, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %sub24, i32 %rem)
  %cmp25 = icmp ugt i32 %sub24, %rem
  br i1 %cmp25, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry.for.body_crit_edge
  %val.026 = phi i32 [ %add14, %if.end13.for.body_crit_edge ], [ %rem, %entry.for.body_crit_edge ]
  %val.0.tr = trunc i32 %val.026 to i16
  %conv5 = shl i16 %val.0.tr, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv5, ptr %val.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %val.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %dw9714_i2c_write.exit.thread, label %do.body

dw9714_i2c_write.exit.thread:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  br label %if.end13

do.body:                                          ; preds = %for.body
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #6
  %call7 = call i32 @___ratelimit(ptr noundef nonnull @dw9714_vcm_resume._rs, ptr noundef nonnull @__func__.dw9714_vcm_resume) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.dw9714_vcm_resume, i32 noundef -5) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %dw9714_i2c_write.exit.thread
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #6
  %add14 = add nuw nsw i32 %val.026, 16
  %6 = ptrtoint ptr %current_val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %current_val, align 4
  %conv3 = zext i16 %7 to i32
  %sub = add nuw nsw i32 %conv3, 15
  %cmp = icmp ult i32 %add14, %sub
  br i1 %cmp, label %if.end13.for.body_crit_edge, label %if.end13.for.end_crit_edge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end13.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !44, !45, !46, !48, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_dw9714__293_269_dw9714_i2c_driver_init6, !1, !"__initcall__kmod_dw9714__293_269_dw9714_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/dw9714.c", i32 269, i32 1}
!2 = !{ptr @__exitcall_dw9714_i2c_driver_exit, !1, !"__exitcall_dw9714_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/dw9714.c", i32 271, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/dw9714.c", i32 272, i32 1}
!7 = !{ptr @__UNIQUE_ID_author296, !8, !"__UNIQUE_ID_author296", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/dw9714.c", i32 273, i32 1}
!9 = !{ptr @__UNIQUE_ID_author297, !10, !"__UNIQUE_ID_author297", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/dw9714.c", i32 274, i32 1}
!11 = !{ptr @__UNIQUE_ID_author298, !12, !"__UNIQUE_ID_author298", i1 false, i1 false}
!12 = !{!"../drivers/media/i2c/dw9714.c", i32 275, i32 1}
!13 = !{ptr @__UNIQUE_ID_description299, !14, !"__UNIQUE_ID_description299", i1 false, i1 false}
!14 = !{!"../drivers/media/i2c/dw9714.c", i32 276, i32 1}
!15 = !{ptr @__UNIQUE_ID_file300, !16, !"__UNIQUE_ID_file300", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/dw9714.c", i32 277, i32 1}
!17 = !{ptr @__UNIQUE_ID_license301, !16, !"__UNIQUE_ID_license301", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/dw9714.c", i32 260, i32 11}
!20 = !{ptr @dw9714_i2c_driver, !21, !"dw9714_i2c_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/dw9714.c", i32 258, i32 26}
!22 = !{ptr @dw9714_ops, !23, !"dw9714_ops", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/dw9714.c", i32 110, i32 37}
!24 = !{ptr @dw9714_core_ops, !25, !"dw9714_core_ops", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/dw9714.c", i32 104, i32 42}
!26 = !{ptr @dw9714_int_ops, !27, !"dw9714_int_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/i2c/dw9714.c", i32 99, i32 46}
!28 = !{ptr @dw9714_init_controls._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/dw9714.c", i32 126, i32 2}
!30 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/i2c/dw9714.c", i32 132, i32 3}
!33 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @dw9714_init_controls._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @dw9714_init_controls._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dw9714_vcm_ctrl_ops, !40, !"dw9714_vcm_ctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/dw9714.c", i32 83, i32 35}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/i2c/dw9714.c", i32 58, i32 3}
!43 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dw9714_i2c_write._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dw9714_i2c_write._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @dw9714_of_table, !47, !"dw9714_of_table", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/dw9714.c", i32 247, i32 34}
!48 = !{ptr @dw9714_pm_ops, !49, !"dw9714_pm_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/i2c/dw9714.c", i32 253, i32 32}
!50 = distinct !{null, !51, !"__print_once", i1 false, i1 false}
!51 = !{!"../drivers/media/i2c/dw9714.c", i32 208, i32 4}
!52 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dw9714_vcm_suspend._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @dw9714_vcm_suspend._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/i2c/dw9714.c", i32 233, i32 4}
!58 = !{ptr @dw9714_vcm_resume._rs, !57, !"_rs", i1 false, i1 false}
!59 = !{ptr @__func__.dw9714_vcm_resume, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dw9714_vcm_resume._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @dw9714_vcm_resume._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @dw9714_id_table, !63, !"dw9714_id_table", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/dw9714.c", i32 241, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148193970}
!74 = !{i64 678793, i64 678818, i64 678840, i64 678856, i64 678868, i64 678888, i64 678912, i64 678928, i64 678940}
!75 = !{i64 2148194158}
