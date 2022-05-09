; ModuleID = '/llk/IR_all_yes/sound/soc/ux500/ux500_msp_i2s.c_pt.bc'
source_filename = "../sound/soc/ux500/ux500_msp_i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msp_protdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ux500_msp = type { i32, ptr, ptr, %struct.ux500_msp_dma_params, %struct.ux500_msp_dma_params, i32, i32, i32, i32, i32 }
%struct.ux500_msp_dma_params = type { i32, i32, ptr }
%struct.ux500_msp_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msp_protdesc, i32, %struct.msp_multichannel_config, i32, i32, i32, i32, i32, i32 }
%struct.msp_multichannel_config = type { i8, i8, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.msp_i2s_platform_data = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@ux500_msp_i2s_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: ERROR: Open called in interrupt context!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ux500_msp_i2s_open\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/ux500/ux500_msp_i2s.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_open._entry_ptr = internal global ptr @ux500_msp_i2s_open._entry, section ".printk_index", align 4
@ux500_msp_i2s_open._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 449, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Error: No direction selected!\0A\00", [61 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_open._entry_ptr.7 = internal global ptr @ux500_msp_i2s_open._entry.5, section ".printk_index", align 4
@ux500_msp_i2s_open._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Error: TX is in use!\0A\00", [38 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_open._entry_ptr.10 = internal global ptr @ux500_msp_i2s_open._entry.8, section ".printk_index", align 4
@ux500_msp_i2s_open._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Error: RX is in use!\0A\00", [38 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_open._entry_ptr.13 = internal global ptr @ux500_msp_i2s_open._entry.11, section ".printk_index", align 4
@ux500_msp_i2s_open._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 487, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERROR: enable_msp failed (%d)!\0A\00", [60 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_open._entry_ptr.16 = internal global ptr @ux500_msp_i2s_open._entry.14, section ".printk_index", align 4
@ux500_msp_i2s_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 577, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR: MSP is not configured!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ux500_msp_i2s_trigger\00", [42 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_trigger._entry_ptr = internal global ptr @ux500_msp_i2s_trigger._entry, section ".printk_index", align 4
@ux500_msp_i2s_close.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_soc_ux500_plat_msp_i2s\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ux500_msp_i2s_close\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Enter (dir = 0x%01x).\0A\00", [37 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_init_msp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 705, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: ERROR: Unable to get resource!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ux500_msp_i2s_init_msp\00", [41 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_init_msp._entry_ptr = internal global ptr @ux500_msp_i2s_init_msp._entry, section ".printk_index", align 4
@ux500_msp_i2s_init_msp._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 715, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: ERROR: ioremap failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@ux500_msp_i2s_init_msp._entry_ptr.26 = internal global ptr @ux500_msp_i2s_init_msp._entry.24, section ".printk_index", align 4
@ux500_msp_i2s_cleanup_msp.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ux500_msp_i2s_cleanup_msp\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Enter (id = %d).\0A\00", [42 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file242 = internal constant [75 x i8] c"snd_soc_ux500_plat_msp_i2s.file=sound/soc/ux500/snd-soc-ux500-plat-msp-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [42 x i8] c"snd_soc_ux500_plat_msp_i2s.license=GPL v2\00", section ".modinfo", align 1
@enable_msp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 363, ptr @.str.31, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: WARN: configure_multichannel failed (%d)!\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable_msp\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@enable_msp._entry_ptr = internal global ptr @enable_msp._entry, section ".printk_index", align 4
@enable_msp._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 370, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERROR: MSP RX-mode is not configured!\00", [54 x i8] zeroinitializer }, align 32
@enable_msp._entry_ptr.34 = internal global ptr @enable_msp._entry.32, section ".printk_index", align 4
@enable_msp._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERROR: MSP TX-mode is not configured!\00", [54 x i8] zeroinitializer }, align 32
@enable_msp._entry_ptr.37 = internal global ptr @enable_msp._entry.35, section ".printk_index", align 4
@configure_protocol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: ERROR: Invalid protocol!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"configure_protocol\00", [45 x i8] zeroinitializer }, align 32
@configure_protocol._entry_ptr = internal global ptr @configure_protocol._entry, section ".printk_index", align 4
@prot_descs = internal constant { [3 x %struct.msp_protdesc], [80 x i8] } { [3 x %struct.msp_protdesc] [%struct.msp_protdesc { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 31, i32 15, i32 32 }, %struct.msp_protdesc { i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 255, i32 0, i32 256 }, %struct.msp_protdesc { i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 255, i32 0, i32 256 }], [80 x i8] zeroinitializer }, align 32
@configure_protocol._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 196, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: ERROR: Invalid data-size requested (data_size = %d)!\0A\00", [38 x i8] zeroinitializer }, align 32
@configure_protocol._entry_ptr.42 = internal global ptr @configure_protocol._entry.40, section ".printk_index", align 4
@setup_bitclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR: Unknown protocol (%d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"setup_bitclk\00", [19 x i8] zeroinitializer }, align 32
@setup_bitclk._entry_ptr = internal global ptr @setup_bitclk._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@configure_multichannel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 282, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: ERROR: Invalid protocol (%d)!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"configure_multichannel\00", [41 x i8] zeroinitializer }, align 32
@configure_multichannel._entry_ptr = internal global ptr @configure_multichannel._entry, section ".printk_index", align 4
@configure_multichannel._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: ERROR: Only single-phase supported (TX-mode: %d)!\0A\00", [41 x i8] zeroinitializer }, align 32
@configure_multichannel._entry_ptr.49 = internal global ptr @configure_multichannel._entry.47, section ".printk_index", align 4
@configure_multichannel._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.2, i32 330, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: ERROR: Only single-phase supported (RX-mode: %d)!\0A\00", [41 x i8] zeroinitializer }, align 32
@configure_multichannel._entry_ptr.52 = internal global ptr @configure_multichannel._entry.50, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 439, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 448, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 456, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 460, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 486, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 576, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 612, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 704, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 715, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 728, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 361, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 369, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 375, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 183, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [11 x i8] c"prot_descs\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 26, i32 34 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 194, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 249, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 280, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 307, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [35 x i8] c"../sound/soc/ux500/ux500_msp_i2s.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 328, i32 4 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @configure_multichannel._entry, ptr @configure_multichannel._entry.47, ptr @configure_multichannel._entry.50, ptr @configure_multichannel._entry_ptr, ptr @configure_multichannel._entry_ptr.49, ptr @configure_multichannel._entry_ptr.52, ptr @configure_protocol._entry, ptr @configure_protocol._entry.40, ptr @configure_protocol._entry_ptr, ptr @configure_protocol._entry_ptr.42, ptr @enable_msp._entry, ptr @enable_msp._entry.32, ptr @enable_msp._entry.35, ptr @enable_msp._entry_ptr, ptr @enable_msp._entry_ptr.34, ptr @enable_msp._entry_ptr.37, ptr @setup_bitclk._entry, ptr @setup_bitclk._entry_ptr, ptr @ux500_msp_i2s_init_msp._entry, ptr @ux500_msp_i2s_init_msp._entry.24, ptr @ux500_msp_i2s_init_msp._entry_ptr, ptr @ux500_msp_i2s_init_msp._entry_ptr.26, ptr @ux500_msp_i2s_open._entry, ptr @ux500_msp_i2s_open._entry.11, ptr @ux500_msp_i2s_open._entry.14, ptr @ux500_msp_i2s_open._entry.5, ptr @ux500_msp_i2s_open._entry.8, ptr @ux500_msp_i2s_open._entry_ptr, ptr @ux500_msp_i2s_open._entry_ptr.10, ptr @ux500_msp_i2s_open._entry_ptr.13, ptr @ux500_msp_i2s_open._entry_ptr.16, ptr @ux500_msp_i2s_open._entry_ptr.7, ptr @ux500_msp_i2s_trigger._entry, ptr @ux500_msp_i2s_trigger._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @prot_descs, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_open._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_open._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_open._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_open._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_init_msp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_msp_i2s_init_msp._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msp._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_msp._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_protocol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prot_descs to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_protocol._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_bitclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_multichannel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_multichannel._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configure_multichannel._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_msp_i2s_open(ptr noundef %msp, ptr noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !93) #5
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %3, 15728640
  %4 = tail call i32 @llvm.read_register.i32(metadata !93) #5
  %and.i.i128 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i128 to ptr
  %preempt_count.i129 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i129 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i129, align 4
  %and2 = and i32 %7, 983040
  %or = or i32 %and2, %and
  %8 = tail call i32 @llvm.read_register.i32(metadata !93) #5
  %and.i.i130 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i130 to ptr
  %preempt_count.i131 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i131 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i131, align 4
  %and4 = and i32 %11, 65280
  %or5 = or i32 %or, %and4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5)
  %tobool.not = icmp eq i32 %or5, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %direction = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 16
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  %and6 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %cmp.not = icmp eq i32 %and6, 0
  %and8 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %cmp9.not = icmp eq i32 %and8, 0
  %cmp.not.not = xor i1 %cmp.not, true
  %16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %dir_busy = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 7
  %19 = ptrtoint ptr %dir_busy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dir_busy, align 4
  %and19 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %cmp20.not = icmp eq i32 %and19, 0
  %brmerge126 = select i1 %cmp20.not, i1 true, i1 %cmp.not
  br i1 %brmerge126, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %dev33 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %21 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end18
  %and23 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %cmp24.not = icmp eq i32 %and23, 0
  %brmerge127 = select i1 %cmp24.not, i1 true, i1 %cmp9.not
  br i1 %brmerge127, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %23 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end34
  %cond = zext i1 %cmp.not.not to i32
  %or47 = or i32 %and8, %cond
  %or49 = or i32 %or47, %20
  %25 = ptrtoint ptr %dir_busy to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or49, ptr %dir_busy, align 4
  %tx_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 2
  %26 = ptrtoint ptr %tx_clk_sel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_clk_sel, align 4
  %rx_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 1
  %28 = ptrtoint ptr %rx_clk_sel to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_clk_sel, align 4
  %or50 = or i32 %29, %27
  %rx_fsync_pol = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 4
  %30 = ptrtoint ptr %rx_fsync_pol to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_fsync_pol, align 4
  %or51 = or i32 %or50, %31
  %tx_fsync_pol = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 5
  %32 = ptrtoint ptr %tx_fsync_pol to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_fsync_pol, align 4
  %or52 = or i32 %or51, %33
  %rx_fsync_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 6
  %34 = ptrtoint ptr %rx_fsync_sel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_fsync_sel, align 4
  %or53 = or i32 %or52, %35
  %tx_fsync_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 7
  %36 = ptrtoint ptr %tx_fsync_sel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_fsync_sel, align 4
  %or54 = or i32 %or53, %37
  %rx_fifo_config = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 8
  %38 = ptrtoint ptr %rx_fifo_config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_fifo_config, align 4
  %or55 = or i32 %or54, %39
  %tx_fifo_config = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 9
  %40 = ptrtoint ptr %tx_fifo_config to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_fifo_config, align 4
  %or56 = or i32 %or55, %41
  %srg_clk_sel = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 3
  %42 = ptrtoint ptr %srg_clk_sel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %srg_clk_sel, align 4
  %or57 = or i32 %or56, %43
  %loopback_enable = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 10
  %44 = ptrtoint ptr %loopback_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %loopback_enable, align 4
  %or58 = or i32 %or57, %45
  %tx_data_enable = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 11
  %46 = ptrtoint ptr %tx_data_enable to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tx_data_enable, align 4
  %or59 = or i32 %or58, %47
  %registers = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %48 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %51 = and i32 %50, 690091007
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %or63 = or i32 %or59, %52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %53 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %54 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %registers, align 4
  %add.ptr68 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 %53) #5, !srcloc !106
  %data_size1.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 19
  %56 = ptrtoint ptr %data_size1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_size1.i.i, align 4
  %def_elem_len.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 20
  %58 = ptrtoint ptr %def_elem_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %def_elem_len.i.i, align 4
  %def_elem_len2.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 6
  %60 = ptrtoint ptr %def_elem_len2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %def_elem_len2.i.i, align 4
  %default_protdesc.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 12
  %61 = ptrtoint ptr %default_protdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %default_protdesc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.i.i = icmp eq i32 %62, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end43
  %protocol.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 17
  %63 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %protocol.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp3.i.i = icmp ugt i32 %64, 2
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %65 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #8
  br label %configure_protocol.exit.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr [3 x %struct.msp_protdesc], ptr @prot_descs, i32 0, i32 %64
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  %protdesc6.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 13
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i
  %protdesc.0.i.i = phi ptr [ %arrayidx.i.i, %if.end.i.i ], [ %protdesc6.i.i, %if.else.i.i ]
  %67 = add i32 %57, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %67)
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %do.end13.i.i, label %if.end15.i.i

do.end13.i.i:                                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev14.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %69 = ptrtoint ptr %dev14.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev14.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %57) #8
  br label %configure_protocol.exit.i

if.end15.i.i:                                     ; preds = %if.end7.i.i
  %71 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %direction, align 4
  %and.i.i132 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.not.i.i = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.not.i.i, label %if.end15.i.i.if.end17.i.i_crit_edge, label %if.then16.i.i

if.end15.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end15.i.i
  %tx_phase_mode.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 1
  %73 = ptrtoint ptr %tx_phase_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_phase_mode.i.i.i, align 4
  %shl.i.i.i = shl i32 %74, 27
  %and.i.i.i = and i32 %shl.i.i.i, 134217728
  %tx_phase2_start_mode.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 3
  %75 = ptrtoint ptr %tx_phase2_start_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_phase2_start_mode.i.i.i, align 4
  %shl1.i.i.i = shl i32 %76, 26
  %and2.i.i.i = and i32 %shl1.i.i.i, 67108864
  %or3.i.i.i = or i32 %and2.i.i.i, %and.i.i.i
  %tx_frame_len_1.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 8
  %77 = ptrtoint ptr %tx_frame_len_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tx_frame_len_1.i.i.i, align 4
  %shl4.i.i.i = shl i32 %78, 3
  %and5.i.i.i = and i32 %shl4.i.i.i, 888
  %or6.i.i.i = or i32 %or3.i.i.i, %and5.i.i.i
  %tx_frame_len_2.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 9
  %79 = ptrtoint ptr %tx_frame_len_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_frame_len_2.i.i.i, align 4
  %shl7.i.i.i = shl i32 %80, 19
  %and8.i.i.i = and i32 %shl7.i.i.i, 58195968
  %or9.i.i.i = or i32 %or6.i.i.i, %and8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.i.i = icmp eq i32 %59, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_elem_len_1.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 12
  %81 = ptrtoint ptr %tx_elem_len_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_elem_len_1.i.i.i, align 4
  %and10.i.i.i = and i32 %82, 7
  %or11.i.i.i = or i32 %and10.i.i.i, %or9.i.i.i
  %tx_elem_len_2.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 13
  %83 = ptrtoint ptr %tx_elem_len_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tx_elem_len_2.i.i.i, align 4
  %shl12.i.i.i = shl i32 %84, 16
  %and13.i.i.i = and i32 %shl12.i.i.i, 458752
  %or14.i.i.i = or i32 %or11.i.i.i, %and13.i.i.i
  br label %set_prot_desc_tx.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and15.i.i.i = and i32 %57, 7
  %shl17.i.i.i = shl nsw i32 %57, 16
  %and18.i.i.i = and i32 %shl17.i.i.i, 458752
  %or16.i.i.i = or i32 %and18.i.i.i, %and15.i.i.i
  %or19.i.i.i = or i32 %or16.i.i.i, %or9.i.i.i
  br label %set_prot_desc_tx.exit.i.i

set_prot_desc_tx.exit.i.i:                        ; preds = %if.else.i.i.i, %if.then.i.i.i
  %temp_reg.0.i.i.i = phi i32 [ %or14.i.i.i, %if.then.i.i.i ], [ %or19.i.i.i, %if.else.i.i.i ]
  %tx_data_delay.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 15
  %85 = ptrtoint ptr %tx_data_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tx_data_delay.i.i.i, align 4
  %shl20.i.i.i = shl i32 %86, 13
  %and21.i.i.i = and i32 %shl20.i.i.i, 8192
  %or22.i.i.i = or i32 %and21.i.i.i, %temp_reg.0.i.i.i
  %tx_byte_order.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %tx_byte_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tx_byte_order.i.i.i, align 4
  %shl23.i.i.i = shl i32 %88, 12
  %and24.i.i.i = and i32 %shl23.i.i.i, 4096
  %or25.i.i.i = or i32 %or22.i.i.i, %and24.i.i.i
  %tx_fsync_pol.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 19
  %89 = ptrtoint ptr %tx_fsync_pol.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tx_fsync_pol.i.i.i, align 4
  %shl26.i.i.i = shl i32 %90, 10
  %and27.i.i.i = and i32 %shl26.i.i.i, 1024
  %or28.i.i.i = or i32 %or25.i.i.i, %and27.i.i.i
  %tx_half_word_swap.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 21
  %91 = ptrtoint ptr %tx_half_word_swap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_half_word_swap.i.i.i, align 4
  %shl29.i.i.i = shl i32 %92, 28
  %and30.i.i.i = and i32 %shl29.i.i.i, 805306368
  %or31.i.i.i = or i32 %or28.i.i.i, %and30.i.i.i
  %compression_mode.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 22
  %93 = ptrtoint ptr %compression_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %compression_mode.i.i.i, align 4
  %shl32.i.i.i = shl i32 %94, 10
  %and33.i.i.i = and i32 %shl32.i.i.i, 3072
  %or34.i.i.i = or i32 %or31.i.i.i, %and33.i.i.i
  %frame_sync_ignore.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 24
  %95 = ptrtoint ptr %frame_sync_ignore.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %frame_sync_ignore.i.i.i, align 4
  %shl35.i.i.i = shl i32 %96, 15
  %and36.i.i.i = and i32 %shl35.i.i.i, 32768
  %or37.i.i.i = or i32 %or34.i.i.i, %and36.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %97 = tail call i32 @llvm.bswap.i32(i32 %or37.i.i.i) #5
  %98 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %registers, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %99, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %97) #5, !srcloc !106
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %set_prot_desc_tx.exit.i.i, %if.end15.i.i.if.end17.i.i_crit_edge
  %100 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %direction, align 4
  %and19.i.i = and i32 %101, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i)
  %tobool20.not.i.i = icmp eq i32 %and19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end17.i.i.if.end22.i.i_crit_edge, label %if.then21.i.i

if.end17.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i.i

if.then21.i.i:                                    ; preds = %if.end17.i.i
  %102 = ptrtoint ptr %protdesc.0.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %protdesc.0.i.i, align 4
  %shl.i1.i.i = shl i32 %103, 27
  %and.i2.i.i = and i32 %shl.i1.i.i, 134217728
  %rx_phase2_start_mode.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %rx_phase2_start_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_phase2_start_mode.i.i.i, align 4
  %shl1.i3.i.i = shl i32 %105, 26
  %and2.i4.i.i = and i32 %shl1.i3.i.i, 67108864
  %or3.i5.i.i = or i32 %and2.i4.i.i, %and.i2.i.i
  %rx_frame_len_1.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 6
  %106 = ptrtoint ptr %rx_frame_len_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %rx_frame_len_1.i.i.i, align 4
  %shl4.i6.i.i = shl i32 %107, 3
  %and5.i7.i.i = and i32 %shl4.i6.i.i, 888
  %or6.i8.i.i = or i32 %or3.i5.i.i, %and5.i7.i.i
  %rx_frame_len_2.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 7
  %108 = ptrtoint ptr %rx_frame_len_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %rx_frame_len_2.i.i.i, align 4
  %shl7.i9.i.i = shl i32 %109, 19
  %and8.i10.i.i = and i32 %shl7.i9.i.i, 58195968
  %or9.i11.i.i = or i32 %or6.i8.i.i, %and8.i10.i.i
  %110 = ptrtoint ptr %def_elem_len2.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %def_elem_len2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i13.i.i = icmp eq i32 %111, 0
  br i1 %tobool.not.i13.i.i, label %if.else.i25.i.i, label %if.then.i19.i.i

if.then.i19.i.i:                                  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rx_elem_len_1.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 10
  %112 = ptrtoint ptr %rx_elem_len_1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rx_elem_len_1.i.i.i, align 4
  %and10.i14.i.i = and i32 %113, 7
  %or11.i15.i.i = or i32 %and10.i14.i.i, %or9.i11.i.i
  %rx_elem_len_2.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 11
  %114 = ptrtoint ptr %rx_elem_len_2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %rx_elem_len_2.i.i.i, align 4
  %shl12.i16.i.i = shl i32 %115, 16
  %and13.i17.i.i = and i32 %shl12.i16.i.i, 458752
  %or14.i18.i.i = or i32 %or11.i15.i.i, %and13.i17.i.i
  br label %set_prot_desc_rx.exit.i.i

if.else.i25.i.i:                                  ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and15.i20.i.i = and i32 %57, 7
  %shl17.i21.i.i = shl nsw i32 %57, 16
  %and18.i22.i.i = and i32 %shl17.i21.i.i, 458752
  %or16.i23.i.i = or i32 %and18.i22.i.i, %and15.i20.i.i
  %or19.i24.i.i = or i32 %or16.i23.i.i, %or9.i11.i.i
  br label %set_prot_desc_rx.exit.i.i

set_prot_desc_rx.exit.i.i:                        ; preds = %if.else.i25.i.i, %if.then.i19.i.i
  %temp_reg.0.i26.i.i = phi i32 [ %or14.i18.i.i, %if.then.i19.i.i ], [ %or19.i24.i.i, %if.else.i25.i.i ]
  %rx_data_delay.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 14
  %116 = ptrtoint ptr %rx_data_delay.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_data_delay.i.i.i, align 4
  %shl20.i27.i.i = shl i32 %117, 13
  %and21.i28.i.i = and i32 %shl20.i27.i.i, 8192
  %or22.i29.i.i = or i32 %and21.i28.i.i, %temp_reg.0.i26.i.i
  %rx_byte_order.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 4
  %118 = ptrtoint ptr %rx_byte_order.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_byte_order.i.i.i, align 4
  %shl23.i30.i.i = shl i32 %119, 12
  %and24.i31.i.i = and i32 %shl23.i30.i.i, 4096
  %or25.i32.i.i = or i32 %or22.i29.i.i, %and24.i31.i.i
  %rx_fsync_pol.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 18
  %120 = ptrtoint ptr %rx_fsync_pol.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_fsync_pol.i.i.i, align 4
  %shl26.i33.i.i = shl i32 %121, 10
  %and27.i34.i.i = and i32 %shl26.i33.i.i, 1024
  %or28.i35.i.i = or i32 %or25.i32.i.i, %and27.i34.i.i
  %rx_half_word_swap.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 20
  %122 = ptrtoint ptr %rx_half_word_swap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %rx_half_word_swap.i.i.i, align 4
  %shl29.i36.i.i = shl i32 %123, 28
  %and30.i37.i.i = and i32 %shl29.i36.i.i, 805306368
  %or31.i38.i.i = or i32 %or28.i35.i.i, %and30.i37.i.i
  %expansion_mode.i.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 23
  %124 = ptrtoint ptr %expansion_mode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %expansion_mode.i.i.i, align 4
  %shl32.i39.i.i = shl i32 %125, 10
  %and33.i40.i.i = and i32 %shl32.i39.i.i, 3072
  %or34.i41.i.i = or i32 %or31.i38.i.i, %and33.i40.i.i
  %frame_sync_ignore.i42.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 24
  %126 = ptrtoint ptr %frame_sync_ignore.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %frame_sync_ignore.i42.i.i, align 4
  %shl35.i43.i.i = shl i32 %127, 15
  %and36.i44.i.i = and i32 %shl35.i43.i.i, 32768
  %or37.i45.i.i = or i32 %or34.i41.i.i, %and36.i44.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %128 = tail call i32 @llvm.bswap.i32(i32 %or37.i45.i.i) #5
  %129 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %registers, align 4
  %add.ptr.i47.i.i = getelementptr i8, ptr %130, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47.i.i, i32 %128) #5, !srcloc !106
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %set_prot_desc_rx.exit.i.i, %if.end17.i.i.if.end22.i.i_crit_edge
  %131 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %registers, align 4
  %add.ptr.i.i = getelementptr i8, ptr %132, i32 4
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  %134 = and i32 %133, -2097153
  %135 = tail call i32 @llvm.bswap.i32(i32 %134) #5
  %tx_clk_pol.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 17
  %136 = ptrtoint ptr %tx_clk_pol.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tx_clk_pol.i.i, align 4
  %neg.i.i = shl i32 %137, 13
  %and25.i.i = and i32 %neg.i.i, 8192
  %138 = or i32 %and25.i.i, %135
  %or.i.i = xor i32 %138, 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %139 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %140 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %registers, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %141, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %139) #5, !srcloc !106
  %142 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %registers, align 4
  %add.ptr34.i.i = getelementptr i8, ptr %143, i32 4
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  %145 = and i32 %144, -536870913
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #5
  %rx_clk_pol.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i.i, i32 0, i32 16
  %147 = ptrtoint ptr %rx_clk_pol.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rx_clk_pol.i.i, align 4
  %and39.i.i = shl i32 %148, 5
  %shl40.i.i = and i32 %and39.i.i, 32
  %or41.i.i = or i32 %shl40.i.i, %146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %149 = tail call i32 @llvm.bswap.i32(i32 %or41.i.i) #5
  %150 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %registers, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %151, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i.i, i32 %149) #5, !srcloc !106
  br label %configure_protocol.exit.i

configure_protocol.exit.i:                        ; preds = %if.end22.i.i, %do.end13.i.i, %do.end.i.i
  %152 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %registers, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %153, i32 4
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %155 = and i32 %154, -257
  %156 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %registers, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %155) #5, !srcloc !106
  %158 = ptrtoint ptr %default_protdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %default_protdesc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool.not.i89.i = icmp eq i32 %159, 0
  br i1 %tobool.not.i89.i, label %if.else.i93.i, label %if.then.i92.i

if.then.i92.i:                                    ; preds = %configure_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %protocol.i90.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 17
  %160 = ptrtoint ptr %protocol.i90.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %protocol.i90.i, align 4
  %arrayidx.i91.i = getelementptr [3 x %struct.msp_protdesc], ptr @prot_descs, i32 0, i32 %161
  br label %if.end.i95.i

if.else.i93.i:                                    ; preds = %configure_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %protdesc4.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 13
  br label %if.end.i95.i

if.end.i95.i:                                     ; preds = %if.else.i93.i, %if.then.i92.i
  %protdesc.0.i94.i = phi ptr [ %arrayidx.i91.i, %if.then.i92.i ], [ %protdesc4.i.i, %if.else.i93.i ]
  %protocol5.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 17
  %162 = ptrtoint ptr %protocol5.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %protocol5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %163)
  %switch.i.i = icmp ult i32 %163, 3
  br i1 %switch.i.i, label %sw.epilog.i.i, label %do.end17.i.i

do.end17.i.i:                                     ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i96.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %164 = ptrtoint ptr %dev.i96.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev.i96.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %163) #8
  br label %setup_bitclk.exit.i

sw.epilog.i.i:                                    ; preds = %if.end.i95.i
  call void @__sanitizer_cov_trace_pc() #7
  %166 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %config, align 4
  %frame_freq10.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 18
  %168 = ptrtoint ptr %frame_freq10.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %frame_freq10.i.i, align 4
  %clocks_per_frame11.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i94.i, i32 0, i32 27
  %170 = ptrtoint ptr %clocks_per_frame11.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %clocks_per_frame11.i.i, align 4
  %mul12.i.i = mul i32 %171, %169
  %div13.i.i = udiv i32 %167, %mul12.i.i
  %frame_per.0.in.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i94.i, i32 0, i32 25
  %172 = ptrtoint ptr %frame_per.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %frame_per.0.i.i = load i32, ptr %frame_per.0.in.i.i, align 4
  %frame_width.0.in.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i94.i, i32 0, i32 26
  %173 = ptrtoint ptr %frame_width.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %frame_width.0.i.i = load i32, ptr %frame_width.0.in.i.i, align 4
  %sub.i.i = add i32 %div13.i.i, 1023
  %and19.i97.i = and i32 %sub.i.i, 1023
  %shl.i.i = shl i32 %frame_width.0.i.i, 10
  %and20.i.i = and i32 %shl.i.i, 64512
  %shl21.i.i = shl i32 %frame_per.0.i.i, 16
  %and22.i.i = and i32 %shl21.i.i, 536805376
  %or.i98.i = or i32 %and22.i.i, %and19.i97.i
  %or23.i.i = or i32 %or.i98.i, %and20.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !115
  tail call void @arm_heavy_mb() #5
  %174 = tail call i32 @llvm.bswap.i32(i32 %or23.i.i) #5
  %175 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %registers, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %176, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %174) #5, !srcloc !106
  %177 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %config, align 4
  %add.i.i = add i32 %div13.i.i, 1
  %div30.i.i = udiv i32 %178, %add.i.i
  %f_bitclk.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 9
  %179 = ptrtoint ptr %f_bitclk.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %div30.i.i, ptr %f_bitclk.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 21474800) #5
  %181 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %registers, align 4
  %add.ptr34.i99.i = getelementptr i8, ptr %182, i32 4
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i99.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %184 = or i32 %183, 256
  %185 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %registers, align 4
  %add.ptr43.i.i = getelementptr i8, ptr %186, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i.i, i32 %184) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %187 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %187(i32 noundef 21474800) #5
  br label %setup_bitclk.exit.i

setup_bitclk.exit.i:                              ; preds = %sw.epilog.i.i, %do.end17.i.i
  %multichannel_configured.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 14
  %188 = ptrtoint ptr %multichannel_configured.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %multichannel_configured.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %189)
  %cmp.i = icmp eq i32 %189, 1
  br i1 %cmp.i, label %if.then.i, label %setup_bitclk.exit.i.if.end4.i_crit_edge

setup_bitclk.exit.i.if.end4.i_crit_edge:          ; preds = %setup_bitclk.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then.i:                                        ; preds = %setup_bitclk.exit.i
  %190 = ptrtoint ptr %default_protdesc.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %default_protdesc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp.i101.i = icmp eq i32 %191, 1
  br i1 %cmp.i101.i, label %if.then.i103.i, label %if.else.i108.i

if.then.i103.i:                                   ; preds = %if.then.i
  %192 = ptrtoint ptr %protocol5.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %protocol5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %193)
  %cmp1.i.i = icmp ugt i32 %193, 2
  br i1 %cmp1.i.i, label %do.end.i105.i, label %if.end.i107.i

do.end.i105.i:                                    ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i104.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %194 = ptrtoint ptr %dev.i104.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i104.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef %193) #8
  br label %do.end.i

if.end.i107.i:                                    ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i106.i = getelementptr [3 x %struct.msp_protdesc], ptr @prot_descs, i32 0, i32 %193
  br label %if.end6.i.i

if.else.i108.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %protdesc5.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 13
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.else.i108.i, %if.end.i107.i
  %protdesc.0.i109.i = phi ptr [ %arrayidx.i106.i, %if.end.i107.i ], [ %protdesc5.i.i, %if.else.i108.i ]
  %multichannel_config.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15
  %tx_multichannel_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 1
  %196 = ptrtoint ptr %tx_multichannel_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %tx_multichannel_enable.i.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool.not.i110.i = icmp eq i8 %197, 0
  br i1 %tobool.not.i110.i, label %if.end6.i.i.if.end45.i.i_crit_edge, label %if.then7.i.i

if.end6.i.i.if.end45.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i.i

if.then7.i.i:                                     ; preds = %if.end6.i.i
  %tx_phase_mode.i.i = getelementptr inbounds %struct.msp_protdesc, ptr %protdesc.0.i109.i, i32 0, i32 1
  %198 = ptrtoint ptr %tx_phase_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %tx_phase_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %cmp8.i.i = icmp eq i32 %199, 0
  br i1 %cmp8.i.i, label %if.then9.i.i, label %do.end41.i.i

if.then9.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %200 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %registers, align 4
  %add.ptr.i112.i = getelementptr i8, ptr %201, i32 48
  %202 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #5, !srcloc !103
  %203 = tail call i32 @llvm.bswap.i32(i32 %202) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  tail call void @arm_heavy_mb() #5
  %204 = ptrtoint ptr %tx_multichannel_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %tx_multichannel_enable.i.i, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool15.not.i.i = icmp eq i8 %205, 0
  %cond.i.i = select i1 %tobool15.not.i.i, i32 0, i32 32
  %or.i113.i = or i32 %cond.i.i, %203
  %206 = tail call i32 @llvm.bswap.i32(i32 %or.i113.i) #5
  %207 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %registers, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %208, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i.i, i32 %206) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  tail call void @arm_heavy_mb() #5
  %tx_channel_0_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 10
  %209 = ptrtoint ptr %tx_channel_0_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_channel_0_enable.i.i, align 4
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #5
  %212 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %registers, align 4
  %add.ptr22.i.i = getelementptr i8, ptr %213, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i.i, i32 %211) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %tx_channel_1_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 11
  %214 = ptrtoint ptr %tx_channel_1_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %tx_channel_1_enable.i.i, align 4
  %216 = tail call i32 @llvm.bswap.i32(i32 %215) #5
  %217 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %registers, align 4
  %add.ptr27.i.i = getelementptr i8, ptr %218, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i.i, i32 %216) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %tx_channel_2_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 12
  %219 = ptrtoint ptr %tx_channel_2_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %tx_channel_2_enable.i.i, align 4
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #5
  %222 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %registers, align 4
  %add.ptr32.i.i = getelementptr i8, ptr %223, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i.i, i32 %221) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  tail call void @arm_heavy_mb() #5
  %tx_channel_3_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 13
  %224 = ptrtoint ptr %tx_channel_3_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %tx_channel_3_enable.i.i, align 4
  %226 = tail call i32 @llvm.bswap.i32(i32 %225) #5
  %227 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %registers, align 4
  %add.ptr37.i.i = getelementptr i8, ptr %228, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i.i, i32 %226) #5, !srcloc !106
  br label %if.end45.i.i

do.end41.i.i:                                     ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev42.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %229 = ptrtoint ptr %dev42.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev42.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %199) #8
  br label %do.end.i

if.end45.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end45.i.i_crit_edge
  %231 = ptrtoint ptr %multichannel_config.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %multichannel_config.i.i, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool46.not.i.i = icmp eq i8 %232, 0
  br i1 %tobool46.not.i.i, label %if.end45.i.i.if.end4.i_crit_edge, label %if.then47.i.i

if.end45.i.i.if.end4.i_crit_edge:                 ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then47.i.i:                                    ; preds = %if.end45.i.i
  %233 = ptrtoint ptr %protdesc.0.i109.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %protdesc.0.i109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %234)
  %cmp48.i.i = icmp eq i32 %234, 0
  br i1 %cmp48.i.i, label %if.then49.i.i, label %do.end89.i.i

if.then49.i.i:                                    ; preds = %if.then47.i.i
  %235 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %registers, align 4
  %add.ptr53.i.i = getelementptr i8, ptr %236, i32 48
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.i.i) #5, !srcloc !103
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  tail call void @arm_heavy_mb() #5
  %239 = ptrtoint ptr %multichannel_config.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %multichannel_config.i.i, align 4, !range !118
  %241 = zext i8 %240 to i32
  %or63.i.i = or i32 %238, %241
  %242 = tail call i32 @llvm.bswap.i32(i32 %or63.i.i) #5
  %243 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %registers, align 4
  %add.ptr65.i.i = getelementptr i8, ptr %244, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i.i, i32 %242) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  tail call void @arm_heavy_mb() #5
  %rx_channel_0_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 6
  %245 = ptrtoint ptr %rx_channel_0_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %rx_channel_0_enable.i.i, align 4
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #5
  %248 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %registers, align 4
  %add.ptr70.i.i = getelementptr i8, ptr %249, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.i, i32 %247) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %rx_channel_1_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 7
  %250 = ptrtoint ptr %rx_channel_1_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %rx_channel_1_enable.i.i, align 4
  %252 = tail call i32 @llvm.bswap.i32(i32 %251) #5
  %253 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %registers, align 4
  %add.ptr75.i.i = getelementptr i8, ptr %254, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i.i, i32 %252) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !129
  tail call void @arm_heavy_mb() #5
  %rx_channel_2_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 8
  %255 = ptrtoint ptr %rx_channel_2_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %rx_channel_2_enable.i.i, align 4
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #5
  %258 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %registers, align 4
  %add.ptr80.i.i = getelementptr i8, ptr %259, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i.i, i32 %257) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void @arm_heavy_mb() #5
  %rx_channel_3_enable.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 9
  %260 = ptrtoint ptr %rx_channel_3_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %rx_channel_3_enable.i.i, align 4
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #5
  %263 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %registers, align 4
  %add.ptr85.i.i = getelementptr i8, ptr %264, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i.i, i32 %262) #5, !srcloc !106
  %rx_comparison_enable_mode.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 2
  %265 = ptrtoint ptr %rx_comparison_enable_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %rx_comparison_enable_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool93.not.i.i = icmp eq i32 %266, 0
  br i1 %tobool93.not.i.i, label %if.then49.i.i.if.end4.i_crit_edge, label %if.then94.i.i

if.then49.i.i.if.end4.i_crit_edge:                ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

do.end89.i.i:                                     ; preds = %if.then47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev90.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %267 = ptrtoint ptr %dev90.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev90.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %268, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46, i32 noundef %234) #8
  br label %do.end.i

if.then94.i.i:                                    ; preds = %if.then49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %269 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %registers, align 4
  %add.ptr98.i.i = getelementptr i8, ptr %270, i32 48
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98.i.i) #5, !srcloc !103
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %273 = ptrtoint ptr %rx_comparison_enable_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %rx_comparison_enable_mode.i.i, align 4
  %shl.i114.i = shl i32 %274, 3
  %or106.i.i = or i32 %shl.i114.i, %272
  %275 = tail call i32 @llvm.bswap.i32(i32 %or106.i.i) #5
  %276 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %registers, align 4
  %add.ptr108.i.i = getelementptr i8, ptr %277, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i.i, i32 %275) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %comparison_mask.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 5
  %278 = ptrtoint ptr %comparison_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %comparison_mask.i.i, align 4
  %280 = tail call i32 @llvm.bswap.i32(i32 %279) #5
  %281 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %registers, align 4
  %add.ptr113.i.i = getelementptr i8, ptr %282, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i.i, i32 %280) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %comparison_value.i.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 15, i32 4
  %283 = ptrtoint ptr %comparison_value.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %comparison_value.i.i, align 4
  %285 = tail call i32 @llvm.bswap.i32(i32 %284) #5
  %286 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %registers, align 4
  %add.ptr118.i.i = getelementptr i8, ptr %287, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118.i.i, i32 %285) #5, !srcloc !106
  br label %if.end4.i

do.end.i:                                         ; preds = %do.end89.i.i, %do.end41.i.i, %do.end.i105.i
  %dev.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %288 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %289, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef -22) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.then94.i.i, %if.then49.i.i.if.end4.i_crit_edge, %if.end45.i.i.if.end4.i_crit_edge, %setup_bitclk.exit.i.if.end4.i_crit_edge
  %cmp70 = phi i1 [ true, %do.end.i ], [ false, %if.then94.i.i ], [ false, %if.then49.i.i.if.end4.i_crit_edge ], [ false, %if.end45.i.i.if.end4.i_crit_edge ], [ false, %setup_bitclk.exit.i.if.end4.i_crit_edge ]
  %status.0.i = phi i32 [ -22, %do.end.i ], [ 0, %if.then94.i.i ], [ 0, %if.then49.i.i.if.end4.i_crit_edge ], [ 0, %if.end45.i.i.if.end4.i_crit_edge ], [ 0, %setup_bitclk.exit.i.if.end4.i_crit_edge ]
  %290 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %direction, align 4
  %and.i = and i32 %291, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end12.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %dma_cfg.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 4, i32 2
  %292 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %dma_cfg.i, align 4
  %tobool6.not.i = icmp eq ptr %293, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end75.sink.split_crit_edge, label %land.lhs.true.i.enable_msp.exit_crit_edge

land.lhs.true.i.enable_msp.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_msp.exit

land.lhs.true.i.do.end75.sink.split_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75.sink.split

if.end12.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %291)
  %cmp14.i = icmp eq i32 %291, 1
  br i1 %cmp14.i, label %land.lhs.true15.i, label %if.end12.i.enable_msp.exit_crit_edge

if.end12.i.enable_msp.exit_crit_edge:             ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_msp.exit

land.lhs.true15.i:                                ; preds = %if.end12.i
  %dma_cfg16.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 3, i32 2
  %294 = ptrtoint ptr %dma_cfg16.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dma_cfg16.i, align 4
  %tobool17.not.i = icmp eq ptr %295, null
  br i1 %tobool17.not.i, label %land.lhs.true15.i.do.end75.sink.split_crit_edge, label %land.lhs.true15.i.enable_msp.exit_crit_edge

land.lhs.true15.i.enable_msp.exit_crit_edge:      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %enable_msp.exit

land.lhs.true15.i.do.end75.sink.split_crit_edge:  ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75.sink.split

enable_msp.exit:                                  ; preds = %land.lhs.true15.i.enable_msp.exit_crit_edge, %if.end12.i.enable_msp.exit_crit_edge, %land.lhs.true.i.enable_msp.exit_crit_edge
  %296 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %registers, align 4
  %add.ptr.i = getelementptr i8, ptr %297, i32 24
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !103
  %299 = tail call i32 @llvm.bswap.i32(i32 %298) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  %300 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %direction, align 4
  %and27.i = lshr i32 %301, 1
  %302 = and i32 %and27.i, 1
  %303 = or i32 %302, %299
  %and32.i = shl i32 %301, 1
  %304 = and i32 %and32.i, 2
  %305 = or i32 %303, %304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %306 = tail call i32 @llvm.bswap.i32(i32 %305) #5
  %307 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %registers, align 4
  %add.ptr41.i = getelementptr i8, ptr %308, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %306) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  tail call void @arm_heavy_mb() #5
  %iodelay.i = getelementptr inbounds %struct.ux500_msp_config, ptr %config, i32 0, i32 21
  %309 = ptrtoint ptr %iodelay.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %iodelay.i, align 4
  %311 = tail call i32 @llvm.bswap.i32(i32 %310) #5
  %312 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %registers, align 4
  %add.ptr46.i = getelementptr i8, ptr %313, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %311) #5, !srcloc !106
  %314 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %registers, align 4
  %add.ptr50.i = getelementptr i8, ptr %315, i32 4
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %317 = or i32 %316, 4096
  %318 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %registers, align 4
  %add.ptr59.i = getelementptr i8, ptr %319, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %317) #5, !srcloc !106
  br i1 %cmp70, label %enable_msp.exit.do.end75_crit_edge, label %if.end77

enable_msp.exit.do.end75_crit_edge:               ; preds = %enable_msp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

do.end75.sink.split:                              ; preds = %land.lhs.true15.i.do.end75.sink.split_crit_edge, %land.lhs.true.i.do.end75.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.33, %land.lhs.true.i.do.end75.sink.split_crit_edge ], [ @.str.36, %land.lhs.true15.i.do.end75.sink.split_crit_edge ]
  %dev11.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %320 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev11.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull %.str.33.sink, ptr noundef nonnull @.str.30) #8
  br label %do.end75

do.end75:                                         ; preds = %do.end75.sink.split, %enable_msp.exit.do.end75_crit_edge
  %retval.0.i135 = phi i32 [ %status.0.i, %enable_msp.exit.do.end75_crit_edge ], [ -22, %do.end75.sink.split ]
  %dev76 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %322 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %323, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i135) #8
  br label %cleanup

if.end77:                                         ; preds = %enable_msp.exit
  %324 = ptrtoint ptr %loopback_enable to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %loopback_enable, align 4
  %and79 = and i32 %325, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end77.if.end83_crit_edge, label %if.then81

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %loopback_enable82 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 8
  %326 = ptrtoint ptr %loopback_enable82 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 1, ptr %loopback_enable82, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end77.if.end83_crit_edge
  tail call fastcc void @flush_fifo_tx(ptr noundef %msp)
  tail call fastcc void @flush_fifo_rx(ptr noundef %msp)
  %msp_state = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 5
  %327 = ptrtoint ptr %msp_state to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 1, ptr %msp_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end75, %do.end41, %do.end32, %do.end16, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -16, %do.end32 ], [ -16, %do.end41 ], [ -16, %do.end75 ], [ 0, %if.end83 ], [ -22, %do.end16 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_fifo_tx(ptr nocapture noundef readonly %msp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !141
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 65536
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers, align 4
  %add.ptr8 = getelementptr i8, ptr %7, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 50331648) #5, !srcloc !106
  %8 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %registers, align 4
  %add.ptr12 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %11 = and i32 %10, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not50.not = icmp eq i32 %11, 0
  br i1 %tobool.not50.not, label %entry.while.body_crit_edge, label %entry.do.body31_crit_edge

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %limit.051 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 32, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %limit.051, -1
  %12 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %15 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %18 = and i32 %17, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp ne i32 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool16.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool16.not
  br i1 %or.cond, label %while.body.do.body31_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.do.body31_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body31

do.body31:                                        ; preds = %while.body.do.body31_crit_edge, %entry.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !146
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %registers, align 4
  %add.ptr35 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers, align 4
  %add.ptr40 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %2) #5, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_fifo_rx(ptr nocapture noundef readonly %msp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %registers = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %0 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %registers, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #5, !srcloc !106
  %6 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %registers, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %9 = and i32 %8, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not38.not = icmp eq i32 %9, 0
  br i1 %tobool.not38.not, label %entry.while.body_crit_edge, label %entry.do.body26_crit_edge

entry.do.body26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %limit.039 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 32, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %limit.039, -1
  %10 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %registers, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  %13 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %registers, align 4
  %add.ptr22 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  %16 = and i32 %15, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool11.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %while.body.do.body26_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.body.do.body26_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body26

do.body26:                                        ; preds = %while.body.do.body26_crit_edge, %entry.do.body26_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !153
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers, align 4
  %add.ptr30 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %2) #5, !srcloc !106
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_msp_i2s_trigger(ptr nocapture noundef %msp, i32 noundef %cmd, i32 noundef %direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %msp_state = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 5
  %0 = ptrtoint ptr %msp_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msp_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge31
    i32 4, label %if.end.sw.bb_crit_edge32
    i32 0, label %if.end.sw.bb10_crit_edge
    i32 5, label %if.end.sw.bb10_crit_edge33
    i32 3, label %if.end.sw.bb10_crit_edge34
  ]

if.end.sw.bb10_crit_edge34:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.end.sw.bb10_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb10

if.end.sw.bb_crit_edge32:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge31:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge31, %if.end.sw.bb_crit_edge32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp1 = icmp eq i32 %direction, 0
  %. = select i1 %cmp1, i32 256, i32 1
  %registers = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %5 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %registers, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !155
  tail call void @arm_heavy_mb() #5
  %or = or i32 %8, %.
  %9 = tail call i32 @llvm.bswap.i32(i32 %or)
  %10 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %registers, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #5, !srcloc !106
  br label %cleanup

sw.bb10:                                          ; preds = %if.end.sw.bb10_crit_edge, %if.end.sw.bb10_crit_edge33, %if.end.sw.bb10_crit_edge34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp11 = icmp eq i32 %direction, 0
  %registers.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %12 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %15 = and i32 %14, -65537
  %16 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #5, !srcloc !106
  %18 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %registers.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %21 = and i32 %20, -33554433
  %22 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %registers.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %21) #5, !srcloc !106
  %24 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %registers.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %27 = and i32 %26, -805306369
  %28 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %registers.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %27) #5, !srcloc !106
  %dir_busy.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 7
  %30 = ptrtoint ptr %dir_busy.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dir_busy.i, align 4
  %and30.i = and i32 %31, -2
  store i32 %and30.i, ptr %dir_busy.i, align 4
  br label %cleanup

if.else13:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %32 = and i32 %14, -16777217
  %33 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %registers.i, align 4
  %add.ptr3.i24 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i24, i32 %32) #5, !srcloc !106
  %35 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %registers.i, align 4
  %add.ptr7.i25 = getelementptr i8, ptr %36, i32 24
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i25) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %38 = and i32 %37, -16777217
  %39 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %registers.i, align 4
  %add.ptr16.i26 = getelementptr i8, ptr %40, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i26, i32 %38) #5, !srcloc !106
  %41 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %registers.i, align 4
  %add.ptr20.i27 = getelementptr i8, ptr %42, i32 32
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i27) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %44 = and i32 %43, -50331649
  %45 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %registers.i, align 4
  %add.ptr29.i28 = getelementptr i8, ptr %46, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i28, i32 %44) #5, !srcloc !106
  %dir_busy.i29 = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 7
  %47 = ptrtoint ptr %dir_busy.i29 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dir_busy.i29, align 4
  %and30.i30 = and i32 %48, -3
  store i32 %and30.i30, ptr %dir_busy.i29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %if.then12, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %if.else13 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_msp_i2s_close(ptr nocapture noundef %msp, i32 noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_i2s_close.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_i2s_close, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_i2s_close.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %dir) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %registers.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 1
  %2 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %registers.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !165
  %and.i = and i32 %dir, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.disable_msp.exit_crit_edge, label %if.then.i

do.end.disable_msp.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_msp.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %registers.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !167
  tail call void @arm_heavy_mb() #5
  %8 = or i32 %7, -2147483648
  %9 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %registers.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %8) #5, !srcloc !106
  tail call fastcc void @flush_fifo_tx(ptr noundef %msp) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !168
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 4
  %add.ptr19.i = getelementptr i8, ptr %12, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !169
  %14 = and i32 %13, -65537
  %15 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %registers.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %14) #5, !srcloc !106
  tail call fastcc void @flush_fifo_rx(ptr noundef %msp) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !170
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %registers.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %18, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !171
  %20 = and i32 %19, 2130706431
  %21 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %registers.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %20) #5, !srcloc !106
  %23 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %registers.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !173
  tail call void @arm_heavy_mb() #5
  %26 = and i32 %25, -65537
  %27 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %registers.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %26) #5, !srcloc !106
  %29 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %registers.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !157
  tail call void @arm_heavy_mb() #5
  %32 = and i32 %31, -33554433
  %33 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %registers.i, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %34, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i.i, i32 %32) #5, !srcloc !106
  %35 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %registers.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %36, i32 32
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !159
  tail call void @arm_heavy_mb() #5
  %38 = and i32 %37, -805306369
  %39 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %registers.i, align 4
  %add.ptr29.i.i = getelementptr i8, ptr %40, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i.i, i32 %38) #5, !srcloc !106
  %dir_busy.i.i = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 7
  %41 = ptrtoint ptr %dir_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dir_busy.i.i, align 4
  %and30.i.i = and i32 %42, -2
  store i32 %and30.i.i, ptr %dir_busy.i.i, align 4
  %43 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %registers.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %44, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !175
  tail call void @arm_heavy_mb() #5
  %46 = and i32 %45, -16777217
  %47 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %registers.i, align 4
  %add.ptr3.i3.i = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i3.i, i32 %46) #5, !srcloc !106
  %49 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %registers.i, align 4
  %add.ptr7.i4.i = getelementptr i8, ptr %50, i32 24
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i4.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !161
  tail call void @arm_heavy_mb() #5
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %registers.i, align 4
  %add.ptr16.i5.i = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i5.i, i32 %52) #5, !srcloc !106
  %55 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %registers.i, align 4
  %add.ptr20.i6.i = getelementptr i8, ptr %56, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i6.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !163
  tail call void @arm_heavy_mb() #5
  %58 = and i32 %57, -50331649
  %59 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %registers.i, align 4
  %add.ptr29.i7.i = getelementptr i8, ptr %60, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i7.i, i32 %58) #5, !srcloc !106
  %61 = ptrtoint ptr %dir_busy.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dir_busy.i.i, align 4
  %and30.i9.i = and i32 %62, -3
  store i32 %and30.i9.i, ptr %dir_busy.i.i, align 4
  br label %disable_msp.exit

disable_msp.exit:                                 ; preds = %if.then.i, %do.end.disable_msp.exit_crit_edge
  %dir_busy = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 7
  %63 = ptrtoint ptr %dir_busy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dir_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp = icmp eq i32 %64, 0
  br i1 %cmp, label %if.then4, label %disable_msp.exit.if.end93_crit_edge

disable_msp.exit.if.end93_crit_edge:              ; preds = %disable_msp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

if.then4:                                         ; preds = %disable_msp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %msp_state = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 5
  %65 = ptrtoint ptr %msp_state to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %msp_state, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !176
  tail call void @arm_heavy_mb() #5
  %66 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %registers.i, align 4
  %add.ptr = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !177
  %69 = and i32 %68, -4353
  %70 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %registers.i, align 4
  %add.ptr12 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %69) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !178
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %registers.i, align 4
  %add.ptr17 = getelementptr i8, ptr %73, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !179
  tail call void @arm_heavy_mb() #5
  %74 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %registers.i, align 4
  %add.ptr22 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !180
  tail call void @arm_heavy_mb() #5
  %76 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %registers.i, align 4
  %add.ptr27 = getelementptr i8, ptr %77, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !181
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %registers.i, align 4
  %add.ptr32 = getelementptr i8, ptr %79, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !182
  tail call void @arm_heavy_mb() #5
  %80 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %registers.i, align 4
  %add.ptr37 = getelementptr i8, ptr %81, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !183
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %registers.i, align 4
  %add.ptr42 = getelementptr i8, ptr %83, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !184
  tail call void @arm_heavy_mb() #5
  %84 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %registers.i, align 4
  %add.ptr47 = getelementptr i8, ptr %85, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !185
  tail call void @arm_heavy_mb() #5
  %86 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %registers.i, align 4
  %add.ptr52 = getelementptr i8, ptr %87, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !186
  tail call void @arm_heavy_mb() #5
  %88 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %registers.i, align 4
  %add.ptr57 = getelementptr i8, ptr %89, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !187
  tail call void @arm_heavy_mb() #5
  %90 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %registers.i, align 4
  %add.ptr62 = getelementptr i8, ptr %91, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !188
  tail call void @arm_heavy_mb() #5
  %92 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %registers.i, align 4
  %add.ptr67 = getelementptr i8, ptr %93, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !189
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %registers.i, align 4
  %add.ptr72 = getelementptr i8, ptr %95, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !190
  tail call void @arm_heavy_mb() #5
  %96 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %registers.i, align 4
  %add.ptr77 = getelementptr i8, ptr %97, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !191
  tail call void @arm_heavy_mb() #5
  %98 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %registers.i, align 4
  %add.ptr82 = getelementptr i8, ptr %99, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !192
  tail call void @arm_heavy_mb() #5
  %100 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %registers.i, align 4
  %add.ptr87 = getelementptr i8, ptr %101, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 0) #5, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !193
  tail call void @arm_heavy_mb() #5
  %102 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %registers.i, align 4
  %add.ptr92 = getelementptr i8, ptr %103, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 0) #5, !srcloc !106
  br label %if.end93

if.end93:                                         ; preds = %if.then4, %disable_msp.exit.if.end93_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ux500_msp_i2s_init_msp(ptr noundef %pdev, ptr nocapture noundef writeonly %msp_p, ptr noundef %platform_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #5
  %2 = ptrtoint ptr %msp_p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %msp_p, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %platform_data, null
  br i1 %tobool2.not, label %if.then3, label %if.else11

if.then3:                                         ; preds = %if.end
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.then3.cleanup_crit_edge, label %if.then5

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then5.cleanup_crit_edge, label %if.end.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %call.i22.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %dma_cfg.i = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i22.i, ptr %dma_cfg.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i22.i, null
  br i1 %tobool5.not.i, label %if.end.i.cleanup_crit_edge, label %if.end7.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %call.i23.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #5
  %dma_cfg10.i = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %dma_cfg10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i23.i, ptr %dma_cfg10.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i23.i, null
  br i1 %tobool13.not.i, label %if.end7.i.cleanup_crit_edge, label %if.end7.i.if.end14_crit_edge

if.end7.i.if.end14_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %msp_i2s_dma_tx = getelementptr inbounds %struct.msp_i2s_platform_data, ptr %platform_data, i32 0, i32 2
  %5 = ptrtoint ptr %msp_i2s_dma_tx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msp_i2s_dma_tx, align 4
  %dma_cfg = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %dma_cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dma_cfg, align 4
  %msp_i2s_dma_rx = getelementptr inbounds %struct.msp_i2s_platform_data, ptr %platform_data, i32 0, i32 1
  %8 = ptrtoint ptr %msp_i2s_dma_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msp_i2s_dma_rx, align 4
  %dma_cfg12 = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %dma_cfg12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_cfg12, align 4
  %11 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %platform_data, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %call.i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.end7.i.if.end14_crit_edge
  %dev16 = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev16, align 4
  %call17 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %cmp = icmp eq ptr %call17, null
  br i1 %cmp, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %15 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call17, align 4
  %tx_rx_addr = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %tx_rx_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tx_rx_addr, align 4
  %18 = load i32, ptr %call17, align 4
  %tx_rx_addr25 = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %tx_rx_addr25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_rx_addr25, align 4
  %20 = load i32, ptr %call17, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call17, i32 0, i32 1
  %21 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %20
  %add.i = add i32 %sub.i, %22
  %call29 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %20, i32 noundef %add.i) #5
  %registers = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %registers to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call29, ptr %registers, align 4
  %cmp31 = icmp eq ptr %call29, null
  br i1 %cmp31, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %msp_state = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 5
  %24 = ptrtoint ptr %msp_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %msp_state, align 4
  %loopback_enable = getelementptr inbounds %struct.ux500_msp, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %loopback_enable to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %loopback_enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end35, %do.end, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end35 ], [ 0, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.then3.cleanup_crit_edge ], [ -12, %if.then5.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ux500_msp_i2s_cleanup_msp(ptr nocapture noundef readnone %pdev, ptr nocapture noundef readonly %msp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ux500_msp_i2s_cleanup_msp.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ux500_msp_i2s_cleanup_msp, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !164

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.ux500_msp, ptr %msp, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %msp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ux500_msp_i2s_cleanup_msp.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92}
!llvm.named.register.sp = !{!93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 439, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ux500_msp_i2s_open._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ux500_msp_i2s_open._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 448, i32 3}
!10 = !{ptr @ux500_msp_i2s_open._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ux500_msp_i2s_open._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 456, i32 3}
!14 = !{ptr @ux500_msp_i2s_open._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ux500_msp_i2s_open._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 460, i32 3}
!18 = !{ptr @ux500_msp_i2s_open._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ux500_msp_i2s_open._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 486, i32 3}
!22 = !{ptr @ux500_msp_i2s_open._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @ux500_msp_i2s_open._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 576, i32 3}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ux500_msp_i2s_trigger._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @ux500_msp_i2s_trigger._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.19, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 612, i32 2}
!31 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ux500_msp_i2s_close.__UNIQUE_ID_ddebug240, !30, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 704, i32 3}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ux500_msp_i2s_init_msp._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @ux500_msp_i2s_init_msp._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 715, i32 3}
!41 = !{ptr @ux500_msp_i2s_init_msp._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ux500_msp_i2s_init_msp._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 728, i32 2}
!45 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @ux500_msp_i2s_cleanup_msp.__UNIQUE_ID_ddebug241, !44, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!47 = !{ptr @__UNIQUE_ID_file242, !48, !"__UNIQUE_ID_file242", i1 false, i1 false}
!48 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 731, i32 1}
!49 = !{ptr @__UNIQUE_ID_license243, !48, !"__UNIQUE_ID_license243", i1 false, i1 false}
!50 = !{ptr @.str.29, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 361, i32 4}
!52 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.31, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @enable_msp._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @enable_msp._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.33, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 369, i32 3}
!58 = !{ptr @enable_msp._entry.32, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @enable_msp._entry_ptr.34, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 375, i32 3}
!62 = !{ptr @enable_msp._entry.35, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @enable_msp._entry_ptr.37, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 183, i32 4}
!66 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @configure_protocol._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @configure_protocol._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 194, i32 3}
!71 = !{ptr @configure_protocol._entry.40, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @configure_protocol._entry_ptr.42, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @prot_descs, !74, !"prot_descs", i1 false, i1 false}
!74 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 26, i32 34}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 249, i32 3}
!77 = !{ptr @.str.44, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @setup_bitclk._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @setup_bitclk._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 280, i32 4}
!82 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @configure_multichannel._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @configure_multichannel._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 307, i32 4}
!87 = !{ptr @configure_multichannel._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @configure_multichannel._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/ux500/ux500_msp_i2s.c", i32 328, i32 4}
!91 = !{ptr @configure_multichannel._entry.50, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @configure_multichannel._entry_ptr.52, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{!"sp"}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 5202645}
!104 = !{i64 2154946730}
!105 = !{i64 2154946957}
!106 = !{i64 5202227}
!107 = !{i64 2154891772}
!108 = !{i64 2154893183}
!109 = !{i64 2154897498}
!110 = !{i64 2154897880}
!111 = !{i64 2154898581}
!112 = !{i64 2154898961}
!113 = !{i64 2154899674}
!114 = !{i64 2154899931}
!115 = !{i64 2154902277}
!116 = !{i64 2154903526}
!117 = !{i64 2154903781}
!118 = !{i8 0, i8 2}
!119 = !{i64 2154906829}
!120 = !{i64 2154907114}
!121 = !{i64 2154907718}
!122 = !{i64 2154908208}
!123 = !{i64 2154908698}
!124 = !{i64 2154909188}
!125 = !{i64 2154915946}
!126 = !{i64 2154916231}
!127 = !{i64 2154916835}
!128 = !{i64 2154917325}
!129 = !{i64 2154917815}
!130 = !{i64 2154918305}
!131 = !{i64 2154921002}
!132 = !{i64 2154921281}
!133 = !{i64 2154921863}
!134 = !{i64 2154922338}
!135 = !{i64 2154928461}
!136 = !{i64 2154928858}
!137 = !{i64 2154929302}
!138 = !{i64 2154930024}
!139 = !{i64 2154930279}
!140 = !{i64 2154934069}
!141 = !{i64 2154934324}
!142 = !{i64 2154935007}
!143 = !{i64 2154935855}
!144 = !{i64 2154936444}
!145 = !{i64 2154936951}
!146 = !{i64 2154937174}
!147 = !{i64 2154937584}
!148 = !{i64 2154931028}
!149 = !{i64 2154931283}
!150 = !{i64 2154932032}
!151 = !{i64 2154932621}
!152 = !{i64 2154933128}
!153 = !{i64 2154933359}
!154 = !{i64 2154964144}
!155 = !{i64 2154964388}
!156 = !{i64 2154953953}
!157 = !{i64 2154954300}
!158 = !{i64 2154955112}
!159 = !{i64 2154955576}
!160 = !{i64 2154950401}
!161 = !{i64 2154950748}
!162 = !{i64 2154951560}
!163 = !{i64 2154952024}
!164 = !{i64 2148971419, i64 2148971424, i64 2148971437, i64 2148971481, i64 2148971515, i64 2148971536}
!165 = !{i64 2154956493}
!166 = !{i64 2154957000}
!167 = !{i64 2154957343}
!168 = !{i64 2154958656}
!169 = !{i64 2154959631}
!170 = !{i64 2154960800}
!171 = !{i64 2154961827}
!172 = !{i64 2154952941}
!173 = !{i64 2154953198}
!174 = !{i64 2154949389}
!175 = !{i64 2154949646}
!176 = !{i64 2154968041}
!177 = !{i64 2154969046}
!178 = !{i64 2154969323}
!179 = !{i64 2154969717}
!180 = !{i64 2154970111}
!181 = !{i64 2154970505}
!182 = !{i64 2154970899}
!183 = !{i64 2154971293}
!184 = !{i64 2154971687}
!185 = !{i64 2154972081}
!186 = !{i64 2154972475}
!187 = !{i64 2154972869}
!188 = !{i64 2154973263}
!189 = !{i64 2154973657}
!190 = !{i64 2154974051}
!191 = !{i64 2154974445}
!192 = !{i64 2154974839}
!193 = !{i64 2154975233}
