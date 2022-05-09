; ModuleID = '/llk/IR_all_yes/drivers/misc/sram.c_pt.bc'
source_filename = "../drivers/misc/sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sram_config = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sram_dev = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sram_reserve = type { %struct.list_head, i32, i32, %struct.resource, i8, i8, i8, ptr }
%struct.sram_partition = type { ptr, ptr, %struct.bin_attribute, %struct.mutex, %struct.list_head }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }

@__initcall__kmod_sram__187_475_sram_init2 = internal global ptr @sram_init, section ".initcall2.init", align 4
@sram_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sram_probe, ptr @sram_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sram_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@sram_dt_ids = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmio-sram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-securam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_securam_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra234-sysram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra_sysram_config }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"no-memory-wc\00", [19 x i8] zeroinitializer }, align 32
@sram_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 402, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not map SRAM registers\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/misc/sram.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sram_probe._entry_ptr = internal global ptr @sram_probe._entry, section ".printk_index", align 4
@sram_probe.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SRAM pool: %zu KiB @ 0x%p\0A\00", [37 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not get address for node %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sram_reserve_regions\00", [43 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry_ptr = internal global ptr @sram_reserve_regions._entry, section ".printk_index", align 4
@sram_reserve_regions._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 211, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"reserved block %pOF outside the sram area\0A\00", [53 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry_ptr.12 = internal global ptr @sram_reserve_regions._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"export\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pool\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"protect-exec\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.4, i32 239, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%pOF has invalid label name\0A\00", [35 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry_ptr.19 = internal global ptr @sram_reserve_regions._entry.17, section ".printk_index", align 4
@sram_reserve_regions.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.20, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"found %sblock '%s' 0x%x-0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"exported \00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@sram_reserve_regions.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.23, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"found reserved block 0x%x-0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.9, ptr @.str.4, i32 287, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"block at 0x%x starts after current offset 0x%lx\0A\00", [47 x i8] zeroinitializer }, align 32
@sram_reserve_regions._entry_ptr.26 = internal global ptr @sram_reserve_regions._entry.24, section ".printk_index", align 4
@sram_reserve_regions.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.4, ptr @.str.27, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adding chunk 0x%lx-0x%lx\0A\00", [38 x i8] zeroinitializer }, align 32
@sram_add_partition.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&part->lock\00", [20 x i8] zeroinitializer }, align 32
@sram_add_partition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not map SRAM at %pr\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sram_add_partition\00", [45 x i8] zeroinitializer }, align 32
@sram_add_partition._entry_ptr = internal global ptr @sram_add_partition._entry, section ".printk_index", align 4
@sram_add_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 68, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register subpool: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sram_add_pool\00", [18 x i8] zeroinitializer }, align 32
@sram_add_pool._entry_ptr = internal global ptr @sram_add_pool._entry, section ".printk_index", align 4
@sram_add_export.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%llx.sram\00", [22 x i8] zeroinitializer }, align 32
@sram_free_partitions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"removed pool while SRAM allocated\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sram_free_partitions\00", [43 x i8] zeroinitializer }, align 32
@sram_free_partitions._entry_ptr = internal global ptr @sram_free_partitions._entry, section ".printk_index", align 4
@sram_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"removed while SRAM allocated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sram_remove\00", [20 x i8] zeroinitializer }, align 32
@sram_remove._entry_ptr = internal global ptr @sram_remove._entry, section ".printk_index", align 4
@atmel_securam_config = internal constant { %struct.sram_config, [24 x i8] } { %struct.sram_config { ptr @atmel_securam_wait, i8 0 }, [24 x i8] zeroinitializer }, align 32
@tegra_sysram_config = internal constant { %struct.sram_config, [24 x i8] } { %struct.sram_config { ptr null, i8 1 }, [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,sama5d2-secumod\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"sram_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 461, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 463, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"sram_dt_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 369, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 392, i32 64 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 402, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 432, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 202, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 209, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 221, i32 31 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 224, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 227, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 235, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 237, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 252, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 256, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 285, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 317, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 99, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 110, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 68, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 78, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 80, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 160, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 453, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"atmel_securam_config\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 354, i32 33 }
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c"tegra_sysram_config\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 365, i32 33 }
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [23 x i8] c"../drivers/misc/sram.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 345, i32 46 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__initcall__kmod_sram__187_475_sram_init2, ptr @sram_add_partition._entry, ptr @sram_add_partition._entry_ptr, ptr @sram_add_pool._entry, ptr @sram_add_pool._entry_ptr, ptr @sram_free_partitions._entry, ptr @sram_free_partitions._entry_ptr, ptr @sram_probe._entry, ptr @sram_probe._entry_ptr, ptr @sram_remove._entry, ptr @sram_remove._entry_ptr, ptr @sram_reserve_regions._entry, ptr @sram_reserve_regions._entry.10, ptr @sram_reserve_regions._entry.17, ptr @sram_reserve_regions._entry.24, ptr @sram_reserve_regions._entry_ptr, ptr @sram_reserve_regions._entry_ptr.12, ptr @sram_reserve_regions._entry_ptr.19, ptr @sram_reserve_regions._entry_ptr.26, ptr @sram_driver, ptr @.str, ptr @sram_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @sram_add_partition.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @sram_add_export.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @atmel_securam_config, ptr @tegra_sysram_config, ptr @.str.38], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_dt_ids to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_reserve_regions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_reserve_regions._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_reserve_regions._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_reserve_regions._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_add_partition.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_add_partition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_add_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_add_export.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_free_partitions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_securam_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_sysram_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sram_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev4, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i132 = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i132, null
  %no_memory_wc = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %tobool.i to i8
  %3 = ptrtoint ptr %no_memory_wc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %no_memory_wc, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %call.i, align 4
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end.if.then10_crit_edge, label %lor.lhs.false

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %map_only_reserved = getelementptr inbounds %struct.sram_config, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %map_only_reserved to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %map_only_reserved, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %7 = ptrtoint ptr %no_memory_wc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %no_memory_wc, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #8
  br label %if.end20

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @devm_ioremap_resource_wc(ptr noundef %dev, ptr noundef %call11) #8
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then14
  %call16.sink = phi ptr [ %call18, %if.else ], [ %call16, %if.then14 ]
  %9 = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call16.sink, ptr %9, align 4
  %cmp.i = icmp ugt ptr %call16.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %9, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %14 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev4, align 4
  %call29 = tail call ptr @devm_gen_pool_create(ptr noundef %15, i32 noundef 5, i32 noundef -1, ptr noundef null) #8
  %pool = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %pool, align 4
  %cmp.i133 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %if.then32, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call29 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end27.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %18 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev4, align 4
  %call38 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %clk, align 4
  %cmp.i134 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %clk, align 4
  br label %if.end46

if.else43:                                        ; preds = %if.end36
  %call.i135 = tail call i32 @clk_prepare(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else43.if.end46_crit_edge

if.else43.if.end46_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.end.i:                                         ; preds = %if.else43
  %call1.i = tail call i32 @clk_enable(ptr noundef %call38) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end46_crit_edge, label %if.then3.i

if.end.i.if.end46_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call38) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then3.i, %if.end.i.if.end46_crit_edge, %if.else43.if.end46_crit_edge, %if.then41
  %call47 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call48 = tail call fastcc i32 @sram_reserve_regions(ptr noundef nonnull %call.i, ptr noundef %call47)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end46.err_disable_clk_crit_edge

if.end46.err_disable_clk_crit_edge:               ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clk

if.end51:                                         ; preds = %if.end46
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br i1 %tobool8.not, label %if.end51.if.end60_crit_edge, label %land.lhs.true

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

land.lhs.true:                                    ; preds = %if.end51
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %tobool53.not = icmp eq ptr %24, null
  br i1 %tobool53.not, label %land.lhs.true.if.end60_crit_edge, label %if.then54

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then54:                                        ; preds = %land.lhs.true
  %call56 = tail call i32 %24() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then54.if.end60_crit_edge, label %err_free_partitions

if.then54.if.end60_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.end60:                                         ; preds = %if.then54.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %if.end51.if.end60_crit_edge
  %pool61 = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %pool61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pool61, align 4
  %tobool62.not = icmp eq ptr %26, null
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %do.body64

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sram_probe.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sram_probe, %if.then70)) #8
          to label %cleanup [label %if.then70], !srcloc !100

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 4
  %29 = ptrtoint ptr %pool61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pool61, align 4
  %call73 = tail call i32 @gen_pool_size(ptr noundef %30) #8
  %div131 = lshr i32 %call73, 10
  %virt_base74 = getelementptr inbounds %struct.sram_dev, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %virt_base74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt_base74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sram_probe.__UNIQUE_ID_ddebug186, ptr noundef %28, ptr noundef nonnull @.str.7, i32 noundef %div131, ptr noundef %32) #8
  br label %cleanup

err_free_partitions:                              ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sram_free_partitions(ptr noundef nonnull %call.i)
  br label %err_disable_clk

err_disable_clk:                                  ; preds = %err_free_partitions, %if.end46.err_disable_clk_crit_edge
  %ret.0 = phi i32 [ %call48, %if.end46.err_disable_clk_crit_edge ], [ %call56, %err_free_partitions ]
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  %tobool80.not = icmp eq ptr %34, null
  br i1 %tobool80.not, label %err_disable_clk.cleanup_crit_edge, label %if.then81

err_disable_clk.cleanup_crit_edge:                ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then81:                                        ; preds = %err_disable_clk
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %34) #8
  tail call void @clk_unprepare(ptr noundef nonnull %34) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %err_disable_clk.cleanup_crit_edge, %if.then70, %do.body64, %if.end60.cleanup_crit_edge, %if.then32, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end ], [ %17, %if.then32 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end60.cleanup_crit_edge ], [ %ret.0, %if.then81 ], [ %ret.0, %err_disable_clk.cleanup_crit_edge ], [ 0, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @sram_free_partitions(ptr noundef %1)
  %pool = getelementptr inbounds %struct.sram_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pool, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @gen_pool_avail(ptr noundef nonnull %3) #8
  %4 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pool, align 4
  %call4 = tail call i32 @gen_pool_size(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %call4)
  %cmp = icmp ult i32 %call2, %call4
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sram_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.36) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.sram_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %9) #8
  tail call void @clk_unprepare(ptr noundef nonnull %9) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource_wc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gen_pool_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sram_reserve_regions(ptr noundef %sram, ptr nocapture noundef readonly %res) unnamed_addr #2 align 64 {
entry:
  %reserve_list = alloca %struct.list_head, align 4
  %label = alloca ptr, align 4
  %child_res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reserve_list) #8
  %4 = getelementptr inbounds %struct.list_head, ptr %reserve_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label) #8
  %5 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %label, align 4, !annotation !101
  %6 = ptrtoint ptr %reserve_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %reserve_list, ptr %reserve_list, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reserve_list, ptr %4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %10 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res, align 4
  %sub.i = add i32 %9, 1
  %add.i = sub i32 %sub.i, %11
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  %call.i = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef null) #8
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %cond.true.cond.end_crit_edge, label %cond.true.for.body.i_crit_edge

cond.true.for.body.i_crit_edge:                   ; preds = %cond.true
  br label %for.body.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.true.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %cond.true.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %cond.true.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_available_child(ptr noundef nonnull %3, ptr noundef nonnull %child.06.i) #8
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

of_get_available_child_count.exit.loopexit:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add i32 %num.07.i, 2
  br label %cond.end

cond.end:                                         ; preds = %of_get_available_child_count.exit.loopexit, %cond.true.cond.end_crit_edge, %entry.cond.end_crit_edge
  %cond = phi i32 [ 1, %entry.cond.end_crit_edge ], [ 1, %cond.true.cond.end_crit_edge ], [ %phi.bo, %of_get_available_child_count.exit.loopexit ]
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %cond, i32 56) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %cond.end.cleanup213_crit_edge, label %if.end7.i.i, !prof !102

cond.end.cleanup213_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

if.end7.i.i:                                      ; preds = %cond.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #12
  %tobool3.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool3.not, label %if.end7.i.i.cleanup213_crit_edge, label %if.end

if.end7.i.i.cleanup213_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

if.end:                                           ; preds = %if.end7.i.i
  %call4 = call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef null) #8
  %cmp.not411 = icmp eq ptr %call4, null
  br i1 %cmp.not411, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %15 = getelementptr inbounds %struct.resource, ptr %child_res, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.0418 = phi ptr [ %call4, %for.body.lr.ph ], [ %call109, %for.inc.for.body_crit_edge ]
  %block.0413 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %exports.0412 = phi i32 [ 0, %for.body.lr.ph ], [ %exports.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %child_res) #8
  %16 = call ptr @memset(ptr %child_res, i32 255, i32 32)
  %call5 = call i32 @of_address_to_resource(ptr noundef nonnull %child.0418, i32 noundef 0, ptr noundef nonnull %child_res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.body.cleanup.thread.sink.split_crit_edge, label %if.end9

for.body.cleanup.thread.sink.split_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.end9:                                          ; preds = %for.body
  %17 = ptrtoint ptr %child_res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %child_res, align 4
  %19 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp11 = icmp ult i32 %18, %20
  br i1 %cmp11, label %if.end9.cleanup.thread.sink.split_crit_edge, label %lor.lhs.false

if.end9.cleanup.thread.sink.split_crit_edge:      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

lor.lhs.false:                                    ; preds = %if.end9
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp13 = icmp ugt i32 %22, %24
  br i1 %cmp13, label %lor.lhs.false.cleanup.thread.sink.split_crit_edge, label %if.end19

lor.lhs.false.cleanup.thread.sink.split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.end19:                                         ; preds = %lor.lhs.false
  %sub = sub i32 %18, %20
  %start22 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 1
  %25 = ptrtoint ptr %start22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %start22, align 4
  %sub.i333 = sub i32 1, %18
  %add.i334 = add i32 %sub.i333, %22
  %size24 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 2
  %26 = ptrtoint ptr %size24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i334, ptr %size24, align 4
  %res25 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %res25, ptr %child_res, i32 32)
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %block.0413, ptr noundef %29, ptr noundef nonnull %reserve_list) #8
  br i1 %call.i.i, label %if.end.i.i336, label %if.end19.list_add_tail.exit_crit_edge

if.end19.list_add_tail.exit_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i336:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %block.0413, ptr %4, align 4
  %31 = ptrtoint ptr %block.0413 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %reserve_list, ptr %block.0413, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %block.0413, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %block.0413, ptr %29, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i336, %if.end19.list_add_tail.exit_crit_edge
  %call26 = call ptr @of_find_property(ptr noundef nonnull %child.0418, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %list_add_tail.exit.if.end29_crit_edge, label %if.then28

list_add_tail.exit.if.end29_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %export = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 4
  %34 = ptrtoint ptr %export to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %export, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %list_add_tail.exit.if.end29_crit_edge
  %call30 = call ptr @of_find_property(ptr noundef nonnull %child.0418, ptr noundef nonnull @.str.14, ptr noundef null) #8
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %pool = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 5
  %35 = ptrtoint ptr %pool to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %pool, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %call34 = call ptr @of_find_property(ptr noundef nonnull %child.0418, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.if.end37_crit_edge, label %if.then36

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %protect_exec = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 6
  %36 = ptrtoint ptr %protect_exec to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %protect_exec, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end33.if.end37_crit_edge
  %export38 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 4
  %37 = ptrtoint ptr %export38 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %export38, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool39.not = icmp eq i8 %38, 0
  br i1 %tobool39.not, label %lor.lhs.false40, label %if.end37.land.lhs.true_crit_edge

if.end37.land.lhs.true_crit_edge:                 ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false40:                                  ; preds = %if.end37
  %pool41 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 5
  %39 = ptrtoint ptr %pool41 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pool41, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool42.not = icmp eq i8 %40, 0
  br i1 %tobool42.not, label %lor.lhs.false43, label %lor.lhs.false40.land.lhs.true_crit_edge

lor.lhs.false40.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false43:                                  ; preds = %lor.lhs.false40
  %protect_exec44 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 6
  %41 = ptrtoint ptr %protect_exec44 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %protect_exec44, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool45.not = icmp eq i8 %42, 0
  br i1 %tobool45.not, label %lor.lhs.false43.do.body87_crit_edge, label %lor.lhs.false43.land.lhs.true_crit_edge

lor.lhs.false43.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

lor.lhs.false43.do.body87_crit_edge:              ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

land.lhs.true:                                    ; preds = %lor.lhs.false43.land.lhs.true_crit_edge, %lor.lhs.false40.land.lhs.true_crit_edge, %if.end37.land.lhs.true_crit_edge
  %43 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool47.not = icmp eq i32 %44, 0
  br i1 %tobool47.not, label %land.lhs.true.do.body87_crit_edge, label %if.then48

land.lhs.true.do.body87_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

if.then48:                                        ; preds = %land.lhs.true
  %inc = add i32 %exports.0412, 1
  %45 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %label, align 4
  %call49 = call i32 @of_property_read_string(ptr noundef nonnull %child.0418, ptr noundef nonnull @.str.16, ptr noundef nonnull %label) #8
  %46 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call49, label %if.then48.cleanup.thread.sink.split_crit_edge [
    i32 0, label %if.then48.if.end58_crit_edge
    i32 -22, label %if.then48.if.end58_crit_edge537
  ]

if.then48.if.end58_crit_edge537:                  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then48.cleanup.thread.sink.split_crit_edge:    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.sink.split

if.end58:                                         ; preds = %if.then48.if.end58_crit_edge, %if.then48.if.end58_crit_edge537
  %47 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %label, align 4
  %tobool59.not = icmp eq ptr %48, null
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end61_crit_edge

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %child.0418 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %child.0418, align 4
  %51 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %label, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %54 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %label, align 4
  %call63 = call noalias ptr @devm_kstrdup(ptr noundef %53, ptr noundef %55, i32 noundef 3264) #8
  %label64 = getelementptr inbounds %struct.sram_reserve, ptr %block.0413, i32 0, i32 7
  %56 = ptrtoint ptr %label64 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call63, ptr %label64, align 4
  %tobool66.not = icmp eq ptr %call63, null
  br i1 %tobool66.not, label %if.end61.cleanup.thread_crit_edge, label %do.body69

if.end61.cleanup.thread_crit_edge:                ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

do.body69:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sram_reserve_regions.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sram_reserve_regions, %if.then74)) #8
          to label %for.inc [label %if.then74], !srcloc !100

if.then74:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  %59 = ptrtoint ptr %export38 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %export38, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool77.not = icmp eq i8 %60, 0
  %cond78 = select i1 %tobool77.not, ptr @.str.22, ptr @.str.21
  %61 = ptrtoint ptr %label64 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %label64, align 4
  %63 = ptrtoint ptr %start22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %start22, align 4
  %65 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %size24, align 4
  %add83 = add i32 %66, %64
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sram_reserve_regions.__UNIQUE_ID_ddebug183, ptr noundef %58, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond78, ptr noundef %62, i32 noundef %64, i32 noundef %add83) #8
  br label %for.inc

do.body87:                                        ; preds = %land.lhs.true.do.body87_crit_edge, %lor.lhs.false43.do.body87_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sram_reserve_regions.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sram_reserve_regions, %if.then99)) #8
          to label %for.inc [label %if.then99], !srcloc !100

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %69 = ptrtoint ptr %start22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %start22, align 4
  %71 = ptrtoint ptr %size24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size24, align 4
  %add104 = add i32 %72, %70
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sram_reserve_regions.__UNIQUE_ID_ddebug184, ptr noundef %68, ptr noundef nonnull @.str.23, i32 noundef %70, i32 noundef %add104) #8
  br label %for.inc

cleanup.thread.sink.split:                        ; preds = %if.then48.cleanup.thread.sink.split_crit_edge, %lor.lhs.false.cleanup.thread.sink.split_crit_edge, %if.end9.cleanup.thread.sink.split_crit_edge, %for.body.cleanup.thread.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %for.body.cleanup.thread.sink.split_crit_edge ], [ @.str.11, %if.end9.cleanup.thread.sink.split_crit_edge ], [ @.str.11, %lor.lhs.false.cleanup.thread.sink.split_crit_edge ], [ @.str.18, %if.then48.cleanup.thread.sink.split_crit_edge ]
  %ret.2.ph.ph = phi i32 [ %call5, %for.body.cleanup.thread.sink.split_crit_edge ], [ -22, %if.end9.cleanup.thread.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.thread.sink.split_crit_edge ], [ %call49, %if.then48.cleanup.thread.sink.split_crit_edge ]
  %73 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull %.str.8.sink, ptr noundef nonnull %child.0418) #11
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cleanup.thread.sink.split, %if.end61.cleanup.thread_crit_edge
  %ret.2.ph = phi i32 [ %ret.2.ph.ph, %cleanup.thread.sink.split ], [ -12, %if.end61.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %child_res) #8
  br label %err_chunks

for.inc:                                          ; preds = %if.then99, %do.body87, %if.then74, %do.body69
  %ret.1 = phi i32 [ %call49, %if.then74 ], [ %call5, %if.then99 ], [ %call49, %do.body69 ], [ %call5, %do.body87 ]
  %exports.1 = phi i32 [ %inc, %if.then74 ], [ %exports.0412, %if.then99 ], [ %inc, %do.body69 ], [ %exports.0412, %do.body87 ]
  %incdec.ptr = getelementptr %struct.sram_reserve, ptr %block.0413, i32 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %child_res) #8
  %call109 = call ptr @of_get_next_available_child(ptr noundef %3, ptr noundef nonnull %child.0418) #8
  %cmp.not = icmp eq ptr %call109, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  %exports.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %exports.1, %for.inc.for.end_crit_edge ]
  %sub110 = add i32 %cond, -1
  %arrayidx111 = getelementptr %struct.sram_reserve, ptr %call8.i.i, i32 %sub110
  %start112 = getelementptr %struct.sram_reserve, ptr %call8.i.i, i32 %sub110, i32 1
  %75 = ptrtoint ptr %start112 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add.i, ptr %start112, align 8
  %size115 = getelementptr %struct.sram_reserve, ptr %call8.i.i, i32 %sub110, i32 2
  %76 = ptrtoint ptr %size115 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %size115, align 4
  %77 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %4, align 4
  %call.i.i338 = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx111, ptr noundef %78, ptr noundef nonnull %reserve_list) #8
  br i1 %call.i.i338, label %if.end.i.i340, label %for.end.list_add_tail.exit341_crit_edge

for.end.list_add_tail.exit341_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit341

if.end.i.i340:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %arrayidx111, ptr %4, align 4
  %80 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %reserve_list, ptr %arrayidx111, align 8
  %prev3.i.i339 = getelementptr inbounds %struct.list_head, ptr %arrayidx111, i32 0, i32 1
  %81 = ptrtoint ptr %prev3.i.i339 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %78, ptr %prev3.i.i339, align 4
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %arrayidx111, ptr %78, align 4
  br label %list_add_tail.exit341

list_add_tail.exit341:                            ; preds = %if.end.i.i340, %for.end.list_add_tail.exit341_crit_edge
  call void @list_sort(ptr noundef null, ptr noundef nonnull %reserve_list, ptr noundef nonnull @sram_reserve_cmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exports.0.lcssa)
  %tobool119.not = icmp eq i32 %exports.0.lcssa, 0
  br i1 %tobool119.not, label %list_add_tail.exit341.if.end127_crit_edge, label %if.then120

list_add_tail.exit341.if.end127_crit_edge:        ; preds = %list_add_tail.exit341
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then120:                                       ; preds = %list_add_tail.exit341
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %exports.0.lcssa, i32 152) #8
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !102

devm_kcalloc.exit.thread:                         ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  %partition364 = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 6
  %85 = ptrtoint ptr %partition364 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %partition364, align 4
  br label %err_chunks

devm_kcalloc.exit:                                ; preds = %if.then120
  %86 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev, align 4
  %88 = extractvalue { i32, i1 } %83, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %87, i32 noundef %88, i32 noundef 3520) #8
  %partition = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 6
  %89 = ptrtoint ptr %partition to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call5.i.i, ptr %partition, align 4
  %tobool124.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool124.not, label %devm_kcalloc.exit.err_chunks_crit_edge, label %devm_kcalloc.exit.if.end127_crit_edge

devm_kcalloc.exit.if.end127_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

devm_kcalloc.exit.err_chunks_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chunks

if.end127:                                        ; preds = %devm_kcalloc.exit.if.end127_crit_edge, %list_add_tail.exit341.if.end127_crit_edge
  %90 = ptrtoint ptr %reserve_list to i32
  call void @__asan_load4_noabort(i32 %90)
  %block.2422 = load ptr, ptr %reserve_list, align 4
  %cmp131.not423 = icmp eq ptr %block.2422, %reserve_list
  br i1 %cmp131.not423, label %if.end127.err_chunks_crit_edge, label %for.body134.lr.ph

if.end127.err_chunks_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chunks

for.body134.lr.ph:                                ; preds = %if.end127
  %partition.i = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 6
  %partitions.i = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 7
  %no_memory_wc.i = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 3
  %virt_base18.i = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 2
  %pool173 = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 4
  br label %for.body134

for.body134:                                      ; preds = %for.inc206.for.body134_crit_edge, %for.body134.lr.ph
  %block.2428 = phi ptr [ %block.2422, %for.body134.lr.ph ], [ %block.2, %for.inc206.for.body134_crit_edge ]
  %cur_start.0426 = phi i32 [ 0, %for.body134.lr.ph ], [ %add205, %for.inc206.for.body134_crit_edge ]
  %ret.3424 = phi i32 [ %ret.0.lcssa, %for.body134.lr.ph ], [ %ret.6, %for.inc206.for.body134_crit_edge ]
  %start135 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 1
  %91 = ptrtoint ptr %start135 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %start135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %cur_start.0426)
  %cmp136 = icmp ult i32 %92, %cur_start.0426
  br i1 %cmp136, label %do.end140, label %if.end143

do.end140:                                        ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.25, i32 noundef %92, i32 noundef %cur_start.0426) #11
  call fastcc void @sram_free_partitions(ptr noundef %sram)
  br label %err_chunks

if.end143:                                        ; preds = %for.body134
  %export144 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 4
  %95 = ptrtoint ptr %export144 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %export144, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool145.not = icmp eq i8 %96, 0
  br i1 %tobool145.not, label %lor.lhs.false146, label %if.end143.land.lhs.true152_crit_edge

if.end143.land.lhs.true152_crit_edge:             ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true152

lor.lhs.false146:                                 ; preds = %if.end143
  %pool147 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 5
  %97 = ptrtoint ptr %pool147 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %pool147, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool148.not = icmp eq i8 %98, 0
  br i1 %tobool148.not, label %lor.lhs.false149, label %lor.lhs.false146.land.lhs.true152_crit_edge

lor.lhs.false146.land.lhs.true152_crit_edge:      ; preds = %lor.lhs.false146
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true152

lor.lhs.false149:                                 ; preds = %lor.lhs.false146
  %protect_exec150 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 6
  %99 = ptrtoint ptr %protect_exec150 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %protect_exec150, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool151.not = icmp eq i8 %100, 0
  br i1 %tobool151.not, label %lor.lhs.false149.if.end163_crit_edge, label %lor.lhs.false149.land.lhs.true152_crit_edge

lor.lhs.false149.land.lhs.true152_crit_edge:      ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true152

lor.lhs.false149.if.end163_crit_edge:             ; preds = %lor.lhs.false149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

land.lhs.true152:                                 ; preds = %lor.lhs.false149.land.lhs.true152_crit_edge, %lor.lhs.false146.land.lhs.true152_crit_edge, %if.end143.land.lhs.true152_crit_edge
  %size153 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 2
  %101 = ptrtoint ptr %size153 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %size153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool154.not = icmp eq i32 %102, 0
  br i1 %tobool154.not, label %land.lhs.true152.if.end163_crit_edge, label %if.then155

land.lhs.true152.if.end163_crit_edge:             ; preds = %land.lhs.true152
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then155:                                       ; preds = %land.lhs.true152
  %103 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %res, align 4
  %add158 = add i32 %104, %92
  %105 = ptrtoint ptr %partition.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %partition.i, align 4
  %107 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %partitions.i, align 4
  %arrayidx.i = getelementptr %struct.sram_partition, ptr %106, i32 %108
  %lock.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 3
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @sram_add_partition.__key) #8
  %109 = ptrtoint ptr %sram to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sram, align 4
  %tobool.not.i = icmp eq ptr %110, null
  br i1 %tobool.not.i, label %if.then155.if.else17.i_crit_edge, label %land.lhs.true.i

if.then155.if.else17.i_crit_edge:                 ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

land.lhs.true.i:                                  ; preds = %if.then155
  %map_only_reserved.i = getelementptr inbounds %struct.sram_config, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %map_only_reserved.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %map_only_reserved.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool2.not.i = icmp eq i8 %112, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.else17.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else17.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %113 = ptrtoint ptr %no_memory_wc.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %no_memory_wc.i, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool3.not.i = icmp eq i8 %114, 0
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 4
  %res6.i = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 3
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i344 = call ptr @devm_ioremap_resource(ptr noundef %116, ptr noundef %res6.i) #8
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call ptr @devm_ioremap_resource_wc(ptr noundef %116, ptr noundef %res6.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then4.i
  %virt_base.0.i = phi ptr [ %call.i344, %if.then4.i ], [ %call7.i, %if.else.i ]
  %cmp.i.i = icmp ugt ptr %virt_base.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %if.end.i.if.end21.i_crit_edge

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

cleanup.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.29, ptr noundef %res6.i) #11
  br label %sram_add_partition.exit

if.else17.i:                                      ; preds = %land.lhs.true.i.if.else17.i_crit_edge, %if.then155.if.else17.i_crit_edge
  %119 = ptrtoint ptr %virt_base18.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %virt_base18.i, align 4
  %121 = ptrtoint ptr %start135 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %start135, align 4
  %add.ptr.i = getelementptr i8, ptr %120, i32 %122
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else17.i, %if.end.i.if.end21.i_crit_edge
  %storemerge.i = phi ptr [ %add.ptr.i, %if.else17.i ], [ %virt_base.0.i, %if.end.i.if.end21.i_crit_edge ]
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %storemerge.i, ptr %arrayidx.i, align 4
  %pool.i = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 5
  %124 = ptrtoint ptr %pool.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pool.i, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool22.not.i = icmp eq i8 %125, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end28.i_crit_edge, label %if.then23.i

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then23.i:                                      ; preds = %if.end21.i
  %126 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev, align 4
  %label.i.i = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 7
  %128 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %label.i.i, align 4
  %call.i.i345 = call ptr @devm_gen_pool_create(ptr noundef %127, i32 noundef 5, i32 noundef -1, ptr noundef %129) #8
  %pool.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 1
  %130 = ptrtoint ptr %pool.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.i.i345, ptr %pool.i.i, align 4
  %cmp.i.i.i346 = icmp ugt ptr %call.i.i345, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i346, label %if.then23.i.sram_add_partition.exit_crit_edge, label %if.end.i.i347

if.then23.i.sram_add_partition.exit_crit_edge:    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sram_add_partition.exit

if.end.i.i347:                                    ; preds = %if.then23.i
  %131 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx.i, align 4
  %133 = ptrtoint ptr %132 to i32
  %134 = ptrtoint ptr %size153 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %size153, align 4
  %call.i.i.i = call i32 @gen_pool_add_owner(ptr noundef %call.i.i345, i32 noundef %133, i32 noundef %add158, i32 noundef %135, i32 noundef -1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i92.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i92.i, label %sram_add_pool.exit.thread114.i, label %if.end.i.i347.if.end28.i_crit_edge

if.end.i.i347.if.end28.i_crit_edge:               ; preds = %if.end.i.i347
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

sram_add_pool.exit.thread114.i:                   ; preds = %if.end.i.i347
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.31, i32 noundef %call.i.i.i) #11
  br label %if.then161

if.end28.i:                                       ; preds = %if.end.i.i347.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %138 = ptrtoint ptr %export144 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %export144, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool29.not.i = icmp eq i8 %139, 0
  br i1 %tobool29.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then30.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then30.i:                                      ; preds = %if.end28.i
  %battr.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2
  %key.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2, i32 0, i32 3
  %140 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @sram_add_export.__key, ptr %key.i.i, align 4
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 4
  %conv.i.i = zext i32 %add158 to i64
  %call.i94.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %142, i32 noundef 3264, ptr noundef nonnull @.str.33, i64 noundef %conv.i.i) #8
  %143 = ptrtoint ptr %battr.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call.i94.i, ptr %battr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool.not.i.i, label %if.then30.i.if.then161_crit_edge, label %sram_add_export.exit.i

if.then30.i.if.then161_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

sram_add_export.exit.i:                           ; preds = %if.then30.i
  %mode.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2, i32 0, i32 1
  %144 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 384, ptr %mode.i.i, align 4
  %read.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2, i32 4
  %145 = ptrtoint ptr %read.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @sram_read, ptr %read.i.i, align 4
  %write.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2, i32 5
  %146 = ptrtoint ptr %write.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @sram_write, ptr %write.i.i, align 4
  %147 = ptrtoint ptr %size153 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %size153, align 4
  %size11.i.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 2, i32 1
  %149 = ptrtoint ptr %size11.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %148, ptr %size11.i.i, align 4
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %call14.i.i = call i32 @device_create_bin_file(ptr noundef %151, ptr noundef %battr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool32.not.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool32.not.i, label %sram_add_export.exit.i.if.end35.i_crit_edge, label %sram_add_export.exit.i.if.then161_crit_edge

sram_add_export.exit.i.if.then161_crit_edge:      ; preds = %sram_add_export.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

sram_add_export.exit.i.if.end35.i_crit_edge:      ; preds = %sram_add_export.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end35.i:                                       ; preds = %sram_add_export.exit.i.if.end35.i_crit_edge, %if.end28.i.if.end35.i_crit_edge
  %protect_exec.i = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 6
  %152 = ptrtoint ptr %protect_exec.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %protect_exec.i, align 2, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool36.not.i = icmp eq i8 %153, 0
  br i1 %tobool36.not.i, label %if.end35.i.sram_add_partition.exit.thread369_crit_edge, label %if.then37.i

if.end35.i.sram_add_partition.exit.thread369_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sram_add_partition.exit.thread369

if.then37.i:                                      ; preds = %if.end35.i
  %call38.i = call i32 @sram_check_protect_exec(ptr noundef %sram, ptr noundef %block.2428, ptr noundef %arrayidx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.then37.i.if.then161_crit_edge

if.then37.i.if.then161_crit_edge:                 ; preds = %if.then37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then161

if.end41.i:                                       ; preds = %if.then37.i
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  %label.i99.i = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 7
  %156 = ptrtoint ptr %label.i99.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %label.i99.i, align 4
  %call.i100.i = call ptr @devm_gen_pool_create(ptr noundef %155, i32 noundef 5, i32 noundef -1, ptr noundef %157) #8
  %pool.i101.i = getelementptr %struct.sram_partition, ptr %106, i32 %108, i32 1
  %158 = ptrtoint ptr %pool.i101.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call.i100.i, ptr %pool.i101.i, align 4
  %cmp.i.i102.i = icmp ugt ptr %call.i100.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i102.i, label %if.end41.i.sram_add_partition.exit_crit_edge, label %if.end.i107.i

if.end41.i.sram_add_partition.exit_crit_edge:     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sram_add_partition.exit

if.end.i107.i:                                    ; preds = %if.end41.i
  %159 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx.i, align 4
  %161 = ptrtoint ptr %160 to i32
  %162 = ptrtoint ptr %size153 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %size153, align 4
  %call.i.i105.i = call i32 @gen_pool_add_owner(ptr noundef %call.i100.i, i32 noundef %161, i32 noundef %add158, i32 noundef %163, i32 noundef -1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105.i)
  %cmp.i106.i = icmp slt i32 %call.i.i105.i, 0
  br i1 %cmp.i106.i, label %sram_add_pool.exit110.thread121.i, label %if.end45.i

sram_add_pool.exit110.thread121.i:                ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.31, i32 noundef %call.i.i105.i) #11
  br label %if.then161

if.end45.i:                                       ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  %call46.i = call i32 @sram_add_protect_exec(ptr noundef %arrayidx.i) #8
  br label %sram_add_partition.exit.thread369

sram_add_partition.exit.thread369:                ; preds = %if.end45.i, %if.end35.i.sram_add_partition.exit.thread369_crit_edge
  %166 = ptrtoint ptr %partitions.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %partitions.i, align 4
  %inc.i348 = add i32 %167, 1
  store i32 %inc.i348, ptr %partitions.i, align 4
  br label %if.end163

sram_add_partition.exit:                          ; preds = %if.end41.i.sram_add_partition.exit_crit_edge, %if.then23.i.sram_add_partition.exit_crit_edge, %cleanup.thread.i
  %retval.1.i.in = phi ptr [ %virt_base.0.i, %cleanup.thread.i ], [ %call.i100.i, %if.end41.i.sram_add_partition.exit_crit_edge ], [ %call.i.i345, %if.then23.i.sram_add_partition.exit_crit_edge ]
  %retval.1.i = ptrtoint ptr %retval.1.i.in to i32
  br label %if.then161

if.then161:                                       ; preds = %sram_add_partition.exit, %sram_add_pool.exit110.thread121.i, %if.then37.i.if.then161_crit_edge, %sram_add_export.exit.i.if.then161_crit_edge, %if.then30.i.if.then161_crit_edge, %sram_add_pool.exit.thread114.i
  %retval.1.i368 = phi i32 [ %retval.1.i, %sram_add_partition.exit ], [ %call.i.i105.i, %sram_add_pool.exit110.thread121.i ], [ %call.i.i.i, %sram_add_pool.exit.thread114.i ], [ %call14.i.i, %sram_add_export.exit.i.if.then161_crit_edge ], [ %call38.i, %if.then37.i.if.then161_crit_edge ], [ -12, %if.then30.i.if.then161_crit_edge ]
  call fastcc void @sram_free_partitions(ptr noundef %sram)
  br label %err_chunks

if.end163:                                        ; preds = %sram_add_partition.exit.thread369, %land.lhs.true152.if.end163_crit_edge, %lor.lhs.false149.if.end163_crit_edge
  %ret.4 = phi i32 [ %ret.3424, %land.lhs.true152.if.end163_crit_edge ], [ %ret.3424, %lor.lhs.false149.if.end163_crit_edge ], [ 0, %sram_add_partition.exit.thread369 ]
  %168 = ptrtoint ptr %start135 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %start135, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %cur_start.0426)
  %cmp165 = icmp eq i32 %169, %cur_start.0426
  br i1 %cmp165, label %if.end163.for.inc206_crit_edge, label %if.end170

if.end163.for.inc206_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc206

if.end170:                                        ; preds = %if.end163
  %sub172 = sub i32 %169, %cur_start.0426
  %170 = ptrtoint ptr %pool173 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %pool173, align 4
  %tobool174.not = icmp eq ptr %171, null
  br i1 %tobool174.not, label %if.end170.if.end202_crit_edge, label %do.body176

if.end170.if.end202_crit_edge:                    ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

do.body176:                                       ; preds = %if.end170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sram_reserve_regions.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sram_reserve_regions, %if.then188)) #8
          to label %do.end193 [label %if.then188], !srcloc !100

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sram_reserve_regions.__UNIQUE_ID_ddebug185, ptr noundef %173, ptr noundef nonnull @.str.27, i32 noundef %cur_start.0426, i32 noundef %169) #8
  br label %do.end193

do.end193:                                        ; preds = %if.then188, %do.body176
  %174 = ptrtoint ptr %pool173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %pool173, align 4
  %176 = ptrtoint ptr %virt_base18.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %virt_base18.i, align 4
  %178 = ptrtoint ptr %177 to i32
  %add195 = add i32 %cur_start.0426, %178
  %179 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %res, align 4
  %add197 = add i32 %180, %cur_start.0426
  %call.i349 = call i32 @gen_pool_add_owner(ptr noundef %175, i32 noundef %add195, i32 noundef %add197, i32 noundef %sub172, i32 noundef -1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %cmp199 = icmp slt i32 %call.i349, 0
  br i1 %cmp199, label %if.then200, label %do.end193.if.end202_crit_edge

do.end193.if.end202_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end202

if.then200:                                       ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @sram_free_partitions(ptr noundef %sram)
  br label %err_chunks

if.end202:                                        ; preds = %do.end193.if.end202_crit_edge, %if.end170.if.end202_crit_edge
  %ret.5 = phi i32 [ %call.i349, %do.end193.if.end202_crit_edge ], [ %ret.4, %if.end170.if.end202_crit_edge ]
  %181 = ptrtoint ptr %start135 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %start135, align 4
  br label %for.inc206

for.inc206:                                       ; preds = %if.end202, %if.end163.for.inc206_crit_edge
  %.sink478 = phi i32 [ %182, %if.end202 ], [ %cur_start.0426, %if.end163.for.inc206_crit_edge ]
  %ret.6 = phi i32 [ %ret.5, %if.end202 ], [ %ret.4, %if.end163.for.inc206_crit_edge ]
  %size204 = getelementptr inbounds %struct.sram_reserve, ptr %block.2428, i32 0, i32 2
  %183 = ptrtoint ptr %size204 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size204, align 4
  %add205 = add i32 %184, %.sink478
  %185 = ptrtoint ptr %block.2428 to i32
  call void @__asan_load4_noabort(i32 %185)
  %block.2 = load ptr, ptr %block.2428, align 4
  %cmp131.not = icmp eq ptr %block.2, %reserve_list
  br i1 %cmp131.not, label %for.inc206.err_chunks_crit_edge, label %for.inc206.for.body134_crit_edge

for.inc206.for.body134_crit_edge:                 ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body134

for.inc206.err_chunks_crit_edge:                  ; preds = %for.inc206
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chunks

err_chunks:                                       ; preds = %for.inc206.err_chunks_crit_edge, %if.then200, %if.then161, %do.end140, %if.end127.err_chunks_crit_edge, %devm_kcalloc.exit.err_chunks_crit_edge, %devm_kcalloc.exit.thread, %cleanup.thread
  %ret.7 = phi i32 [ -22, %do.end140 ], [ %retval.1.i368, %if.then161 ], [ %call.i349, %if.then200 ], [ -12, %devm_kcalloc.exit.err_chunks_crit_edge ], [ %ret.2.ph, %cleanup.thread ], [ -12, %devm_kcalloc.exit.thread ], [ %ret.0.lcssa, %if.end127.err_chunks_crit_edge ], [ %ret.6, %for.inc206.err_chunks_crit_edge ]
  %child.1 = phi ptr [ null, %do.end140 ], [ null, %if.then161 ], [ null, %if.then200 ], [ null, %devm_kcalloc.exit.err_chunks_crit_edge ], [ %child.0418, %cleanup.thread ], [ null, %devm_kcalloc.exit.thread ], [ null, %if.end127.err_chunks_crit_edge ], [ null, %for.inc206.err_chunks_crit_edge ]
  call void @of_node_put(ptr noundef %child.1) #8
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %cleanup213

cleanup213:                                       ; preds = %err_chunks, %if.end7.i.i.cleanup213_crit_edge, %cond.end.cleanup213_crit_edge
  %retval.0 = phi i32 [ %ret.7, %err_chunks ], [ -12, %if.end7.i.i.cleanup213_crit_edge ], [ -12, %cond.end.cleanup213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reserve_list) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sram_free_partitions(ptr nocapture noundef %sram) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %partitions = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 7
  %0 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %partitions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool3.not28 = icmp eq i32 %.pr, 0
  br i1 %tobool3.not28, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %partition = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 6
  %3 = ptrtoint ptr %partition to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %partition, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.sram_partition, ptr %4, i32 %sub
  %dev = getelementptr inbounds %struct.sram_dev, ptr %sram, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %part.029 = phi ptr [ %arrayidx, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %size = getelementptr inbounds %struct.sram_partition, ptr %part.029, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  br i1 %tobool4.not, label %for.body.if.end7_crit_edge, label %if.then5

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %battr = getelementptr inbounds %struct.sram_partition, ptr %part.029, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void @device_remove_bin_file(ptr noundef %8, ptr noundef %battr) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %for.body.if.end7_crit_edge
  %pool = getelementptr inbounds %struct.sram_partition, ptr %part.029, i32 0, i32 1
  %9 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pool, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.for.inc_crit_edge, label %land.lhs.true

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end7
  %call = tail call i32 @gen_pool_avail(ptr noundef nonnull %10) #8
  %11 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pool, align 4
  %call11 = tail call i32 @gen_pool_size(ptr noundef %12) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call11)
  %cmp = icmp ult i32 %call, %call11
  br i1 %cmp, label %do.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.34) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %15 = ptrtoint ptr %partitions to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %partitions, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %partitions, align 4
  %incdec.ptr = getelementptr %struct.sram_partition, ptr %part.029, i32 -1
  %tobool3.not = icmp eq i32 %dec, 0
  br i1 %tobool3.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @list_sort(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sram_reserve_cmp(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.sram_reserve, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %start4 = getelementptr inbounds %struct.sram_reserve, ptr %b, i32 0, i32 1
  %2 = ptrtoint ptr %start4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start4, align 4
  %sub = sub i32 %1, %3
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_check_protect_exec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sram_add_protect_exec(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %pos, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -8
  %lock = getelementptr i8, ptr %attr, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %idx.ext
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr1, i32 noundef %count) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sram_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readnone %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %pos, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %attr, i32 -8
  %lock = getelementptr i8, ptr %attr, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr1 = getelementptr i8, ptr %1, i32 %idx.ext
  tail call void @mmiocpy(ptr noundef %add.ptr1, ptr noundef %buf, i32 noundef %count) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_avail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_securam_wait() #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !101
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.38) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @ktime_get() #8
  %add.i = add i64 %call2, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 351) #8
  %call1253 = call i32 @regmap_read(ptr noundef %call, i32 noundef 20, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1253)
  %tobool.not54 = icmp eq i32 %call1253, 0
  br i1 %tobool.not54, label %if.end.lor.lhs.false_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then24.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then24

if.then24:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #8
  %call12 = call i32 @regmap_read(ptr noundef %call, i32 noundef 20, ptr noundef nonnull %val) #8
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then24.lor.lhs.false_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24.lor.lhs.false_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call21 = call i32 @regmap_read(ptr noundef %call, i32 noundef 20, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool26.not = icmp eq i32 %call21, 0
  br i1 %tobool26.not, label %for.end.lor.rhs_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and27 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %phi.sel = select i1 %tobool28.not, i32 -110, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs, %for.end.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call21, %for.end.cleanup_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1253, %if.end.cleanup_crit_edge ], [ %call12, %if.then24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_sram__187_475_sram_init2, !1, !"__initcall__kmod_sram__187_475_sram_init2", i1 false, i1 false}
!1 = !{!"../drivers/misc/sram.c", i32 475, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/misc/sram.c", i32 463, i32 11}
!4 = !{ptr @sram_driver, !5, !"sram_driver", i1 false, i1 false}
!5 = !{!"../drivers/misc/sram.c", i32 461, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/sram.c", i32 392, i32 64}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/misc/sram.c", i32 402, i32 4}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sram_probe._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @sram_probe._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/sram.c", i32 432, i32 3}
!18 = !{ptr @sram_probe.__UNIQUE_ID_ddebug186, !17, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/sram.c", i32 202, i32 4}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sram_reserve_regions._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @sram_reserve_regions._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/misc/sram.c", i32 209, i32 4}
!26 = !{ptr @sram_reserve_regions._entry.10, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sram_reserve_regions._entry_ptr.12, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/sram.c", i32 221, i32 31}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/sram.c", i32 224, i32 31}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/sram.c", i32 227, i32 31}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/sram.c", i32 235, i32 41}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/misc/sram.c", i32 237, i32 5}
!38 = !{ptr @sram_reserve_regions._entry.17, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sram_reserve_regions._entry_ptr.19, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/sram.c", i32 252, i32 4}
!42 = !{ptr @sram_reserve_regions.__UNIQUE_ID_ddebug183, !41, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!43 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/sram.c", i32 256, i32 4}
!47 = !{ptr @sram_reserve_regions.__UNIQUE_ID_ddebug184, !46, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/sram.c", i32 285, i32 4}
!50 = !{ptr @sram_reserve_regions._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sram_reserve_regions._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/misc/sram.c", i32 317, i32 4}
!54 = !{ptr @sram_reserve_regions.__UNIQUE_ID_ddebug185, !53, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!55 = !{ptr @sram_add_partition.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/misc/sram.c", i32 99, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/sram.c", i32 110, i32 4}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sram_add_partition._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sram_add_partition._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/sram.c", i32 68, i32 3}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @sram_add_pool._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @sram_add_pool._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @sram_add_export.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/misc/sram.c", i32 78, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/sram.c", i32 80, i32 13}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/sram.c", i32 160, i32 4}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @sram_free_partitions._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @sram_free_partitions._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/sram.c", i32 453, i32 3}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sram_remove._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sram_remove._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sram_dt_ids, !83, !"sram_dt_ids", i1 false, i1 false}
!83 = !{!"../drivers/misc/sram.c", i32 369, i32 34}
!84 = !{ptr @atmel_securam_config, !85, !"atmel_securam_config", i1 false, i1 false}
!85 = !{!"../drivers/misc/sram.c", i32 354, i32 33}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/sram.c", i32 345, i32 46}
!88 = !{ptr @tegra_sysram_config, !89, !"tegra_sysram_config", i1 false, i1 false}
!89 = !{!"../drivers/misc/sram.c", i32 365, i32 33}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148731590, i64 2148731595, i64 2148731608, i64 2148731652, i64 2148731686, i64 2148731707}
!101 = !{!"auto-init"}
!102 = !{!"branch_weights", i32 1, i32 2000}
