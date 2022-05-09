; ModuleID = '/llk/IR_all_yes/drivers/soc/aspeed/aspeed-lpc-ctrl.c_pt.bc'
source_filename = "../drivers/soc/aspeed/aspeed-lpc-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.aspeed_lpc_ctrl = type { %struct.miscdevice, ptr, ptr, i32, i32, i32, i32, i8, ptr }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.aspeed_lpc_ctrl_mapping = type { i8, i8, i16, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__initcall__kmod_aspeed_lpc_ctrl__232_361_aspeed_lpc_ctrl_driver_init6 = internal global ptr @aspeed_lpc_ctrl_driver_init, section ".initcall6.init", align 4
@aspeed_lpc_ctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_lpc_ctrl_probe, ptr @aspeed_lpc_ctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_lpc_ctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_lpc_ctrl_driver_exit = internal global ptr @aspeed_lpc_ctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [56 x i8] c"aspeed_lpc_ctrl.file=drivers/soc/aspeed/aspeed-lpc-ctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"aspeed_lpc_ctrl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [54 x i8] c"aspeed_lpc_ctrl.author=Cyril Bur <cyrilbur@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [72 x i8] c"aspeed_lpc_ctrl.description=Control for ASPEED LPC HOST to BMC mappings\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aspeed-lpc-ctrl\00", [16 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-lpc-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aspeed_lpc_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_lpc_ctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/soc/aspeed/aspeed-lpc-ctrl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Didn't find host pnor flash node\0A\00", [62 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Couldn't address to resource for flash\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr = internal global ptr @aspeed_lpc_ctrl_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.10, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Didn't find reserved memory\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 264, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Couldn't address to resource for reserved memory\0A\00", [46 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.13 = internal global ptr @aspeed_lpc_ctrl_probe._entry.11, section ".printk_index", align 4
@aspeed_lpc_ctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Reserved memory size must be a power of 2, got %u\0A\00", [45 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.16 = internal global ptr @aspeed_lpc_ctrl_probe._entry.14, section ".printk_index", align 4
@aspeed_lpc_ctrl_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Reserved memory must be naturally aligned for size %u\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.19 = internal global ptr @aspeed_lpc_ctrl_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2400-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2500-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed,ast2600-lpc-v2\00", [42 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 288, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported LPC device binding\0A\00", [32 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.25 = internal global ptr @aspeed_lpc_ctrl_probe._entry.23, section ".printk_index", align 4
@aspeed_lpc_ctrl_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 294, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Couldn't get regmap\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.28 = internal global ptr @aspeed_lpc_ctrl_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aspeed,ast2600-lpc-ctrl\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed,ast2600-scu\00", [45 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"couldn't find scu\0A\00", [45 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.33 = internal global ptr @aspeed_lpc_ctrl_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"couldn't get clock\0A\00", [44 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 314, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't enable clock\0A\00", [41 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.37 = internal global ptr @aspeed_lpc_ctrl_probe._entry.35, section ".printk_index", align 4
@aspeed_lpc_ctrl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aspeed_lpc_ctrl_ioctl, ptr null, ptr @aspeed_lpc_ctrl_mmap, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.3, ptr @.str.4, i32 324, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unable to register device\0A\00", [37 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_probe._entry_ptr.40 = internal global ptr @aspeed_lpc_ctrl_probe._entry.38, section ".printk_index", align 4
@aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.4, ptr @.str.10, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_lpc_ctrl_ioctl\00", [42 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Didn't find host pnor flash\0A\00", [35 x i8] zeroinitializer }, align 32
@aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.41, ptr @.str.4, ptr @.str.10, i8 0, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074835969, i64 3222319616]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"aspeed_lpc_ctrl_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 352, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 354, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"aspeed_lpc_ctrl_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 345, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 238, i32 40 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 240, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 245, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 257, i32 40 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 259, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 264, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 272, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 278, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 285, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 286, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 287, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 288, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 294, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 298, i32 44 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 301, i32 54 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 303, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 311, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 314, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"aspeed_lpc_ctrl_fops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 216, i32 37 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 324, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 98, i32 4 }
@___asan_gen_.162 = private constant [40 x i8] c"../drivers/soc/aspeed/aspeed-lpc-ctrl.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 139, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 156, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_aspeed_lpc_ctrl_driver_exit, ptr @__initcall__kmod_aspeed_lpc_ctrl__232_361_aspeed_lpc_ctrl_driver_init6, ptr @aspeed_lpc_ctrl_driver_exit, ptr @aspeed_lpc_ctrl_probe._entry, ptr @aspeed_lpc_ctrl_probe._entry.11, ptr @aspeed_lpc_ctrl_probe._entry.14, ptr @aspeed_lpc_ctrl_probe._entry.17, ptr @aspeed_lpc_ctrl_probe._entry.23, ptr @aspeed_lpc_ctrl_probe._entry.26, ptr @aspeed_lpc_ctrl_probe._entry.31, ptr @aspeed_lpc_ctrl_probe._entry.35, ptr @aspeed_lpc_ctrl_probe._entry.38, ptr @aspeed_lpc_ctrl_probe._entry_ptr, ptr @aspeed_lpc_ctrl_probe._entry_ptr.13, ptr @aspeed_lpc_ctrl_probe._entry_ptr.16, ptr @aspeed_lpc_ctrl_probe._entry_ptr.19, ptr @aspeed_lpc_ctrl_probe._entry_ptr.25, ptr @aspeed_lpc_ctrl_probe._entry_ptr.28, ptr @aspeed_lpc_ctrl_probe._entry_ptr.33, ptr @aspeed_lpc_ctrl_probe._entry_ptr.37, ptr @aspeed_lpc_ctrl_probe._entry_ptr.40, ptr @aspeed_lpc_ctrl_driver, ptr @.str, ptr @aspeed_lpc_ctrl_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @aspeed_lpc_ctrl_fops, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.45], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_lpc_ctrl_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_lpc_ctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_lpc_ctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_lpc_ctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i203 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %resm = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resm) #7
  %0 = getelementptr inbounds %struct.resource, ptr %resm, i32 0, i32 1
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = call ptr @memset(ptr %resm, i32 255, i32 32)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i201 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool.not.i = icmp eq i32 %call.i201, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.body

of_parse_phandle.exit:                            ; preds = %if.end
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %of_parse_phandle.exit.do.body_crit_edge, label %if.else

of_parse_phandle.exit.do.body_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %of_parse_phandle.exit.do.body_crit_edge, %of_parse_phandle.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_lpc_ctrl_probe, %if.then9)) #7
          to label %if.end19 [label %if.then9], !srcloc !106

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug230, ptr noundef %dev1, ptr noundef nonnull @.str.5) #7
  br label %if.end19

if.else:                                          ; preds = %of_parse_phandle.exit
  %call11 = call i32 @of_address_to_resource(ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %resm) #7
  call void @of_node_put(ptr noundef nonnull %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end17:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %0, align 4
  %9 = ptrtoint ptr %resm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resm, align 4
  %sub.i = add i32 %8, 1
  %add.i = sub i32 %sub.i, %10
  %pnor_size = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %pnor_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %pnor_size, align 4
  %pnor_base = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %pnor_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %pnor_base, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.then9, %do.body
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i, align 4
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i203) #7
  %16 = call ptr @memset(ptr %args.i203, i32 255, i32 72)
  %call.i204 = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool.not.i205 = icmp eq i32 %call.i204, 0
  br i1 %tobool.not.i205, label %of_parse_phandle.exit208, label %of_parse_phandle.exit208.thread

of_parse_phandle.exit208.thread:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i203) #7
  br label %do.body25

of_parse_phandle.exit208:                         ; preds = %if.end19
  %17 = ptrtoint ptr %args.i203 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args.i203, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i203) #7
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %of_parse_phandle.exit208.do.body25_crit_edge, label %if.else41

of_parse_phandle.exit208.do.body25_crit_edge:     ; preds = %of_parse_phandle.exit208
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body25

do.body25:                                        ; preds = %of_parse_phandle.exit208.do.body25_crit_edge, %of_parse_phandle.exit208.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_lpc_ctrl_probe, %if.then37)) #7
          to label %if.end67 [label %if.then37], !srcloc !106

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br label %if.end67

if.else41:                                        ; preds = %of_parse_phandle.exit208
  %call42 = call i32 @of_address_to_resource(ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull %resm) #7
  call void @of_node_put(ptr noundef nonnull %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end48:                                         ; preds = %if.else41
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %0, align 4
  %21 = ptrtoint ptr %resm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resm, align 4
  %sub.i210 = add i32 %20, 1
  %add.i211 = sub i32 %sub.i210, %22
  %mem_size = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %mem_size to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i211, ptr %mem_size, align 4
  %mem_base = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %mem_base to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %mem_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i210, i32 %22)
  %cmp.not.i = icmp ne i32 %sub.i210, %22
  %25 = call i32 @llvm.ctpop.i32(i32 %add.i211) #7, !range !107
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp1.i = icmp ult i32 %25, 2
  %or.cond = and i1 %cmp.not.i, %cmp1.i
  br i1 %or.cond, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %add.i211) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end48
  %sub = add i32 %add.i211, -1
  %and = and i32 %sub, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end58.if.end67_crit_edge, label %do.end64

if.end58.if.end67_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %add.i211) #10
  br label %cleanup

if.end67:                                         ; preds = %if.end58.if.end67_crit_edge, %if.then37, %do.body25
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent, align 8
  %of_node69 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 27
  %28 = ptrtoint ptr %of_node69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node69, align 8
  %call70 = call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %land.lhs.true, label %if.end67.if.end81_crit_edge

if.end67.if.end81_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true:                                    ; preds = %if.end67
  %call72 = call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true74, label %land.lhs.true.if.end81_crit_edge

land.lhs.true.if.end81_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

land.lhs.true74:                                  ; preds = %land.lhs.true
  %call75 = call i32 @of_device_is_compatible(ptr noundef %29, ptr noundef nonnull @.str.22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.end80, label %land.lhs.true74.if.end81_crit_edge

land.lhs.true74.if.end81_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

do.end80:                                         ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %cleanup

if.end81:                                         ; preds = %land.lhs.true74.if.end81_crit_edge, %land.lhs.true.if.end81_crit_edge, %if.end67.if.end81_crit_edge
  %call82 = call ptr @syscon_node_to_regmap(ptr noundef %29) #7
  %regmap = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call82, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end88, label %if.end89

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #10
  br label %cleanup

if.end89:                                         ; preds = %if.end81
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call91 = call i32 @of_device_is_compatible(ptr noundef %32, ptr noundef nonnull @.str.29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.if.end104_crit_edge, label %if.then93

if.end89.if.end104_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then93:                                        ; preds = %if.end89
  %fwh2ahb = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %fwh2ahb to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %fwh2ahb, align 4
  %call94 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.30) #7
  %scu = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %scu to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call94, ptr %scu, align 4
  %cmp.i212 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i212, label %do.end100, label %if.then93.if.end104_crit_edge

if.then93.if.end104_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end100:                                        ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #10
  %35 = ptrtoint ptr %scu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %scu, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end104:                                        ; preds = %if.then93.if.end104_crit_edge, %if.end89.if.end104_crit_edge
  %call105 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call105, ptr %clk, align 4
  %cmp.i213 = icmp ugt ptr %call105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then108, label %if.end112

if.then108:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call105 to i32
  %call111 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %39, ptr noundef nonnull @.str.34) #7
  br label %cleanup

if.end112:                                        ; preds = %if.end104
  %call.i214 = call i32 @clk_prepare(ptr noundef %call105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.end.i216, label %if.end112.do.end119_crit_edge

if.end112.do.end119_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end119

if.end.i216:                                      ; preds = %if.end112
  %call1.i = call i32 @clk_enable(ptr noundef %call105) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end120, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i216
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call105) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then3.i, %if.end112.do.end119_crit_edge
  %retval.0.i217.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i214, %if.end112.do.end119_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end120:                                        ; preds = %if.end.i216
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 255, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 1
  %41 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str, ptr %name, align 4
  %fops = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @aspeed_lpc_ctrl_fops, ptr %fops, align 4
  %parent124 = getelementptr inbounds %struct.miscdevice, ptr %call.i, i32 0, i32 4
  %43 = ptrtoint ptr %parent124 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dev1, ptr %parent124, align 4
  %call126 = call i32 @misc_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end120.cleanup_crit_edge, label %do.end131

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end131:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39) #10
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %45) #7
  call void @clk_unprepare(ptr noundef %45) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end131, %if.end120.cleanup_crit_edge, %do.end119, %if.then108, %do.end100, %do.end88, %do.end80, %do.end64, %do.end56, %do.end47, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end16 ], [ -6, %do.end47 ], [ -19, %do.end88 ], [ %37, %do.end100 ], [ %call111, %if.then108 ], [ %retval.0.i217.ph, %do.end119 ], [ %call126, %do.end131 ], [ -19, %do.end80 ], [ -22, %do.end64 ], [ -22, %do.end56 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resm) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @misc_deregister(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %param) #2 align 64 {
entry:
  %map = alloca %struct.aspeed_lpc_ctrl_mapping, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %2 = inttoptr i32 %param to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %map) #7
  %3 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %map, i32 0, i32 1
  %4 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %map, i32 0, i32 2
  %5 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %map, i32 0, i32 3
  %6 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %map, i32 0, i32 4
  %7 = getelementptr inbounds %struct.aspeed_lpc_ctrl_mapping, ptr %map, i32 0, i32 5
  %8 = call ptr @memset(ptr %map, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #11
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !108

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 16) #7
  %10 = call i32 @llvm.read_register.i32(metadata !96) #7
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !109
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %2, i32 noundef 16) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #7, !srcloc !110
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !108

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %entry.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %4, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp.not = icmp eq i16 %15, 0
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %16 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end4.cleanup_crit_edge [
    i32 -1072647680, label %sw.bb
    i32 1074835969, label %sw.bb28
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %map, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp6.not = icmp eq i8 %18, 2
  br i1 %cmp6.not, label %if.end9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %sw.bb
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp11.not = icmp eq i8 %20, 0
  br i1 %cmp11.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %mem_size = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not = icmp eq i32 %22, 0
  br i1 %tobool15.not, label %do.body, label %if.then.i179

do.body:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_lpc_ctrl_ioctl, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !106

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.then.i179:                                     ; preds = %if.end14
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %7, align 4
  call void @__might_fault(ptr noundef nonnull @.str.45, i32 noundef 174) #7
  %call.i.i178 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i178, label %if.then.i179.cleanup_crit_edge, label %copy_to_user.exit

if.then.i179.cleanup_crit_edge:                   ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.then.i179
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i183 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map, i32 noundef 16) #7
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %map, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool27.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool27.not, i32 0, i32 -14
  br label %cleanup

sw.bb28:                                          ; preds = %if.end4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %7, align 4
  %and = and i32 %25, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %lor.lhs.false, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb28
  %26 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %6, align 4
  %and31 = and i32 %27, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false
  %sub = add i32 %25, -1
  %and37 = and i32 %27, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %28 = ptrtoint ptr %map to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %map, align 4
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %29, label %if.end40.cleanup_crit_edge [
    i8 1, label %if.then45
    i8 2, label %if.then70
  ]

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %if.end40
  %pnor_size = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %pnor_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pnor_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool46.not = icmp eq i32 %32, 0
  br i1 %tobool46.not, label %do.body48, label %if.end64

do.body48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_lpc_ctrl_ioctl, %if.then60)) #7
          to label %cleanup [label %if.then60], !srcloc !106

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug228, ptr noundef %1, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end64:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %pnor_base = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 6
  br label %if.end94

if.then70:                                        ; preds = %if.end40
  %mem_size71 = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %mem_size71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_size71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool72.not = icmp eq i32 %34, 0
  br i1 %tobool72.not, label %do.body74, label %if.end90

do.body74:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aspeed_lpc_ctrl_ioctl, %if.then86)) #7
          to label %cleanup [label %if.then86], !srcloc !106

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug229, ptr noundef %1, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end90:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #9
  %mem_base = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 3
  br label %if.end94

if.end94:                                         ; preds = %if.end90, %if.end64
  %size.0 = phi i32 [ %32, %if.end64 ], [ %34, %if.end90 ]
  %addr.0.in = phi ptr [ %pnor_base, %if.end64 ], [ %mem_base, %if.end90 ]
  %35 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %addr.0 = load i32, ptr %addr.0.in, align 4
  %add = add i32 %27, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %27)
  %cmp98 = icmp ult i32 %add, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %size.0)
  %cmp104 = icmp ugt i32 %add, %size.0
  %or.cond = select i1 %cmp98, i1 true, i1 %cmp104
  br i1 %or.cond, label %if.end94.cleanup_crit_edge, label %if.end107

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end107:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp109 = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %size.0)
  %cmp113 = icmp ugt i32 %25, %size.0
  %or.cond175 = select i1 %cmp109, i1 true, i1 %cmp113
  br i1 %or.cond175, label %if.end107.cleanup_crit_edge, label %if.end116

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end116:                                        ; preds = %if.end107
  %add118 = add i32 %addr.0, %27
  %regmap = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %5, align 4
  %shr = lshr i32 %39, 16
  %or = or i32 %shr, %add118
  %call120 = call i32 @regmap_write(ptr noundef %37, i32 noundef 136, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end123, label %if.end116.cleanup_crit_edge

if.end116.cleanup_crit_edge:                      ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end123:                                        ; preds = %if.end116
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %neg = sub i32 0, %43
  %shr128 = lshr i32 %43, 16
  %sub129 = add nsw i32 %shr128, -1
  %or130 = or i32 %sub129, %neg
  %call131 = call i32 @regmap_write(ptr noundef %41, i32 noundef 140, i32 noundef %or130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end134, label %if.end123.cleanup_crit_edge

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end134:                                        ; preds = %if.end123
  %fwh2ahb = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %fwh2ahb to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fwh2ahb, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool135.not = icmp eq i8 %45, 0
  br i1 %tobool135.not, label %if.end134.if.end140_crit_edge, label %if.then136

if.end134.if.end140_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %scu = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %scu to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %scu, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 216, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call139 = call i32 @regmap_write(ptr noundef %49, i32 noundef 132, i32 noundef 131072) #7
  br label %if.end140

if.end140:                                        ; preds = %if.then136, %if.end134.if.end140_crit_edge
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  %call.i191 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 128, i32 noundef 1280, i32 noundef 1280, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end140, %if.end123.cleanup_crit_edge, %if.end116.cleanup_crit_edge, %if.end107.cleanup_crit_edge, %if.end94.cleanup_crit_edge, %if.then86, %do.body74, %if.then60, %do.body48, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %copy_to_user.exit, %if.then.i179.cleanup_crit_edge, %if.then21, %do.body, %if.end9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call.i191, %if.end140 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -6, %if.then21 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -22, %if.end34.cleanup_crit_edge ], [ -6, %if.then60 ], [ -6, %if.then86 ], [ -22, %if.end40.cleanup_crit_edge ], [ -22, %if.end94.cleanup_crit_edge ], [ -22, %if.end107.cleanup_crit_edge ], [ %call120, %if.end116.cleanup_crit_edge ], [ %call131, %if.end123.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -6, %do.body ], [ -6, %do.body48 ], [ -6, %do.body74 ], [ -14, %if.then11.i.i ], [ -14, %if.then.i179.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %map) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_lpc_ctrl_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %sub.i = sub i32 %3, %5
  %shr.i = lshr i32 %sub.i, 12
  %add = add i32 %shr.i, %7
  %mem_size = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %mem_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_size, align 4
  %shr = lshr i32 %9, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shr)
  %cmp = icmp ugt i32 %add, %shr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %10 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %11, -61
  %mem_base = getelementptr inbounds %struct.aspeed_lpc_ctrl, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %mem_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mem_base, align 4
  %shr3 = lshr i32 %13, 12
  %add5 = add i32 %shr3, %7
  %call6 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %5, i32 noundef %add5, i32 noundef %sub.i, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  %. = select i1 %tobool.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !84, !85, !87, !89, !90, !92, !94}
!llvm.named.register.sp = !{!96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_aspeed_lpc_ctrl__232_361_aspeed_lpc_ctrl_driver_init6, !1, !"__initcall__kmod_aspeed_lpc_ctrl__232_361_aspeed_lpc_ctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 361, i32 1}
!2 = !{ptr @__exitcall_aspeed_lpc_ctrl_driver_exit, !1, !"__exitcall_aspeed_lpc_ctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file233, !4, !"__UNIQUE_ID_file233", i1 false, i1 false}
!4 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 364, i32 1}
!5 = !{ptr @__UNIQUE_ID_license234, !4, !"__UNIQUE_ID_license234", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author235, !7, !"__UNIQUE_ID_author235", i1 false, i1 false}
!7 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 365, i32 1}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 366, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 354, i32 12}
!12 = !{ptr @aspeed_lpc_ctrl_driver, !13, !"aspeed_lpc_ctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 352, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 238, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 240, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug230, !17, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 245, i32 4}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @aspeed_lpc_ctrl_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 257, i32 40}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 259, i32 3}
!32 = !{ptr @aspeed_lpc_ctrl_probe.__UNIQUE_ID_ddebug231, !31, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 264, i32 4}
!35 = !{ptr @aspeed_lpc_ctrl_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 272, i32 4}
!39 = !{ptr @aspeed_lpc_ctrl_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 278, i32 4}
!43 = !{ptr @aspeed_lpc_ctrl_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 285, i32 35}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 286, i32 35}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 287, i32 35}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 288, i32 3}
!53 = !{ptr @aspeed_lpc_ctrl_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 294, i32 3}
!57 = !{ptr @aspeed_lpc_ctrl_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 298, i32 44}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 301, i32 54}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 303, i32 4}
!65 = !{ptr @aspeed_lpc_ctrl_probe._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 311, i32 10}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 314, i32 3}
!71 = !{ptr @aspeed_lpc_ctrl_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 324, i32 3}
!75 = !{ptr @aspeed_lpc_ctrl_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @aspeed_lpc_ctrl_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @aspeed_lpc_ctrl_fops, !78, !"aspeed_lpc_ctrl_fops", i1 false, i1 false}
!78 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 216, i32 37}
!79 = !{ptr @.str.41, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 98, i32 4}
!81 = !{ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug227, !80, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 139, i32 5}
!84 = !{ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug228, !83, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!85 = !{ptr @aspeed_lpc_ctrl_ioctl.__UNIQUE_ID_ddebug229, !86, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!86 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 147, i32 5}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!89 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!94 = !{ptr @aspeed_lpc_ctrl_match, !95, !"aspeed_lpc_ctrl_match", i1 false, i1 false}
!95 = !{!"../drivers/soc/aspeed/aspeed-lpc-ctrl.c", i32 345, i32 34}
!96 = !{!"sp"}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148729556, i64 2148729561, i64 2148729574, i64 2148729618, i64 2148729652, i64 2148729673}
!107 = !{i32 0, i32 33}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 5718064}
!110 = !{i64 5718261}
!111 = !{i64 2153203494}
!112 = !{i8 0, i8 2}
