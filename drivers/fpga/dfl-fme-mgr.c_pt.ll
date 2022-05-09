; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-fme-mgr.c_pt.bc'
source_filename = "../drivers/fpga/dfl-fme-mgr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fpga_manager_info = type { ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fpga_compat_id = type { i64, i64 }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }
%struct.fme_mgr_priv = type { ptr, i64 }
%struct.fpga_image_info = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, ptr, ptr }

@__initcall__kmod_dfl_fme_mgr__202_318_fme_mgr_driver_init6 = internal global ptr @fme_mgr_driver_init, section ".initcall6.init", align 4
@fme_mgr_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fme_mgr_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fme_mgr_driver_exit = internal global ptr @fme_mgr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description203 = internal constant [68 x i8] c"dfl_fme_mgr.description=FPGA Manager for DFL FPGA Management Engine\00", section ".modinfo", align 1
@__UNIQUE_ID_author204 = internal constant [37 x i8] c"dfl_fme_mgr.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file205 = internal constant [42 x i8] c"dfl_fme_mgr.file=drivers/fpga/dfl-fme-mgr\00", section ".modinfo", align 1
@__UNIQUE_ID_license206 = internal constant [27 x i8] c"dfl_fme_mgr.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias207 = internal constant [39 x i8] c"dfl_fme_mgr.alias=platform:dfl-fme-mgr\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfl-fme-mgr\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DFL FME FPGA Manager\00", [43 x i8] zeroinitializer }, align 32
@fme_mgr_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr null, ptr @fme_mgr_status, ptr @fme_mgr_write_init, ptr @fme_mgr_write, ptr null, ptr @fme_mgr_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"only supports partial reconfiguration.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fme_mgr_write_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/fpga/dfl-fme-mgr.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry_ptr = internal global ptr @fme_mgr_write_init._entry, section ".printk_index", align 4
@fme_mgr_write_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dfl_fme_mgr\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"resetting PR before initiated PR\0A\00", [62 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PR Reset ACK timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry_ptr.11 = internal global ptr @fme_mgr_write_init._entry.9, section ".printk_index", align 4
@fme_mgr_write_init.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.12, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"waiting for PR resource in HW to be initialized and ready\0A\00", [37 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PR Status timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@fme_mgr_write_init._entry_ptr.15 = internal global ptr @fme_mgr_write_init._entry.13, section ".printk_index", align 4
@fme_mgr_write_init.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.16, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"check and clear previous PR error\0A\00", [61 x i8] zeroinitializer }, align 32
@fme_mgr_write_init.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"previous PR error detected %llx\0A\00", [63 x i8] zeroinitializer }, align 32
@fme_mgr_write_init.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set PR port ID\0A\00", [16 x i8] zeroinitializer }, align 32
@fme_mgr_write.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.19, ptr @.str.4, ptr @.str.20, i8 0, i8 43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fme_mgr_write\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start request\0A\00", [17 x i8] zeroinitializer }, align 32
@fme_mgr_write.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.19, ptr @.str.4, ptr @.str.21, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pushing data from bitstream to HW\0A\00", [61 x i8] zeroinitializer }, align 32
@fme_mgr_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.4, i32 194, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PR_CREDIT timeout\0A\00", [45 x i8] zeroinitializer }, align 32
@fme_mgr_write._entry_ptr = internal global ptr @fme_mgr_write._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fme_mgr_write._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid PR bitstream size\0A\00", [37 x i8] zeroinitializer }, align 32
@fme_mgr_write._entry_ptr.25 = internal global ptr @fme_mgr_write._entry.23, section ".printk_index", align 4
@fme_mgr_write_complete.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.4, ptr @.str.27, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fme_mgr_write_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"green bitstream push complete\0A\00", [33 x i8] zeroinitializer }, align 32
@fme_mgr_write_complete.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.4, ptr @.str.28, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"waiting for HW to release PR resource\0A\00", [57 x i8] zeroinitializer }, align 32
@fme_mgr_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PR Completion ACK timeout.\0A\00", [36 x i8] zeroinitializer }, align 32
@fme_mgr_write_complete._entry_ptr = internal global ptr @fme_mgr_write_complete._entry, section ".printk_index", align 4
@fme_mgr_write_complete.__UNIQUE_ID_ddebug199 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.4, ptr @.str.30, i8 0, i8 60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"PR operation complete, checking status\0A\00", [56 x i8] zeroinitializer }, align 32
@fme_mgr_write_complete.__UNIQUE_ID_ddebug200 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.4, ptr @.str.31, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PR error detected %llx\0A\00", [40 x i8] zeroinitializer }, align 32
@fme_mgr_write_complete.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.4, ptr @.str.32, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PR done successfully\0A\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"fme_mgr_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 311, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 313, i32 14 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 299, i32 14 }
@___asan_gen_.42 = private unnamed_addr constant [12 x i8] c"fme_mgr_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 262, i32 38 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 117, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 121, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 130, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 138, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 144, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 149, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 152, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 155, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 174, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 180, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 194, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 204, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 232, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 233, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 238, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 242, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 245, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private constant [30 x i8] c"../drivers/fpga/dfl-fme-mgr.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 250, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_alias207, ptr @__UNIQUE_ID_author204, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_file205, ptr @__UNIQUE_ID_license206, ptr @__exitcall_fme_mgr_driver_exit, ptr @__initcall__kmod_dfl_fme_mgr__202_318_fme_mgr_driver_init6, ptr @fme_mgr_driver_exit, ptr @fme_mgr_write._entry, ptr @fme_mgr_write._entry.23, ptr @fme_mgr_write._entry_ptr, ptr @fme_mgr_write._entry_ptr.25, ptr @fme_mgr_write_complete._entry, ptr @fme_mgr_write_complete._entry_ptr, ptr @fme_mgr_write_init._entry, ptr @fme_mgr_write_init._entry.13, ptr @fme_mgr_write_init._entry.9, ptr @fme_mgr_write_init._entry_ptr, ptr @fme_mgr_write_init._entry_ptr.11, ptr @fme_mgr_write_init._entry_ptr.15, ptr @fme_mgr_driver, ptr @.str, ptr @.str.1, ptr @fme_mgr_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fme_mgr_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_mgr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fme_mgr_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fme_mgr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fme_mgr_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_mgr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %info = alloca %struct.fpga_manager_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end8, label %if.end8.thread

if.end8.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 8
  br label %if.end21

if.end8:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %call.i, align 8
  %tobool10.not = icmp eq ptr %.pr, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.if.end21_crit_edge

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end8
  %call12 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call13 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call12) #7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.then11.if.end21_crit_edge

if.then11.if.end21_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.then11.if.end21_crit_edge, %if.end8.if.end21_crit_edge, %if.end8.thread
  %8 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %info, align 4
  %mops = getelementptr inbounds %struct.fpga_manager_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %mops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fme_mgr_ops, ptr %mops, align 4
  %priv22 = getelementptr inbounds %struct.fpga_manager_info, ptr %info, i32 0, i32 3
  %10 = ptrtoint ptr %priv22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %priv22, align 4
  %call.i50 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %compat_id = getelementptr inbounds %struct.fpga_manager_info, ptr %info, i32 0, i32 1
  %11 = ptrtoint ptr %compat_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i50, ptr %compat_id, align 4
  %tobool25.not = icmp eq ptr %call.i50, null
  br i1 %tobool25.not, label %if.end21.cleanup_crit_edge, label %if.end27

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 168
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 172
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %16 = zext i32 %15 to i64
  %17 = zext i32 %14 to i64
  %18 = shl nuw i64 %17, 32
  %19 = or i64 %18, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19) #7
  %id_l.i = getelementptr inbounds %struct.fpga_compat_id, ptr %call.i50, i32 0, i32 1
  %21 = ptrtoint ptr %id_l.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %id_l.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %13, i32 176
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i5.i = getelementptr i8, ptr %13, i32 180
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %24 = zext i32 %23 to i64
  %25 = zext i32 %22 to i64
  %26 = shl nuw i64 %25, 32
  %27 = or i64 %26, %24
  %28 = tail call i64 @llvm.bswap.i64(i64 %27) #7
  %29 = ptrtoint ptr %call.i50 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %call.i50, align 8
  %call30 = call ptr @devm_fpga_mgr_register_full(ptr noundef %dev, ptr noundef nonnull %info) #7
  %cmp.i.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call30 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %30, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end21.cleanup_crit_edge, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end27 ], [ %7, %if.then17 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fpga_mgr_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @fme_mgr_status(ptr nocapture noundef readonly %mgr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %pr_error = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pr_error to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pr_error, align 8
  %4 = and i64 %3, 31
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_mgr_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  %priv2 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.body3:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_init, %if.then7)) #7
          to label %do.end10 [label %if.then7], !srcloc !99

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_init.__UNIQUE_ID_ddebug170, ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body3
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = or i64 %11, 72057594037927936
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %14 = lshr i64 %12, 32
  %15 = trunc i64 %14 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i64 %13, 32
  %conv3.i = trunc i64 %shr.i to i32
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #7, !srcloc !101
  %call13 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call13, 8000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 129) #7
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %19 = call i32 @llvm.bswap.i32(i32 %17)
  %20 = zext i32 %19 to i64
  %and28322 = and i64 %20, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28322)
  %tobool29.not323 = icmp eq i64 %and28322, 0
  br i1 %tobool29.not323, label %do.end10.land.lhs.true_crit_edge, label %do.end10.for.end_crit_edge

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end10.land.lhs.true_crit_edge:                 ; preds = %do.end10
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then41.land.lhs.true_crit_edge, %do.end10.land.lhs.true_crit_edge
  %call33 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call33, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call33, %add.i
  br i1 %cmp3.i, label %if.then36, label %if.then41

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %23 = call i32 @llvm.bswap.i32(i32 %21)
  %24 = zext i32 %23 to i64
  br label %for.end

if.then41:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %27 = call i32 @llvm.bswap.i32(i32 %25)
  %28 = zext i32 %27 to i64
  %and28 = and i64 %28, 16
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.then41.land.lhs.true_crit_edge, label %if.then41.for.end_crit_edge

if.then41.for.end_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then41.land.lhs.true_crit_edge:                ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %if.then41.for.end_crit_edge, %if.then36, %do.end10.for.end_crit_edge
  %pr_ctrl.0 = phi i64 [ %24, %if.then36 ], [ %20, %do.end10.for.end_crit_edge ], [ %28, %if.then41.for.end_crit_edge ]
  %and44 = and i64 %pr_ctrl.0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and44)
  %tobool45.not = icmp eq i64 %and44, 0
  br i1 %tobool45.not, label %do.end50, label %if.end51

do.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %31 = zext i32 %30 to i64
  %32 = zext i32 %29 to i64
  %33 = shl nuw i64 %32, 32
  %.masked = and i64 %33, -72057598332895232
  %34 = or i64 %.masked, %31
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %36 = lshr exact i64 %.masked, 32
  %37 = trunc i64 %36 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %37) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i271 = lshr i64 %35, 32
  %conv3.i272 = trunc i64 %shr.i271 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv3.i272) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #7, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_init, %if.then68)) #7
          to label %do.end71 [label %if.then68], !srcloc !99

if.then68:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_init.__UNIQUE_ID_ddebug171, ptr noundef %dev1, ptr noundef nonnull @.str.12) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then68, %if.end51
  %call75 = tail call i64 @ktime_get() #7
  %add.i274 = add i64 %call75, 8000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 143) #7
  %add.ptr90 = getelementptr i8, ptr %3, i32 16
  %add.ptr.i275 = getelementptr i8, ptr %3, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %41 = call i32 @llvm.bswap.i32(i32 %39)
  %42 = zext i32 %41 to i64
  %and92324 = and i64 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and92324)
  %cmp93325 = icmp eq i64 %and92324, 0
  br i1 %cmp93325, label %do.end71.for.end110_crit_edge, label %do.end71.land.lhs.true97_crit_edge

do.end71.land.lhs.true97_crit_edge:               ; preds = %do.end71
  br label %land.lhs.true97

do.end71.for.end110_crit_edge:                    ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end110

land.lhs.true97:                                  ; preds = %if.then106.land.lhs.true97_crit_edge, %do.end71.land.lhs.true97_crit_edge
  %call98 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call98, i64 %add.i274)
  %cmp3.i277 = icmp sgt i64 %call98, %add.i274
  br i1 %cmp3.i277, label %if.then101, label %if.then106

if.then101:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %45 = call i32 @llvm.bswap.i32(i32 %43)
  %46 = zext i32 %45 to i64
  br label %for.end110

if.then106:                                       ; preds = %land.lhs.true97
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %49 = call i32 @llvm.bswap.i32(i32 %47)
  %50 = zext i32 %49 to i64
  %and92 = and i64 %50, 65536
  %cmp93 = icmp eq i64 %and92, 0
  br i1 %cmp93, label %if.then106.for.end110_crit_edge, label %if.then106.land.lhs.true97_crit_edge

if.then106.land.lhs.true97_crit_edge:             ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true97

if.then106.for.end110_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end110

for.end110:                                       ; preds = %if.then106.for.end110_crit_edge, %if.then101, %do.end71.for.end110_crit_edge
  %pr_status.0 = phi i64 [ %46, %if.then101 ], [ %42, %do.end71.for.end110_crit_edge ], [ %50, %if.then106.for.end110_crit_edge ]
  %and112 = and i64 %pr_status.0, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and112)
  %cmp113 = icmp eq i64 %and112, 0
  br i1 %cmp113, label %do.body122, label %do.end119

do.end119:                                        ; preds = %for.end110
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %53 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %do.end119.fme_mgr_pr_error_handle.exit_crit_edge, label %if.end.i

do.end119.fme_mgr_pr_error_handle.exit_crit_edge: ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %fme_mgr_pr_error_handle.exit

if.end.i:                                         ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr1.i = getelementptr i8, ptr %3, i32 32
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i8.i = getelementptr i8, ptr %3, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %56 = zext i32 %55 to i64
  %57 = zext i32 %54 to i64
  %58 = shl nuw i64 %57, 32
  %59 = or i64 %58, %56
  %60 = tail call i64 @llvm.bswap.i64(i64 %59) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %54) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i.i = lshr i64 %60, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %61 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %61) #7, !srcloc !101
  br label %fme_mgr_pr_error_handle.exit

fme_mgr_pr_error_handle.exit:                     ; preds = %if.end.i, %do.end119.fme_mgr_pr_error_handle.exit_crit_edge
  %retval.0.i282 = phi i64 [ %60, %if.end.i ], [ 0, %do.end119.fme_mgr_pr_error_handle.exit_crit_edge ]
  %pr_error = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %pr_error to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %retval.0.i282, ptr %pr_error, align 8
  br label %cleanup

do.body122:                                       ; preds = %for.end110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_init, %if.then134)) #7
          to label %do.end137 [label %if.then134], !srcloc !99

if.then134:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_init.__UNIQUE_ID_ddebug172, ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %do.body122
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %65 = and i32 %63, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i285 = icmp eq i32 %65, 0
  br i1 %tobool.not.i285, label %fme_mgr_pr_error_handle.exit292.thread, label %fme_mgr_pr_error_handle.exit292

fme_mgr_pr_error_handle.exit292.thread:           ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #9
  %pr_error139302 = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %pr_error139302 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %pr_error139302, align 8
  br label %do.body161

fme_mgr_pr_error_handle.exit292:                  ; preds = %do.end137
  %add.ptr1.i286 = getelementptr i8, ptr %3, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i286) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i8.i287 = getelementptr i8, ptr %3, i32 36
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i287) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %69 = zext i32 %68 to i64
  %70 = zext i32 %67 to i64
  %71 = shl nuw i64 %70, 32
  %72 = or i64 %71, %69
  %73 = tail call i64 @llvm.bswap.i64(i64 %72) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i286, i32 %67) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i.i288 = lshr i64 %73, 32
  %conv3.i.i289 = trunc i64 %shr.i.i288 to i32
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i289) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i287, i32 %74) #7, !srcloc !101
  %pr_error139 = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %pr_error139 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %73, ptr %pr_error139, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %tobool141.not = icmp eq i64 %72, 0
  br i1 %tobool141.not, label %fme_mgr_pr_error_handle.exit292.do.body161_crit_edge, label %do.body143

fme_mgr_pr_error_handle.exit292.do.body161_crit_edge: ; preds = %fme_mgr_pr_error_handle.exit292
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body161

do.body143:                                       ; preds = %fme_mgr_pr_error_handle.exit292
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_init, %if.then155)) #7
          to label %do.body161 [label %if.then155], !srcloc !99

if.then155:                                       ; preds = %do.body143
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %pr_error139 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %pr_error139, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_init.__UNIQUE_ID_ddebug173, ptr noundef %dev1, ptr noundef nonnull @.str.17, i64 noundef %77) #7
  br label %do.body161

do.body161:                                       ; preds = %if.then155, %do.body143, %fme_mgr_pr_error_handle.exit292.do.body161_crit_edge, %fme_mgr_pr_error_handle.exit292.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_init, %if.then173)) #7
          to label %do.end176 [label %if.then173], !srcloc !99

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_init.__UNIQUE_ID_ddebug174, ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  br label %do.end176

do.end176:                                        ; preds = %if.then173, %do.body161
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %region_id = getelementptr inbounds %struct.fpga_image_info, ptr %info, i32 0, i32 8
  %80 = ptrtoint ptr %region_id to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %region_id, align 4
  %82 = zext i32 %79 to i64
  %83 = zext i32 %78 to i64
  %84 = shl nuw i64 %83, 32
  %.masked306 = and i64 %84, 9222527607629676544
  %85 = or i64 %.masked306, %82
  %86 = tail call i64 @llvm.bswap.i64(i64 %85)
  %conv202 = sext i32 %81 to i64
  %shl = shl nsw i64 %conv202, 7
  %and203 = and i64 %shl, 896
  %or204 = or i64 %and203, %86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %conv.i294 = trunc i64 %or204 to i32
  %87 = tail call i32 @llvm.bswap.i32(i32 %conv.i294) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %87) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i295 = lshr i64 %86, 32
  %conv3.i296 = trunc i64 %shr.i295 to i32
  %88 = tail call i32 @llvm.bswap.i32(i32 %conv3.i296) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %88) #7, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.end176, %fme_mgr_pr_error_handle.exit, %do.end50, %do.end
  %retval.0 = phi i32 [ -110, %do.end50 ], [ -110, %fme_mgr_pr_error_handle.exit ], [ 0, %do.end176 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_mgr_write(ptr noundef %mgr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  %priv2 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write.__UNIQUE_ID_ddebug180, ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = or i64 %9, 4503599627370496
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i64 %11, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write, %if.then19)) #7
          to label %do.end22 [label %if.then19], !srcloc !99

if.then19:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write.__UNIQUE_ID_ddebug181, ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.end
  %add.ptr23 = getelementptr i8, ptr %3, i32 16
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i142 = getelementptr i8, ptr %3, i32 20
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not154 = icmp eq i32 %count, 0
  br i1 %cmp.not154, label %do.end22.cleanup_crit_edge, label %while.cond42.preheader.lr.ph

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond42.preheader.lr.ph:                     ; preds = %do.end22
  %17 = and i32 %15, -16711680
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %add.ptr108 = getelementptr i8, ptr %3, i32 24
  %add.ptr.i146 = getelementptr i8, ptr %3, i32 28
  br label %while.cond42.preheader

while.cond42.preheader:                           ; preds = %if.end80.while.cond42.preheader_crit_edge, %while.cond42.preheader.lr.ph
  %count.addr.0158 = phi i32 [ %count, %while.cond42.preheader.lr.ph ], [ %sub, %if.end80.while.cond42.preheader_crit_edge ]
  %i.0157 = phi i32 [ 0, %while.cond42.preheader.lr.ph ], [ %inc109, %if.end80.while.cond42.preheader_crit_edge ]
  %pr_credit.0156 = phi i32 [ %18, %while.cond42.preheader.lr.ph ], [ %dec, %if.end80.while.cond42.preheader_crit_edge ]
  %delay.0155 = phi i32 [ 0, %while.cond42.preheader.lr.ph ], [ %delay.1.lcssa, %if.end80.while.cond42.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pr_credit.0156)
  %cmp43151 = icmp slt i32 %pr_credit.0156, 2
  br i1 %cmp43151, label %while.body45.preheader, label %while.cond42.preheader.while.end_crit_edge

while.cond42.preheader.while.end_crit_edge:       ; preds = %while.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body45.preheader:                           ; preds = %while.cond42.preheader
  %smax = call i32 @llvm.smax.i32(i32 %delay.0155, i32 8000001)
  br label %while.body45

while.body45:                                     ; preds = %if.end52.while.body45_crit_edge, %while.body45.preheader
  %delay.1152 = phi i32 [ %inc, %if.end52.while.body45_crit_edge ], [ %delay.0155, %while.body45.preheader ]
  call void @__sanitizer_cov_trace_cmp4(i32 %delay.1152, i32 %smax)
  %exitcond = icmp eq i32 %delay.1152, %smax
  br i1 %exitcond, label %while.body45.cleanup.sink.split_crit_edge, label %if.end52

while.body45.cleanup.sink.split_crit_edge:        ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end52:                                         ; preds = %while.body45
  %inc = add i32 %delay.1152, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #7
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %22 = and i32 %20, -16711680
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %cmp43 = icmp ult i32 %23, 2
  br i1 %cmp43, label %if.end52.while.body45_crit_edge, label %if.end52.while.end_crit_edge

if.end52.while.end_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end52.while.body45_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body45

while.end:                                        ; preds = %if.end52.while.end_crit_edge, %while.cond42.preheader.while.end_crit_edge
  %delay.1.lcssa = phi i32 [ %delay.0155, %while.cond42.preheader.while.end_crit_edge ], [ %inc, %if.end52.while.end_crit_edge ]
  %pr_credit.1.lcssa = phi i32 [ %pr_credit.0156, %while.cond42.preheader.while.end_crit_edge ], [ %23, %if.end52.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count.addr.0158)
  %cmp74 = icmp ult i32 %count.addr.0158, 4
  br i1 %cmp74, label %while.end.cleanup.sink.split_crit_edge, label %if.end80

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end80:                                         ; preds = %while.end
  %add.ptr88 = getelementptr i32, ptr %buf, i32 %i.0157
  %24 = ptrtoint ptr %add.ptr88 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr88, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %26) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 0) #7, !srcloc !101
  %sub = add i32 %count.addr.0158, -4
  %dec = add nsw i32 %pr_credit.1.lcssa, -1
  %inc109 = add nuw nsw i32 %i.0157, 1
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end80.cleanup_crit_edge, label %if.end80.while.cond42.preheader_crit_edge

if.end80.while.cond42.preheader_crit_edge:        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond42.preheader

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %while.body45.cleanup.sink.split_crit_edge
  %.str.24.sink = phi ptr [ @.str.22, %while.body45.cleanup.sink.split_crit_edge ], [ @.str.24, %while.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -110, %while.body45.cleanup.sink.split_crit_edge ], [ -22, %while.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.24.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end80.cleanup_crit_edge, %do.end22.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end80.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fme_mgr_write_complete(ptr noundef %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  %priv2 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %6 = zext i32 %5 to i64
  %7 = zext i32 %4 to i64
  %8 = shl nuw i64 %7, 32
  %9 = or i64 %8, %6
  %10 = or i64 %9, 9007199254740992
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i = lshr i64 %11, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #7, !srcloc !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_complete, %if.then)) #7
          to label %do.body7 [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_complete.__UNIQUE_ID_ddebug197, ptr noundef %dev1, ptr noundef nonnull @.str.27) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_complete, %if.then19)) #7
          to label %do.end22 [label %if.then19], !srcloc !99

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_complete.__UNIQUE_ID_ddebug198, ptr noundef %dev1, ptr noundef nonnull @.str.28) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %call23 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call23, 8000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 237) #7
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %17 = call i32 @llvm.bswap.i32(i32 %15)
  %18 = zext i32 %17 to i64
  %and170 = and i64 %18, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and170)
  %tobool38.not171 = icmp eq i64 %and170, 0
  br i1 %tobool38.not171, label %do.end22.for.end_crit_edge, label %do.end22.land.lhs.true_crit_edge

do.end22.land.lhs.true_crit_edge:                 ; preds = %do.end22
  br label %land.lhs.true

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %if.then50.land.lhs.true_crit_edge, %do.end22.land.lhs.true_crit_edge
  %call42 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %if.then45, label %if.then50

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %21 = call i32 @llvm.bswap.i32(i32 %19)
  %22 = zext i32 %21 to i64
  br label %for.end

if.then50:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %25 = call i32 @llvm.bswap.i32(i32 %23)
  %26 = zext i32 %25 to i64
  %and = and i64 %26, 4096
  %tobool38.not = icmp eq i64 %and, 0
  br i1 %tobool38.not, label %if.then50.for.end_crit_edge, label %if.then50.land.lhs.true_crit_edge

if.then50.land.lhs.true_crit_edge:                ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then50.for.end_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.then50.for.end_crit_edge, %if.then45, %do.end22.for.end_crit_edge
  %pr_ctrl.0 = phi i64 [ %22, %if.then45 ], [ %18, %do.end22.for.end_crit_edge ], [ %26, %if.then50.for.end_crit_edge ]
  %and53 = and i64 %pr_ctrl.0, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and53)
  %tobool54.not = icmp eq i64 %and53, 0
  br i1 %tobool54.not, label %do.body63, label %do.end61

do.end61:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29) #10
  br label %cleanup

do.body63:                                        ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug199, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_complete, %if.then75)) #7
          to label %do.end78 [label %if.then75], !srcloc !99

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_complete.__UNIQUE_ID_ddebug199, ptr noundef %dev1, ptr noundef nonnull @.str.30) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %do.body63
  %add.ptr.i156 = getelementptr i8, ptr %3, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %29 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %fme_mgr_pr_error_handle.exit.thread, label %fme_mgr_pr_error_handle.exit

fme_mgr_pr_error_handle.exit.thread:              ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  %pr_error162 = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %pr_error162 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %pr_error162, align 8
  br label %do.body101

fme_mgr_pr_error_handle.exit:                     ; preds = %do.end78
  %add.ptr1.i = getelementptr i8, ptr %3, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %add.ptr.i8.i = getelementptr i8, ptr %3, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #7, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %33 = zext i32 %32 to i64
  %34 = zext i32 %31 to i64
  %35 = shl nuw i64 %34, 32
  %36 = or i64 %35, %33
  %37 = tail call i64 @llvm.bswap.i64(i64 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %31) #7, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %shr.i.i = lshr i64 %37, 32
  %conv3.i.i = trunc i64 %shr.i.i to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv3.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %38) #7, !srcloc !101
  %pr_error = getelementptr inbounds %struct.fme_mgr_priv, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pr_error to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %37, ptr %pr_error, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %tobool81.not = icmp eq i64 %36, 0
  br i1 %tobool81.not, label %fme_mgr_pr_error_handle.exit.do.body101_crit_edge, label %do.body83

fme_mgr_pr_error_handle.exit.do.body101_crit_edge: ; preds = %fme_mgr_pr_error_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body101

do.body83:                                        ; preds = %fme_mgr_pr_error_handle.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug200, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_complete, %if.then95)) #7
          to label %cleanup [label %if.then95], !srcloc !99

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %pr_error to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %pr_error, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_complete.__UNIQUE_ID_ddebug200, ptr noundef %dev1, ptr noundef nonnull @.str.31, i64 noundef %41) #7
  br label %cleanup

do.body101:                                       ; preds = %fme_mgr_pr_error_handle.exit.do.body101_crit_edge, %fme_mgr_pr_error_handle.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fme_mgr_write_complete, %if.then113)) #7
          to label %cleanup [label %if.then113], !srcloc !99

if.then113:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fme_mgr_write_complete.__UNIQUE_ID_ddebug201, ptr noundef %dev1, ptr noundef nonnull @.str.32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body101, %if.then95, %do.body83, %do.end61
  %retval.0 = phi i32 [ -110, %do.end61 ], [ -5, %if.then95 ], [ 0, %if.then113 ], [ -5, %do.body83 ], [ 0, %do.body101 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !80, !81, !83, !84, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_dfl_fme_mgr__202_318_fme_mgr_driver_init6, !1, !"__initcall__kmod_dfl_fme_mgr__202_318_fme_mgr_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 318, i32 1}
!2 = !{ptr @__exitcall_fme_mgr_driver_exit, !1, !"__exitcall_fme_mgr_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description203, !4, !"__UNIQUE_ID_description203", i1 false, i1 false}
!4 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 320, i32 1}
!5 = !{ptr @__UNIQUE_ID_author204, !6, !"__UNIQUE_ID_author204", i1 false, i1 false}
!6 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 321, i32 1}
!7 = !{ptr @__UNIQUE_ID_file205, !8, !"__UNIQUE_ID_file205", i1 false, i1 false}
!8 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 322, i32 1}
!9 = !{ptr @__UNIQUE_ID_license206, !8, !"__UNIQUE_ID_license206", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias207, !11, !"__UNIQUE_ID_alias207", i1 false, i1 false}
!11 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 323, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 313, i32 14}
!14 = !{ptr @fme_mgr_driver, !15, !"fme_mgr_driver", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 311, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 299, i32 14}
!18 = !{ptr @fme_mgr_ops, !19, !"fme_mgr_ops", i1 false, i1 false}
!19 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 262, i32 38}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 117, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fme_mgr_write_init._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @fme_mgr_write_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 121, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug170, !29, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 130, i32 3}
!34 = !{ptr @fme_mgr_write_init._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @fme_mgr_write_init._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 138, i32 2}
!38 = !{ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug171, !37, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 144, i32 3}
!41 = !{ptr @fme_mgr_write_init._entry.13, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @fme_mgr_write_init._entry_ptr.15, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 149, i32 2}
!45 = !{ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug172, !44, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 152, i32 3}
!48 = !{ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug173, !47, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 155, i32 2}
!51 = !{ptr @fme_mgr_write_init.__UNIQUE_ID_ddebug174, !50, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 174, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fme_mgr_write.__UNIQUE_ID_ddebug180, !53, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 180, i32 2}
!58 = !{ptr @fme_mgr_write.__UNIQUE_ID_ddebug181, !57, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 194, i32 5}
!61 = !{ptr @fme_mgr_write._entry, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @fme_mgr_write._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 204, i32 4}
!65 = !{ptr @fme_mgr_write._entry.23, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @fme_mgr_write._entry_ptr.25, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 232, i32 2}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug197, !68, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 233, i32 2}
!73 = !{ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug198, !72, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 238, i32 3}
!76 = !{ptr @fme_mgr_write_complete._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @fme_mgr_write_complete._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 242, i32 2}
!80 = !{ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug199, !79, !"__UNIQUE_ID_ddebug199", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 245, i32 3}
!83 = !{ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug200, !82, !"__UNIQUE_ID_ddebug200", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/fpga/dfl-fme-mgr.c", i32 250, i32 2}
!86 = !{ptr @fme_mgr_write_complete.__UNIQUE_ID_ddebug201, !85, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 4582413}
!97 = !{i64 2152151704}
!98 = !{i64 2152152142}
!99 = !{i64 2148991924, i64 2148991929, i64 2148991942, i64 2148991986, i64 2148992020, i64 2148992041}
!100 = !{i64 2152152512}
!101 = !{i64 4581995}
!102 = !{i64 2152152885}
