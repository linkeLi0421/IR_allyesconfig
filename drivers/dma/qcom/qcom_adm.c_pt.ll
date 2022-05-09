; ModuleID = '/llk/IR_all_yes/drivers/dma/qcom/qcom_adm.c_pt.bc'
source_filename = "../drivers/dma/qcom/qcom_adm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.adm_device = type { ptr, ptr, %struct.dma_device, %struct.device_dma_parameters, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.adm_chan = type { %struct.virt_dma_chan, ptr, i32, ptr, %struct.dma_slave_config, i32, i32, %struct.list_head, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.adm_async_desc = type { %struct.virt_dma_desc, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32 }
%struct.adm_desc_hw_box = type { i32, i32, i32, i32, i32, i32 }
%struct.adm_desc_hw_single = type { i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_qcom_adm__240_943_adm_dma_driver_init6 = internal global ptr @adm_dma_driver_init, section ".initcall6.init", align 4
@adm_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @adm_dma_probe, ptr @adm_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_adm_dma_driver_exit = internal global ptr @adm_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [51 x i8] c"qcom_adm.author=Andy Gross <agross@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [48 x i8] c"qcom_adm.description=QCOM ADM DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [40 x i8] c"qcom_adm.file=drivers/dma/qcom/qcom_adm\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [24 x i8] c"qcom_adm.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adm-dma-engine\00", [17 x i8] zeroinitializer }, align 32
@adm_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,adm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcom,ee\00", [24 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 762, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Execution environment unspecified\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adm_dma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/qcom/qcom_adm.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr = internal global ptr @adm_dma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get ADM0 reset\0A\00", [38 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.12 = internal global ptr @adm_dma_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"c0\00", [29 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ADM0 C0 reset\0A\00", [35 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.16 = internal global ptr @adm_dma_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"c1\00", [29 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 788, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ADM0 C1 reset\0A\00", [35 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.20 = internal global ptr @adm_dma_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"c2\00", [29 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ADM0 C2 reset\0A\00", [35 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.24 = internal global ptr @adm_dma_probe._entry.22, section ".printk_index", align 4
@adm_dma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 800, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to prepare/enable core clock\0A\00", [59 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.27 = internal global ptr @adm_dma_probe._entry.25, section ".printk_index", align 4
@adm_dma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to prepare/enable iface clock\0A\00", [58 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.30 = internal global ptr @adm_dma_probe._entry.28, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm_dma\00", [24 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.3, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register dma async device\0A\00", [59 x i8] zeroinitializer }, align 32
@adm_dma_probe._entry_ptr.34 = internal global ptr @adm_dma_probe._entry.32, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"qcom_adm\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/dma/qcom/../virt-dma.h\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@adm_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 365, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid dma direction\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adm_prep_slave_sg\00", [46 x i8] zeroinitializer }, align 32
@adm_prep_slave_sg._entry_ptr = internal global ptr @adm_prep_slave_sg._entry, section ".printk_index", align 4
@adm_prep_slave_sg._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 381, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid burst value: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@adm_prep_slave_sg._entry_ptr.43 = internal global ptr @adm_prep_slave_sg._entry.41, section ".printk_index", align 4
@adm_prep_slave_sg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.4, i32 387, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid crci value\0A\00", [44 x i8] zeroinitializer }, align 32
@adm_prep_slave_sg._entry_ptr.46 = internal global ptr @adm_prep_slave_sg._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 32, i64 64, i64 128, i64 192, i64 256]
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"adm_dma_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 934, i32 31 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 938, i32 11 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"adm_of_match\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 928, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 760, i32 48 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 762, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 766, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 770, i32 44 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 774, i32 65 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 776, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 780, i32 64 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 782, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 786, i32 64 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 788, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 792, i32 64 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 794, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 800, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 806, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 852, i32 14 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 880, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [34 x i8] c"../drivers/dma/qcom/../virt-dma.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 101, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 365, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 380, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private constant [31 x i8] c"../drivers/dma/qcom/qcom_adm.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 387, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 326, i32 6 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_adm_dma_driver_exit, ptr @__initcall__kmod_qcom_adm__240_943_adm_dma_driver_init6, ptr @adm_dma_driver_exit, ptr @adm_dma_probe._entry, ptr @adm_dma_probe._entry.10, ptr @adm_dma_probe._entry.14, ptr @adm_dma_probe._entry.18, ptr @adm_dma_probe._entry.22, ptr @adm_dma_probe._entry.25, ptr @adm_dma_probe._entry.28, ptr @adm_dma_probe._entry.32, ptr @adm_dma_probe._entry_ptr, ptr @adm_dma_probe._entry_ptr.12, ptr @adm_dma_probe._entry_ptr.16, ptr @adm_dma_probe._entry_ptr.20, ptr @adm_dma_probe._entry_ptr.24, ptr @adm_dma_probe._entry_ptr.27, ptr @adm_dma_probe._entry_ptr.30, ptr @adm_dma_probe._entry_ptr.34, ptr @adm_prep_slave_sg._entry, ptr @adm_prep_slave_sg._entry.41, ptr @adm_prep_slave_sg._entry.44, ptr @adm_prep_slave_sg._entry_ptr, ptr @adm_prep_slave_sg._entry_ptr.43, ptr @adm_prep_slave_sg._entry_ptr.46, ptr @adm_dma_driver, ptr @.str, ptr @adm_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_dma_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_prep_slave_sg._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm_prep_slave_sg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @adm_dma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @adm_dma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 420, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call10, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %ee = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef %ee, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool17.not = icmp sgt i32 %call.i.i, -1
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  br i1 %tobool17.not, label %if.end20, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.7) #8
  %core_clk = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %core_clk, align 4
  %cmp.i317 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  %call30 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.8) #8
  %iface_clk = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %iface_clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %iface_clk, align 4
  %cmp.i318 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i318, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call30 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  %call.i319 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %clk_reset = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %clk_reset to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i319, ptr %clk_reset, align 4
  %cmp.i320 = icmp ugt ptr %call.i319, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i320, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11) #11
  %17 = ptrtoint ptr %clk_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_reset, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end36
  %call.i321 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %c0_reset = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %c0_reset to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i321, ptr %c0_reset, align 4
  %cmp.i322 = icmp ugt ptr %call.i321, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i322, label %do.end56, label %if.end60

do.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15) #11
  %23 = ptrtoint ptr %c0_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %c0_reset, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end48
  %call.i323 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %c1_reset = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %c1_reset to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i323, ptr %c1_reset, align 4
  %cmp.i324 = icmp ugt ptr %call.i323, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.19) #11
  %29 = ptrtoint ptr %c1_reset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %c1_reset, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end72:                                         ; preds = %if.end60
  %call.i325 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %c2_reset = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 11
  %32 = ptrtoint ptr %c2_reset to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i325, ptr %c2_reset, align 4
  %cmp.i326 = icmp ugt ptr %call.i325, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i326, label %do.end80, label %if.end84

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23) #11
  %35 = ptrtoint ptr %c2_reset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %c2_reset, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end84:                                         ; preds = %if.end72
  %38 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %core_clk, align 4
  %call.i327 = tail call i32 @clk_prepare(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i327)
  %tobool.not.i = icmp eq i32 %call.i327, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end84.do.end91_crit_edge

if.end84.do.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end91

if.end.i:                                         ; preds = %if.end84
  %call1.i = tail call i32 @clk_enable(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end93, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %39) #8
  br label %do.end91

do.end91:                                         ; preds = %if.then3.i, %if.end84.do.end91_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i327, %if.end84.do.end91_crit_edge ]
  %40 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.26) #11
  br label %cleanup

if.end93:                                         ; preds = %if.end.i
  %42 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iface_clk, align 4
  %call.i328 = tail call i32 @clk_prepare(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i328)
  %tobool.not.i329 = icmp eq i32 %call.i328, 0
  br i1 %tobool.not.i329, label %if.end.i332, label %if.end93.do.end100_crit_edge

if.end93.do.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end100

if.end.i332:                                      ; preds = %if.end93
  %call1.i330 = tail call i32 @clk_enable(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i330)
  %tobool2.not.i331 = icmp eq i32 %call1.i330, 0
  br i1 %tobool2.not.i331, label %if.end102, label %if.then3.i333

if.then3.i333:                                    ; preds = %if.end.i332
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %43) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then3.i333, %if.end93.do.end100_crit_edge
  %retval.0.i334.ph = phi i32 [ %call1.i330, %if.then3.i333 ], [ %call.i328, %if.end93.do.end100_crit_edge ]
  %44 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.29) #11
  br label %err_disable_core_clk

if.end102:                                        ; preds = %if.end.i332
  %46 = ptrtoint ptr %clk_reset to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_reset, align 4
  %call104 = tail call i32 @reset_control_assert(ptr noundef %47) #8
  %48 = ptrtoint ptr %c0_reset to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %c0_reset, align 4
  %call106 = tail call i32 @reset_control_assert(ptr noundef %49) #8
  %50 = ptrtoint ptr %c1_reset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %c1_reset, align 4
  %call108 = tail call i32 @reset_control_assert(ptr noundef %51) #8
  %52 = ptrtoint ptr %c2_reset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %c2_reset, align 4
  %call110 = tail call i32 @reset_control_assert(ptr noundef %53) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 429496) #8
  %55 = ptrtoint ptr %clk_reset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_reset, align 4
  %call112 = tail call i32 @reset_control_deassert(ptr noundef %56) #8
  %57 = ptrtoint ptr %c0_reset to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %c0_reset, align 4
  %call114 = tail call i32 @reset_control_deassert(ptr noundef %58) #8
  %59 = ptrtoint ptr %c1_reset to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %c1_reset, align 4
  %call116 = tail call i32 @reset_control_deassert(ptr noundef %60) #8
  %61 = ptrtoint ptr %c2_reset to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %c2_reset, align 4
  %call118 = tail call i32 @reset_control_deassert(ptr noundef %62) #8
  %63 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev2, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %64, i32 noundef 4224, i32 noundef 3520) #8
  %channels = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 4
  %65 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool122.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool122.not, label %if.end102.err_disable_clks_crit_edge, label %if.end124

if.end102.err_disable_clks_crit_edge:             ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clks

if.end124:                                        ; preds = %if.end102
  %common = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2
  %channels125 = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 3
  %66 = ptrtoint ptr %channels125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %channels125, ptr %channels125, align 4
  %prev.i = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 3, i32 1
  %67 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %channels125, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end124
  %i.0343 = phi i32 [ 0, %if.end124 ], [ %inc, %for.body.for.body_crit_edge ]
  %68 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.adm_chan, ptr %69, i32 %i.0343
  %id.i = getelementptr %struct.adm_chan, ptr %69, i32 %i.0343, i32 2
  %70 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %i.0343, ptr %id.i, align 4
  %adev1.i = getelementptr %struct.adm_chan, ptr %69, i32 %i.0343, i32 1
  %71 = ptrtoint ptr %adev1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %adev1.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef %common) #8
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %72 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @adm_dma_free_desc, ptr %desc_free.i, align 4
  %inc = add nuw nsw i32 %i.0343, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body.do.body131_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.body131_crit_edge:                    ; preds = %for.body
  br label %do.body131

do.body131:                                       ; preds = %do.body131.do.body131_crit_edge, %for.body.do.body131_crit_edge
  %i.1344 = phi i32 [ %inc139, %do.body131.do.body131_crit_edge ], [ 0, %for.body.do.body131_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %mul = shl nuw nsw i32 %i.1344, 2
  %add = add nuw nsw i32 %mul, 1024
  %75 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ee, align 4
  %mul136 = shl i32 %76, 11
  %add137 = add nuw i32 %add, %mul136
  %add.ptr = getelementptr i8, ptr %74, i32 %add137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 512) #8, !srcloc !101
  %inc139 = add nuw nsw i32 %i.1344, 1
  %exitcond345.not = icmp eq i32 %inc139, 16
  br i1 %exitcond345.not, label %do.body141, label %do.body131.do.body131_crit_edge

do.body131.do.body131_crit_edge:                  ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body131

do.body141:                                       ; preds = %do.body131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  %add.ptr145 = getelementptr i8, ptr %78, i32 912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 134234288) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %79 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call.i, align 4
  %add.ptr150 = getelementptr i8, ptr %80, i32 916
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 134228524) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %add.ptr155 = getelementptr i8, ptr %82, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 134222376) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %add.ptr160 = getelementptr i8, ptr %84, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 2031616) #8, !srcloc !101
  %85 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev2, align 4
  %87 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %irq, align 4
  %call.i336 = tail call i32 @devm_request_threaded_irq(ptr noundef %86, i32 noundef %88, ptr noundef nonnull @adm_dma_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool164.not = icmp eq i32 %call.i336, 0
  br i1 %tobool164.not, label %if.end166, label %do.body141.err_disable_clks_crit_edge

do.body141.err_disable_clks_crit_edge:            ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_clks

if.end166:                                        ; preds = %do.body141
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %89 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %90 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev2, align 4
  %dev169 = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 15
  %92 = ptrtoint ptr %dev169 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %91, ptr %dev169, align 4
  %dma_parms = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 3
  %dma_parms172 = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 22
  %93 = ptrtoint ptr %dma_parms172 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %dma_parms, ptr %dma_parms172, align 4
  %cap_mask = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 6
  %94 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  %directions = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 21
  %95 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 8, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 26
  %96 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %residue_granularity, align 4
  %src_addr_widths = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 19
  %97 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 4, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 20
  %98 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %dst_addr_widths, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 29
  %99 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @adm_free_chan, ptr %device_free_chan_resources, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 39
  %100 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @adm_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_issue_pending = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 50
  %101 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @adm_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 49
  %102 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @adm_tx_status, ptr %device_tx_status, align 4
  %device_terminate_all = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 47
  %103 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @adm_terminate_all, ptr %device_terminate_all, align 4
  %device_config = getelementptr inbounds %struct.adm_device, ptr %call.i, i32 0, i32 2, i32 44
  %104 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @adm_slave_config, ptr %device_config, align 4
  %call189 = tail call i32 @dma_async_device_register(ptr noundef %common) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %tobool190.not = icmp eq i32 %call189, 0
  br i1 %tobool190.not, label %if.end196, label %do.end194

do.end194:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.33) #11
  br label %err_disable_clks

if.end196:                                        ; preds = %if.end166
  %107 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %of_node, align 8
  %call200 = tail call i32 @of_dma_controller_register(ptr noundef %108, ptr noundef nonnull @adm_dma_xlate, ptr noundef %common) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.end196.cleanup_crit_edge, label %err_unregister_dma

if.end196.cleanup_crit_edge:                      ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_unregister_dma:                               ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_async_device_unregister(ptr noundef %common) #8
  br label %err_disable_clks

err_disable_clks:                                 ; preds = %err_unregister_dma, %do.end194, %do.body141.err_disable_clks_crit_edge, %if.end102.err_disable_clks_crit_edge
  %ret.0 = phi i32 [ %call.i336, %do.body141.err_disable_clks_crit_edge ], [ %call189, %do.end194 ], [ %call200, %err_unregister_dma ], [ -12, %if.end102.err_disable_clks_crit_edge ]
  %109 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %110) #8
  tail call void @clk_unprepare(ptr noundef %110) #8
  br label %err_disable_core_clk

err_disable_core_clk:                             ; preds = %err_disable_clks, %do.end100
  %ret.1 = phi i32 [ %retval.0.i334.ph, %do.end100 ], [ %ret.0, %err_disable_clks ]
  %111 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %112) #8
  tail call void @clk_unprepare(ptr noundef %112) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_core_clk, %if.end196.cleanup_crit_edge, %do.end91, %do.end80, %do.end68, %do.end56, %do.end44, %if.then33, %if.then25, %do.end, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call.i.i, %do.end ], [ %9, %if.then25 ], [ %13, %if.then33 ], [ %19, %do.end44 ], [ %25, %do.end56 ], [ %31, %do.end68 ], [ %37, %do.end80 ], [ %retval.0.i.ph, %do.end91 ], [ %ret.1, %err_disable_core_clk ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end196.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #8
  %common = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %common) #8
  %channels = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 4
  %ee = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %id = getelementptr %struct.adm_chan, ptr %5, i32 %i.025, i32 2
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %mul = shl i32 %9, 2
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ee, align 4
  %mul1 = shl i32 %11, 11
  %add = add i32 %mul, 768
  %add2 = add i32 %add, %mul1
  %add.ptr = getelementptr i8, ptr %7, i32 %add2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !101
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 4
  %task = getelementptr %struct.adm_chan, ptr %13, i32 %i.025, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #8
  %14 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels, align 4
  %arrayidx6 = getelementptr %struct.adm_chan, ptr %15, i32 %i.025
  %call8 = tail call i32 @adm_terminate_all(ptr noundef %arrayidx6)
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev9 = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  %irq = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %17, i32 noundef %19, ptr noundef %1) #8
  %core_clk = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core_clk, align 4
  tail call void @clk_disable(ptr noundef %21) #8
  tail call void @clk_unprepare(ptr noundef %21) #8
  %iface_clk = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %iface_clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iface_clk, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_dma_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %ee = getelementptr inbounds %struct.adm_device, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ee, align 4
  %mul = shl i32 %3, 11
  %add = or i32 %mul, 896
  %add.ptr = getelementptr i8, ptr %1, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !107
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %channels = getelementptr inbounds %struct.adm_device, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.071 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels, align 4
  %arrayidx = getelementptr %struct.adm_chan, ptr %7, i32 %i.071
  %shl = shl nuw nsw i32 1, %i.071
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.then

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %for.body
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %mul3 = shl nuw nsw i32 %i.071, 2
  %10 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ee, align 4
  %mul5 = shl i32 %11, 11
  %add6 = add nuw nsw i32 %mul3, 512
  %add7 = add i32 %add6, %mul5
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !107
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %16 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ee, align 4
  %mul18 = shl i32 %17, 11
  %add19 = add nuw nsw i32 %mul3, 64
  %add20 = add i32 %add19, %mul18
  %add.ptr21 = getelementptr i8, ptr %15, i32 %add20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #8, !srcloc !107
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool25.not = icmp sgt i32 %19, -1
  br i1 %tobool25.not, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %and28 = and i32 %19, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.do.body32_crit_edge, label %if.then30

if.end27.do.body32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %error = getelementptr %struct.adm_chan, ptr %7, i32 %i.071, i32 8
  %20 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %error, align 4
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %if.end27.do.body32_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  %call36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %curr_txd = getelementptr %struct.adm_chan, ptr %7, i32 %i.071, i32 3
  %21 = ptrtoint ptr %curr_txd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %curr_txd, align 4
  store ptr null, ptr %curr_txd, align 4
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %do.body32.if.end42_crit_edge, label %if.then41

do.body32.if.end42_crit_edge:                     ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then41:                                        ; preds = %do.body32
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i.i = icmp slt i32 %26, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !108

do.body2.i.i:                                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !109
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then41
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %completed_cookie.i.i, align 4
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %22, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm_dma_irq, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !110

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 15
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %32, ptr noundef nonnull @.str.38, ptr noundef nonnull %22, i32 noundef %26) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %34, ptr noundef %desc_completed.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %node.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %22, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %node.i, ptr %34, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %24, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  tail call fastcc void @adm_start_dma(ptr noundef %arrayidx)
  br label %if.end42

if.end42:                                         ; preds = %vchan_cookie_complete.exit, %do.body32.if.end42_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call36) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm_free_chan(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @adm_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %mem_addr.i188 = alloca i32, align 4
  %mem_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  %2 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.39) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %dst_maxburst = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4, i32 6
  %src_maxburst = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4, i32 5
  %cond.in = select i1 %cmp, ptr %dst_maxburst, ptr %src_maxburst
  %6 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %cond = load i32, ptr %cond.in, align 4
  %device_fc = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4, i32 9
  %7 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %device_fc, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end26_crit_edge, label %if.then5

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then5:                                         ; preds = %if.end
  %9 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %do.end11 [
    i32 16, label %if.then5.sw.bb.i_crit_edge
    i32 32, label %if.then5.sw.bb.i_crit_edge231
    i32 64, label %if.then5.sw.bb.i_crit_edge232
    i32 128, label %if.then5.sw.bb.i_crit_edge233
    i32 192, label %if.then5.if.end14_crit_edge
    i32 256, label %sw.bb2.i
  ]

if.then5.if.end14_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then5.sw.bb.i_crit_edge233:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge232:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge231:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then5.sw.bb.i_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then5.sw.bb.i_crit_edge, %if.then5.sw.bb.i_crit_edge231, %if.then5.sw.bb.i_crit_edge232, %if.then5.sw.bb.i_crit_edge233
  %shr.i = lshr i32 %cond, 4
  %10 = tail call i32 @llvm.cttz.i32(i32 %shr.i, i1 true) #8, !range !112
  br label %if.end14

sw.bb2.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.end11:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %dev12 = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.42, i32 noundef %cond) #11
  br label %cleanup

if.end14:                                         ; preds = %sw.bb2.i, %sw.bb.i, %if.then5.if.end14_crit_edge
  %ret.0.i.ph = phi i32 [ 4, %if.then5.if.end14_crit_edge ], [ %10, %sw.bb.i ], [ 5, %sw.bb2.i ]
  %crci15 = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %crci15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crci15, align 4
  %and = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp18 = icmp ugt i32 %14, 31
  %or.cond = or i1 %cmp18, %tobool16.not
  br i1 %or.cond, label %do.end22, label %if.end14.if.end26_crit_edge

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.45) #11
  br label %cleanup

if.end26:                                         ; preds = %if.end14.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %crci.0 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ %and, %if.end14.if.end26_crit_edge ]
  %blk_size.0 = phi i32 [ 0, %if.end.if.end26_crit_edge ], [ %ret.0.i.ph, %if.end14.if.end26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp27215.not = icmp eq i32 %sg_len, 0
  br i1 %cmp27215.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end26.for.body_crit_edge
  %box_count.0220 = phi i32 [ %box_count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %single_count.0219 = phi i32 [ %single_count.1, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %i.0218 = phi i32 [ %inc44, %for.inc.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %sg.0216 = phi ptr [ %call45, %for.inc.for.body_crit_edge ], [ %sgl, %if.end26.for.body_crit_edge ]
  %17 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %device_fc, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool30.not = icmp eq i8 %18, 0
  %dma_length38 = getelementptr inbounds %struct.scatterlist, ptr %sg.0216, i32 0, i32 4
  %19 = ptrtoint ptr %dma_length38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length38, align 4
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %.frozen = freeze i32 %20
  %cond.frozen = freeze i32 %cond
  %div = udiv i32 %.frozen, %cond.frozen
  %sub = add i32 %div, 65534
  %div32 = udiv i32 %sub, 65535
  %add33 = add i32 %div32, %box_count.0220
  %21 = mul i32 %div, %cond.frozen
  %rem.decomposed = sub i32 %.frozen, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool35.not = icmp ne i32 %rem.decomposed, 0
  %inc = zext i1 %tobool35.not to i32
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub40 = add i32 %20, 65534
  %div41 = udiv i32 %sub40, 65535
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then31
  %div41.pn = phi i32 [ %div41, %if.else ], [ %inc, %if.then31 ]
  %box_count.1 = phi i32 [ %box_count.0220, %if.else ], [ %add33, %if.then31 ]
  %single_count.1 = add i32 %div41.pn, %single_count.0219
  %inc44 = add nuw i32 %i.0218, 1
  %call45 = tail call ptr @sg_next(ptr noundef %sg.0216) #8
  %exitcond.not = icmp eq i32 %inc44, %sg_len
  br i1 %exitcond.not, label %for.end.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = shl i32 %single_count.1, 4
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end26.for.end_crit_edge
  %single_count.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %box_count.0.lcssa = phi i32 [ 0, %if.end26.for.end_crit_edge ], [ %box_count.1, %for.end.loopexit ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2304, i32 noundef 156) #12
  %tobool47.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool47.not, label %for.end.cleanup_crit_edge, label %if.end50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %mux = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mux, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  %cond52 = select i1 %tobool51.not, i32 0, i32 262144
  %mux53 = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 9
  %25 = ptrtoint ptr %mux53 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond52, ptr %mux53, align 4
  %crci54 = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %crci54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %crci.0, ptr %crci54, align 8
  %blk_size55 = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 10
  %27 = ptrtoint ptr %blk_size55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %blk_size.0, ptr %blk_size55, align 8
  %mul56 = mul i32 %box_count.0.lcssa, 24
  %add57 = add i32 %mul56, %single_count.0.lcssa
  %add59 = add i32 %add57, 20
  %dma_len = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add59, ptr %dma_len, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add59, i32 noundef 2304) #13
  %cpl = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 6
  %29 = ptrtoint ptr %cpl to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i.i, ptr %cpl, align 8
  %tobool63.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool63.not, label %if.end50.free_crit_edge, label %if.end65

if.end50.free_crit_edge:                          ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end65:                                         ; preds = %if.end50
  %adev66 = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %adev66 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %1, ptr %adev66, align 4
  %31 = ptrtoint ptr %call9.i.i to i32
  br i1 %cmp27215.not, label %if.end65.for.end88_crit_edge, label %for.body74.lr.ph

if.end65.for.end88_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end88

for.body74.lr.ph:                                 ; preds = %if.end65
  %add.ptr = getelementptr i32, ptr %call9.i.i, i32 1
  %32 = ptrtoint ptr %add.ptr to i32
  %add70 = add nuw nsw i32 %32, 7
  %and71 = and i32 %add70, -120
  %33 = inttoptr i32 %and71 to ptr
  %length = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp.i = icmp eq i32 %direction, 2
  %shl3.i = shl i32 %cond, 16
  %dst_addr.i = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4, i32 2
  %src_addr.i = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4, i32 1
  %or13.i = or i32 %shl3.i, %cond
  %src.0.i194 = select i1 %cmp.i, ptr %src_addr.i, ptr %mem_addr.i188
  %dst.0.i195 = select i1 %cmp.i, ptr %mem_addr.i188, ptr %dst_addr.i
  %cond.shl3.i = select i1 %cmp.i, i32 %cond, i32 %shl3.i
  %and.i.and1.i.v = select i1 %cmp.i, i32 3, i32 7
  %and.i.and1.i = shl nuw nsw i32 %crci.0, %and.i.and1.i.v
  %src_addr.i.mem_addr.i = select i1 %cmp.i, ptr %src_addr.i, ptr %mem_addr.i
  %mem_addr.i.dst_addr.i = select i1 %cmp.i, ptr %mem_addr.i, ptr %dst_addr.i
  %or.i = or i32 %and.i.and1.i, 3
  br label %for.body74

for.body74:                                       ; preds = %for.inc85.for.body74_crit_edge, %for.body74.lr.ph
  %desc.0229 = phi ptr [ %33, %for.body74.lr.ph ], [ %desc.1, %for.inc85.for.body74_crit_edge ]
  %i.1228 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc86, %for.inc85.for.body74_crit_edge ]
  %sg.1223 = phi ptr [ %sgl, %for.body74.lr.ph ], [ %call87, %for.inc85.for.body74_crit_edge ]
  %dma_length75 = getelementptr inbounds %struct.scatterlist, ptr %sg.1223, i32 0, i32 4
  %34 = ptrtoint ptr %dma_length75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_length75, align 4
  %36 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length, align 8
  %add76 = add i32 %37, %35
  store i32 %add76, ptr %length, align 8
  %38 = ptrtoint ptr %device_fc to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %device_fc, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool79.not = icmp eq i8 %39, 0
  %40 = ptrtoint ptr %dma_length75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_length75, align 4
  br i1 %tobool79.not, label %if.else82, label %if.then80

if.then80:                                        ; preds = %for.body74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_addr.i)
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.1223, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address.i, align 4
  %44 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %mem_addr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %cond)
  %cmp5.not75.i = icmp ult i32 %41, %cond
  br i1 %cmp5.not75.i, label %while.end.thread.i, label %if.then80.while.body.i_crit_edge

if.then80.while.body.i_crit_edge:                 ; preds = %if.then80
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then80.while.body.i_crit_edge
  %desc.addr.077.i = phi ptr [ %add.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %desc.0229, %if.then80.while.body.i_crit_edge ]
  %remainder.076.i = phi i32 [ %sub.i, %while.body.i.while.body.i_crit_edge ], [ %41, %if.then80.while.body.i_crit_edge ]
  %45 = ptrtoint ptr %desc.addr.077.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %desc.addr.077.i, align 4
  %row_offset6.i = getelementptr inbounds %struct.adm_desc_hw_box, ptr %desc.addr.077.i, i32 0, i32 5
  %46 = ptrtoint ptr %row_offset6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.shl3.i, ptr %row_offset6.i, align 4
  %47 = ptrtoint ptr %src_addr.i.mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src_addr.i.mem_addr.i, align 4
  %src_addr7.i = getelementptr inbounds %struct.adm_desc_hw_box, ptr %desc.addr.077.i, i32 0, i32 1
  %49 = ptrtoint ptr %src_addr7.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %src_addr7.i, align 4
  %50 = ptrtoint ptr %mem_addr.i.dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mem_addr.i.dst_addr.i, align 4
  %dst_addr8.i = getelementptr inbounds %struct.adm_desc_hw_box, ptr %desc.addr.077.i, i32 0, i32 2
  %52 = ptrtoint ptr %dst_addr8.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %dst_addr8.i, align 4
  %div.i = udiv i32 %remainder.076.i, %cond
  %53 = tail call i32 @llvm.umin.i32(i32 %div.i, i32 65535) #8
  %or11.i = mul nuw i32 %53, 65537
  %num_rows.i = getelementptr inbounds %struct.adm_desc_hw_box, ptr %desc.addr.077.i, i32 0, i32 4
  %54 = ptrtoint ptr %num_rows.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or11.i, ptr %num_rows.i, align 4
  %row_len.i = getelementptr inbounds %struct.adm_desc_hw_box, ptr %desc.addr.077.i, i32 0, i32 3
  %55 = ptrtoint ptr %row_len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or13.i, ptr %row_len.i, align 4
  %mul.i = mul i32 %53, %cond
  %56 = ptrtoint ptr %mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %mem_addr.i.0.mem_addr.i.0.mem_addr.0.mem_addr.0.mem_addr.0..i = load i32, ptr %mem_addr.i, align 4
  %add.i = add i32 %mem_addr.i.0.mem_addr.i.0.mem_addr.0.mem_addr.0.mem_addr.0..i, %mul.i
  store i32 %add.i, ptr %mem_addr.i, align 4
  %sub.i = sub i32 %remainder.076.i, %mul.i
  %add.ptr.i = getelementptr i8, ptr %desc.addr.077.i, i32 24
  %cmp5.not.i = icmp ult i32 %sub.i, %cond
  br i1 %cmp5.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.else25.i, label %while.end.i.if.then15.i_crit_edge

while.end.i.if.then15.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

while.end.thread.i:                               ; preds = %if.then80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not83.i = icmp eq i32 %41, 0
  br i1 %tobool.not83.i, label %while.end.thread.i.adm_process_fc_descriptors.exit_crit_edge, label %while.end.thread.i.if.then15.i_crit_edge

while.end.thread.i.if.then15.i_crit_edge:         ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15.i

while.end.thread.i.adm_process_fc_descriptors.exit_crit_edge: ; preds = %while.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm_process_fc_descriptors.exit

if.then15.i:                                      ; preds = %while.end.thread.i.if.then15.i_crit_edge, %while.end.i.if.then15.i_crit_edge
  %desc.addr.0.lcssa86.i = phi ptr [ %desc.0229, %while.end.thread.i.if.then15.i_crit_edge ], [ %add.ptr.i, %while.end.i.if.then15.i_crit_edge ]
  %remainder.0.lcssa85.i = phi i32 [ %41, %while.end.thread.i.if.then15.i_crit_edge ], [ %sub.i, %while.end.i.if.then15.i_crit_edge ]
  %57 = ptrtoint ptr %desc.addr.0.lcssa86.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i.and1.i, ptr %desc.addr.0.lcssa86.i, align 4
  %len.i = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.lcssa86.i, i32 0, i32 3
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %remainder.0.lcssa85.i, ptr %len.i, align 4
  %59 = ptrtoint ptr %src_addr.i.mem_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %src_addr.i.mem_addr.i, align 4
  %src_addr18.i = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.lcssa86.i, i32 0, i32 1
  %61 = ptrtoint ptr %src_addr18.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %src_addr18.i, align 4
  %62 = ptrtoint ptr %mem_addr.i.dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mem_addr.i.dst_addr.i, align 4
  %dst_addr19.i = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.lcssa86.i, i32 0, i32 2
  %64 = ptrtoint ptr %dst_addr19.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %dst_addr19.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %desc.addr.0.lcssa86.i, i32 16
  %65 = ptrtoint ptr %sg.1223 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sg.1223, align 4
  %and.i.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then15.i.adm_process_fc_descriptors.exit_crit_edge, label %if.then15.i.if.end32.sink.split.i_crit_edge

if.then15.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.sink.split.i

if.then15.i.adm_process_fc_descriptors.exit_crit_edge: ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm_process_fc_descriptors.exit

if.else25.i:                                      ; preds = %while.end.i
  %tobool26.not.i = icmp eq ptr %desc.addr.077.i, null
  br i1 %tobool26.not.i, label %if.else25.i.adm_process_fc_descriptors.exit_crit_edge, label %land.lhs.true.i

if.else25.i.adm_process_fc_descriptors.exit_crit_edge: ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm_process_fc_descriptors.exit

land.lhs.true.i:                                  ; preds = %if.else25.i
  %67 = ptrtoint ptr %sg.1223 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sg.1223, align 4
  %and.i73.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73.i)
  %tobool.i74.not.i = icmp eq i32 %and.i73.i, 0
  br i1 %tobool.i74.not.i, label %land.lhs.true.i.adm_process_fc_descriptors.exit_crit_edge, label %if.then28.i

land.lhs.true.i.adm_process_fc_descriptors.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm_process_fc_descriptors.exit

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %desc.addr.077.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %desc.addr.077.i, align 4
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.then28.i, %if.then15.i.if.end32.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %70, %if.then28.i ], [ %and.i.and1.i, %if.then15.i.if.end32.sink.split.i_crit_edge ]
  %desc.addr.077.lcssa.sink.i = phi ptr [ %desc.addr.077.i, %if.then28.i ], [ %desc.addr.0.lcssa86.i, %if.then15.i.if.end32.sink.split.i_crit_edge ]
  %desc.addr.1.ph.i = phi ptr [ %add.ptr.i, %if.then28.i ], [ %add.ptr20.i, %if.then15.i.if.end32.sink.split.i_crit_edge ]
  %or30.i = or i32 %.sink.i, -2147483648
  %71 = ptrtoint ptr %desc.addr.077.lcssa.sink.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or30.i, ptr %desc.addr.077.lcssa.sink.i, align 4
  br label %adm_process_fc_descriptors.exit

adm_process_fc_descriptors.exit:                  ; preds = %if.end32.sink.split.i, %land.lhs.true.i.adm_process_fc_descriptors.exit_crit_edge, %if.else25.i.adm_process_fc_descriptors.exit_crit_edge, %if.then15.i.adm_process_fc_descriptors.exit_crit_edge, %while.end.thread.i.adm_process_fc_descriptors.exit_crit_edge
  %desc.addr.1.i = phi ptr [ %add.ptr20.i, %if.then15.i.adm_process_fc_descriptors.exit_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.adm_process_fc_descriptors.exit_crit_edge ], [ %add.ptr.i, %if.else25.i.adm_process_fc_descriptors.exit_crit_edge ], [ %desc.0229, %while.end.thread.i.adm_process_fc_descriptors.exit_crit_edge ], [ %desc.addr.1.ph.i, %if.end32.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_addr.i)
  br label %for.inc85

if.else82:                                        ; preds = %for.body74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mem_addr.i188)
  %dma_address.i190 = getelementptr inbounds %struct.scatterlist, ptr %sg.1223, i32 0, i32 3
  %72 = ptrtoint ptr %dma_address.i190 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_address.i190, align 4
  %74 = ptrtoint ptr %mem_addr.i188 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %mem_addr.i188, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.else82
  %desc.addr.0.i = phi ptr [ %desc.0229, %if.else82 ], [ %add.ptr.i200, %do.body.i.do.body.i_crit_edge ]
  %remainder.0.i = phi i32 [ %41, %if.else82 ], [ %sub.i197, %do.body.i.do.body.i_crit_edge ]
  %75 = ptrtoint ptr %desc.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %desc.addr.0.i, align 4
  %76 = ptrtoint ptr %src.0.i194 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %src.0.i194, align 4
  %src_addr2.i = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.i, i32 0, i32 1
  %78 = ptrtoint ptr %src_addr2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %src_addr2.i, align 4
  %79 = ptrtoint ptr %dst.0.i195 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %dst.0.i195, align 4
  %dst_addr3.i = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.i, i32 0, i32 2
  %81 = ptrtoint ptr %dst_addr3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %dst_addr3.i, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %remainder.0.i, i32 65535) #8
  %len.i196 = getelementptr inbounds %struct.adm_desc_hw_single, ptr %desc.addr.0.i, i32 0, i32 3
  %83 = ptrtoint ptr %len.i196 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %len.i196, align 4
  %sub.i197 = sub i32 %remainder.0.i, %82
  %84 = ptrtoint ptr %mem_addr.i188 to i32
  call void @__asan_load4_noabort(i32 %84)
  %mem_addr.i188.0.mem_addr.i188.0.mem_addr.0.mem_addr.0.mem_addr.0..i198 = load i32, ptr %mem_addr.i188, align 4
  %add.i199 = add i32 %mem_addr.i188.0.mem_addr.i188.0.mem_addr.0.mem_addr.0.mem_addr.0..i198, %82
  store i32 %add.i199, ptr %mem_addr.i188, align 4
  %add.ptr.i200 = getelementptr i8, ptr %desc.addr.0.i, i32 16
  %tobool.not.i201 = icmp eq i32 %sub.i197, 0
  br i1 %tobool.not.i201, label %do.end.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.end.i:                                         ; preds = %do.body.i
  %85 = ptrtoint ptr %sg.1223 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sg.1223, align 4
  %and.i.i202 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i202)
  %tobool.i.not.i203 = icmp eq i32 %and.i.i202, 0
  br i1 %tobool.i.not.i203, label %do.end.i.adm_process_non_fc_descriptors.exit_crit_edge, label %if.then7.i

do.end.i.adm_process_non_fc_descriptors.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm_process_non_fc_descriptors.exit

if.then7.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %desc.addr.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -2147483648, ptr %desc.addr.0.i, align 4
  br label %adm_process_non_fc_descriptors.exit

adm_process_non_fc_descriptors.exit:              ; preds = %if.then7.i, %do.end.i.adm_process_non_fc_descriptors.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mem_addr.i188)
  br label %for.inc85

for.inc85:                                        ; preds = %adm_process_non_fc_descriptors.exit, %adm_process_fc_descriptors.exit
  %desc.1 = phi ptr [ %desc.addr.1.i, %adm_process_fc_descriptors.exit ], [ %add.ptr.i200, %adm_process_non_fc_descriptors.exit ]
  %inc86 = add nuw i32 %i.1228, 1
  %call87 = tail call ptr @sg_next(ptr noundef %sg.1223) #8
  %exitcond230.not = icmp eq i32 %inc86, %sg_len
  br i1 %exitcond230.not, label %for.inc85.for.end88_crit_edge, label %for.inc85.for.body74_crit_edge

for.inc85.for.body74_crit_edge:                   ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body74

for.inc85.for.end88_crit_edge:                    ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end88

for.end88:                                        ; preds = %for.inc85.for.end88_crit_edge, %if.end65.for.end88_crit_edge
  %dev89 = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %88 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev89, align 4
  %90 = ptrtoint ptr %cpl to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %cpl, align 8
  %92 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %91) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %for.end88
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i204, !prof !113

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i204:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %89) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %94 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %95, null
  br i1 %tobool.not.i.i, label %if.end.i.i205, label %if.then.i204.dev_name.exit.i_crit_edge

if.then.i204.dev_name.exit.i_crit_edge:           ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i205:                                    ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %89, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i205, %if.then.i204.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %97, %if.end.i.i205 ], [ %95, %if.then.i204.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.48, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %for.end88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %89, ptr noundef %91, i32 noundef %93) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %98 = load ptr, ptr @mem_map, align 4
  %99 = ptrtoint ptr %91 to i32
  %sub.i206 = add i32 %99, 1073741824
  %shr.i207 = lshr i32 %sub.i206, 12
  %add.ptr.i208 = getelementptr %struct.page, ptr %98, i32 %shr.i207
  %and.i209 = and i32 %99, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %89, ptr noundef %add.ptr.i208, i32 noundef %and.i209, i32 noundef %93, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.adm_async_desc, ptr %call7.i.i, i32 0, i32 4
  %100 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i, ptr %dma_addr, align 8
  %101 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev89, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %102, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i210 = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i210, label %dma_map_single_attrs.exit.free_crit_edge, label %if.end98

dma_map_single_attrs.exit.free_crit_edge:         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free

if.end98:                                         ; preds = %dma_map_single_attrs.exit
  %103 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dma_addr, align 8
  %105 = ptrtoint ptr %cpl to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cpl, align 8
  %sub.ptr.rhs.cast = ptrtoint ptr %106 to i32
  %sub.ptr.sub = sub i32 %31, %sub.ptr.rhs.cast
  %add101 = add i32 %sub.ptr.sub, %104
  %107 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev89, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %108, i32 noundef %add101, i32 noundef 4, i32 noundef 1) #8
  %add104 = add i32 %104, 8
  %shr = lshr i32 %add104, 3
  %or = or i32 %shr, -2147483648
  %109 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %or, ptr %call9.i.i, align 128
  %110 = ptrtoint ptr %dev89 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev89, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %111, i32 noundef %add101, i32 noundef 4, i32 noundef 1) #8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %112 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %113 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %114 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %116 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %117 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %118, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end98.vchan_tx_prep.exit_crit_edge

if.end98.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %node.i, ptr %prev.i.i, align 4
  %120 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %121 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i.i, align 8
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %node.i, ptr %118, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end98.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

free:                                             ; preds = %dma_map_single_attrs.exit.free_crit_edge, %if.end50.free_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %vchan_tx_prep.exit, %for.end.cleanup_crit_edge, %do.end22, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end11 ], [ inttoptr (i32 -22 to ptr), %do.end22 ], [ inttoptr (i32 -12 to ptr), %free ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ inttoptr (i32 -12 to ptr), %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %curr_txd = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %curr_txd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %curr_txd, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adm_start_dma(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !114
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %.mux = zext i1 %not.or.cond.i.i to i32
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge39 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  %.mux40 = zext i1 %not.or.cond16.i.i to i32
  br i1 %brmerge39, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.body2.dma_set_residue.exit_crit_edge, label %if.then11

do.body2.dma_set_residue.exit_crit_edge:          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %length = getelementptr inbounds %struct.adm_async_desc, ptr %call9, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then11, %do.body2.dma_set_residue.exit_crit_edge
  %residue.0 = phi i32 [ %9, %if.then11 ], [ 0, %do.body2.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %10 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %residue.0, ptr %residue1.i, align 4
  %error = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 8
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool16.not = icmp eq i32 %12, 0
  %. = select i1 %tobool16.not, i32 1, i32 3
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %dma_set_residue.exit ], [ %.mux, %if.then.i.i.cleanup_crit_edge ], [ %.mux40, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adev1 = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %3 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %head, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %head, ptr %2, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %2, align 4
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
  store ptr %10, ptr %2, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
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
  store ptr %20, ptr %2, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %2, align 4
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
  store ptr %30, ptr %2, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %2, align 4
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
  store ptr %40, ptr %2, align 4
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %2, align 4
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
  store ptr %50, ptr %2, align 4
  %54 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 2
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  %mul = shl i32 %58, 2
  %ee = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ee, align 4
  %mul8 = shl i32 %60, 11
  %add = add i32 %mul, 128
  %add9 = add i32 %add, %mul8
  %add.ptr = getelementptr i8, ptr %56, i32 %add9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !101
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm_slave_config(ptr noundef %chan, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %peripheral_config = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 10
  %0 = ptrtoint ptr %peripheral_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peripheral_config, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %slave = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 4
  %2 = call ptr @memcpy(ptr %slave, ptr %cfg, i32 48)
  %peripheral_size = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 11
  %3 = ptrtoint ptr %peripheral_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %peripheral_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp6 = icmp eq i32 %4, 4
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %crci8 = getelementptr inbounds %struct.adm_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %crci8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %crci8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @adm_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp sgt i32 %3, 2
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %channels, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp2.not = icmp eq ptr %.pn, %channels
  br i1 %cmp2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %chan_id = getelementptr i8, ptr %.pn, i32 -16
  %5 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_id, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %chan.0.le = getelementptr i8, ptr %.pn, i32 -32
  %tobool11.not = icmp eq ptr %chan.0.le, null
  br i1 %tobool11.not, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp15 = icmp eq i32 %3, 2
  br i1 %cmp15, label %if.then16, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx18 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx18, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %.sink = phi i32 [ %10, %if.then16 ], [ 0, %if.end13.if.end20_crit_edge ]
  %11 = getelementptr i8, ptr %.pn, i32 208
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %call21 = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %chan.0.le) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call21, %if.end20 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adm_dma_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adev = getelementptr inbounds %struct.adm_async_desc, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adev, align 4
  %dev = getelementptr inbounds %struct.adm_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr inbounds %struct.adm_async_desc, ptr %vd, i32 0, i32 4
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_addr, align 4
  %dma_len = getelementptr inbounds %struct.adm_async_desc, ptr %vd, i32 0, i32 5
  %6 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #8
  %cpl = getelementptr inbounds %struct.adm_async_desc, ptr %vd, i32 0, i32 6
  %8 = ptrtoint ptr %cpl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpl, align 4
  tail call void @kfree(ptr noundef %9) #8
  tail call void @kfree(ptr noundef %vd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adm_start_dma(ptr noundef %achan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %achan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %adev1 = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 1
  %2 = ptrtoint ptr %adev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.virt_dma_chan, ptr %achan, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !108

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 514, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool27.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool27.not, label %if.end.cleanup_crit_edge, label %if.end29

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end29.list_del.exit_crit_edge

if.end29.list_del.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end29.list_del.exit_crit_edge
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %curr_txd = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 3
  %13 = ptrtoint ptr %curr_txd to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select.i, ptr %curr_txd, align 4
  %error = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 8
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %error, align 4
  %initialized = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 9
  %15 = ptrtoint ptr %initialized to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %initialized, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool31.not = icmp eq i32 %16, 0
  br i1 %tobool31.not, label %do.body33, label %list_del.exit.if.end53_crit_edge

list_del.exit.if.end53_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

do.body33:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %ee = getelementptr inbounds %struct.adm_device, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ee, align 4
  %and = shl i32 %18, 4
  %shl = and i32 %and, 48
  %and37 = shl i32 %18, 11
  %shl38 = and i32 %and37, 8192
  %or = or i32 %shl38, %shl
  %or39 = or i32 %or, 6656
  %19 = tail call i32 @llvm.bswap.i32(i32 %or39)
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 2
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 4
  %mul = shl i32 %23, 2
  %add = add i32 %mul, 576
  %add.ptr40 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %19) #8, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  %mul46 = shl i32 %27, 2
  %28 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ee, align 4
  %mul48 = shl i32 %29, 11
  %add49 = add i32 %mul46, 768
  %add50 = add i32 %add49, %mul48
  %add.ptr51 = getelementptr i8, ptr %25, i32 %add50
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 50331648) #8, !srcloc !101
  %30 = ptrtoint ptr %initialized to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %initialized, align 4
  br label %if.end53

if.end53:                                         ; preds = %do.body33, %list_del.exit.if.end53_crit_edge
  %crci = getelementptr inbounds %struct.adm_async_desc, ptr %spec.select.i, i32 0, i32 8
  %31 = ptrtoint ptr %crci to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %crci, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not = icmp eq i32 %32, 0
  br i1 %tobool54.not, label %if.end53.do.body69_crit_edge, label %do.body56

if.end53.do.body69_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body69

do.body56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %mux = getelementptr inbounds %struct.adm_async_desc, ptr %spec.select.i, i32 0, i32 9
  %33 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mux, align 4
  %blk_size = getelementptr inbounds %struct.adm_async_desc, ptr %spec.select.i, i32 0, i32 10
  %35 = ptrtoint ptr %blk_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blk_size, align 4
  %or59 = or i32 %36, %34
  %37 = tail call i32 @llvm.bswap.i32(i32 %or59)
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %crci to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %crci, align 4
  %mul62 = shl i32 %41, 2
  %add63 = add i32 %mul62, 1024
  %ee64 = getelementptr inbounds %struct.adm_device, ptr %3, i32 0, i32 5
  %42 = ptrtoint ptr %ee64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ee64, align 4
  %mul65 = shl i32 %43, 11
  %add66 = add i32 %add63, %mul65
  %add.ptr67 = getelementptr i8, ptr %39, i32 %add66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %37) #8, !srcloc !101
  br label %do.body69

do.body69:                                        ; preds = %do.body56, %if.end53.do.body69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %dma_addr = getelementptr inbounds %struct.adm_async_desc, ptr %spec.select.i, i32 0, i32 4
  %44 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_addr, align 4
  %add75 = add i32 %45, 7
  %shr = lshr i32 %add75, 3
  %46 = tail call i32 @llvm.bswap.i32(i32 %shr)
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %id78 = getelementptr inbounds %struct.adm_chan, ptr %achan, i32 0, i32 2
  %49 = ptrtoint ptr %id78 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %id78, align 4
  %mul79 = shl i32 %50, 2
  %ee80 = getelementptr inbounds %struct.adm_device, ptr %3, i32 0, i32 5
  %51 = ptrtoint ptr %ee80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ee80, align 4
  %mul81 = shl i32 %52, 11
  %add82 = add i32 %mul81, %mul79
  %add.ptr83 = getelementptr i8, ptr %48, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %46) #8, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.body69, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_qcom_adm__240_943_adm_dma_driver_init6, !1, !"__initcall__kmod_qcom_adm__240_943_adm_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 943, i32 1}
!2 = !{ptr @__exitcall_adm_dma_driver_exit, !1, !"__exitcall_adm_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 945, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 946, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 947, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 938, i32 11}
!12 = !{ptr @adm_dma_driver, !13, !"adm_dma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 934, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 760, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 762, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adm_dma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adm_dma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 766, i32 43}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 770, i32 44}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 774, i32 65}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 776, i32 3}
!32 = !{ptr @adm_dma_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adm_dma_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 780, i32 64}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 782, i32 3}
!38 = !{ptr @adm_dma_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @adm_dma_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 786, i32 64}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 788, i32 3}
!44 = !{ptr @adm_dma_probe._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @adm_dma_probe._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 792, i32 64}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 794, i32 3}
!50 = !{ptr @adm_dma_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @adm_dma_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 800, i32 3}
!54 = !{ptr @adm_dma_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @adm_dma_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 806, i32 3}
!58 = !{ptr @adm_dma_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @adm_dma_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 852, i32 14}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 880, i32 3}
!64 = !{ptr @adm_dma_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @adm_dma_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/qcom/../virt-dma.h", i32 101, i32 2}
!68 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !67, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 365, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @adm_prep_slave_sg._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @adm_prep_slave_sg._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 380, i32 4}
!79 = !{ptr @adm_prep_slave_sg._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @adm_prep_slave_sg._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 387, i32 4}
!83 = !{ptr @adm_prep_slave_sg._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @adm_prep_slave_sg._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!87 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @adm_of_match, !90, !"adm_of_match", i1 false, i1 false}
!90 = !{!"../drivers/dma/qcom/qcom_adm.c", i32 928, i32 34}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2154523513}
!101 = !{i64 6328715}
!102 = !{i64 2154524253}
!103 = !{i64 2154525078}
!104 = !{i64 2154525903}
!105 = !{i64 2154526644}
!106 = !{i64 2154529397}
!107 = !{i64 6329133}
!108 = !{!"branch_weights", i32 1, i32 2000}
!109 = !{i64 2154425343, i64 2154425838, i64 2154425380, i64 2154425436, i64 2154425470, i64 2154425494, i64 2154425535, i64 2154425556, i64 2154425584, i64 2154425618}
!110 = !{i64 2148744125, i64 2148744130, i64 2148744143, i64 2148744187, i64 2148744221, i64 2148744242}
!111 = !{i8 0, i8 2}
!112 = !{i32 0, i32 33}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2154426851}
!115 = !{i64 2154497009}
!116 = !{i64 2154498343}
!117 = !{i64 2154499174}
!118 = !{i64 2154499661}
!119 = !{i64 2154500559}
