; ModuleID = '/llk/IR_all_yes/drivers/dma/sprd-dma.c_pt.bc'
source_filename = "../drivers/dma/sprd-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.atomic_t = type { i32 }
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
%struct.sprd_dma_dev = type { %struct.dma_device, ptr, ptr, ptr, i32, i32, [0 x %struct.sprd_dma_chn] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sprd_dma_chn = type { %struct.virt_dma_chan, ptr, %struct.sprd_dma_linklist, %struct.dma_slave_config, i32, i32, i32, i32, i32, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.sprd_dma_linklist = type { i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sprd_dma_desc = type { %struct.virt_dma_desc, %struct.sprd_dma_chn_hw, i32 }
%struct.sprd_dma_chn_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_sprd_dma__239_1302_sprd_dma_driver_init6 = internal global ptr @sprd_dma_driver_init, section ".initcall6.init", align 4
@sprd_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_dma_probe, ptr @sprd_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_dma_driver_exit = internal global ptr @sprd_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file240 = internal constant [35 x i8] c"sprd_dma.file=drivers/dma/sprd-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [24 x i8] c"sprd_dma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [47 x i8] c"sprd_dma.description=DMA driver for Spreadtrum\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [57 x i8] c"sprd_dma.author=Baolin Wang <baolin.wang@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [53 x i8] c"sprd_dma.author=Eric Long <eric.long@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [33 x i8] c"sprd_dma.alias=platform:sprd-dma\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-dma\00", [23 x i8] zeroinitializer }, align 32
@sprd_dma_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sprd_dma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sprd_dma_runtime_suspend, ptr @sprd_dma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#dma-channels\00", [18 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"get dma channels count failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_dma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/sprd-dma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr = internal global ptr @sprd_dma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get enable clock failed\0A\00", [39 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr.10 = internal global ptr @sprd_dma_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ashb_eb\00", [24 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1141, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no optional ashb eb clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr.15 = internal global ptr @sprd_dma_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd_dma\00", [23 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request dma irq failed\0A\00", [40 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr.19 = internal global ptr @sprd_dma_probe._entry.17, section ".printk_index", align 4
@sprd_dma_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 1159, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"no interrupts for the dma controller\0A\00", [58 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr.22 = internal global ptr @sprd_dma_probe._entry.20, section ".printk_index", align 4
@sprd_dma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 1209, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"register dma device failed:%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_dma_probe._entry_ptr.25 = internal global ptr @sprd_dma_probe._entry.23, section ".printk_index", align 4
@sprd_dma_info = internal global { %struct.of_dma_filter_info, [24 x i8] } { %struct.of_dma_filter_info { %struct.dma_cap_mask_t zeroinitializer, ptr @sprd_dma_filter_fn }, [24 x i8] zeroinitializer }, align 32
@sprd_dma_get_int_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 422, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"incorrect dma interrupt type\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_dma_get_int_type\00", [42 x i8] zeroinitializer }, align 32
@sprd_dma_get_int_type._entry_ptr = internal global ptr @sprd_dma_get_int_type._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.28, ptr @.str.29, ptr @.str.30, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sprd_dma_set_2stage_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 482, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid channel mode setting %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sprd_dma_set_2stage_config\00", [37 x i8] zeroinitializer }, align 32
@sprd_dma_set_2stage_config._entry_ptr = internal global ptr @sprd_dma_set_2stage_config._entry, section ".printk_index", align 4
@sprd_dma_pause_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 359, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pause dma controller timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_dma_pause_resume\00", [42 x i8] zeroinitializer }, align 32
@sprd_dma_pause_resume._entry_ptr = internal global ptr @sprd_dma_pause_resume._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sprd_dma_fill_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid source step\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sprd_dma_fill_desc\00", [45 x i8] zeroinitializer }, align 32
@sprd_dma_fill_desc._entry_ptr = internal global ptr @sprd_dma_fill_desc._entry, section ".printk_index", align 4
@sprd_dma_fill_desc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.4, i32 780, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid destination step\0A\00", [38 x i8] zeroinitializer }, align 32
@sprd_dma_fill_desc._entry_ptr.39 = internal global ptr @sprd_dma_fill_desc._entry.37, section ".printk_index", align 4
@sprd_dma_fill_desc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.4, i32 788, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid source datawidth\0A\00", [38 x i8] zeroinitializer }, align 32
@sprd_dma_fill_desc._entry_ptr.42 = internal global ptr @sprd_dma_fill_desc._entry.40, section ".printk_index", align 4
@sprd_dma_fill_desc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.4, i32 794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid destination datawidth\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_dma_fill_desc._entry_ptr.45 = internal global ptr @sprd_dma_fill_desc._entry.43, section ".printk_index", align 4
@sprd_dma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 1282, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enable dma failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sprd_dma_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@sprd_dma_runtime_resume._entry_ptr = internal global ptr @sprd_dma_runtime_resume._entry, section ".printk_index", align 4
@switch.table.sprd_dma_fill_desc = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 1, i32 4, i32 1, i32 1, i32 1, i32 8], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"sprd_dma_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1293, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1297, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"sprd_dma_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1261, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"sprd_dma_pm_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1287, i32 32 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1120, i32 45 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1122, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1132, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1134, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1139, i32 44 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1141, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1153, i32 15 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1155, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1159, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1209, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"sprd_dma_info\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 220, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 422, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 101, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 481, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 358, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 764, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 780, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 788, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 794, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.200 = private constant [26 x i8] c"../drivers/dma/sprd-dma.c\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1282, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [32 x i8] c"switch.table.sprd_dma_fill_desc\00", align 1
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_sprd_dma_driver_exit, ptr @__initcall__kmod_sprd_dma__239_1302_sprd_dma_driver_init6, ptr @sprd_dma_driver_exit, ptr @sprd_dma_fill_desc._entry, ptr @sprd_dma_fill_desc._entry.37, ptr @sprd_dma_fill_desc._entry.40, ptr @sprd_dma_fill_desc._entry.43, ptr @sprd_dma_fill_desc._entry_ptr, ptr @sprd_dma_fill_desc._entry_ptr.39, ptr @sprd_dma_fill_desc._entry_ptr.42, ptr @sprd_dma_fill_desc._entry_ptr.45, ptr @sprd_dma_get_int_type._entry, ptr @sprd_dma_get_int_type._entry_ptr, ptr @sprd_dma_pause_resume._entry, ptr @sprd_dma_pause_resume._entry_ptr, ptr @sprd_dma_probe._entry, ptr @sprd_dma_probe._entry.12, ptr @sprd_dma_probe._entry.17, ptr @sprd_dma_probe._entry.20, ptr @sprd_dma_probe._entry.23, ptr @sprd_dma_probe._entry.8, ptr @sprd_dma_probe._entry_ptr, ptr @sprd_dma_probe._entry_ptr.10, ptr @sprd_dma_probe._entry_ptr.15, ptr @sprd_dma_probe._entry_ptr.19, ptr @sprd_dma_probe._entry_ptr.22, ptr @sprd_dma_probe._entry_ptr.25, ptr @sprd_dma_runtime_resume._entry, ptr @sprd_dma_runtime_resume._entry_ptr, ptr @sprd_dma_set_2stage_config._entry, ptr @sprd_dma_set_2stage_config._entry_ptr, ptr @sprd_dma_driver, ptr @.str, ptr @sprd_dma_match, ptr @sprd_dma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @sprd_dma_info, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @switch.table.sprd_dma_fill_desc], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_get_int_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_set_2stage_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_pause_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_fill_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_fill_desc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_fill_desc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_fill_desc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_dma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sprd_dma_fill_desc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_dma_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chn_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chn_count) #10
  %2 = ptrtoint ptr %chn_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chn_count, align 4, !annotation !112
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull %chn_count, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chn_count, align 4
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 268) #10
  %6 = extractvalue { i32, i1 } %5, 1
  %7 = extractvalue { i32, i1 } %5, 0
  %spec.select.i = call i32 @llvm.uadd.sat.i32(i32 %7, i32 384) #10
  %retval.0.i = select i1 %6, i32 -1, i32 %spec.select.i
  %call.i191 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #10
  %tobool6.not = icmp eq ptr %call.i191, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  %clk = getelementptr inbounds %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end20

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %call22 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  %ashb_clk = getelementptr inbounds %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 3
  %12 = ptrtoint ptr %ashb_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %ashb_clk, align 4
  %cmp.i192 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %do.end28, label %if.end20.if.end30_crit_edge

if.end20.if.end30_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %if.end20.if.end30_crit_edge
  %call31 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 4
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call31, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp sgt i32 %call31, 0
  br i1 %cmp, label %if.then33, label %do.end46

if.then33:                                        ; preds = %if.end30
  %call.i193 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call31, ptr noundef nonnull @dma_irq_handle, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i191) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp37 = icmp slt i32 %call.i193, 0
  br i1 %cmp37, label %do.end41, label %if.then33.if.end48_crit_edge

if.then33.if.end48_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #13
  br label %cleanup

do.end46:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21) #13
  br label %if.end48

if.end48:                                         ; preds = %do.end46, %if.then33.if.end48_crit_edge
  %call49 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %glb_base = getelementptr inbounds %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 1
  %14 = ptrtoint ptr %glb_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call49, ptr %glb_base, align 4
  %cmp.i194 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %call49 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end48
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %16 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chn_count, align 4
  %total_chns = getelementptr inbounds %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 5
  %18 = ptrtoint ptr %total_chns to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %total_chns, align 4
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 1
  %19 = ptrtoint ptr %chancnt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %17, ptr %chancnt, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 3
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %channels, ptr %prev.i, align 4
  %global_node = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 4
  %22 = ptrtoint ptr %global_node to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %global_node, ptr %global_node, align 4
  %prev.i195 = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i195 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %global_node, ptr %prev.i195, align 4
  %dev61 = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 15
  %24 = ptrtoint ptr %dev61 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev, ptr %dev61, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 27
  %25 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sprd_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 29
  %26 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sprd_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 49
  %27 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sprd_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 50
  %28 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sprd_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 30
  %29 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @sprd_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 39
  %30 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sprd_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 44
  %31 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @sprd_dma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 45
  %32 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sprd_dma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 46
  %33 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sprd_dma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i191, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sprd_dma_terminate_all, ptr %device_terminate_all, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp72206.not = icmp eq i32 %17, 0
  br i1 %cmp72206.not, label %if.end55.for.end_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  br label %for.body

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end55.for.body_crit_edge
  %i.0207 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end55.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 6, i32 %i.0207
  %chn_num = getelementptr %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 6, i32 %i.0207, i32 4
  %35 = ptrtoint ptr %chn_num to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %i.0207, ptr %chn_num, align 4
  %cur_desc = getelementptr %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 6, i32 %i.0207, i32 9
  %36 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cur_desc, align 4
  %37 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %glb_base, align 4
  %add.ptr = getelementptr i8, ptr %38, i32 4096
  %mul = shl i32 %i.0207, 6
  %add.ptr75 = getelementptr i8, ptr %add.ptr, i32 %mul
  %chn_base = getelementptr %struct.sprd_dma_dev, ptr %call.i191, i32 0, i32 6, i32 %i.0207, i32 1
  %39 = ptrtoint ptr %chn_base to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr75, ptr %chn_base, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %40 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sprd_dma_free_desc, ptr %desc_free, align 4
  call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i191) #10
  %inc = add nuw i32 %i.0207, 1
  %41 = ptrtoint ptr %chn_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chn_count, align 4
  %cmp72 = icmp ult i32 %inc, %42
  br i1 %cmp72, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end55.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i191, ptr %driver_data.i.i, align 4
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  %call.i.i = call i32 @clk_prepare(ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %for.end
  %call1.i.i = call i32 @clk_enable(ptr noundef %45) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %46 = ptrtoint ptr %ashb_clk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ashb_clk, align 4
  %cmp.i.i = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end81_crit_edge, label %if.then2.i

if.end.i.if.end81_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then2.i:                                       ; preds = %if.end.i
  %call.i10.i = call i32 @clk_prepare(ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.end.i14.i, label %if.then2.i.cleanup_crit_edge

if.then2.i.cleanup_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i14.i:                                     ; preds = %if.then2.i
  %call1.i12.i = call i32 @clk_enable(ptr noundef %47) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool2.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool2.not.i13.i, label %if.end.i14.i.if.end81_crit_edge, label %if.end.i14.i.cleanup.sink.split.i_crit_edge

if.end.i14.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i14.i.if.end81_crit_edge:                  ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

cleanup.sink.split.i:                             ; preds = %if.end.i14.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %45, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %47, %if.end.i14.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %call1.i12.i, %if.end.i14.i.cleanup.sink.split.i_crit_edge ]
  call void @clk_unprepare(ptr noundef %.sink.i) #10
  br label %cleanup

if.end81:                                         ; preds = %if.end.i14.i.if.end81_crit_edge, %if.end.i.if.end81_crit_edge
  %call.i197 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #10
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i198 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %cmp87 = icmp slt i32 %call.i198, 0
  br i1 %cmp87, label %if.end81.err_rpm_crit_edge, label %if.end89

if.end81.err_rpm_crit_edge:                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_rpm

if.end89:                                         ; preds = %if.end81
  %call91 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i191) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.end98

do.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call91) #13
  br label %err_register

if.end98:                                         ; preds = %if.end89
  %48 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cap_mask, align 4
  store i32 %49, ptr @sprd_dma_info, align 4
  %call101 = call i32 @of_dma_controller_register(ptr noundef %1, ptr noundef nonnull @of_dma_simple_xlate, ptr noundef nonnull @sprd_dma_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end104, label %err_of_register

if.end104:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %call.i199 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #10
  br label %cleanup

err_of_register:                                  ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  call void @dma_async_device_unregister(ptr noundef nonnull %call.i191) #10
  br label %err_register

err_register:                                     ; preds = %err_of_register, %do.end96
  %ret.0 = phi i32 [ %call91, %do.end96 ], [ %call101, %err_of_register ]
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !113
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !114
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_register.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

err_register.pm_runtime_put_noidle.exit_crit_edge: ; preds = %err_register
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %err_register
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %err_register.pm_runtime_put_noidle.exit_crit_edge
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %err_rpm

err_rpm:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end81.err_rpm_crit_edge
  %ret.1 = phi i32 [ %call.i198, %if.end81.err_rpm_crit_edge ], [ %ret.0, %pm_runtime_put_noidle.exit ]
  %51 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %52) #10
  call void @clk_unprepare(ptr noundef %52) #10
  %53 = ptrtoint ptr %ashb_clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ashb_clk, align 4
  %cmp.i.i202 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i202, label %err_rpm.cleanup_crit_edge, label %if.then.i

err_rpm.cleanup_crit_edge:                        ; preds = %err_rpm
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %err_rpm
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_disable(ptr noundef %54) #10
  call void @clk_unprepare(ptr noundef %54) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %err_rpm.cleanup_crit_edge, %if.end104, %cleanup.sink.split.i, %if.then2.i.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then52, %do.end41, %do.end16, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %11, %do.end16 ], [ %call.i193, %do.end41 ], [ %15, %if.then52 ], [ 0, %if.end104 ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.1, %err_rpm.cleanup_crit_edge ], [ %ret.1, %if.then.i ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %for.end.cleanup_crit_edge ], [ %call.i10.i, %if.then2.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chn_count) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %3, ptr noundef %1) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  %cmp16.not52 = icmp eq ptr %5, %channels
  br i1 %cmp16.not52, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in53 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %5, %if.end6.for.body_crit_edge ]
  %6 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in53, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in53) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in53, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in53 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in53, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in53, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %.pn.in53, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #10
  %cmp16.not = icmp eq ptr %.pn, %channels
  br i1 %cmp16.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end6.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %16) #10
  tail call void @dma_async_device_unregister(ptr noundef %1) #10
  %clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %18) #10
  tail call void @clk_unprepare(ptr noundef %18) #10
  %ashb_clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %ashb_clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ashb_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.end.sprd_dma_disable.exit_crit_edge, label %if.then.i

for.end.sprd_dma_disable.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_disable.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %20) #10
  tail call void @clk_unprepare(ptr noundef %20) #10
  br label %sprd_dma_disable.exit

sprd_dma_disable.exit:                            ; preds = %if.then.i, %for.end.sprd_dma_disable.exit_crit_edge
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !114
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %sprd_dma_disable.exit.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

sprd_dma_disable.exit.pm_runtime_put_noidle.exit_crit_edge: ; preds = %sprd_dma_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %sprd_dma_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !115
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %sprd_dma_disable.exit.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %pm_runtime_put_noidle.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_irq_handle(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %glb_base = getelementptr inbounds %struct.sprd_dma_dev, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %glb_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %glb_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not63 = icmp eq i32 %2, 0
  br i1 %tobool.not63, label %entry.cleanup_crit_edge, label %while.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.body.preheader
  %irq_status.064 = phi i32 [ %and, %if.end23.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %irq_status.064, i1 true) #10, !range !118
  %sub = add i32 %irq_status.064, -1
  %and = and i32 %sub, %irq_status.064
  %arrayidx = getelementptr %struct.sprd_dma_dev, ptr %dev_id, i32 0, i32 6, i32 %4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %cur_desc = getelementptr %struct.sprd_dma_dev, ptr %dev_id, i32 0, i32 6, i32 %4, i32 9
  %5 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_desc, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %while.body
  %chan_id.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 4
  %7 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_id.i.i, align 4
  %chn_base.i = getelementptr %struct.sprd_dma_dev, ptr %dev_id, i32 0, i32 6, i32 %4, i32 1
  %9 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !116
  %12 = shl i32 %11, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  %and.i = and i32 %12, 2031616
  %13 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.i [
    i32 1048576, label %if.end.sprd_dma_get_int_type.exit_crit_edge
    i32 524288, label %sw.bb3.i
    i32 262144, label %sw.bb4.i
    i32 131072, label %sw.bb5.i
    i32 65536, label %sw.bb6.i
  ]

if.end.sprd_dma_get_int_type.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_get_int_type.exit

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_get_int_type.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_get_int_type.exit

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_get_int_type.exit

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_get_int_type.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.neg.i.i = mul i32 %8, -268
  %idx.neg.i.i = add i32 %.neg.i.i, -384
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx, i32 %idx.neg.i.i
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.26) #13
  br label %sprd_dma_get_int_type.exit

sprd_dma_get_int_type.exit:                       ; preds = %do.end.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %if.end.sprd_dma_get_int_type.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 1, %sw.bb6.i ], [ 2, %sw.bb5.i ], [ 4, %sw.bb4.i ], [ 7, %sw.bb3.i ], [ 8, %if.end.sprd_dma_get_int_type.exit_crit_edge ]
  %16 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  %19 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i.i53 = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %22 = or i32 %21, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chn_base.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %22) #10, !srcloc !123
  %phy_addr = getelementptr %struct.sprd_dma_dev, ptr %dev_id, i32 0, i32 6, i32 %4, i32 2, i32 1
  %25 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool8.not = icmp eq i32 %26, 0
  br i1 %tobool8.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sprd_dma_get_int_type.exit
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 3
  %27 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 9
  %29 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %6, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then12.if.end23_crit_edge

if.then12.if.end23_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %if.end23

if.else:                                          ; preds = %sprd_dma_get_int_type.exit
  %and.i52 = and i32 %18, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i52, i32 %retval.0.i)
  %cmp1.not.i.not.not = icmp ult i32 %and.i52, %retval.0.i
  br i1 %cmp1.not.i.not.not, label %if.then19, label %if.else.if.end23_crit_edge

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.then19:                                        ; preds = %if.else
  %chan.i54 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %6, i32 0, i32 3
  %30 = ptrtoint ptr %chan.i54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i54, align 4
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i = icmp slt i32 %33, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !124

do.body2.i.i:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !125
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then19
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %completed_cookie.i.i, align 4
  %35 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %6, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_irq_handle, %do.end.i56)) #10
          to label %if.then.i [label %do.end.i56], !srcloc !126

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %31, align 4
  %dev.i55 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %39, ptr noundef nonnull @.str.30, ptr noundef nonnull %6, i32 noundef %33) #10
  br label %do.end.i56

do.end.i56:                                       ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %41, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i56.list_add_tail.exit.i_crit_edge

do.end.i56.list_add_tail.exit.i_crit_edge:        ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.i, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %6, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i56.list_add_tail.exit.i_crit_edge
  %state.i.i57 = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1, i32 1
  %call.i.i58 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i57) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %tobool.not.i.i59 = icmp eq i32 %call.i.i58, 0
  br i1 %tobool.not.i.i59, label %if.then.i.i61, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i61:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i60 = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i60) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i61, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %46 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cur_desc, align 4
  tail call fastcc void @sprd_dma_start(ptr noundef %arrayidx)
  br label %if.end23

if.end23:                                         ; preds = %vchan_cookie_complete.exit, %if.else.if.end23_crit_edge, %if.then.i.i, %if.then12.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end23.cleanup_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_alloc_chan_resources(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_desc, align 4
  %tobool.not = icmp eq ptr %1, null
  tail call fastcc void @sprd_dma_stop(ptr noundef %chan)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then10

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %entry.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %2 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head.i, ptr %head.i, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head.i, ptr %2, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %6, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end11.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end11.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head.i, ptr %10, align 4
  store ptr %10, ptr %2, align 4
  %14 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end11.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %16, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i12.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head.i, ptr %20, align 4
  store ptr %20, ptr %2, align 4
  %24 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %25 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %26, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i18.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head.i, ptr %30, align 4
  store ptr %30, ptr %2, align 4
  %34 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %35 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %36, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i24.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head.i, ptr %40, align 4
  store ptr %40, ptr %2, align 4
  %44 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %45 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %46, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i30.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %head.i, ptr %50, align 4
  store ptr %50, ptr %2, align 4
  %54 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %56 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %57, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %58 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 5) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !127
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge89 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge89, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else30, label %if.then11

if.then11:                                        ; preds = %do.body2
  %trsc_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call9, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %trsc_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %trsc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp13.not = icmp eq i32 %9, 0
  br i1 %cmp13.not, label %if.else, label %if.then11.dma_set_residue.exit_crit_edge

if.then11.dma_set_residue.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

if.else:                                          ; preds = %if.then11
  %blk_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call9, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %blk_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %blk_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp17.not = icmp eq i32 %11, 0
  br i1 %cmp17.not, label %if.else21, label %if.else.dma_set_residue.exit_crit_edge

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %frg_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call9, i32 0, i32 1, i32 6
  %12 = ptrtoint ptr %frg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %frg_len, align 4
  br label %dma_set_residue.exit

if.else30:                                        ; preds = %do.body2
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 9
  %14 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur_desc, align 4
  %tobool31.not = icmp eq ptr %15, null
  br i1 %tobool31.not, label %if.else30.dma_set_residue.exit_crit_edge, label %land.lhs.true

if.else30.dma_set_residue.exit_crit_edge:         ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

land.lhs.true:                                    ; preds = %if.else30
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %cookie)
  %cmp35 = icmp eq i32 %17, %cookie
  br i1 %cmp35, label %if.then37, label %land.lhs.true.dma_set_residue.exit_crit_edge

land.lhs.true.dma_set_residue.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_residue.exit

if.then37:                                        ; preds = %land.lhs.true
  %dir = getelementptr inbounds %struct.sprd_dma_desc, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp40 = icmp eq i32 %19, 2
  %chn_base.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 1
  %20 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chn_base.i, align 4
  br i1 %cmp40, label %if.then42, label %if.else44

if.then42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !116
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  %24 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chn_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %25, i32 44
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  br label %dma_set_residue.exit

if.else44:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i80 = getelementptr i8, ptr %21, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #10, !srcloc !116
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %29 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chn_base.i, align 4
  %add.ptr5.i81 = getelementptr i8, ptr %30, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i81) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.else44, %if.then42, %land.lhs.true.dma_set_residue.exit_crit_edge, %if.else30.dma_set_residue.exit_crit_edge, %if.else21, %if.else.dma_set_residue.exit_crit_edge, %if.then11.dma_set_residue.exit_crit_edge
  %pos.2 = phi i32 [ %9, %if.then11.dma_set_residue.exit_crit_edge ], [ %11, %if.else.dma_set_residue.exit_crit_edge ], [ %13, %if.else21 ], [ %23, %if.then42 ], [ %28, %if.else44 ], [ 0, %land.lhs.true.dma_set_residue.exit_crit_edge ], [ 0, %if.else30.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %32 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %pos.2, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i88.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i88 = zext i1 %retval.0.i.i88.shrunk to i32
  ret i32 %retval.0.i.i88
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 9
  %12 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @sprd_dma_start(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sprd_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 184) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 16777216, ptr %cfg, align 4
  %intc = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %intc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %intc, align 8
  %src_addr = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %src, ptr %src_addr, align 4
  %des_addr = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %des_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dest, ptr %des_addr, align 8
  %wrap_ptr = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %wrap_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wrap_ptr, align 4
  %wrap_to = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 11
  %6 = ptrtoint ptr %wrap_to to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wrap_to, align 8
  %and6 = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp = icmp eq i32 %and6, 0
  br i1 %cmp, label %if.end.if.end18_crit_edge, label %if.else

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else:                                          ; preds = %if.end
  %and8 = and i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.else.if.end18_crit_edge, label %if.else11

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 0
  %7 = xor i32 %and12, 1
  %phi.bo = select i1 %cmp13, i32 131074, i32 65537
  br label %if.end18

if.end18:                                         ; preds = %if.else11, %if.else.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %datawidth.0 = phi i32 [ 3, %if.end.if.end18_crit_edge ], [ 2, %if.else.if.end18_crit_edge ], [ %7, %if.else11 ]
  %step.0 = phi i32 [ 524296, %if.end.if.end18_crit_edge ], [ 262148, %if.else.if.end18_crit_edge ], [ %phi.bo, %if.else11 ]
  %shl = shl nuw i32 %datawidth.0, 30
  %shl19 = shl nuw nsw i32 %datawidth.0, 28
  %and21 = and i32 %len, 131071
  %or = or i32 %and21, %shl19
  %or20 = or i32 %or, %shl
  %or22 = or i32 %or20, 33554432
  %frg_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %frg_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or22, ptr %frg_len, align 4
  %blk_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %blk_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and21, ptr %blk_len, align 8
  %and24 = and i32 %len, 268435455
  %trsc_len = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %trsc_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and24, ptr %trsc_len, align 4
  %trsf_step = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %trsf_step to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %step.0, ptr %trsf_step, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %18, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end18.vchan_tx_prep.exit_crit_edge

if.end18.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 8
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node.i, ptr %18, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end18.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sprd_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sglen, i32 noundef %dir, i32 noundef %flags, ptr noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_cfg1 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 3
  %0 = add i32 %dir, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %phy_addr = getelementptr inbounds %struct.sprd_dma_linklist, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_addr, align 4
  %linklist = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2
  %phy_addr4 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %phy_addr4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phy_addr4, align 4
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %context, align 4
  %7 = ptrtoint ptr %linklist to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %linklist, align 4
  %wrap_addr = getelementptr inbounds %struct.sprd_dma_linklist, ptr %context, i32 0, i32 2
  %8 = ptrtoint ptr %wrap_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrap_addr, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %linklist9 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2
  %phy_addr10 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %phy_addr10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %phy_addr10, align 4
  %11 = ptrtoint ptr %linklist9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %linklist9, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then3
  %.sink = phi i32 [ 0, %if.else ], [ %9, %if.then3 ]
  %12 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %shr = lshr i32 %flags, 24
  %chn_mode = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 6
  %14 = ptrtoint ptr %chn_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %chn_mode, align 4
  %shr16 = lshr i32 %flags, 16
  %and17 = and i32 %shr16, 255
  %trg_mode = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 7
  %15 = ptrtoint ptr %trg_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and17, ptr %trg_mode, align 4
  %and18 = and i32 %flags, 255
  %int_type = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 8
  %16 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and18, ptr %int_type, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 184) #14
  %tobool20.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %if.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %dir23 = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %dir23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %dir, ptr %dir23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %cmp101.not = icmp eq i32 %sglen, 0
  br i1 %cmp101.not, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp24 = icmp eq i32 %dir, 1
  %dst_addr = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 3, i32 2
  %src_addr = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sglen)
  %cmp32 = icmp eq i32 %sglen, 1
  %linklist.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0104 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call39, %for.inc.for.body_crit_edge ]
  %start_dst.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %start_dst.1, %for.inc.for.body_crit_edge ]
  %start_src.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %start_src.1, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0104, i32 0, i32 3
  %src.0.in = select i1 %cmp24, ptr %dma_address, ptr %src_addr
  %dst.0.in = select i1 %cmp24, ptr %dst_addr, ptr %dma_address
  %21 = ptrtoint ptr %dst.0.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %dst.0 = load i32, ptr %dst.0.in, align 4
  %22 = ptrtoint ptr %src.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %src.0 = load i32, ptr %src.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0105)
  %tobool29.not = icmp eq i32 %i.0105, 0
  %start_src.1 = select i1 %tobool29.not, i32 %src.0, i32 %start_src.0102
  %start_dst.1 = select i1 %tobool29.not, i32 %dst.0, i32 %start_dst.0103
  br i1 %cmp32, label %for.body.for.end_crit_edge, label %if.end34

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end34:                                         ; preds = %for.body
  %23 = ptrtoint ptr %linklist.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %linklist.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.end34.if.then37_crit_edge, label %sprd_dma_fill_linklist_desc.exit

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

sprd_dma_fill_linklist_desc.exit:                 ; preds = %if.end34
  %mul.i = shl i32 %i.0105, 6
  %add.i = add i32 %24, %mul.i
  %25 = inttoptr i32 %add.i to ptr
  %call3.i = tail call fastcc i32 @sprd_dma_fill_desc(ptr noundef %chan, ptr noundef %25, i32 noundef %sglen, i32 noundef %i.0105, i32 noundef %src.0, i32 noundef %dst.0, i32 noundef %20, i32 noundef %dir, i32 noundef %flags, ptr noundef %slave_cfg1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool36.not = icmp eq i32 %call3.i, 0
  br i1 %tobool36.not, label %for.inc, label %sprd_dma_fill_linklist_desc.exit.if.then37_crit_edge

sprd_dma_fill_linklist_desc.exit.if.then37_crit_edge: ; preds = %sprd_dma_fill_linklist_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %sprd_dma_fill_linklist_desc.exit.if.then37_crit_edge, %if.end34.if.then37_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

for.inc:                                          ; preds = %sprd_dma_fill_linklist_desc.exit
  %inc = add nuw i32 %i.0105, 1
  %call39 = tail call ptr @sg_next(ptr noundef %sg.0104) #10
  %exitcond.not = icmp eq i32 %inc, %sglen
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end22.for.end_crit_edge
  %start_src.2 = phi i32 [ 0, %if.end22.for.end_crit_edge ], [ %start_src.1, %for.body.for.end_crit_edge ], [ %start_src.1, %for.inc.for.end_crit_edge ]
  %start_dst.2 = phi i32 [ 0, %if.end22.for.end_crit_edge ], [ %start_dst.1, %for.body.for.end_crit_edge ], [ %start_dst.1, %for.inc.for.end_crit_edge ]
  %len.1 = phi i32 [ 0, %if.end22.for.end_crit_edge ], [ %20, %for.body.for.end_crit_edge ], [ %20, %for.inc.for.end_crit_edge ]
  %chn_hw = getelementptr inbounds %struct.sprd_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %call40 = tail call fastcc i32 @sprd_dma_fill_desc(ptr noundef %chan, ptr noundef %chn_hw, i32 noundef 0, i32 noundef 0, i32 noundef %start_src.2, i32 noundef %start_dst.2, i32 noundef %len.1, i32 noundef %dir, i32 noundef %flags, ptr noundef %slave_cfg1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then42

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end43:                                         ; preds = %for.end
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %32, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end43.vchan_tx_prep.exit_crit_edge

if.end43.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %node.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 8
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %node.i, ptr %32, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end43.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then42, %if.then37, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then42 ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %if.then37 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sprd_dma_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_cfg1 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %slave_cfg1, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %chan_id.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id.i.i, align 4
  %.neg.i.i = mul i32 %1, -268
  %idx.neg.i.i = add i32 %.neg.i.i, -384
  %add.ptr.i.i = getelementptr i8, ptr %chan, i32 %idx.neg.i.i
  %chn_base.i.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chn_base.i.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chn_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #10, !srcloc !123
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 8192, %entry ], [ %dec.i, %do.end.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chn_base.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %do.end.i, label %do.body.i.sprd_dma_pause_resume.exit_crit_edge

do.body.i.sprd_dma_pause_resume.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_pause_resume.exit

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !134
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.end18.i, label %do.end.i.do.body.i_crit_edge

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end18.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i.i, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.33) #13
  br label %sprd_dma_pause_resume.exit

sprd_dma_pause_resume.exit:                       ; preds = %do.end18.i, %do.body.i.sprd_dma_pause_resume.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %chn_base.i.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chn_base.i.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %chn_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chn_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #10, !srcloc !123
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 9
  %3 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cur_desc, align 4
  %tobool.not = icmp eq ptr %4, null
  call fastcc void @sprd_dma_stop(ptr noundef %chan)
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %6, ptr %8, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %head, ptr %10, align 4
  store ptr %10, ptr %0, align 4
  %14 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %16, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %19 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i12.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %16, ptr %18, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head, ptr %20, align 4
  store ptr %20, ptr %0, align 4
  %24 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %25 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %26, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i18.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head, ptr %30, align 4
  store ptr %30, ptr %0, align 4
  %34 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %35 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %36, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i24.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head, ptr %40, align 4
  store ptr %40, ptr %0, align 4
  %44 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %45 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %46, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i30.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %head, ptr %50, align 4
  store ptr %50, ptr %0, align 4
  %54 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br i1 %tobool.not, label %vchan_get_all_descriptors.exit.if.end12_crit_edge, label %if.then11

vchan_get_all_descriptors.exit.if.end12_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %4) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %vchan_get_all_descriptors.exit.if.end12_crit_edge
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_dma_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprd_dma_start(ptr noundef %schan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %schan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not57 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not57
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 9
  %10 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr.i, ptr %cur_desc, align 4
  %chn_mode = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 6
  %11 = ptrtoint ptr %chn_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool2.not = icmp eq i32 %12, 0
  br i1 %tobool2.not, label %list_del.exit.if.end6_crit_edge, label %land.lhs.true

list_del.exit.if.end6_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %list_del.exit
  %chan_id.i.i = getelementptr inbounds %struct.dma_chan, ptr %schan, i32 0, i32 4
  %13 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %chan_id.i.i, align 4
  %.neg.i.i = mul i32 %14, -268
  %idx.neg.i.i = add i32 %.neg.i.i, -384
  %add.ptr.i.i = getelementptr i8, ptr %schan, i32 %idx.neg.i.i
  %chn_num.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 4
  %15 = ptrtoint ptr %chn_num.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chn_num.i, align 4
  %add.i = add i32 %16, 1
  %17 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %12, label %sprd_dma_set_2stage_config.exit [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 3, label %sw.bb17.i
    i32 4, label %sw.bb26.i
  ]

sw.bb.i:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %add.i, 63
  %trg_mode.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 7
  %18 = ptrtoint ptr %trg_mode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trg_mode.i, align 4
  %sub.i = add i32 %19, -1
  %shl1.i = shl i32 65536, %sub.i
  %or.i = or i32 %shl1.i, %and.i
  %int_type.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 8
  %20 = ptrtoint ptr %int_type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %int_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i30 = icmp eq i32 %21, 0
  %spec.select.v.i = select i1 %cmp.not.i30, i32 16777216, i32 17825792
  %spec.select.i31 = or i32 %or.i, %spec.select.v.i
  %glb_base.i.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %glb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %glb_base.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %23, i32 40
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #10, !srcloc !116
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %or.i.i = or i32 %spec.select.i31, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %27 = ptrtoint ptr %glb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %glb_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %26) #10, !srcloc !123
  br label %if.end6

sw.bb4.i:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %and5.i = and i32 %add.i, 63
  %trg_mode6.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 7
  %29 = ptrtoint ptr %trg_mode6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trg_mode6.i, align 4
  %sub7.i = add i32 %30, -1
  %shl9.i = shl i32 65536, %sub7.i
  %or10.i = or i32 %shl9.i, %and5.i
  %int_type12.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 8
  %31 = ptrtoint ptr %int_type12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %int_type12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp13.not.i = icmp eq i32 %32, 0
  %spec.select71.v.i = select i1 %cmp13.not.i, i32 16777216, i32 17825792
  %spec.select71.i = or i32 %or10.i, %spec.select71.v.i
  %glb_base.i75.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %glb_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %glb_base.i75.i, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %34, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #10, !srcloc !116
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %or.i79.i = or i32 %spec.select71.i, %36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i79.i) #10
  %38 = ptrtoint ptr %glb_base.i75.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %glb_base.i75.i, align 4
  %add.ptr4.i80.i = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i80.i, i32 %37) #10, !srcloc !123
  br label %if.end6

sw.bb17.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %shl18.i = shl i32 %add.i, 8
  %and19.i = and i32 %shl18.i, 16128
  %int_type21.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 8
  %40 = ptrtoint ptr %int_type21.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %int_type21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp22.not.i = icmp eq i32 %41, 0
  %spec.select72.v.i = select i1 %cmp22.not.i, i32 16777216, i32 20971520
  %spec.select72.i = or i32 %spec.select72.v.i, %and19.i
  %glb_base.i81.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %glb_base.i81.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %glb_base.i81.i, align 4
  %add.ptr.i82.i = getelementptr i8, ptr %43, i32 40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #10, !srcloc !116
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %or.i85.i = or i32 %spec.select72.i, %45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i85.i) #10
  %47 = ptrtoint ptr %glb_base.i81.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %glb_base.i81.i, align 4
  %add.ptr4.i86.i = getelementptr i8, ptr %48, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i86.i, i32 %46) #10, !srcloc !123
  br label %if.end6

sw.bb26.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %shl27.i = shl i32 %add.i, 8
  %and28.i = and i32 %shl27.i, 16128
  %int_type30.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 8
  %49 = ptrtoint ptr %int_type30.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %int_type30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp31.not.i = icmp eq i32 %50, 0
  %spec.select73.v.i = select i1 %cmp31.not.i, i32 16777216, i32 20971520
  %spec.select73.i = or i32 %spec.select73.v.i, %and28.i
  %glb_base.i87.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %glb_base.i87.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %glb_base.i87.i, align 4
  %add.ptr.i88.i = getelementptr i8, ptr %52, i32 44
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88.i) #10, !srcloc !116
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %or.i91.i = or i32 %spec.select73.i, %54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i91.i) #10
  %56 = ptrtoint ptr %glb_base.i87.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %glb_base.i87.i, align 4
  %add.ptr4.i92.i = getelementptr i8, ptr %57, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i92.i, i32 %55) #10, !srcloc !123
  br label %if.end6

sprd_dma_set_2stage_config.exit:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i.i, i32 0, i32 15
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.31, i32 noundef %12) #13
  br label %cleanup

if.end6:                                          ; preds = %sw.bb26.i, %sw.bb17.i, %sw.bb4.i, %sw.bb.i, %list_del.exit.if.end6_crit_edge
  %60 = ptrtoint ptr %cur_desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur_desc, align 4
  %chn_hw.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %62 = ptrtoint ptr %chn_hw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chn_hw.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %chn_base.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 1
  %65 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chn_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %cfg4.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %cfg4.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cfg4.i, align 4
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #10
  %70 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chn_base.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %69) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  tail call void @arm_heavy_mb() #10
  %intc.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %intc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %intc.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #10
  %75 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chn_base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %76, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %74) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %src_addr.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 4
  %77 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src_addr.i, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #10
  %80 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chn_base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %79) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %des_addr.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 5
  %82 = ptrtoint ptr %des_addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %des_addr.i, align 4
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  %85 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chn_base.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %86, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %84) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %frg_len.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 6
  %87 = ptrtoint ptr %frg_len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %frg_len.i, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  %90 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chn_base.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %89) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %blk_len.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 7
  %92 = ptrtoint ptr %blk_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %blk_len.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  %95 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %chn_base.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %96, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %94) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  tail call void @arm_heavy_mb() #10
  %trsc_len.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 8
  %97 = ptrtoint ptr %trsc_len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %trsc_len.i, align 4
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #10
  %100 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %chn_base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %101, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %99) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %trsf_step.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 9
  %102 = ptrtoint ptr %trsf_step.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %trsf_step.i, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %105 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %chn_base.i, align 4
  %add.ptr41.i = getelementptr i8, ptr %106, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %104) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %wrap_ptr.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 10
  %107 = ptrtoint ptr %wrap_ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %wrap_ptr.i, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #10
  %110 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %chn_base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %111, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %109) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @arm_heavy_mb() #10
  %wrap_to.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 11
  %112 = ptrtoint ptr %wrap_to.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %wrap_to.i, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #10
  %115 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %chn_base.i, align 4
  %add.ptr51.i = getelementptr i8, ptr %116, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %114) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %llist_ptr.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 12
  %117 = ptrtoint ptr %llist_ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %llist_ptr.i, align 4
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  %120 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %chn_base.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %121, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %119) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %frg_step.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 13
  %122 = ptrtoint ptr %frg_step.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %frg_step.i, align 4
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #10
  %125 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %chn_base.i, align 4
  %add.ptr61.i = getelementptr i8, ptr %126, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %124) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %src_blk_step.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 14
  %127 = ptrtoint ptr %src_blk_step.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %src_blk_step.i, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #10
  %130 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %chn_base.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %131, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %129) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %des_blk_step.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 15
  %132 = ptrtoint ptr %des_blk_step.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %des_blk_step.i, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #10
  %135 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %chn_base.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %136, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %134) #10, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  tail call void @arm_heavy_mb() #10
  %req.i = getelementptr inbounds %struct.sprd_dma_desc, ptr %61, i32 0, i32 1, i32 1
  %137 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %req.i, align 4
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #10
  %140 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %chn_base.i, align 4
  %add.ptr76.i = getelementptr i8, ptr %141, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 %139) #10, !srcloc !123
  %dev_id1.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 5
  %142 = ptrtoint ptr %dev_id1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dev_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.not.i32 = icmp eq i32 %143, 0
  br i1 %cmp.not.i32, label %if.end6.sprd_dma_set_pending.exit_crit_edge, label %sprd_dma_set_uid.exit

if.end6.sprd_dma_set_pending.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_set_pending.exit

sprd_dma_set_uid.exit:                            ; preds = %if.end6
  %chan_id.i.i33 = getelementptr inbounds %struct.dma_chan, ptr %schan, i32 0, i32 4
  %144 = ptrtoint ptr %chan_id.i.i33 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %chan_id.i.i33, align 4
  %.neg.i.i34 = mul i32 %145, -268
  %idx.neg.i.i35 = add i32 %.neg.i.i34, -384
  %add.ptr.i.i36 = getelementptr i8, ptr %schan, i32 %idx.neg.i.i35
  %sub.i37 = shl i32 %143, 2
  %add.i38 = add i32 %sub.i37, 8188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %chn_num.i39 = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 4
  %146 = ptrtoint ptr %chn_num.i39 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %chn_num.i39, align 4
  %add2.i = add i32 %147, 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %add2.i) #10
  %glb_base.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i36, i32 0, i32 1
  %149 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %150, i32 %add.i38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %148) #10, !srcloc !123
  %151 = ptrtoint ptr %dev_id1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pr = load i32, ptr %dev_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 0
  br i1 %cmp.i, label %sprd_dma_set_uid.exit.sprd_dma_set_pending.exit_crit_edge, label %if.end.i

sprd_dma_set_uid.exit.sprd_dma_set_pending.exit_crit_edge: ; preds = %sprd_dma_set_uid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_set_pending.exit

if.end.i:                                         ; preds = %sprd_dma_set_uid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %chan_id.i.i33 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %chan_id.i.i33, align 4
  %.neg.i.i42 = mul i32 %153, -268
  %idx.neg.i.i43 = add i32 %.neg.i.i42, -384
  %add.ptr.i.i44 = getelementptr i8, ptr %schan, i32 %idx.neg.i.i43
  %sub.i45 = add i32 %.pr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i45)
  %cmp2.i = icmp ult i32 %sub.i45, 32
  %sub4.i = add i32 %.pr, -33
  %reg.0.i = select i1 %cmp2.i, i32 8, i32 12
  %sub.pn.i = select i1 %cmp2.i, i32 %sub.i45, i32 %sub4.i
  %val.0.i = shl nuw i32 1, %sub.pn.i
  %glb_base.i.i46 = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i44, i32 0, i32 1
  %154 = ptrtoint ptr %glb_base.i.i46 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %glb_base.i.i46, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %155, i32 %reg.0.i
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !116
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %or.i.i47 = or i32 %157, %val.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %158 = tail call i32 @llvm.bswap.i32(i32 %or.i.i47) #10
  %159 = ptrtoint ptr %glb_base.i.i46 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %glb_base.i.i46, align 4
  %add.ptr4.i.i48 = getelementptr i8, ptr %160, i32 %reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i48, i32 %158) #10, !srcloc !123
  br label %sprd_dma_set_pending.exit

sprd_dma_set_pending.exit:                        ; preds = %if.end.i, %sprd_dma_set_uid.exit.sprd_dma_set_pending.exit_crit_edge, %if.end6.sprd_dma_set_pending.exit_crit_edge
  %161 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %162, i32 8
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %164 = or i32 %163, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %165 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %chn_base.i, align 4
  %add.ptr4.i.i50 = getelementptr i8, ptr %166, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i50, i32 %164) #10, !srcloc !123
  %167 = ptrtoint ptr %dev_id1.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %dev_id1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp = icmp eq i32 %168, 0
  br i1 %cmp, label %land.lhs.true8, label %sprd_dma_set_pending.exit.cleanup_crit_edge

sprd_dma_set_pending.exit.cleanup_crit_edge:      ; preds = %sprd_dma_set_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8:                                   ; preds = %sprd_dma_set_pending.exit
  %169 = ptrtoint ptr %chn_mode to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %chn_mode, align 4
  %.off = add i32 %170, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true8.cleanup_crit_edge, label %if.then14

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i.i52 = getelementptr i8, ptr %172, i32 4
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i52) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %174 = or i32 %173, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %175 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %chn_base.i, align 4
  %add.ptr4.i.i53 = getelementptr i8, ptr %176, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i53, i32 %174) #10, !srcloc !123
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %land.lhs.true8.cleanup_crit_edge, %sprd_dma_set_pending.exit.cleanup_crit_edge, %sprd_dma_set_2stage_config.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sprd_dma_stop(ptr nocapture noundef %schan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chn_base.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 1
  %0 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.sprd_dma_stop_and_disable.exit_crit_edge, label %if.end.i

entry.sprd_dma_stop_and_disable.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_stop_and_disable.exit

if.end.i:                                         ; preds = %entry
  %chan_id.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %schan, i32 0, i32 4
  %4 = ptrtoint ptr %chan_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_id.i.i.i, align 4
  %.neg.i.i.i = mul i32 %5, -268
  %idx.neg.i.i.i = add i32 %.neg.i.i.i, -384
  %add.ptr.i.i.i = getelementptr i8, ptr %schan, i32 %idx.neg.i.i.i
  %6 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chn_base.i, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chn_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #10, !srcloc !123
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end.i.i.do.body.i.i_crit_edge, %if.end.i
  %timeout.0.i.i = phi i32 [ 8192, %if.end.i ], [ %dec.i.i, %do.end.i.i.do.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chn_base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool3.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %do.body.i.i.sprd_dma_pause_resume.exit.i_crit_edge

do.body.i.i.sprd_dma_pause_resume.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_pause_resume.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !134
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %do.end18.i.i, label %do.end.i.i.do.body.i.i_crit_edge

do.end.i.i.do.body.i.i_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end18.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.33) #13
  br label %sprd_dma_pause_resume.exit.i

sprd_dma_pause_resume.exit.i:                     ; preds = %do.end18.i.i, %do.body.i.i.sprd_dma_pause_resume.exit.i_crit_edge
  %18 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %21 = and i32 %20, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %22 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chn_base.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %21) #10, !srcloc !123
  br label %sprd_dma_stop_and_disable.exit

sprd_dma_stop_and_disable.exit:                   ; preds = %sprd_dma_pause_resume.exit.i, %entry.sprd_dma_stop_and_disable.exit_crit_edge
  %dev_id.i = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 5
  %24 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i = icmp eq i32 %25, 0
  br i1 %cmp.i, label %sprd_dma_stop_and_disable.exit.sprd_dma_unset_uid.exit_crit_edge, label %sprd_dma_set_pending.exit

sprd_dma_stop_and_disable.exit.sprd_dma_unset_uid.exit_crit_edge: ; preds = %sprd_dma_stop_and_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_unset_uid.exit

sprd_dma_set_pending.exit:                        ; preds = %sprd_dma_stop_and_disable.exit
  %chan_id.i.i = getelementptr inbounds %struct.dma_chan, ptr %schan, i32 0, i32 4
  %26 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chan_id.i.i, align 4
  %.neg.i.i = mul i32 %27, -268
  %idx.neg.i.i = add i32 %.neg.i.i, -384
  %add.ptr.i.i = getelementptr i8, ptr %schan, i32 %idx.neg.i.i
  %sub.i = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i)
  %cmp2.i = icmp ult i32 %sub.i, 32
  %sub4.i = add i32 %25, -33
  %reg.0.i = select i1 %cmp2.i, i32 8, i32 12
  %sub.pn.i = select i1 %cmp2.i, i32 %sub.i, i32 %sub4.i
  %val.0.i = shl nuw i32 1, %sub.pn.i
  %glb_base.i.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %glb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %glb_base.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 %reg.0.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !116
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  %neg.i.i = xor i32 %val.0.i, -1
  %and.i.i = and i32 %31, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #10
  %33 = ptrtoint ptr %glb_base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %glb_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %34, i32 %reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %32) #10, !srcloc !123
  %35 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %dev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %sprd_dma_set_pending.exit.sprd_dma_unset_uid.exit_crit_edge, label %if.then.i

sprd_dma_set_pending.exit.sprd_dma_unset_uid.exit_crit_edge: ; preds = %sprd_dma_set_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_unset_uid.exit

if.then.i:                                        ; preds = %sprd_dma_set_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %chan_id.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chan_id.i.i, align 4
  %.neg.i.i7 = mul i32 %37, -268
  %idx.neg.i.i8 = add i32 %.neg.i.i7, -384
  %add.ptr.i.i9 = getelementptr i8, ptr %schan, i32 %idx.neg.i.i8
  %sub.i10 = shl i32 %.pr, 2
  %add.i = add i32 %sub.i10, 8188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @arm_heavy_mb() #10
  %glb_base.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %add.ptr.i.i9, i32 0, i32 1
  %38 = ptrtoint ptr %glb_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %glb_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %39, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #10, !srcloc !123
  br label %sprd_dma_unset_uid.exit

sprd_dma_unset_uid.exit:                          ; preds = %if.then.i, %sprd_dma_set_pending.exit.sprd_dma_unset_uid.exit_crit_edge, %sprd_dma_stop_and_disable.exit.sprd_dma_unset_uid.exit_crit_edge
  %40 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chn_base.i, align 4
  %add.ptr.i.i13 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13) #10, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  %43 = or i32 %42, 31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %chn_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chn_base.i, align 4
  %add.ptr4.i.i14 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i14, i32 %43) #10, !srcloc !123
  %cur_desc = getelementptr inbounds %struct.sprd_dma_chn, ptr %schan, i32 0, i32 9
  %46 = ptrtoint ptr %cur_desc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %cur_desc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_dma_fill_desc(ptr nocapture noundef readonly %chan, ptr nocapture noundef %hw, i32 noundef %sglen, i32 noundef %sg_index, i32 noundef %src, i32 noundef %dst, i32 noundef %len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readonly %slave_cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chan_id.i, align 4
  %.neg.i = mul i32 %1, -268
  %idx.neg.i = add i32 %.neg.i, -384
  %add.ptr.i = getelementptr i8, ptr %chan, i32 %idx.neg.i
  %chn_mode2 = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %chn_mode2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chn_mode2, align 4
  %and3 = and i32 %flags, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then, label %if.else11

if.then:                                          ; preds = %entry
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_cfg, i32 0, i32 3
  %4 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_addr_width, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %do.end [
    i32 1, label %if.then.if.end_crit_edge
    i32 2, label %if.then.if.end_crit_edge210
    i32 4, label %if.then.if.end_crit_edge211
    i32 8, label %if.then.if.end_crit_edge212
  ]

if.then.if.end_crit_edge212:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge211:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge210:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i, i32 0, i32 15
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.35) #13
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge210, %if.then.if.end_crit_edge211, %if.then.if.end_crit_edge212
  %.off = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 %5, i32 0
  br label %if.end21

if.else11:                                        ; preds = %entry
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %slave_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_addr_width, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 8
  br i1 %11, label %switch.hole_check, label %if.else11.do.end17_crit_edge

if.else11.do.end17_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end17:                                         ; preds = %switch.hole_check.do.end17_crit_edge, %if.else11.do.end17_crit_edge
  %dev19 = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i, i32 0, i32 15
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.38) #13
  br label %cleanup

switch.hole_check:                                ; preds = %if.else11
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end17_crit_edge, label %switch.lookup

switch.hole_check.do.end17_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.sprd_dma_fill_desc, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end21

if.end21:                                         ; preds = %switch.lookup, %if.end
  %src_step.0 = phi i32 [ %5, %if.end ], [ 0, %switch.lookup ]
  %dst_step.0 = phi i32 [ %spec.select, %if.end ], [ %switch.load, %switch.lookup ]
  %src_addr_width22 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_cfg, i32 0, i32 3
  %16 = ptrtoint ptr %src_addr_width22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_addr_width22, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %17, label %do.end28 [
    i32 1, label %if.end21.if.end31_crit_edge
    i32 2, label %if.end21.if.end31_crit_edge213
    i32 4, label %if.end21.if.end31_crit_edge214
    i32 8, label %if.end21.if.end31_crit_edge215
  ]

if.end21.if.end31_crit_edge215:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end21.if.end31_crit_edge214:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end21.if.end31_crit_edge213:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %dev30 = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i, i32 0, i32 15
  %19 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.41) #13
  br label %cleanup

if.end31:                                         ; preds = %if.end21.if.end31_crit_edge, %if.end21.if.end31_crit_edge213, %if.end21.if.end31_crit_edge214, %if.end21.if.end31_crit_edge215
  %dst_addr_width32 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_cfg, i32 0, i32 4
  %21 = ptrtoint ptr %dst_addr_width32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_addr_width32, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %22, label %do.end38 [
    i32 1, label %if.end31.if.end41_crit_edge
    i32 2, label %if.end31.if.end41_crit_edge216
    i32 4, label %if.end31.if.end41_crit_edge217
    i32 8, label %if.end31.if.end41_crit_edge218
  ]

if.end31.if.end41_crit_edge218:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end31.if.end41_crit_edge217:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end31.if.end41_crit_edge216:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %dev40 = getelementptr inbounds %struct.dma_device, ptr %add.ptr.i, i32 0, i32 15
  %24 = ptrtoint ptr %dev40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev40, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.44) #13
  br label %cleanup

if.end41:                                         ; preds = %if.end31.if.end41_crit_edge, %if.end31.if.end41_crit_edge216, %if.end31.if.end41_crit_edge217, %if.end31.if.end41_crit_edge218
  %26 = tail call i32 @llvm.cttz.i32(i32 %17, i1 true) #10, !range !118
  %27 = tail call i32 @llvm.cttz.i32(i32 %22, i1 true) #10, !range !118
  %cfg = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 2
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 16777216, ptr %cfg, align 4
  %wrap_ptr = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 10
  %29 = ptrtoint ptr %wrap_ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wrap_ptr, align 4
  %wrap_to = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 11
  %30 = ptrtoint ptr %wrap_to to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wrap_to, align 4
  %src_addr = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 4
  %31 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %src, ptr %src_addr, align 4
  %des_addr = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 5
  %32 = ptrtoint ptr %des_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %dst, ptr %des_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_step.0)
  %cmp48.not = icmp eq i32 %src_step.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_step.0)
  %cmp49.not = icmp ne i32 %dst_step.0, 0
  %not.cmp48.not = xor i1 %cmp48.not, true
  %or.cond = select i1 %not.cmp48.not, i1 %cmp49.not, i1 false
  %or = or i32 %dst_step.0, %src_step.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp51 = icmp eq i32 %or, 0
  %or.cond190 = select i1 %or.cond, i1 true, i1 %cmp51
  %33 = select i1 %or.cond190, i1 true, i1 %cmp48.not
  %fix_mode.0 = select i1 %33, i32 0, i32 2097152
  %fix_en.0 = select i1 %or.cond190, i32 0, i32 1048576
  %or58 = or i32 %and3, 16
  %intc = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 3
  %34 = ptrtoint ptr %intc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or58, ptr %intc, align 4
  %shl = shl i32 %26, 30
  %shl59 = shl i32 %27, 28
  %35 = shl i32 %flags, 16
  %shl61 = and i32 %35, 50331648
  %wrap_addr = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %wrap_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wrap_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool67.not = icmp eq i32 %37, 0
  %cond = select i1 %tobool67.not, i32 0, i32 12582912
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_cfg, i32 0, i32 5
  %38 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_maxburst, align 4
  %and69 = and i32 %39, 131071
  %or60 = or i32 %shl, %shl61
  %or62 = or i32 %or60, %fix_en.0
  %or64 = or i32 %or62, %fix_mode.0
  %or66 = or i32 %or64, %shl59
  %or68 = or i32 %or66, %cond
  %or70 = or i32 %or68, %and69
  %frg_len = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 6
  %40 = ptrtoint ptr %frg_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or70, ptr %frg_len, align 4
  %41 = load i32, ptr %src_maxburst, align 4
  %and72 = and i32 %41, 131071
  %blk_len = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 7
  %42 = ptrtoint ptr %blk_len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and72, ptr %blk_len, align 4
  %and73 = and i32 %len, 268435455
  %trsc_len = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 8
  %43 = ptrtoint ptr %trsc_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and73, ptr %trsc_len, align 4
  %shl75 = shl nuw nsw i32 %dst_step.0, 16
  %or78 = or i32 %shl75, %src_step.0
  %trsf_step = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 9
  %44 = ptrtoint ptr %trsf_step to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or78, ptr %trsf_step, align 4
  %phy_addr = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 2, i32 1
  %45 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool80.not = icmp eq i32 %46, 0
  br i1 %tobool80.not, label %if.else109, label %if.then81

if.then81:                                        ; preds = %if.end41
  %47 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 16777232, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %tobool84.not = icmp eq i32 %sglen, 0
  br i1 %tobool84.not, label %if.then81.cond.end_crit_edge, label %cond.true

if.then81.cond.end_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %sg_index, 1
  %rem = urem i32 %add, %sglen
  %phi.bo = shl i32 %rem, 6
  %phi.bo189 = or i32 %phi.bo, 16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then81.cond.end_crit_edge
  %cond85 = phi i32 [ %phi.bo189, %cond.true ], [ 16, %if.then81.cond.end_crit_edge ]
  %48 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phy_addr, align 4
  %add89 = add i32 %49, %cond85
  %llist_ptr91 = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 12
  %50 = ptrtoint ptr %llist_ptr91 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add89, ptr %llist_ptr91, align 4
  %src_blk_step = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 14
  %51 = ptrtoint ptr %src_blk_step to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %src_blk_step, align 4
  %52 = ptrtoint ptr %wrap_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %wrap_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool98.not = icmp eq i32 %53, 0
  br i1 %tobool98.not, label %cond.end.if.end112_crit_edge, label %if.then99

cond.end.if.end112_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

if.then99:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %and102 = and i32 %53, 268435455
  %54 = ptrtoint ptr %wrap_ptr to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and102, ptr %wrap_ptr, align 4
  %and105 = and i32 %dst, 268435455
  %55 = ptrtoint ptr %wrap_to to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and105, ptr %wrap_to, align 4
  br label %if.end112

if.else109:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %llist_ptr110 = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 12
  %56 = ptrtoint ptr %llist_ptr110 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %llist_ptr110, align 4
  %src_blk_step111 = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 14
  %57 = ptrtoint ptr %src_blk_step111 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %src_blk_step111, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.else109, %if.then99, %cond.end.if.end112_crit_edge
  %frg_step = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 13
  %58 = ptrtoint ptr %frg_step to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %frg_step, align 4
  %des_blk_step = getelementptr inbounds %struct.sprd_dma_chn_hw, ptr %hw, i32 0, i32 15
  %59 = ptrtoint ptr %des_blk_step to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %des_blk_step, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %do.end38, %do.end28, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ -22, %do.end38 ], [ 0, %if.end112 ], [ -22, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sprd_dma_filter_fn(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %param) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param, align 4
  %dev_id = getelementptr inbounds %struct.sprd_dma_chn, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dev_id, align 4
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %ashb_clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ashb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ashb_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.sprd_dma_disable.exit_crit_edge, label %if.then.i

entry.sprd_dma_disable.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sprd_dma_disable.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %sprd_dma_disable.exit

sprd_dma_disable.exit:                            ; preds = %if.then.i, %entry.sprd_dma_disable.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_dma_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i, label %if.end.i.i.cleanup.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end.i.i
  %ashb_clk.i = getelementptr inbounds %struct.sprd_dma_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ashb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ashb_clk.i, align 4
  %cmp.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %call.i10.i = tail call i32 @clk_prepare(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %if.end.i14.i, label %if.then2.i.do.end_crit_edge

if.then2.i.do.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i14.i:                                     ; preds = %if.then2.i
  %call1.i12.i = tail call i32 @clk_enable(ptr noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool2.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool2.not.i13.i, label %if.end.i14.i.if.end_crit_edge, label %if.end.i14.i.cleanup.sink.split.i_crit_edge

if.end.i14.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i

if.end.i14.i.if.end_crit_edge:                    ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cleanup.sink.split.i:                             ; preds = %if.end.i14.i.cleanup.sink.split.i_crit_edge, %if.end.i.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %3, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %5, %if.end.i14.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call1.i.i, %if.end.i.i.cleanup.sink.split.i_crit_edge ], [ %call1.i12.i, %if.end.i14.i.cleanup.sink.split.i_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink.i) #10
  br label %do.end

do.end:                                           ; preds = %cleanup.sink.split.i, %if.then2.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call.i.i, %entry.do.end_crit_edge ], [ %call.i10.i, %if.then2.i.do.end_crit_edge ]
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.46) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.end.i14.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.i.if.end_crit_edge ], [ 0, %if.end.i14.i.if.end_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !96, !98, !100, !101, !102}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !{ptr @__initcall__kmod_sprd_dma__239_1302_sprd_dma_driver_init6, !1, !"__initcall__kmod_sprd_dma__239_1302_sprd_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sprd-dma.c", i32 1302, i32 1}
!2 = !{ptr @__exitcall_sprd_dma_driver_exit, !1, !"__exitcall_sprd_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file240, !4, !"__UNIQUE_ID_file240", i1 false, i1 false}
!4 = !{!"../drivers/dma/sprd-dma.c", i32 1304, i32 1}
!5 = !{ptr @__UNIQUE_ID_license241, !4, !"__UNIQUE_ID_license241", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description242, !7, !"__UNIQUE_ID_description242", i1 false, i1 false}
!7 = !{!"../drivers/dma/sprd-dma.c", i32 1305, i32 1}
!8 = !{ptr @__UNIQUE_ID_author243, !9, !"__UNIQUE_ID_author243", i1 false, i1 false}
!9 = !{!"../drivers/dma/sprd-dma.c", i32 1306, i32 1}
!10 = !{ptr @__UNIQUE_ID_author244, !11, !"__UNIQUE_ID_author244", i1 false, i1 false}
!11 = !{!"../drivers/dma/sprd-dma.c", i32 1307, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias245, !13, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!13 = !{!"../drivers/dma/sprd-dma.c", i32 1308, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/sprd-dma.c", i32 1297, i32 11}
!16 = !{ptr @sprd_dma_driver, !17, !"sprd_dma_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/sprd-dma.c", i32 1293, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/sprd-dma.c", i32 1120, i32 45}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/sprd-dma.c", i32 1122, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sprd_dma_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @sprd_dma_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sprd-dma.c", i32 1132, i32 39}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/sprd-dma.c", i32 1134, i32 3}
!32 = !{ptr @sprd_dma_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sprd_dma_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/sprd-dma.c", i32 1139, i32 44}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/sprd-dma.c", i32 1141, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sprd_dma_probe._entry.12, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @sprd_dma_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/sprd-dma.c", i32 1153, i32 15}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/sprd-dma.c", i32 1155, i32 4}
!45 = !{ptr @sprd_dma_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sprd_dma_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/sprd-dma.c", i32 1159, i32 3}
!49 = !{ptr @sprd_dma_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @sprd_dma_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/dma/sprd-dma.c", i32 1209, i32 3}
!53 = !{ptr @sprd_dma_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sprd_dma_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/sprd-dma.c", i32 422, i32 3}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sprd_dma_get_int_type._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sprd_dma_get_int_type._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !61, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/sprd-dma.c", i32 481, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sprd_dma_set_2stage_config._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @sprd_dma_set_2stage_config._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/sprd-dma.c", i32 358, i32 4}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sprd_dma_pause_resume._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sprd_dma_pause_resume._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/sprd-dma.c", i32 764, i32 4}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @sprd_dma_fill_desc._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @sprd_dma_fill_desc._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/sprd-dma.c", i32 780, i32 4}
!82 = !{ptr @sprd_dma_fill_desc._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sprd_dma_fill_desc._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/sprd-dma.c", i32 788, i32 3}
!86 = !{ptr @sprd_dma_fill_desc._entry.40, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sprd_dma_fill_desc._entry_ptr.42, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/sprd-dma.c", i32 794, i32 3}
!90 = !{ptr @sprd_dma_fill_desc._entry.43, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @sprd_dma_fill_desc._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @sprd_dma_info, !93, !"sprd_dma_info", i1 false, i1 false}
!93 = !{!"../drivers/dma/sprd-dma.c", i32 220, i32 34}
!94 = !{ptr @sprd_dma_match, !95, !"sprd_dma_match", i1 false, i1 false}
!95 = !{!"../drivers/dma/sprd-dma.c", i32 1261, i32 34}
!96 = !{ptr @sprd_dma_pm_ops, !97, !"sprd_dma_pm_ops", i1 false, i1 false}
!97 = !{!"../drivers/dma/sprd-dma.c", i32 1287, i32 32}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/sprd-dma.c", i32 1282, i32 3}
!100 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @sprd_dma_runtime_resume._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @sprd_dma_runtime_resume._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 1, !"min_enum_size", i32 4}
!105 = !{i32 8, !"branch-target-enforcement", i32 0}
!106 = !{i32 8, !"sign-return-address", i32 0}
!107 = !{i32 8, !"sign-return-address-all", i32 0}
!108 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!109 = !{i32 7, !"uwtable", i32 1}
!110 = !{i32 7, !"frame-pointer", i32 2}
!111 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!112 = !{!"auto-init"}
!113 = !{i64 2148273221}
!114 = !{i64 758044, i64 758069, i64 758091, i64 758107, i64 758119, i64 758139, i64 758163, i64 758179, i64 758191}
!115 = !{i64 2148273409}
!116 = !{i64 6282435}
!117 = !{i64 2154526037}
!118 = !{i32 0, i32 33}
!119 = !{i64 2154509145}
!120 = !{i64 2154512290}
!121 = !{i64 2154498712}
!122 = !{i64 2154498930}
!123 = !{i64 6282017}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{i64 2154441759, i64 2154442246, i64 2154441796, i64 2154441852, i64 2154441886, i64 2154441910, i64 2154441951, i64 2154441972, i64 2154442000, i64 2154442034}
!126 = !{i64 2148755617, i64 2148755622, i64 2148755635, i64 2148755679, i64 2148755713, i64 2148755734}
!127 = !{i64 2154443259}
!128 = !{i64 2154507434}
!129 = !{i64 2154507945}
!130 = !{i64 2154505718}
!131 = !{i64 2154506229}
!132 = !{i64 2154502512}
!133 = !{i64 2154502869}
!134 = !{i64 2154502711}
!135 = !{i64 2154497815}
!136 = !{i64 2154498032}
!137 = !{i64 2154518693}
!138 = !{i64 2154519120}
!139 = !{i64 2154519542}
!140 = !{i64 2154519973}
!141 = !{i64 2154520417}
!142 = !{i64 2154520860}
!143 = !{i64 2154521300}
!144 = !{i64 2154521741}
!145 = !{i64 2154522186}
!146 = !{i64 2154522633}
!147 = !{i64 2154523076}
!148 = !{i64 2154523518}
!149 = !{i64 2154523965}
!150 = !{i64 2154524413}
!151 = !{i64 2154524873}
!152 = !{i64 2154525322}
!153 = !{i64 2154499384}
!154 = !{i64 2154505125}
!155 = !{i64 2154499872}
