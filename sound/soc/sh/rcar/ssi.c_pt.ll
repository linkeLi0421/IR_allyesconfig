; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/ssi.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/ssi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_ssi = type { %struct.rsnd_mod, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
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
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@rsnd_ssi_dma_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.1, ptr @rsnd_ssi_dma_req, ptr @rsnd_ssi_dma_probe, ptr @rsnd_ssi_common_remove, ptr @rsnd_ssi_init, ptr @rsnd_ssi_quit, ptr @rsnd_ssi_start, ptr @rsnd_ssi_stop, ptr @rsnd_ssi_irq, ptr @rsnd_ssi_pcm_new, ptr @rsnd_ssi_hw_params, ptr null, ptr @rsnd_ssi_fallback, ptr null, ptr null, ptr null, ptr @rsnd_ssi_get_status, ptr null, ptr null, ptr null, ptr @rsnd_ssi_debug_info }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_sound,ssi\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/ssi.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"shared-pin\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no-busif\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pio-transfer\00", [19 x i8] zeroinitializer }, align 32
@rsnd_ssi_pio_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.1, ptr null, ptr @rsnd_ssi_common_probe, ptr @rsnd_ssi_common_remove, ptr @rsnd_ssi_pio_init, ptr @rsnd_ssi_quit, ptr @rsnd_ssi_start, ptr @rsnd_ssi_stop, ptr @rsnd_ssi_irq, ptr @rsnd_ssi_pcm_new, ptr @rsnd_ssi_hw_params, ptr @rsnd_ssi_pio_pointer, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_ssi_get_status, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rxu\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"txu\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@__rsnd_ssi_interrupt._entry = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 690, ptr @.str.13, ptr @.str.14 }, align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s err status : 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__rsnd_ssi_interrupt\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rsnd_ssi_interrupt._entry_ptr = internal global ptr @__rsnd_ssi_interrupt._entry, section ".printk_index", align 4
@rsnd_ssi_master_clk_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 294, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SSI parent/child should use same rate\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rsnd_ssi_master_clk_start\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rsnd_ssi_master_clk_start._entry_ptr = internal global ptr @rsnd_ssi_master_clk_start._entry, section ".printk_index", align 4
@rsnd_ssi_master_clk_start._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 299, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SSI parent/child should use same chan\0A\00", [57 x i8] zeroinitializer }, align 32
@rsnd_ssi_master_clk_start._entry_ptr.20 = internal global ptr @rsnd_ssi_master_clk_start._entry.18, section ".printk_index", align 4
@rsnd_ssi_master_clk_start._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.16, ptr @.str.2, i32 308, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported clock rate\0A\00", [40 x i8] zeroinitializer }, align 32
@rsnd_ssi_master_clk_start._entry_ptr.23 = internal global ptr @rsnd_ssi_master_clk_start._entry.21, section ".printk_index", align 4
@rsnd_ssi_master_clk_start.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.16, ptr @.str.2, ptr @.str.25, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s outputs %d chan %u Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@rsnd_rdai_width_to_swl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 223, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported slot width value: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rsnd_rdai_width_to_swl\00", [41 x i8] zeroinitializer }, align 32
@rsnd_rdai_width_to_swl._entry_ptr = internal global ptr @rsnd_rdai_width_to_swl._entry, section ".printk_index", align 4
@rsnd_ssi_config_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rsnd_ssi_config_init\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TDM mode\0A\00", [22 x i8] zeroinitializer }, align 32
@rsnd_ssi_config_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.28, ptr @.str.2, ptr @.str.30, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TDM Split mode\0A\00", [16 x i8] zeroinitializer }, align 32
@rsnd_ssi_quit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 506, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s usrcnt error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rsnd_ssi_quit\00", [18 x i8] zeroinitializer }, align 32
@rsnd_ssi_quit._entry_ptr = internal global ptr @rsnd_ssi_quit._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rsnd_ssi_status_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 163, ptr @.str.35, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s status check failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rsnd_ssi_status_check\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rsnd_ssi_status_check._entry_ptr = internal global ptr @rsnd_ssi_status_check._entry, section ".printk_index", align 4
@rsnd_ssi_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 537, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"invalid combination of slot-width and format-data-width\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_ssi_hw_params\00", [45 x i8] zeroinitializer }, align 32
@rsnd_ssi_hw_params._entry_ptr = internal global ptr @rsnd_ssi_hw_params._entry, section ".printk_index", align 4
@rsnd_ssi_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 993, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s fallback to PIO mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rsnd_ssi_fallback\00", [46 x i8] zeroinitializer }, align 32
@rsnd_ssi_fallback._entry_ptr = internal global ptr @rsnd_ssi_fallback._entry, section ".printk_index", align 4
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clock:           %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"provider\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"consumer\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bit_clk_inv:     %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"frm_clk_inv:     %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pin share:       %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can out clk:     %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"multi secondary: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tdm:             %d, %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"chan:            %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"user:            %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 9]
@__sancov_gen_cov_switch_values.51 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 9]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"rsnd_ssi_dma_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1053, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1112, i32 9 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1120, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1136, i32 6 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1189, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1199, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1202, i32 27 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1212, i32 33 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"rsnd_ssi_pio_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 940, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1017, i32 20 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1017, i32 28 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1019, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1019, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 689, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 294, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 299, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 308, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 332, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 223, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 378, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 380, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 506, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 163, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 537, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 993, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1033, i32 16 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1034, i32 9 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1034, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1035, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1036, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1037, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1038, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1039, i32 16 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1040, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1042, i32 16 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [27 x i8] c"../sound/soc/sh/rcar/ssi.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 1043, i32 16 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__rsnd_ssi_interrupt._entry, ptr @__rsnd_ssi_interrupt._entry_ptr, ptr @rsnd_rdai_width_to_swl._entry, ptr @rsnd_rdai_width_to_swl._entry_ptr, ptr @rsnd_ssi_fallback._entry, ptr @rsnd_ssi_fallback._entry_ptr, ptr @rsnd_ssi_hw_params._entry, ptr @rsnd_ssi_hw_params._entry_ptr, ptr @rsnd_ssi_master_clk_start._entry, ptr @rsnd_ssi_master_clk_start._entry.18, ptr @rsnd_ssi_master_clk_start._entry.21, ptr @rsnd_ssi_master_clk_start._entry_ptr, ptr @rsnd_ssi_master_clk_start._entry_ptr.20, ptr @rsnd_ssi_master_clk_start._entry_ptr.23, ptr @rsnd_ssi_quit._entry, ptr @rsnd_ssi_quit._entry_ptr, ptr @rsnd_ssi_status_check._entry, ptr @rsnd_ssi_status_check._entry_ptr, ptr @rsnd_ssi_dma_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rsnd_ssi_pio_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_dma_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_pio_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_master_clk_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_master_clk_start._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_master_clk_start._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_rdai_width_to_swl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_quit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_status_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_ssi_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_ssi_use_busif(ptr nocapture noundef readonly %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %3, @rsnd_ssi_dma_ops
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.rsnd_ssi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 1
  %and.lobit = and i32 %and, 1
  %6 = xor i32 %and.lobit, 1
  %arrayidx6 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %8, null
  %use_busif.1 = select i1 %tobool7.not, i32 %6, i32 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %use_busif.1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rsnd_ssi_is_dma_mode(ptr nocapture noundef readonly %mod) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %cmp = icmp eq ptr %1, @rsnd_ssi_dma_ops
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_multi_secondaries_runtime(ptr noundef %io) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %entry
  %arrayidx4.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.cleanup.i_crit_edge, label %if.end.i

if.then.cleanup.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %1) #9
  %shl.i = shl nuw i32 1, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %if.then.cleanup.i_crit_edge
  %mask.1.i = phi i32 [ %shl.i, %if.end.i ], [ 0, %if.then.cleanup.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %3) #9
  %shl.1.i = shl nuw i32 1, %call.1.i
  %or.1.i = or i32 %shl.1.i, %mask.1.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %mask.1.1.i = phi i32 [ %or.1.i, %if.end.1.i ], [ %mask.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.return_crit_edge, label %if.end.2.i

cleanup.1.i.return_crit_edge:                     ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #9
  %shl.2.i = shl nuw i32 1, %call.2.i
  %or.2.i = or i32 %shl.2.i, %mask.1.1.i
  br label %return

return:                                           ; preds = %if.end.2.i, %cleanup.1.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %or.2.i, %if.end.2.i ], [ %mask.1.1.i, %cleanup.1.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_multi_ssi(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_clk_query(ptr noundef %rdai, i32 noundef %param1, i32 noundef %param2, ptr noundef writeonly %idx) local_unnamed_addr #3 align 64 {
if.end.1:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @rsnd_rdai_width_ctrl(ptr noundef %rdai, i32 noundef 0) #9
  %mul = mul i32 %param2, %param1
  %mul3 = mul i32 %mul, %call
  %mul4.1 = shl i32 %mul3, 1
  %call5.1 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1)
  %cmp6.1 = icmp slt i32 %call5.1, 0
  br i1 %cmp6.1, label %if.end.2, label %if.end.1.if.end8_crit_edge

if.end.1.if.end8_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.end.6.if.end8_crit_edge, %if.end.5.if.end8_crit_edge, %if.end.4.if.end8_crit_edge, %if.end.3.if.end8_crit_edge, %if.end.2.if.end8_crit_edge, %if.end.1.if.end8_crit_edge
  %j.023.lcssa = phi i32 [ 1, %if.end.1.if.end8_crit_edge ], [ 2, %if.end.2.if.end8_crit_edge ], [ 3, %if.end.3.if.end8_crit_edge ], [ 4, %if.end.4.if.end8_crit_edge ], [ 5, %if.end.5.if.end8_crit_edge ], [ 6, %if.end.6.if.end8_crit_edge ]
  %mul4.lcssa = phi i32 [ %mul4.1, %if.end.1.if.end8_crit_edge ], [ %mul4.2, %if.end.2.if.end8_crit_edge ], [ %mul4.3, %if.end.3.if.end8_crit_edge ], [ %mul4.4, %if.end.4.if.end8_crit_edge ], [ %mul4.5, %if.end.5.if.end8_crit_edge ], [ %mul4.6, %if.end.6.if.end8_crit_edge ]
  %tobool.not = icmp eq ptr %idx, null
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %j.023.lcssa, ptr %idx, align 4
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %mul4.2 = shl i32 %mul3, 2
  %call5.2 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2)
  %cmp6.2 = icmp slt i32 %call5.2, 0
  br i1 %cmp6.2, label %if.end.3, label %if.end.2.if.end8_crit_edge

if.end.2.if.end8_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.3:                                         ; preds = %if.end.2
  %mul4.3 = shl i32 %mul3, 3
  %call5.3 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3)
  %cmp6.3 = icmp slt i32 %call5.3, 0
  br i1 %cmp6.3, label %if.end.4, label %if.end.3.if.end8_crit_edge

if.end.3.if.end8_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.4:                                         ; preds = %if.end.3
  %mul4.4 = shl i32 %mul3, 4
  %call5.4 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4)
  %cmp6.4 = icmp slt i32 %call5.4, 0
  br i1 %cmp6.4, label %if.end.5, label %if.end.4.if.end8_crit_edge

if.end.4.if.end8_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.5:                                         ; preds = %if.end.4
  %mul4.5 = mul i32 %mul3, 6
  %call5.5 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.5)
  %cmp6.5 = icmp slt i32 %call5.5, 0
  br i1 %cmp6.5, label %if.end.6, label %if.end.5.if.end8_crit_edge

if.end.5.if.end8_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.6:                                         ; preds = %if.end.5
  %mul4.6 = mul i32 %mul3, 12
  %call5.6 = tail call i32 @rsnd_adg_clk_query(ptr noundef %1, i32 noundef %mul4.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.6)
  %cmp6.6 = icmp slt i32 %call5.6, 0
  br i1 %cmp6.6, label %if.end.6.cleanup_crit_edge, label %if.end.6.if.end8_crit_edge

if.end.6.if.end8_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.6.cleanup_crit_edge, %if.then9, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul4.lcssa, %if.then9 ], [ %mul4.lcssa, %if.end8.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_width_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_clk_query(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_parse_connect_ssi(ptr noundef %rdai, ptr noundef readnone %playback, ptr noundef readnone %capture) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #9
  %cmp.not50 = icmp eq ptr %call2, null
  br i1 %cmp.not50, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %ssi_nr.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 7
  %ssi.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 6
  %playback7 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 1
  %rdai1.i = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 4
  %arrayidx4.i = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 2, i32 11
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 2, i32 9
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 2, i32 8
  %arrayidx4.3.i = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 1, i32 2, i32 7
  %capture11 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 2
  %rdai1.i30 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 4
  %arrayidx4.i31 = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 2, i32 11
  %arrayidx4.1.i40 = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 2, i32 9
  %arrayidx4.2.i43 = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 2, i32 8
  %arrayidx4.3.i46 = getelementptr %struct.rsnd_dai, ptr %rdai, i32 0, i32 2, i32 2, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %np.051 = phi ptr [ %call2, %for.body.lr.ph ], [ %call13, %if.end12.for.body_crit_edge ]
  %call3 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %np.051, ptr noundef nonnull @.str.1, i32 noundef %i.052) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.i = icmp slt i32 %call3, 0
  br i1 %cmp.i, label %for.body.do.end.i_crit_edge, label %lor.end.i, !prof !121

for.body.do.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.end.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %ssi_nr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssi_nr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %call3)
  %cmp1.not.i = icmp sgt i32 %7, %call3
  br i1 %cmp1.not.i, label %lor.end.i.rsnd_ssi_mod_get.exit_crit_edge, label %lor.end.i.do.end.i_crit_edge, !prof !122

lor.end.i.do.end.i_crit_edge:                     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.end.i.rsnd_ssi_mod_get.exit_crit_edge:        ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_mod_get.exit

do.end.i:                                         ; preds = %lor.end.i.do.end.i_crit_edge, %for.body.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %rsnd_ssi_mod_get.exit

rsnd_ssi_mod_get.exit:                            ; preds = %do.end.i, %lor.end.i.rsnd_ssi_mod_get.exit_crit_edge
  %8 = phi i32 [ 0, %do.end.i ], [ %call3, %lor.end.i.rsnd_ssi_mod_get.exit_crit_edge ]
  %9 = ptrtoint ptr %ssi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssi.i, align 4
  %add.ptr.i = getelementptr %struct.rsnd_ssi, ptr %10, i32 %8
  %cmp5 = icmp eq ptr %np.051, %playback
  br i1 %cmp5, label %if.then6, label %rsnd_ssi_mod_get.exit.if.end8_crit_edge

rsnd_ssi_mod_get.exit.if.end8_crit_edge:          ; preds = %rsnd_ssi_mod_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %rsnd_ssi_mod_get.exit
  %11 = ptrtoint ptr %rdai1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdai1.i, align 4
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then6.if.then.i_crit_edge, label %for.inc.i

if.then6.if.then.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %if.then6.if.then.i_crit_edge
  %i.020.lcssa.i = phi i32 [ 1, %if.then6.if.then.i_crit_edge ], [ 2, %for.inc.i.if.then.i_crit_edge ], [ 3, %for.inc.1.i.if.then.i_crit_edge ], [ 4, %for.inc.2.i.if.then.i_crit_edge ]
  %.lcssa.i = phi i32 [ 11, %if.then6.if.then.i_crit_edge ], [ 9, %for.inc.i.if.then.i_crit_edge ], [ 8, %for.inc.1.i.if.then.i_crit_edge ], [ 7, %for.inc.2.i.if.then.i_crit_edge ]
  %call.i = tail call i32 @rsnd_dai_connect(ptr noundef %add.ptr.i, ptr noundef %playback7, i32 noundef %.lcssa.i) #9
  %mul.i = shl nuw nsw i32 %i.020.lcssa.i, 1
  %call5.i = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %12, i32 noundef %mul.i) #9
  %call7.i = tail call i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef %12, i32 noundef %i.020.lcssa.i) #9
  br label %if.end8

for.inc.i:                                        ; preds = %if.then6
  %15 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %16, null
  br i1 %tobool.not.1.i, label %for.inc.i.if.then.i_crit_edge, label %for.inc.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %17 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %18, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.if.then.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %19 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %20, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.if.then.i_crit_edge, label %for.inc.2.i.if.end8_crit_edge

for.inc.2.i.if.end8_crit_edge:                    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end8:                                          ; preds = %for.inc.2.i.if.end8_crit_edge, %if.then.i, %rsnd_ssi_mod_get.exit.if.end8_crit_edge
  %cmp9 = icmp eq ptr %np.051, %capture
  br i1 %cmp9, label %if.then10, label %if.end8.if.end12_crit_edge

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %if.end8
  %21 = ptrtoint ptr %rdai1.i30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdai1.i30, align 4
  %23 = ptrtoint ptr %arrayidx4.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx4.i31, align 4
  %tobool.not.i32 = icmp eq ptr %24, null
  br i1 %tobool.not.i32, label %if.then10.if.then.i39_crit_edge, label %for.inc.i42

if.then10.if.then.i39_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i39

if.then.i39:                                      ; preds = %for.inc.2.i48.if.then.i39_crit_edge, %for.inc.1.i45.if.then.i39_crit_edge, %for.inc.i42.if.then.i39_crit_edge, %if.then10.if.then.i39_crit_edge
  %i.020.lcssa.i33 = phi i32 [ 1, %if.then10.if.then.i39_crit_edge ], [ 2, %for.inc.i42.if.then.i39_crit_edge ], [ 3, %for.inc.1.i45.if.then.i39_crit_edge ], [ 4, %for.inc.2.i48.if.then.i39_crit_edge ]
  %.lcssa.i34 = phi i32 [ 11, %if.then10.if.then.i39_crit_edge ], [ 9, %for.inc.i42.if.then.i39_crit_edge ], [ 8, %for.inc.1.i45.if.then.i39_crit_edge ], [ 7, %for.inc.2.i48.if.then.i39_crit_edge ]
  %call.i35 = tail call i32 @rsnd_dai_connect(ptr noundef %add.ptr.i, ptr noundef %capture11, i32 noundef %.lcssa.i34) #9
  %mul.i36 = shl nuw nsw i32 %i.020.lcssa.i33, 1
  %call5.i37 = tail call i32 @rsnd_rdai_channels_ctrl(ptr noundef %22, i32 noundef %mul.i36) #9
  %call7.i38 = tail call i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef %22, i32 noundef %i.020.lcssa.i33) #9
  br label %if.end12

for.inc.i42:                                      ; preds = %if.then10
  %25 = ptrtoint ptr %arrayidx4.1.i40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx4.1.i40, align 4
  %tobool.not.1.i41 = icmp eq ptr %26, null
  br i1 %tobool.not.1.i41, label %for.inc.i42.if.then.i39_crit_edge, label %for.inc.1.i45

for.inc.i42.if.then.i39_crit_edge:                ; preds = %for.inc.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i39

for.inc.1.i45:                                    ; preds = %for.inc.i42
  %27 = ptrtoint ptr %arrayidx4.2.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx4.2.i43, align 4
  %tobool.not.2.i44 = icmp eq ptr %28, null
  br i1 %tobool.not.2.i44, label %for.inc.1.i45.if.then.i39_crit_edge, label %for.inc.2.i48

for.inc.1.i45.if.then.i39_crit_edge:              ; preds = %for.inc.1.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i39

for.inc.2.i48:                                    ; preds = %for.inc.1.i45
  %29 = ptrtoint ptr %arrayidx4.3.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx4.3.i46, align 4
  %tobool.not.3.i47 = icmp eq ptr %30, null
  br i1 %tobool.not.3.i47, label %for.inc.2.i48.if.then.i39_crit_edge, label %for.inc.2.i48.if.end12_crit_edge

for.inc.2.i48.if.end12_crit_edge:                 ; preds = %for.inc.2.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

for.inc.2.i48.if.then.i39_crit_edge:              ; preds = %for.inc.2.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i39

if.end12:                                         ; preds = %for.inc.2.i48.if.end12_crit_edge, %if.then.i39, %if.end8.if.end12_crit_edge
  %inc = add i32 %call3, 1
  %call13 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.051) #9
  %cmp.not = icmp eq ptr %call13, null
  br i1 %cmp.not, label %if.end12.for.end_crit_edge, label %if.end12.for.body_crit_edge

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_ssi_mod_get(ptr nocapture noundef readonly %priv, i32 noundef %id) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp slt i32 %id, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.end, !prof !121

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.end:                                          ; preds = %entry
  %ssi_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %ssi_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssi_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp1.not = icmp sgt i32 %1, %id
  br i1 %cmp1.not, label %lor.end.if.end_crit_edge, label %lor.end.do.end_crit_edge, !prof !122

lor.end.do.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.end.if.end_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %lor.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.end.if.end_crit_edge
  %2 = phi i32 [ 0, %do.end ], [ %id, %lor.end.if.end_crit_edge ]
  %ssi = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 6
  %3 = ptrtoint ptr %ssi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssi, align 4
  %add.ptr = getelementptr %struct.rsnd_ssi, ptr %4, i32 %2
  ret ptr %add.ptr
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef readonly %mod) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mod, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_ssi_probe(ptr noundef %priv) local_unnamed_addr #3 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = call ptr @memset(ptr %name, i32 255, i32 16)
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %4, ptr noundef nonnull @.str) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @rsnd_node_count(ptr noundef %priv, ptr noundef nonnull %call, ptr noundef nonnull @.str.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.rsnd_ssi_probe_done_crit_edge, label %if.end7

if.end.rsnd_ssi_probe_done_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done

if.end7:                                          ; preds = %if.end
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4, i32 76) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end7.rsnd_ssi_probe_done_crit_edge, label %devm_kcalloc.exit, !prof !123

if.end7.rsnd_ssi_probe_done_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done

devm_kcalloc.exit:                                ; preds = %if.end7
  %7 = extractvalue { i32, i1 } %5, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3520) #9
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %devm_kcalloc.exit.rsnd_ssi_probe_done_crit_edge, label %if.end11

devm_kcalloc.exit.rsnd_ssi_probe_done_crit_edge:  ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done

if.end11:                                         ; preds = %devm_kcalloc.exit
  %ssi12 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %ssi12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %ssi12, align 4
  %ssi_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 7
  %9 = ptrtoint ptr %ssi_nr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call4, ptr %ssi_nr, align 4
  %call13 = tail call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef null) #9
  %cmp.not101 = icmp eq ptr %call13, null
  br i1 %cmp.not101, label %if.end11.rsnd_ssi_probe_done_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.rsnd_ssi_probe_done_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done

for.body:                                         ; preds = %skip.for.body_crit_edge, %if.end11.for.body_crit_edge
  %i.0104 = phi i32 [ %inc, %skip.for.body_crit_edge ], [ 0, %if.end11.for.body_crit_edge ]
  %np.0102 = phi ptr [ %call48, %skip.for.body_crit_edge ], [ %call13, %if.end11.for.body_crit_edge ]
  %call14 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.0102) #9
  br i1 %call14, label %if.end16, label %for.body.skip_crit_edge

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

if.end16:                                         ; preds = %for.body
  %call17 = call i32 @rsnd_node_fixed_index(ptr noundef nonnull %np.0102, ptr noundef nonnull @.str.1, i32 noundef %i.0104) #9
  %10 = ptrtoint ptr %ssi12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssi12, align 4
  %add.ptr = getelementptr %struct.rsnd_ssi, ptr %11, i32 %call17
  %call19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %call17)
  %call21 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull %name) #9
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call21 to i32
  br label %rsnd_ssi_probe_done.sink.split

if.end25:                                         ; preds = %if.end16
  %call26 = call ptr @of_get_property(ptr noundef nonnull %np.0102, ptr noundef nonnull @.str.4, ptr noundef null) #9
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.if.end29_crit_edge, label %if.then28

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %flags = getelementptr %struct.rsnd_ssi, ptr %11, i32 %call17, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %or = or i32 %14, 1
  store i32 %or, ptr %flags, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end25.if.end29_crit_edge
  %call30 = call ptr @of_get_property(ptr noundef nonnull %np.0102, ptr noundef nonnull @.str.5, ptr noundef null) #9
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %flags33 = getelementptr %struct.rsnd_ssi, ptr %11, i32 %call17, i32 1
  %15 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags33, align 4
  %or34 = or i32 %16, 2
  store i32 %or34, ptr %flags33, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %call36 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0102, i32 noundef 0) #9
  %irq = getelementptr %struct.rsnd_ssi, ptr %11, i32 %call17, i32 9
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call36, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end35.rsnd_ssi_probe_done.sink.split_crit_edge, label %if.end40

if.end35.rsnd_ssi_probe_done.sink.split_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done.sink.split

if.end40:                                         ; preds = %if.end35
  %call.i = call ptr @of_find_property(ptr noundef nonnull %np.0102, ptr noundef nonnull @.str.6, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  %rsnd_ssi_pio_ops.rsnd_ssi_dma_ops = select i1 %tobool.i.not, ptr @rsnd_ssi_dma_ops, ptr @rsnd_ssi_pio_ops
  %call44 = call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %add.ptr, ptr noundef nonnull %rsnd_ssi_pio_ops.rsnd_ssi_dma_ops, ptr noundef %call21, i32 noundef 11, i32 noundef %call17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end40.skip_crit_edge, label %if.end40.rsnd_ssi_probe_done.sink.split_crit_edge

if.end40.rsnd_ssi_probe_done.sink.split_crit_edge: ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done.sink.split

if.end40.skip_crit_edge:                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip

skip:                                             ; preds = %if.end40.skip_crit_edge, %for.body.skip_crit_edge
  %i.1 = phi i32 [ %call17, %if.end40.skip_crit_edge ], [ %i.0104, %for.body.skip_crit_edge ]
  %inc = add i32 %i.1, 1
  %call48 = call ptr @of_get_next_child(ptr noundef nonnull %call, ptr noundef nonnull %np.0102) #9
  %cmp.not = icmp eq ptr %call48, null
  br i1 %cmp.not, label %skip.rsnd_ssi_probe_done_crit_edge, label %skip.for.body_crit_edge

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

skip.rsnd_ssi_probe_done_crit_edge:               ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_probe_done

rsnd_ssi_probe_done.sink.split:                   ; preds = %if.end40.rsnd_ssi_probe_done.sink.split_crit_edge, %if.end35.rsnd_ssi_probe_done.sink.split_crit_edge, %if.then23
  %ret.0.ph = phi i32 [ %12, %if.then23 ], [ -22, %if.end35.rsnd_ssi_probe_done.sink.split_crit_edge ], [ %call44, %if.end40.rsnd_ssi_probe_done.sink.split_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.0102) #9
  br label %rsnd_ssi_probe_done

rsnd_ssi_probe_done:                              ; preds = %rsnd_ssi_probe_done.sink.split, %skip.rsnd_ssi_probe_done_crit_edge, %if.end11.rsnd_ssi_probe_done_crit_edge, %devm_kcalloc.exit.rsnd_ssi_probe_done_crit_edge, %if.end7.rsnd_ssi_probe_done_crit_edge, %if.end.rsnd_ssi_probe_done_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.rsnd_ssi_probe_done_crit_edge ], [ -12, %devm_kcalloc.exit.rsnd_ssi_probe_done_crit_edge ], [ -12, %if.end7.rsnd_ssi_probe_done_crit_edge ], [ 0, %if.end11.rsnd_ssi_probe_done_crit_edge ], [ %ret.0.ph, %rsnd_ssi_probe_done.sink.split ], [ 0, %skip.rsnd_ssi_probe_done_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %rsnd_ssi_probe_done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %rsnd_ssi_probe_done ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_count(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_ssi_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ssi1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 6
  %ssi_nr = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %ssi_nr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ssi_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp sgt i32 %1, 0
  br i1 %cmp5, label %entry.land.rhs_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %2 = ptrtoint ptr %ssi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssi1, align 4
  %add.ptr = getelementptr %struct.rsnd_ssi, ptr %3, i32 %i.06
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.rhs
  tail call void @rsnd_mod_quit(ptr noundef nonnull %add.ptr) #9
  %inc = add nuw nsw i32 %i.06, 1
  %4 = ptrtoint ptr %ssi_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssi_nr, align 4
  %cmp = icmp slt i32 %inc, %5
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsnd_ssi_dma_req(ptr noundef readonly %io, ptr noundef %mod) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %2 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %ops.i.i = getelementptr inbounds %struct.rsnd_mod, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, @rsnd_ssi_dma_ops
  br i1 %cmp.i.not.i, label %if.end.i, label %rsnd_ssi_use_busif.exit.thread

rsnd_ssi_use_busif.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cond414 = select i1 %cmp, ptr @.str.9, ptr @.str.10
  br label %13

if.end.i:                                         ; preds = %entry
  %arrayidx6.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %rsnd_ssi_use_busif.exit, label %rsnd_ssi_use_busif.exit.thread16

rsnd_ssi_use_busif.exit.thread16:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %cond19 = select i1 %cmp, ptr @.str.7, ptr @.str.8
  br label %14

rsnd_ssi_use_busif.exit:                          ; preds = %if.end.i
  %flags.i = getelementptr inbounds %struct.rsnd_ssi, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.not = icmp eq i32 %12, 0
  %cond = select i1 %cmp, ptr @.str.7, ptr @.str.8
  %cond4 = select i1 %cmp, ptr @.str.9, ptr @.str.10
  br i1 %tobool.not.not, label %rsnd_ssi_use_busif.exit._crit_edge, label %rsnd_ssi_use_busif.exit._crit_edge21

rsnd_ssi_use_busif.exit._crit_edge21:             ; preds = %rsnd_ssi_use_busif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %13

rsnd_ssi_use_busif.exit._crit_edge:               ; preds = %rsnd_ssi_use_busif.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %14

13:                                               ; preds = %rsnd_ssi_use_busif.exit._crit_edge21, %rsnd_ssi_use_busif.exit.thread
  %cond415 = phi ptr [ %cond414, %rsnd_ssi_use_busif.exit.thread ], [ %cond4, %rsnd_ssi_use_busif.exit._crit_edge21 ]
  br label %14

14:                                               ; preds = %13, %rsnd_ssi_use_busif.exit._crit_edge, %rsnd_ssi_use_busif.exit.thread16
  %15 = phi ptr [ %cond415, %13 ], [ %cond, %rsnd_ssi_use_busif.exit._crit_edge ], [ %cond19, %rsnd_ssi_use_busif.exit.thread16 ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_child_by_name(ptr noundef %19, ptr noundef nonnull @.str) #9
  %call6 = tail call ptr @rsnd_dma_request_channel(ptr noundef %call5, ptr noundef nonnull @.str.1, ptr noundef %mod, ptr noundef nonnull %15) #9
  ret ptr %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_dma_probe(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx4.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup.i_crit_edge, label %if.end.i

entry.cleanup.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %1) #9
  %shl.i = shl nuw i32 1, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %entry.cleanup.i_crit_edge
  %mask.1.i = phi i32 [ %shl.i, %if.end.i ], [ 0, %entry.cleanup.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %3) #9
  %shl.1.i = shl nuw i32 1, %call.1.i
  %or.1.i = or i32 %shl.1.i, %mask.1.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %mask.1.1.i = phi i32 [ %or.1.i, %if.end.1.i ], [ %mask.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge, label %if.end.2.i

cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries.exit

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #9
  %shl.2.i = shl nuw i32 1, %call.2.i
  %or.2.i = or i32 %shl.2.i, %mask.1.1.i
  br label %rsnd_ssi_multi_secondaries.exit

rsnd_ssi_multi_secondaries.exit:                  ; preds = %if.end.2.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge
  %mask.1.2.i = phi i32 [ %or.2.i, %if.end.2.i ], [ %mask.1.1.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge ]
  %call1 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call1
  %and = and i32 %shl, %mask.1.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge

rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge: ; preds = %rsnd_ssi_multi_secondaries.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rsnd_ssi_multi_secondaries.exit
  %call2 = tail call i32 @rsnd_ssi_common_probe(ptr noundef %mod, ptr noundef %io, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dma = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 3
  %call6 = tail call i32 @rsnd_dma_attach(ptr noundef %io, ptr noundef %mod, ptr noundef %dma) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_common_remove(ptr noundef %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %1, %mod
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 9
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %mod) #9
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and4 = and i32 %7, -5
  store i32 %and4, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io)
  %call1 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call1
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @rsnd_ssi_master_clk_start(ptr noundef %mod, ptr noundef %io)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %usrcnt = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 10
  %0 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usrcnt, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %usrcnt, align 4
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_enable(ptr noundef %3) #9
  tail call fastcc void @rsnd_ssi_config_init(ptr noundef %mod, ptr noundef %io)
  %wsr.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 6
  %4 = ptrtoint ptr %wsr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wsr.i, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 181, i32 noundef %5) #9
  %cr_own.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 2
  %6 = ptrtoint ptr %cr_own.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_own.i, align 4
  %cr_clk.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 3
  %8 = ptrtoint ptr %cr_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr_clk.i, align 4
  %or.i = or i32 %9, %7
  %cr_mode.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 4
  %10 = ptrtoint ptr %cr_mode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_mode.i, align 4
  %or1.i = or i32 %or.i, %11
  %cr_en.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 5
  %12 = ptrtoint ptr %cr_en.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr_en.i, align 4
  %or2.i = or i32 %or1.i, %13
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 177, i32 noundef %or2.i) #9
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 178, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_quit(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io)
  %call2 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call2
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %usrcnt = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 10
  %2 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usrcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %call5) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rdai1.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %4 = ptrtoint ptr %rdai1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdai1.i, align 4
  %clk_master.i = getelementptr inbounds %struct.rsnd_dai, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %clk_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end6.rsnd_ssi_master_clk_stop.exit_crit_edge, label %if.end.i

if.end6.rsnd_ssi_master_clk_stop.exit_crit_edge:  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_master_clk_stop.exit

if.end.i:                                         ; preds = %if.end6
  %tobool.not.i.i = icmp eq ptr %mod, null
  br i1 %tobool.not.i.i, label %if.end4.i, label %__rsnd_ssi_is_pin_sharing.exit.i

__rsnd_ssi_is_pin_sharing.exit.i:                 ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  %or.cond = select i1 %tobool2.not.i, i1 true, i1 %cmp.i
  br i1 %or.cond, label %__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_master_clk_stop.exit_crit_edge, label %__rsnd_ssi_is_pin_sharing.exit.i.if.end6.i_crit_edge

__rsnd_ssi_is_pin_sharing.exit.i.if.end6.i_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_master_clk_stop.exit_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_master_clk_stop.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.old = icmp ugt i32 %3, 1
  br i1 %cmp.i.old, label %if.end4.i.rsnd_ssi_master_clk_stop.exit_crit_edge, label %if.end4.i.if.end6.i_crit_edge

if.end4.i.if.end6.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end4.i.rsnd_ssi_master_clk_stop.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_master_clk_stop.exit

if.end6.i:                                        ; preds = %if.end4.i.if.end6.i_crit_edge, %__rsnd_ssi_is_pin_sharing.exit.i.if.end6.i_crit_edge
  %cr_clk.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 3
  %9 = ptrtoint ptr %cr_clk.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cr_clk.i, align 4
  %rate.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 8
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rate.i, align 4
  %chan.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 7
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %chan.i, align 4
  %call7.i = tail call i32 @rsnd_adg_ssi_clk_stop(ptr noundef %mod) #9
  br label %rsnd_ssi_master_clk_stop.exit

rsnd_ssi_master_clk_stop.exit:                    ; preds = %if.end6.i, %if.end4.i.rsnd_ssi_master_clk_stop.exit_crit_edge, %__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_master_clk_stop.exit_crit_edge, %if.end6.rsnd_ssi_master_clk_stop.exit_crit_edge
  %clk = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 4
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %13) #9
  %14 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %usrcnt, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %usrcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %if.then10, label %rsnd_ssi_master_clk_stop.exit.cleanup_crit_edge

rsnd_ssi_master_clk_stop.exit.cleanup_crit_edge:  ; preds = %rsnd_ssi_master_clk_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %rsnd_ssi_master_clk_stop.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cr_own = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 2
  %16 = ptrtoint ptr %cr_own to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cr_own, align 4
  %cr_mode = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 4
  %17 = ptrtoint ptr %cr_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cr_mode, align 4
  %wsr = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 6
  %18 = ptrtoint ptr %wsr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wsr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %rsnd_ssi_master_clk_stop.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %rsnd_ssi_master_clk_stop.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_start(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io)
  %call1 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call1
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %if.then.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  %arrayidx4.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup.i.i_crit_edge, label %if.end.i.i

if.then.i.cleanup.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %1) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %if.then.i.cleanup.i.i_crit_edge
  %arrayidx4.1.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %2 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.1.i.i, label %cleanup.1.i.i, label %cleanup.1.i.i.thread

cleanup.1.i.i:                                    ; preds = %cleanup.i.i
  %arrayidx4.2.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %4 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.2.i.i, label %rsnd_ssi_multi_secondaries_runtime.exit, label %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge

cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit.thread23

cleanup.1.i.i.thread:                             ; preds = %cleanup.i.i
  %call.1.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %3) #9
  %arrayidx4.2.i.i27 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %arrayidx4.2.i.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.2.i.i27, align 4
  %tobool.not.2.i.i28 = icmp eq ptr %7, null
  br i1 %tobool.not.2.i.i28, label %cleanup.1.i.i.thread.cleanup_crit_edge, label %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge

cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge: ; preds = %cleanup.1.i.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit.thread23

cleanup.1.i.i.thread.cleanup_crit_edge:           ; preds = %cleanup.1.i.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit.thread23: ; preds = %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge
  %8 = phi ptr [ %7, %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge ], [ %5, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread23_crit_edge ]
  %call.2.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %8) #9
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit:          ; preds = %cleanup.1.i.i
  br i1 %tobool.not.i.i, label %rsnd_ssi_multi_secondaries_runtime.exit.if.end5_crit_edge, label %rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge

rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge: ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit.if.end5_crit_edge: ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %rsnd_ssi_multi_secondaries_runtime.exit.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %10, %mod
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %cr_en = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 5
  %11 = ptrtoint ptr %cr_en to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %cr_en, align 4
  %cr_own = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 2
  %12 = ptrtoint ptr %cr_own to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr_own, align 4
  %cr_clk = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 3
  %14 = ptrtoint ptr %cr_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr_clk, align 4
  %cr_mode = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 4
  %16 = ptrtoint ptr %cr_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cr_mode, align 4
  %or = or i32 %13, %15
  %or9 = or i32 %or, %17
  %or11 = or i32 %or9, 1
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 177, i32 noundef %or11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end5.cleanup_crit_edge, %rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge, %rsnd_ssi_multi_secondaries_runtime.exit.thread23, %cleanup.1.i.i.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_stop(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io)
  %call1 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call1
  %and = and i32 %shl, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, %mod
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cr_own = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 2
  %2 = ptrtoint ptr %cr_own to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cr_own, align 4
  %cr_clk = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 3
  %4 = ptrtoint ptr %cr_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr_clk, align 4
  %or = or i32 %5, %3
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %6 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 1
  %cmp5 = icmp eq ptr %playback, %io
  br i1 %cmp5, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  %cr_en = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 5
  %8 = ptrtoint ptr %cr_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr_en, align 4
  %or7 = or i32 %9, %or
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 177, i32 noundef %or7) #9
  %priv1.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %10 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv1.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then6
  %i.010.i = phi i32 [ 0, %if.then6 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 178) #9
  %and.i = and i32 %call.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.if.end8_crit_edge

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #9
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call ptr @rsnd_mod_name(ptr noundef %mod) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i, ptr noundef nonnull @.str.33, ptr noundef %call3.i) #12
  br label %if.end8

if.end8:                                          ; preds = %do.end.i, %for.body.i.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %call.i = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i29 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i29, label %if.end8.if.end12_crit_edge, label %if.then.i

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then.i:                                        ; preds = %if.end8
  %arrayidx4.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup.i.i_crit_edge, label %if.end.i.i

if.then.i.cleanup.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i30 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %16) #9
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %if.then.i.cleanup.i.i_crit_edge
  %arrayidx4.1.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %17 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.1.i.i, label %cleanup.1.i.i, label %cleanup.1.i.i.thread

cleanup.1.i.i:                                    ; preds = %cleanup.i.i
  %arrayidx4.2.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %19 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx4.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.2.i.i, label %rsnd_ssi_multi_secondaries_runtime.exit, label %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge

cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit.thread46

cleanup.1.i.i.thread:                             ; preds = %cleanup.i.i
  %call.1.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %18) #9
  %arrayidx4.2.i.i50 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %21 = ptrtoint ptr %arrayidx4.2.i.i50 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx4.2.i.i50, align 4
  %tobool.not.2.i.i51 = icmp eq ptr %22, null
  br i1 %tobool.not.2.i.i51, label %cleanup.1.i.i.thread.cleanup_crit_edge, label %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge

cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge: ; preds = %cleanup.1.i.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit.thread46

cleanup.1.i.i.thread.cleanup_crit_edge:           ; preds = %cleanup.1.i.i.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit.thread46: ; preds = %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge
  %23 = phi ptr [ %22, %cleanup.1.i.i.thread.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge ], [ %20, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit.thread46_crit_edge ]
  %call.2.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %23) #9
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit:          ; preds = %cleanup.1.i.i
  br i1 %tobool.not.i.i, label %rsnd_ssi_multi_secondaries_runtime.exit.if.end12_crit_edge, label %rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge

rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge: ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

rsnd_ssi_multi_secondaries_runtime.exit.if.end12_crit_edge: ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12:                                         ; preds = %rsnd_ssi_multi_secondaries_runtime.exit.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 177, i32 noundef %or) #9
  %priv1.i31 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %24 = ptrtoint ptr %priv1.i31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1.i31, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %dev2.i32 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end.i40.for.body.i37_crit_edge, %if.end12
  %i.010.i33 = phi i32 [ 0, %if.end12 ], [ %inc.i38, %if.end.i40.for.body.i37_crit_edge ]
  %call.i.i34 = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 178) #9
  %and.i35 = and i32 %call.i.i34, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool.not.i36, label %if.end.i40, label %for.body.i37.rsnd_ssi_status_check.exit43_crit_edge

for.body.i37.rsnd_ssi_status_check.exit43_crit_edge: ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_status_check.exit43

if.end.i40:                                       ; preds = %for.body.i37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 1073740) #9
  %inc.i38 = add nuw nsw i32 %i.010.i33, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 1024
  br i1 %exitcond.not.i39, label %do.end.i42, label %if.end.i40.for.body.i37_crit_edge

if.end.i40.for.body.i37_crit_edge:                ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i37

do.end.i42:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i41 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2.i32, ptr noundef nonnull @.str.33, ptr noundef %call3.i41) #12
  br label %rsnd_ssi_status_check.exit43

rsnd_ssi_status_check.exit43:                     ; preds = %do.end.i42, %for.body.i37.rsnd_ssi_status_check.exit43_crit_edge
  %cr_en13 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 5
  %29 = ptrtoint ptr %cr_en13 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cr_en13, align 4
  br label %cleanup

cleanup:                                          ; preds = %rsnd_ssi_status_check.exit43, %rsnd_ssi_multi_secondaries_runtime.exit.cleanup_crit_edge, %rsnd_ssi_multi_secondaries_runtime.exit.thread46, %cleanup.1.i.i.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_irq(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv, i32 noundef %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %call1 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %io) #9
  %call2 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %io) #9
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %3, %mod
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io)
  %call8 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call8
  %and9 = and i32 %shl, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool12.not = icmp eq i32 %enable, 0
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %5, @rsnd_ssi_dma_ops
  %cond = select i1 %cmp.i.not, i32 234881024, i32 251658240
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %val.0 = phi i32 [ %cond, %if.then13 ], [ 0, %if.end11.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool17.not = icmp eq i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool18.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool17.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then19.if.end20_crit_edge [
    i32 0, label %if.then19.sw.bb_crit_edge
    i32 1, label %if.then19.sw.bb_crit_edge32
    i32 2, label %if.then19.sw.bb_crit_edge33
    i32 3, label %if.then19.sw.bb_crit_edge34
    i32 4, label %if.then19.sw.bb_crit_edge35
    i32 9, label %if.then19.sw.bb_crit_edge36
  ]

if.then19.sw.bb_crit_edge36:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.sw.bb_crit_edge35:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.sw.bb_crit_edge34:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.sw.bb_crit_edge33:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.sw.bb_crit_edge32:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.sw.bb_crit_edge:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

sw.bb:                                            ; preds = %if.then19.sw.bb_crit_edge, %if.then19.sw.bb_crit_edge32, %if.then19.sw.bb_crit_edge33, %if.then19.sw.bb_crit_edge34, %if.then19.sw.bb_crit_edge35, %if.then19.sw.bb_crit_edge36
  %or = or i32 %val.0, 65280
  br label %if.end20

if.end20:                                         ; preds = %sw.bb, %if.then19.if.end20_crit_edge, %if.end16.if.end20_crit_edge
  %val.1 = phi i32 [ %val.0, %if.then19.if.end20_crit_edge ], [ %or, %sw.bb ], [ %val.0, %if.end16.if.end20_crit_edge ]
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 134, i32 noundef %val.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_pcm_new(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %rtd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1.i, align 4
  %priv2.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %2 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2.i, align 4
  %tobool.not.i.i = icmp eq ptr %mod, null
  br i1 %tobool.not.i.i, label %entry.rsnd_ssi_parent_attach.exit_crit_edge, label %__rsnd_ssi_is_pin_sharing.exit.i

entry.rsnd_ssi_parent_attach.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_parent_attach.exit

__rsnd_ssi_is_pin_sharing.exit.i:                 ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_parent_attach.exit_crit_edge, label %if.end.i

__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_parent_attach.exit_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_parent_attach.exit

if.end.i:                                         ; preds = %__rsnd_ssi_is_pin_sharing.exit.i
  %clk_master.i = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %clk_master.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %clk_master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i, label %if.end.i.rsnd_ssi_parent_attach.exit_crit_edge, label %if.end5.i

if.end.i.rsnd_ssi_parent_attach.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_parent_attach.exit

if.end5.i:                                        ; preds = %if.end.i
  %arrayidx4.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i30.i = icmp eq ptr %8, null
  br i1 %tobool.not.i30.i, label %if.end5.i.cleanup.i.i_crit_edge, label %if.end.i31.i

if.end5.i.cleanup.i.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i31.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %8) #9
  %shl.i.i = shl nuw i32 1, %call.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i31.i, %if.end5.i.cleanup.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %shl.i.i, %if.end.i31.i ], [ 0, %if.end5.i.cleanup.i.i_crit_edge ]
  %arrayidx4.1.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %9 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx4.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.1.i.i, label %cleanup.i.i.cleanup.1.i.i_crit_edge, label %if.end.1.i.i

cleanup.i.i.cleanup.1.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i.i

if.end.1.i.i:                                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %10) #9
  %shl.1.i.i = shl nuw i32 1, %call.1.i.i
  %or.1.i.i = or i32 %shl.1.i.i, %mask.1.i.i
  br label %cleanup.1.i.i

cleanup.1.i.i:                                    ; preds = %if.end.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge
  %mask.1.1.i.i = phi i32 [ %or.1.i.i, %if.end.1.i.i ], [ %mask.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge ]
  %arrayidx4.2.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.2.i.i, label %cleanup.1.i.i.rsnd_ssi_multi_secondaries.exit.i_crit_edge, label %if.end.2.i.i

cleanup.1.i.i.rsnd_ssi_multi_secondaries.exit.i_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries.exit.i

if.end.2.i.i:                                     ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %12) #9
  %shl.2.i.i = shl nuw i32 1, %call.2.i.i
  %or.2.i.i = or i32 %shl.2.i.i, %mask.1.1.i.i
  br label %rsnd_ssi_multi_secondaries.exit.i

rsnd_ssi_multi_secondaries.exit.i:                ; preds = %if.end.2.i.i, %cleanup.1.i.i.rsnd_ssi_multi_secondaries.exit.i_crit_edge
  %mask.1.2.i.i = phi i32 [ %or.2.i.i, %if.end.2.i.i ], [ %mask.1.1.i.i, %cleanup.1.i.i.rsnd_ssi_multi_secondaries.exit.i_crit_edge ]
  %call7.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %mod) #9
  %shl.i = shl nuw i32 1, %call7.i
  %and.i = and i32 %shl.i, %mask.1.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %rsnd_ssi_multi_secondaries.exit.i.rsnd_ssi_parent_attach.exit_crit_edge

rsnd_ssi_multi_secondaries.exit.i.rsnd_ssi_parent_attach.exit_crit_edge: ; preds = %rsnd_ssi_multi_secondaries.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_parent_attach.exit

if.end10.i:                                       ; preds = %rsnd_ssi_multi_secondaries.exit.i
  %call11.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %mod) #9
  %13 = zext i32 %call11.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call11.i, label %if.end10.i.rsnd_ssi_parent_attach.exit_crit_edge [
    i32 1, label %if.end10.i.sw.bb.i_crit_edge
    i32 2, label %if.end10.i.sw.bb.i_crit_edge1
    i32 9, label %if.end10.i.sw.bb.i_crit_edge2
    i32 4, label %sw.bb14.i
    i32 8, label %sw.bb17.i
  ]

if.end10.i.sw.bb.i_crit_edge2:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end10.i.sw.bb.i_crit_edge1:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end10.i.sw.bb.i_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

if.end10.i.rsnd_ssi_parent_attach.exit_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_parent_attach.exit

sw.bb.i:                                          ; preds = %if.end10.i.sw.bb.i_crit_edge, %if.end10.i.sw.bb.i_crit_edge1, %if.end10.i.sw.bb.i_crit_edge2
  %ssi_nr.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %ssi_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssi_nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.not.i.i = icmp sgt i32 %15, 0
  br i1 %cmp1.not.i.i, label %sw.bb.i.rsnd_ssi_mod_get.exit.i_crit_edge, label %do.end.i.i, !prof !122

sw.bb.i.rsnd_ssi_mod_get.exit.i_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_mod_get.exit.i

do.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %rsnd_ssi_mod_get.exit.i

rsnd_ssi_mod_get.exit.i:                          ; preds = %do.end.i.i, %sw.bb.i.rsnd_ssi_mod_get.exit.i_crit_edge
  %ssi.i.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %ssi.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssi.i.i, align 4
  br label %cleanup.sink.split.i

sw.bb14.i:                                        ; preds = %if.end10.i
  %ssi_nr.i33.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %ssi_nr.i33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ssi_nr.i33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp1.not.i34.i = icmp sgt i32 %19, 3
  br i1 %cmp1.not.i34.i, label %sw.bb14.i.rsnd_ssi_mod_get.exit38.i_crit_edge, label %do.end.i35.i, !prof !122

sw.bb14.i.rsnd_ssi_mod_get.exit38.i_crit_edge:    ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_mod_get.exit38.i

do.end.i35.i:                                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %rsnd_ssi_mod_get.exit38.i

rsnd_ssi_mod_get.exit38.i:                        ; preds = %do.end.i35.i, %sw.bb14.i.rsnd_ssi_mod_get.exit38.i_crit_edge
  %20 = phi i32 [ 0, %do.end.i35.i ], [ 3, %sw.bb14.i.rsnd_ssi_mod_get.exit38.i_crit_edge ]
  %ssi.i36.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %ssi.i36.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ssi.i36.i, align 4
  %add.ptr.i.i = getelementptr %struct.rsnd_ssi, ptr %22, i32 %20
  br label %cleanup.sink.split.i

sw.bb17.i:                                        ; preds = %if.end10.i
  %ssi_nr.i39.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %ssi_nr.i39.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ssi_nr.i39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp1.not.i40.i = icmp sgt i32 %24, 7
  br i1 %cmp1.not.i40.i, label %sw.bb17.i.rsnd_ssi_mod_get.exit45.i_crit_edge, label %do.end.i41.i, !prof !122

sw.bb17.i.rsnd_ssi_mod_get.exit45.i_crit_edge:    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_mod_get.exit45.i

do.end.i41.i:                                     ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1136, i32 noundef 9, ptr noundef null) #9
  br label %rsnd_ssi_mod_get.exit45.i

rsnd_ssi_mod_get.exit45.i:                        ; preds = %do.end.i41.i, %sw.bb17.i.rsnd_ssi_mod_get.exit45.i_crit_edge
  %25 = phi i32 [ 0, %do.end.i41.i ], [ 7, %sw.bb17.i.rsnd_ssi_mod_get.exit45.i_crit_edge ]
  %ssi.i42.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %ssi.i42.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ssi.i42.i, align 4
  %add.ptr.i43.i = getelementptr %struct.rsnd_ssi, ptr %27, i32 %25
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %rsnd_ssi_mod_get.exit45.i, %rsnd_ssi_mod_get.exit38.i, %rsnd_ssi_mod_get.exit.i
  %.sink.i = phi ptr [ %17, %rsnd_ssi_mod_get.exit.i ], [ %add.ptr.i.i, %rsnd_ssi_mod_get.exit38.i ], [ %add.ptr.i43.i, %rsnd_ssi_mod_get.exit45.i ]
  %call13.i = tail call i32 @rsnd_dai_connect(ptr noundef %.sink.i, ptr noundef %io, i32 noundef 10) #9
  br label %rsnd_ssi_parent_attach.exit

rsnd_ssi_parent_attach.exit:                      ; preds = %cleanup.sink.split.i, %if.end10.i.rsnd_ssi_parent_attach.exit_crit_edge, %rsnd_ssi_multi_secondaries.exit.i.rsnd_ssi_parent_attach.exit_crit_edge, %if.end.i.rsnd_ssi_parent_attach.exit_crit_edge, %__rsnd_ssi_is_pin_sharing.exit.i.rsnd_ssi_parent_attach.exit_crit_edge, %entry.rsnd_ssi_parent_attach.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_hw_params(ptr nocapture noundef readnone %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %3, %entry.if.then.i.i_crit_edge ], [ %6, %for.inc.i.i.if.then.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #9, !range !124
  %add.i.i = or i32 %4, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call2 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #9
  %chan_width = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %chan_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %8)
  %cmp = icmp ugt i32 %call2, %8
  br i1 %cmp, label %if.then, label %params_format.exit.cleanup_crit_edge

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdai1, align 4
  %priv4 = getelementptr inbounds %struct.rsnd_dai, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv4, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.36) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then, %params_format.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %params_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_fallback(ptr noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %ops = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rsnd_ssi_pio_ops, ptr %ops, align 4
  %call = tail call ptr @rsnd_mod_name(ptr noundef %mod) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.38, ptr noundef %call) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rsnd_ssi_get_status(ptr noundef %mod, ptr noundef %io, i32 noundef %type) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %type)
  %cmp = icmp eq i32 %type, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent_ssi_status = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @rsnd_mod_get_status(ptr noundef %mod, ptr noundef %io, i32 noundef %type) #9
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %parent_ssi_status, %if.then ], [ %call, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_ssi_debug_info(ptr noundef %m, ptr noundef %io, ptr noundef %mod) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %clk_master = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %clk_master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool.not, ptr @.str.42, ptr @.str.41
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond) #9
  %3 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %clk_master, align 4
  %bf.lshr3 = lshr i8 %bf.load2, 6
  %bf.clear = and i8 %bf.lshr3, 1
  %bf.cast4 = zext i8 %bf.clear to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.43, i32 noundef %bf.cast4) #9
  %4 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load5 = load i8, ptr %clk_master, align 4
  %bf.lshr6 = lshr i8 %bf.load5, 5
  %bf.clear7 = and i8 %bf.lshr6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.44, i32 noundef %bf.cast8) #9
  %tobool.not.i = icmp eq ptr %mod, null
  br i1 %tobool.not.i, label %__rsnd_ssi_is_pin_sharing.exit.thread, label %if.end.i39

__rsnd_ssi_is_pin_sharing.exit.thread:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef 0) #9
  br label %__rsnd_ssi_is_pin_sharing.exit41

if.end.i39:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.45, i32 noundef %and.i) #9
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i38 = and i32 %8, 1
  %9 = xor i32 %and.i38, 1
  br label %__rsnd_ssi_is_pin_sharing.exit41

__rsnd_ssi_is_pin_sharing.exit41:                 ; preds = %if.end.i39, %__rsnd_ssi_is_pin_sharing.exit.thread
  %retval.0.i40 = phi i32 [ %9, %if.end.i39 ], [ 1, %__rsnd_ssi_is_pin_sharing.exit.thread ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.46, i32 noundef %retval.0.i40) #9
  %arrayidx4.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i42 = icmp eq ptr %11, null
  br i1 %tobool.not.i42, label %__rsnd_ssi_is_pin_sharing.exit41.cleanup.i_crit_edge, label %if.end.i43

__rsnd_ssi_is_pin_sharing.exit41.cleanup.i_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i43:                                       ; preds = %__rsnd_ssi_is_pin_sharing.exit41
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %11) #9
  %shl.i = shl nuw i32 1, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i43, %__rsnd_ssi_is_pin_sharing.exit41.cleanup.i_crit_edge
  %mask.1.i = phi i32 [ %shl.i, %if.end.i43 ], [ 0, %__rsnd_ssi_is_pin_sharing.exit41.cleanup.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %12 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %13, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %13) #9
  %shl.1.i = shl nuw i32 1, %call.1.i
  %or.1.i = or i32 %shl.1.i, %mask.1.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %mask.1.1.i = phi i32 [ %or.1.i, %if.end.1.i ], [ %mask.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %15, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge, label %if.end.2.i

cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries.exit

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %15) #9
  %shl.2.i = shl nuw i32 1, %call.2.i
  %or.2.i = or i32 %shl.2.i, %mask.1.1.i
  br label %rsnd_ssi_multi_secondaries.exit

rsnd_ssi_multi_secondaries.exit:                  ; preds = %if.end.2.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge
  %mask.1.2.i = phi i32 [ %or.2.i, %if.end.2.i ], [ %mask.1.1.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge ]
  %call12 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call12
  %and = and i32 %shl, %mask.1.2.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.47, i32 noundef %and) #9
  %call13 = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %io) #9
  %call14 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %io) #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.48, i32 noundef %call13, i32 noundef %call14) #9
  %chan = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 7
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chan, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.49, i32 noundef %17) #9
  %usrcnt = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 10
  %18 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usrcnt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %19) #9
  %call15 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %mul = shl i32 %call15, 6
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %m, ptr noundef %mod, i32 noundef 3, i32 noundef %mul, i32 noundef 64) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_common_probe(ptr noundef %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %arrayidx4.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup.i_crit_edge, label %if.end.i

entry.cleanup.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %3) #9
  %shl.i = shl nuw i32 1, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %entry.cleanup.i_crit_edge
  %mask.1.i = phi i32 [ %shl.i, %if.end.i ], [ 0, %entry.cleanup.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %4 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %5, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #9
  %shl.1.i = shl nuw i32 1, %call.1.i
  %or.1.i = or i32 %shl.1.i, %mask.1.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %mask.1.1.i = phi i32 [ %or.1.i, %if.end.1.i ], [ %mask.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %7, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge, label %if.end.2.i

cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries.exit

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %7) #9
  %shl.2.i = shl nuw i32 1, %call.2.i
  %or.2.i = or i32 %shl.2.i, %mask.1.1.i
  br label %rsnd_ssi_multi_secondaries.exit

rsnd_ssi_multi_secondaries.exit:                  ; preds = %if.end.2.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge
  %mask.1.2.i = phi i32 [ %or.2.i, %if.end.2.i ], [ %mask.1.1.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge ]
  %call2 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call2
  %and = and i32 %shl, %mask.1.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge

rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge: ; preds = %rsnd_ssi_multi_secondaries.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %rsnd_ssi_multi_secondaries.exit
  %flags = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and3 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 9
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i16 = icmp eq ptr %13, null
  br i1 %tobool.not.i16, label %if.end.i17, label %if.then5.dev_name.exit_crit_edge

if.then5.dev_name.exit_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i17:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i17, %if.then5.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i17 ], [ %13, %if.then5.dev_name.exit_crit_edge ]
  %call.i18 = tail call i32 @request_threaded_irq(i32 noundef %11, ptr noundef nonnull @rsnd_ssi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %mod) #9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or = or i32 %17, 4
  store i32 %or, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end.cleanup_crit_edge, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i18, %dev_name.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dma_attach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_interrupt(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_interrupt(ptr noundef %data, ptr noundef nonnull @__rsnd_ssi_interrupt) #9
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__rsnd_ssi_interrupt(ptr noundef %mod, ptr noundef %io) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %lock = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %call3 = tail call i32 @rsnd_io_is_working(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end28.thread, label %if.end

if.end28.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %if.end32

if.end:                                           ; preds = %entry
  %cmp.i = icmp ne ptr %5, @rsnd_ssi_dma_ops
  %call.i = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 178) #9
  %tobool5.not.not = xor i1 %cmp.i, true
  %and = and i32 %call.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool5.not.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %substream.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %6 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then7.cond.end.i_crit_edge, label %cond.true.i

if.then7.cond.end.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %runtime2.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then7.cond.end.i_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ null, %if.then7.cond.end.i_crit_edge ]
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond.i, i32 0, i32 50
  %10 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_area.i, align 4
  %byte_pos.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 11
  %12 = ptrtoint ptr %byte_pos.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %byte_pos.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 %13
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond.i, i32 0, i32 12
  %14 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format.i, align 4
  %call.i49 = tail call i32 @snd_pcm_format_width(i32 noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call.i49)
  %cmp.i50 = icmp eq i32 %call.i49, 24
  %spec.select.i = select i1 %cmp.i50, i32 8, i32 0
  %rdai.i = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %16 = ptrtoint ptr %rdai.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rdai.i, align 4
  %playback.i = getelementptr inbounds %struct.rsnd_dai, ptr %17, i32 0, i32 1
  %cmp5.i = icmp eq ptr %playback.i, %io
  br i1 %cmp5.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr3.i, align 4
  %shl.i = shl i32 %19, %spec.select.i
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 179, i32 noundef %shl.i) #9
  br label %if.end8.i

if.else.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call i32 @rsnd_mod_read(ptr noundef %mod, i32 noundef 180) #9
  %shr.i = lshr i32 %call7.i, %spec.select.i
  %20 = ptrtoint ptr %add.ptr3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %add.ptr3.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else.i, %if.then6.i
  %21 = ptrtoint ptr %byte_pos.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %byte_pos.i, align 4
  %add.i = add i32 %22, 4
  %next_period_byte.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 13
  %23 = ptrtoint ptr %next_period_byte.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_period_byte.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %24)
  %cmp10.not.i = icmp slt i32 %add.i, %24
  br i1 %cmp10.not.i, label %if.end8.i.rsnd_ssi_pio_interrupt.exit_crit_edge, label %if.then11.i

if.end8.i.rsnd_ssi_pio_interrupt.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_pio_interrupt.exit

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %byte_per_period.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 12
  %25 = ptrtoint ptr %byte_per_period.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %byte_per_period.i, align 4
  %div.i = sdiv i32 %add.i, %26
  %periods.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond.i, i32 0, i32 17
  %27 = ptrtoint ptr %periods.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %periods.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %28)
  %cmp12.not.i = icmp ult i32 %div.i, %28
  %spec.select45.i = select i1 %cmp12.not.i, i32 %add.i, i32 0
  %div.op.i = add nuw i32 %div.i, 1
  %add15.i = select i1 %cmp12.not.i, i32 %div.op.i, i32 1
  %mul.i = mul i32 %add15.i, %26
  %29 = ptrtoint ptr %next_period_byte.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul.i, ptr %next_period_byte.i, align 4
  br label %rsnd_ssi_pio_interrupt.exit

rsnd_ssi_pio_interrupt.exit:                      ; preds = %if.then11.i, %if.end8.i.rsnd_ssi_pio_interrupt.exit_crit_edge
  %byte_pos4.1.i = phi i32 [ %spec.select45.i, %if.then11.i ], [ %add.i, %if.end8.i.rsnd_ssi_pio_interrupt.exit_crit_edge ]
  %30 = xor i1 %cmp10.not.i, true
  %31 = ptrtoint ptr %byte_pos.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 %byte_pos4.1.i, ptr %byte_pos.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %rsnd_ssi_pio_interrupt.exit, %if.end.if.end9_crit_edge
  %elapsed.0 = phi i1 [ false, %if.end.if.end9_crit_edge ], [ %30, %rsnd_ssi_pio_interrupt.exit ]
  %and12 = and i32 %call.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %or.cond48 = select i1 %cmp.i, i1 true, i1 %tobool13.not
  br i1 %or.cond48, label %if.end9.rsnd_ssi_interrupt_out_crit_edge, label %do.end

if.end9.rsnd_ssi_interrupt_out_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_interrupt_out

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.11, ptr noundef %call16, i32 noundef %call.i) #12
  br label %rsnd_ssi_interrupt_out

rsnd_ssi_interrupt_out:                           ; preds = %do.end, %if.end9.rsnd_ssi_interrupt_out_crit_edge
  %stop.0.off0 = phi i32 [ 1, %do.end ], [ 0, %if.end9.rsnd_ssi_interrupt_out_crit_edge ]
  %call20 = tail call zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef %mod) #9
  %conv = zext i1 %call20 to i32
  %or = or i32 %stop.0.off0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool23.not = icmp eq i32 %or, 0
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 178, i32 noundef 0) #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br i1 %elapsed.0, label %if.then27, label %if.end28

if.then27:                                        ; preds = %rsnd_ssi_interrupt_out
  tail call void @rsnd_dai_period_elapsed(ptr noundef %io) #9
  br i1 %tobool23.not, label %if.then27.if.end32_crit_edge, label %if.then27.if.then30_crit_edge

if.then27.if.then30_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.then27.if.end32_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end28:                                         ; preds = %rsnd_ssi_interrupt_out
  br i1 %tobool23.not, label %if.end28.if.end32_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %if.then27.if.then30_crit_edge
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %32 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %substream, align 4
  %call31 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %33) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge, %if.then27.if.end32_crit_edge, %if.end28.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rsnd_ssiu_busif_err_status_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dai_period_elapsed(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_ssi_run_mods(ptr noundef %io) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %call.i = tail call i32 @rsnd_runtime_is_multi_ssi(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge, label %if.then.i

entry.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit

if.then.i:                                        ; preds = %entry
  %arrayidx4.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.then.i.cleanup.i.i_crit_edge, label %if.end.i.i

if.then.i.cleanup.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %5) #9
  %shl.i.i = shl nuw i32 1, %call.i.i
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %if.then.i.cleanup.i.i_crit_edge
  %mask.1.i.i = phi i32 [ %shl.i.i, %if.end.i.i ], [ 0, %if.then.i.cleanup.i.i_crit_edge ]
  %arrayidx4.1.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %arrayidx4.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.1.i.i, label %cleanup.i.i.cleanup.1.i.i_crit_edge, label %if.end.1.i.i

cleanup.i.i.cleanup.1.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i.i

if.end.1.i.i:                                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %7) #9
  %shl.1.i.i = shl nuw i32 1, %call.1.i.i
  %or.1.i.i = or i32 %shl.1.i.i, %mask.1.i.i
  br label %cleanup.1.i.i

cleanup.1.i.i:                                    ; preds = %if.end.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge
  %mask.1.1.i.i = phi i32 [ %or.1.i.i, %if.end.1.i.i ], [ %mask.1.i.i, %cleanup.i.i.cleanup.1.i.i_crit_edge ]
  %arrayidx4.2.i.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %8 = ptrtoint ptr %arrayidx4.2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.2.i.i, label %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge, label %if.end.2.i.i

cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge: ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries_runtime.exit

if.end.2.i.i:                                     ; preds = %cleanup.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %9) #9
  %shl.2.i.i = shl nuw i32 1, %call.2.i.i
  %or.2.i.i = or i32 %shl.2.i.i, %mask.1.1.i.i
  br label %rsnd_ssi_multi_secondaries_runtime.exit

rsnd_ssi_multi_secondaries_runtime.exit:          ; preds = %if.end.2.i.i, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge, %entry.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge ], [ %or.2.i.i, %if.end.2.i.i ], [ %mask.1.1.i.i, %cleanup.1.i.i.rsnd_ssi_multi_secondaries_runtime.exit_crit_edge ]
  %call3 = tail call i32 @rsnd_mod_id(ptr noundef %1) #9
  %shl = shl nuw i32 1, %call3
  %or = or i32 %shl, %retval.0.i
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %rsnd_ssi_multi_secondaries_runtime.exit.if.end_crit_edge, label %if.then

rsnd_ssi_multi_secondaries_runtime.exit.if.end_crit_edge: ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %rsnd_ssi_multi_secondaries_runtime.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %3) #9
  %shl5 = shl nuw i32 1, %call4
  %or6 = or i32 %shl5, %or
  br label %if.end

if.end:                                           ; preds = %if.then, %rsnd_ssi_multi_secondaries_runtime.exit.if.end_crit_edge
  %mods.0 = phi i32 [ %or6, %if.then ], [ %or, %rsnd_ssi_multi_secondaries_runtime.exit.if.end_crit_edge ]
  ret i32 %mods.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_ssi_master_clk_start(ptr noundef %mod, ptr noundef %io) unnamed_addr #3 align 64 {
entry:
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call = tail call i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef %io, ptr noundef null) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #9
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %idx, align 4, !annotation !125
  %7 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %8, i32 0, i32 1
  %cmp = icmp ne ptr %playback, %io
  %. = zext i1 %cmp to i32
  %call7 = tail call i32 @rsnd_src_get_rate(ptr noundef %3, ptr noundef %io, i32 noundef %.) #9
  %clk_master = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %clk_master to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %clk_master, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %mod, null
  br i1 %tobool.not.i, label %if.end.if.end11_crit_edge, label %__rsnd_ssi_is_pin_sharing.exit

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

__rsnd_ssi_is_pin_sharing.exit:                   ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 1
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not = icmp eq i32 %and.i, 0
  br i1 %tobool9.not, label %__rsnd_ssi_is_pin_sharing.exit.if.end11_crit_edge, label %__rsnd_ssi_is_pin_sharing.exit.cleanup_crit_edge

__rsnd_ssi_is_pin_sharing.exit.cleanup_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

__rsnd_ssi_is_pin_sharing.exit.if.end11_crit_edge: ; preds = %__rsnd_ssi_is_pin_sharing.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %__rsnd_ssi_is_pin_sharing.exit.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %arrayidx4.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4.i, align 4
  %tobool.not.i109 = icmp eq ptr %13, null
  br i1 %tobool.not.i109, label %if.end11.cleanup.i_crit_edge, label %if.end.i110

if.end11.cleanup.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end.i110:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %13) #9
  %shl.i = shl nuw i32 1, %call.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i110, %if.end11.cleanup.i_crit_edge
  %mask.1.i = phi i32 [ %shl.i, %if.end.i110 ], [ 0, %if.end11.cleanup.i_crit_edge ]
  %arrayidx4.1.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %15, null
  br i1 %tobool.not.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.1.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %15) #9
  %shl.1.i = shl nuw i32 1, %call.1.i
  %or.1.i = or i32 %shl.1.i, %mask.1.i
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.end.1.i, %cleanup.i.cleanup.1.i_crit_edge
  %mask.1.1.i = phi i32 [ %or.1.i, %if.end.1.i ], [ %mask.1.i, %cleanup.i.cleanup.1.i_crit_edge ]
  %arrayidx4.2.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %17, null
  br i1 %tobool.not.2.i, label %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge, label %if.end.2.i

cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge: ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_ssi_multi_secondaries.exit

if.end.2.i:                                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.2.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %17) #9
  %shl.2.i = shl nuw i32 1, %call.2.i
  %or.2.i = or i32 %shl.2.i, %mask.1.1.i
  br label %rsnd_ssi_multi_secondaries.exit

rsnd_ssi_multi_secondaries.exit:                  ; preds = %if.end.2.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge
  %mask.1.2.i = phi i32 [ %or.2.i, %if.end.2.i ], [ %mask.1.1.i, %cleanup.1.i.rsnd_ssi_multi_secondaries.exit_crit_edge ]
  %call13 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #9
  %shl = shl nuw i32 1, %call13
  %and = and i32 %shl, %mask.1.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end16, label %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge

rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge: ; preds = %rsnd_ssi_multi_secondaries.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %rsnd_ssi_multi_secondaries.exit
  %call17 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %converted_chan = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 7
  %18 = ptrtoint ptr %converted_chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %converted_chan, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end16.if.end20_crit_edge
  %chan.0 = phi i32 [ %19, %if.then19 ], [ %call, %if.end16.if.end20_crit_edge ]
  %call21 = tail call i32 @rsnd_channel_normalization(i32 noundef %chan.0) #9
  %usrcnt = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 10
  %20 = ptrtoint ptr %usrcnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %usrcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp22.not = icmp eq i32 %21, 0
  br i1 %cmp22.not, label %if.end35, label %if.then23

if.then23:                                        ; preds = %if.end20
  %rate24 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 8
  %22 = ptrtoint ptr %rate24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rate24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call7)
  %cmp25.not = icmp eq i32 %23, %call7
  br i1 %cmp25.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end27:                                         ; preds = %if.then23
  %chan28 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 7
  %24 = ptrtoint ptr %chan28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chan28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %call21)
  %cmp29.not = icmp eq i32 %25, %call21
  br i1 %cmp29.not, label %if.end27.cleanup_crit_edge, label %do.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  %call36 = call i32 @rsnd_ssi_clk_query(ptr noundef %1, i32 noundef %call7, i32 noundef %call21, ptr noundef nonnull %idx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call43 = call i32 @rsnd_adg_ssi_clk_try_start(ptr noundef %mod, i32 noundef %call36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  %call47 = call fastcc i32 @rsnd_rdai_width_to_swl(ptr noundef %1)
  %26 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %idx, align 4
  %shl50 = shl i32 %27, 4
  %or49 = or i32 %call47, %shl50
  %or51 = or i32 %or49, -2147434496
  %cr_clk = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 3
  %28 = ptrtoint ptr %cr_clk to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or51, ptr %cr_clk, align 4
  %wsr = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 6
  %29 = ptrtoint ptr %wsr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 256, ptr %wsr, align 4
  %rate52 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 8
  %30 = ptrtoint ptr %rate52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call7, ptr %rate52, align 4
  %chan53 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 7
  %31 = ptrtoint ptr %chan53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call21, ptr %chan53, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_ssi_master_clk_start.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_ssi_master_clk_start, %if.then60)) #9
          to label %cleanup [label %if.then60], !srcloc !126

if.then60:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call ptr @rsnd_mod_name(ptr noundef %mod) #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_ssi_master_clk_start.__UNIQUE_ID_ddebug242, ptr noundef %dev2, ptr noundef nonnull @.str.25, ptr noundef %call61, i32 noundef %call21, i32 noundef %call7) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %if.end46, %if.end42.cleanup_crit_edge, %do.end41, %do.end33, %if.end27.cleanup_crit_edge, %do.end, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge, %__rsnd_ssi_is_pin_sharing.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end33 ], [ -5, %do.end41 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %__rsnd_ssi_is_pin_sharing.exit.cleanup_crit_edge ], [ 0, %rsnd_ssi_multi_secondaries.exit.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_ssi_config_init(ptr noundef %mod, ptr noundef %io) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai1 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai1, align 4
  %priv2 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %6 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %runtime5 = getelementptr inbounds %struct.snd_pcm_substream, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %runtime5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime5, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %9, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %cr_own6 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 2
  %10 = ptrtoint ptr %cr_own6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_own6, align 4
  %cr_mode7 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 4
  %12 = ptrtoint ptr %cr_mode7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr_mode7, align 4
  %wsr8 = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 6
  %14 = ptrtoint ptr %wsr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wsr8, align 4
  %call = tail call i32 @rsnd_runtime_is_tdm(ptr noundef %io) #9
  %call9 = tail call i32 @rsnd_runtime_is_tdm_split(ptr noundef %io) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %cond.end.if.end17_crit_edge, label %do.body

cond.end.if.end17_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.body:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_ssi_config_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_ssi_config_init, %if.then16)) #9
          to label %if.end17 [label %if.then16], !srcloc !126

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_ssi_config_init.__UNIQUE_ID_ddebug243, ptr noundef %dev3, ptr noundef nonnull @.str.29) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %do.body, %cond.end.if.end17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool18.not = icmp eq i32 %call9, 0
  br i1 %tobool18.not, label %if.end17.if.end36_crit_edge, label %do.body20

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_ssi_config_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_ssi_config_init, %if.then32)) #9
          to label %if.end36 [label %if.then32], !srcloc !126

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_ssi_config_init.__UNIQUE_ID_ddebug244, ptr noundef %dev3, ptr noundef nonnull @.str.30) #9
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %do.body20, %if.end17.if.end36_crit_edge
  %16 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv2, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i = tail call i32 @rsnd_rdai_width_ctrl(ptr noundef %1, i32 noundef 0) #9
  %20 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call.i, label %do.end.i [
    i32 32, label %if.end36.rsnd_rdai_width_to_swl.exit_crit_edge
    i32 24, label %sw.bb3.i
    i32 16, label %sw.bb4.i
  ]

if.end36.rsnd_rdai_width_to_swl.exit_crit_edge:   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_rdai_width_to_swl.exit

sw.bb3.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_rdai_width_to_swl.exit

sw.bb4.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %rsnd_rdai_width_to_swl.exit

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.26, i32 noundef %call.i) #12
  br label %rsnd_rdai_width_to_swl.exit

rsnd_rdai_width_to_swl.exit:                      ; preds = %do.end.i, %sw.bb4.i, %sw.bb3.i, %if.end36.rsnd_rdai_width_to_swl.exit_crit_edge
  %retval.0.i143 = phi i32 [ -2147483648, %do.end.i ], [ -2147418112, %sw.bb4.i ], [ -2147352576, %sw.bb3.i ], [ -2147287040, %if.end36.rsnd_rdai_width_to_swl.exit_crit_edge ]
  %or38 = or i32 %retval.0.i143, %11
  %bit_clk_inv = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %bit_clk_inv to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %bit_clk_inv, align 4
  %22 = and i8 %bf.load, 64
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 7
  %25 = or i32 %or38, %24
  %26 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool47.not = icmp eq i8 %26, 0
  %or50 = or i32 %25, 4096
  %spec.select137 = select i1 %tobool10.not, i32 %or50, i32 %25
  %cr_own.1 = select i1 %tobool47.not, i32 %25, i32 %spec.select137
  %27 = and i8 %bf.load, 8
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 7
  %30 = and i8 %bf.load, 16
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 4
  %33 = or i32 %32, %29
  %34 = or i32 %33, %cr_own.1
  %35 = select i1 %tobool10.not, i1 %tobool18.not, i1 false
  %or72 = or i32 %34, 12582912
  %cr_own.4 = select i1 %35, i32 %34, i32 %or72
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %37, %mod
  br i1 %cmp, label %rsnd_rdai_width_to_swl.exit.init_end_crit_edge, label %if.end76

rsnd_rdai_width_to_swl.exit.init_end_crit_edge:   ; preds = %rsnd_rdai_width_to_swl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %init_end

if.end76:                                         ; preds = %rsnd_rdai_width_to_swl.exit
  %38 = ptrtoint ptr %rdai1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdai1, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %39, i32 0, i32 1
  %cmp78 = icmp eq ptr %playback, %io
  %or80 = or i32 %cr_own.4, 2
  %spec.select139 = select i1 %cmp78, i32 %or80, i32 %cr_own.4
  %and = and i32 %spec.select139, -3670017
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 12
  %40 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %format, align 4
  %call82 = tail call i32 @snd_pcm_format_width(i32 noundef %41) #9
  %call82.op = add i32 %call82, -8
  %42 = select i1 %tobool18.not, i32 %call82.op, i32 24
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 29)
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %43, label %if.end76.sw.epilog_crit_edge [
    i32 3, label %sw.bb91
    i32 1, label %sw.bb87
    i32 2, label %sw.bb89
  ]

if.end76.sw.epilog_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %or88 = or i32 %and, 524288
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %or90 = or i32 %and, 2621440
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %or92 = or i32 %and, 3145728
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb91, %sw.bb89, %sw.bb87, %if.end76.sw.epilog_crit_edge
  %cr_own.6 = phi i32 [ %or92, %sw.bb91 ], [ %or90, %sw.bb89 ], [ %or88, %sw.bb87 ], [ %and, %if.end76.sw.epilog_crit_edge ]
  %ops.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 2
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %cmp.i.not = icmp eq ptr %46, @rsnd_ssi_dma_ops
  %. = select i1 %cmp.i.not, i32 469762048, i32 16777216
  br label %init_end

init_end:                                         ; preds = %sw.epilog, %rsnd_rdai_width_to_swl.exit.init_end_crit_edge
  %cr_own.7 = phi i32 [ %cr_own.4, %rsnd_rdai_width_to_swl.exit.init_end_crit_edge ], [ %cr_own.6, %sw.epilog ]
  %cr_mode.0 = phi i32 [ %13, %rsnd_rdai_width_to_swl.exit.init_end_crit_edge ], [ %., %sw.epilog ]
  %brmerge = xor i1 %35, true
  %or71 = zext i1 %brmerge to i32
  %wsr.0 = or i32 %15, %or71
  %47 = ptrtoint ptr %cr_own6 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cr_own.7, ptr %cr_own6, align 4
  %48 = ptrtoint ptr %cr_mode7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %cr_mode.0, ptr %cr_mode7, align 4
  %49 = ptrtoint ptr %wsr8 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %wsr.0, ptr %wsr8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_for_ssi_with_params(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_get_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm_split(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_channel_normalization(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_ssi_clk_try_start(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_rdai_width_to_swl(ptr noundef %rdai) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %rdai, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @rsnd_rdai_width_ctrl(ptr noundef %rdai, i32 noundef 0) #9
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call, label %do.end [
    i32 32, label %entry.cleanup_crit_edge
    i32 24, label %sw.bb3
    i32 16, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %call) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb4, %sw.bb3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 65536, %sw.bb4 ], [ 131072, %sw.bb3 ], [ 196608, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_is_tdm(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_ssi_clk_stop(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_channels_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_rdai_ssi_lane_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_ssi_pio_init(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readnone %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, %mod
  br i1 %cmp, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %byte_pos = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 11
  %6 = ptrtoint ptr %byte_pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %byte_pos, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 16
  %7 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 15
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels, align 8
  %mul = mul i32 %10, %8
  %sample_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 22
  %11 = ptrtoint ptr %sample_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sample_bits.i, align 4
  %div1.i = lshr i32 %12, 3
  %mul4 = mul i32 %mul, %div1.i
  %byte_per_period = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 12
  %13 = ptrtoint ptr %byte_per_period to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul4, ptr %byte_per_period, align 4
  %next_period_byte = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 13
  %14 = ptrtoint ptr %next_period_byte to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul4, ptr %next_period_byte, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %call6 = tail call i32 @rsnd_ssi_init(ptr noundef %mod, ptr noundef %io, ptr noundef %priv)
  ret i32 %call6
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rsnd_ssi_pio_pointer(ptr noundef %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef writeonly %pointer) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %byte_pos = getelementptr inbounds %struct.rsnd_ssi, ptr %mod, i32 0, i32 11
  %4 = ptrtoint ptr %byte_pos to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %byte_pos, align 4
  %mul.i = shl i32 %5, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  %8 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div.i, ptr %pointer, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = distinct !{null, !1, !"ssi_clk_mul_table", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/ssi.c", i32 231, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1112, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1120, i32 33}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1136, i32 6}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1189, i32 38}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1199, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1202, i32 27}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1212, i32 33}
!16 = distinct !{null, !17, !"types", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/rcar/ssi.c", i32 168, i32 34}
!18 = !{ptr @rsnd_ssi_dma_ops, !19, !"rsnd_ssi_dma_ops", i1 false, i1 false}
!19 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1053, i32 28}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1017, i32 20}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1017, i32 28}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1019, i32 20}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1019, i32 27}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/sh/rcar/ssi.c", i32 689, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__rsnd_ssi_interrupt._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @__rsnd_ssi_interrupt._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sh/rcar/ssi.c", i32 294, i32 4}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rsnd_ssi_master_clk_start._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @rsnd_ssi_master_clk_start._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sh/rcar/ssi.c", i32 299, i32 4}
!43 = !{ptr @rsnd_ssi_master_clk_start._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @rsnd_ssi_master_clk_start._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sh/rcar/ssi.c", i32 308, i32 3}
!47 = !{ptr @rsnd_ssi_master_clk_start._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rsnd_ssi_master_clk_start._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/sh/rcar/ssi.c", i32 332, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rsnd_ssi_master_clk_start.__UNIQUE_ID_ddebug242, !50, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sh/rcar/ssi.c", i32 223, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rsnd_rdai_width_to_swl._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rsnd_rdai_width_to_swl._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sh/rcar/ssi.c", i32 378, i32 3}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @rsnd_ssi_config_init.__UNIQUE_ID_ddebug243, !59, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sh/rcar/ssi.c", i32 380, i32 3}
!64 = !{ptr @rsnd_ssi_config_init.__UNIQUE_ID_ddebug244, !63, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sh/rcar/ssi.c", i32 506, i32 3}
!67 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rsnd_ssi_quit._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rsnd_ssi_quit._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sh/rcar/ssi.c", i32 163, i32 2}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rsnd_ssi_status_check._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @rsnd_ssi_status_check._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sh/rcar/ssi.c", i32 537, i32 3}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rsnd_ssi_hw_params._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rsnd_ssi_hw_params._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/sh/rcar/ssi.c", i32 993, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rsnd_ssi_fallback._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rsnd_ssi_fallback._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1033, i32 16}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1034, i32 9}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1034, i32 22}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1035, i32 16}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1036, i32 16}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1037, i32 16}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1038, i32 16}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1039, i32 16}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1040, i32 16}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1042, i32 16}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1043, i32 16}
!108 = distinct !{null, !109, !"types", i1 false, i1 false}
!109 = !{!"../sound/soc/sh/rcar/ssi.c", i32 1082, i32 34}
!110 = !{ptr @rsnd_ssi_pio_ops, !111, !"rsnd_ssi_pio_ops", i1 false, i1 false}
!111 = !{!"../sound/soc/sh/rcar/ssi.c", i32 940, i32 28}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 1073205, i32 2146410443}
!122 = !{!"branch_weights", i32 2000, i32 1}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{i32 0, i32 33}
!125 = !{!"auto-init"}
!126 = !{i64 2148756417, i64 2148756422, i64 2148756435, i64 2148756479, i64 2148756513, i64 2148756534}
