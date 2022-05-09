; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/dma.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rsnd_dma_ctrl = type { ptr, i32, i32, i32 }
%struct.rsnd_dma = type { %struct.rsnd_mod, ptr, ptr, i32, i32, %union.anon.95 }
%union.anon.95 = type { %struct.rsnd_dmaen }
%struct.rsnd_dmaen = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_addr = type { i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
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
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"audmapp\00", [24 x i8] zeroinitializer }, align 32
@rsnd_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 884, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma allocate failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsnd_dma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/dma.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rsnd_dma_probe._entry_ptr = internal global ptr @rsnd_dma_probe._entry, section ".printk_index", align 4
@mem = internal global { %struct.rsnd_mod, [40 x i8] } zeroinitializer, align 32
@mem_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rsnd_dmapp_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_dmapp_stop, ptr @rsnd_dmapp_start, ptr @rsnd_dmapp_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_dmapp_debug_info }, [44 x i8] zeroinitializer }, align 32
@rsnd_dmaen_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.23, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_dmaen_start, ptr @rsnd_dmaen_stop, ptr null, ptr null, ptr null, ptr @rsnd_dmaen_pointer, ptr null, ptr @rsnd_dmaen_prepare, ptr @rsnd_dmaen_cleanup, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@rsnd_dma_alloc.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rsnd_dma_alloc\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s %s -> %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_sound,ssiu\00", [16 x i8] zeroinitializer }, align 32
@rsnd_dma_of_path.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsnd_dma_of_path\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"module connection (this is %s)\0A\00", [32 x i8] zeroinitializer }, align 32
@rsnd_dma_of_path.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"  %s%s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" from\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" to\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audmac-pp\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rsnd_dmapp_write.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsnd_dmapp_write\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w 0x%px : %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@rsnd_dmapp_attach.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rsnd_dmapp_attach\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"id/src/dst/chcr = %d/%pad/%pad/%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@gen2_id_table_ssiu = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\00\01\02\039:;<\04\05\06\07=>?@\08\09\0A\0BABCD\0CEFGHIJK\0DLMNOPQR\0E\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\12\13\14\15STUV", [48 x i8] zeroinitializer }, align 32
@gen2_id_table_scu = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"-./0123456", [22 x i8] zeroinitializer }, align 32
@gen2_id_table_cmd = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"78", [30 x i8] zeroinitializer }, align 32
@rsnd_dmapp_get_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown connection (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rsnd_dmapp_get_id\00", [46 x i8] zeroinitializer }, align 32
@rsnd_dmapp_get_id._entry_ptr = internal global ptr @rsnd_dmapp_get_id._entry, section ".printk_index", align 4
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audmac\00", [25 x i8] zeroinitializer }, align 32
@rsnd_dmaen_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid format width %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rsnd_dmaen_start\00", [47 x i8] zeroinitializer }, align 32
@rsnd_dmaen_start._entry_ptr = internal global ptr @rsnd_dmaen_start._entry, section ".printk_index", align 4
@rsnd_dmaen_start.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %pad -> %pad\0A\00", [47 x i8] zeroinitializer }, align 32
@rsnd_dmaen_start._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dmaengine_prep_slave_sg() fail\0A\00", [32 x i8] zeroinitializer }, align 32
@rsnd_dmaen_start._entry_ptr.29 = internal global ptr @rsnd_dmaen_start._entry.27, section ".printk_index", align 4
@rsnd_dmaen_start._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.3, i32 231, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dmaengine_submit() fail\0A\00", [39 x i8] zeroinitializer }, align 32
@rsnd_dmaen_start._entry_ptr.32 = internal global ptr @rsnd_dmaen_start._entry.30, section ".printk_index", align 4
@rsnd_dmaen_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't get dma channel\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_dmaen_prepare\00", [45 x i8] zeroinitializer }, align 32
@rsnd_dmaen_prepare._entry_ptr = internal global ptr @rsnd_dmaen_prepare._entry, section ".printk_index", align 4
@rsnd_gen2_dma_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"This driver doesn't support SSI%d-%d, so far\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_gen2_dma_addr\00", [45 x i8] zeroinitializer }, align 32
@rsnd_gen2_dma_addr._entry_ptr = internal global ptr @rsnd_gen2_dma_addr._entry, section ".printk_index", align 4
@rsnd_gen2_dma_addr._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 638, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DVC is selected without SRC\0A\00", [35 x i8] zeroinitializer }, align 32
@rsnd_gen2_dma_addr._entry_ptr.39 = internal global ptr @rsnd_gen2_dma_addr._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 881, i32 59 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 884, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 63, i32 24 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"mem_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 59, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"rsnd_dmapp_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 528, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"rsnd_dmaen_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 320, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 835, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 695, i32 6 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 767, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 769, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 529, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 430, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 504, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"gen2_id_table_ssiu\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 333, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant [18 x i8] c"gen2_id_table_scu\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 355, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"gen2_id_table_cmd\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 367, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 403, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 321, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 193, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 204, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 220, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 231, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 152, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 633, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 638, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [27 x i8] c"../sound/soc/sh/rcar/dma.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 60, i32 10 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @rsnd_dma_probe._entry, ptr @rsnd_dma_probe._entry_ptr, ptr @rsnd_dmaen_prepare._entry, ptr @rsnd_dmaen_prepare._entry_ptr, ptr @rsnd_dmaen_start._entry, ptr @rsnd_dmaen_start._entry.27, ptr @rsnd_dmaen_start._entry.30, ptr @rsnd_dmaen_start._entry_ptr, ptr @rsnd_dmaen_start._entry_ptr.29, ptr @rsnd_dmaen_start._entry_ptr.32, ptr @rsnd_dmapp_get_id._entry, ptr @rsnd_dmapp_get_id._entry_ptr, ptr @rsnd_gen2_dma_addr._entry, ptr @rsnd_gen2_dma_addr._entry.37, ptr @rsnd_gen2_dma_addr._entry_ptr, ptr @rsnd_gen2_dma_addr._entry_ptr.39, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mem, ptr @mem_ops, ptr @rsnd_dmapp_ops, ptr @rsnd_dmaen_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @gen2_id_table_ssiu, ptr @gen2_id_table_scu, ptr @gen2_id_table_cmd, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmapp_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmaen_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen2_id_table_ssiu to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen2_id_table_scu to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gen2_id_table_cmd to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmapp_get_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmaen_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmaen_start._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmaen_start._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_dmaen_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_gen2_dma_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_gen2_dma_addr._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rsnd_dma_request_channel(ptr noundef %of_node, ptr noundef %name, ptr noundef %mod, ptr noundef %x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_next_child(ptr noundef %of_node, ptr noundef null) #5
  %cmp.not14 = icmp eq ptr %call, null
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %np.016 = phi ptr [ %call5, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %chan.015 = phi ptr [ %chan.1, %if.end.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %call1 = tail call i32 @rsnd_node_fixed_index(ptr noundef nonnull %np.016, ptr noundef %name, i32 noundef %i.018) #5
  %call2 = tail call i32 @rsnd_mod_id_raw(ptr noundef %mod) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %call2)
  %cmp3 = icmp eq i32 %call1, %call2
  %tobool.not = icmp eq ptr %chan.015, null
  %or.cond = select i1 %cmp3, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call ptr @of_dma_request_slave_channel(ptr noundef nonnull %np.016, ptr noundef %x) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %chan.1 = phi ptr [ %call4, %if.then ], [ %chan.015, %for.body.if.end_crit_edge ]
  %inc = add i32 %call1, 1
  %call5 = tail call ptr @of_get_next_child(ptr noundef %of_node, ptr noundef nonnull %np.016) #5
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %chan.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %chan.1, %if.end.for.end_crit_edge ]
  tail call void @of_node_put(ptr noundef %of_node) #5
  ret ptr %chan.0.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_node_fixed_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_request_slave_channel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_dma_attach(ptr noundef %io, ptr noundef %mod, ptr nocapture noundef %dma_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dma_mod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_mod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @rsnd_dma_alloc(ptr noundef %io, ptr noundef %mod, ptr noundef %dma_mod)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then.if.end2_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %2 = ptrtoint ptr %dma_mod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_mod, align 4
  %type = getelementptr inbounds %struct.rsnd_mod, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %call3 = tail call i32 @rsnd_dai_connect(ptr noundef %3, ptr noundef %io, i32 noundef %5) #5
  br label %return

return:                                           ; preds = %if.end2, %if.then.return_crit_edge
  %retval.1 = phi i32 [ %call3, %if.end2 ], [ %call, %if.then.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dma_alloc(ptr noundef %io, ptr noundef %mod, ptr nocapture noundef %dma_mod) unnamed_addr #0 align 64 {
entry:
  %mod_from = alloca ptr, align 4
  %mod_to = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod_from) #5
  %0 = ptrtoint ptr %mod_from to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mod_from, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mod_to) #5
  %1 = ptrtoint ptr %mod_to to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %mod_to, align 4
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %2 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv1, align 4
  %dma = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %3, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %conv = zext i1 %cmp to i32
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @rsnd_dma_of_path(ptr noundef %mod, ptr noundef %io, i32 noundef %conv, ptr noundef nonnull %mod_from, ptr noundef nonnull %mod_to)
  %10 = ptrtoint ptr %mod_from to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mod_from, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %mod_to to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mod_to, align 4
  %tobool6.not = icmp eq ptr %13, null
  br i1 %tobool6.not, label %land.lhs.true.if.else_crit_edge, label %if.then7

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dmapp_num = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %7, i32 0, i32 3
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %dmaen_num = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %7, i32 0, i32 2
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %ops.0 = phi ptr [ @rsnd_dmapp_ops, %if.then7 ], [ @rsnd_dmaen_ops, %if.else ]
  %type.0 = phi i32 [ 0, %if.then7 ], [ 1, %if.else ]
  %attach.0 = phi ptr [ @rsnd_dmapp_attach, %if.then7 ], [ @rsnd_dmaen_attach, %if.else ]
  %dma_id.0.in = phi ptr [ %dmapp_num, %if.then7 ], [ %dmaen_num, %if.else ]
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp9 = icmp eq i32 %and, 1
  br i1 %cmp9, label %if.then11, label %if.end8.if.end13_crit_edge

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %dmaen_num12 = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %7, i32 0, i32 2
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %ops.1 = phi ptr [ @rsnd_dmaen_ops, %if.then11 ], [ %ops.0, %if.end8.if.end13_crit_edge ]
  %type.1 = phi i32 [ 1, %if.then11 ], [ %type.0, %if.end8.if.end13_crit_edge ]
  %attach.1 = phi ptr [ @rsnd_dmaen_attach, %if.then11 ], [ %attach.0, %if.end8.if.end13_crit_edge ]
  %dma_id.1.in = phi ptr [ %dmaen_num12, %if.then11 ], [ %dma_id.0.in, %if.end8.if.end13_crit_edge ]
  %16 = ptrtoint ptr %dma_id.1.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %dma_id.1 = load i32, ptr %dma_id.1.in, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 52, i32 noundef 3520) #5
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.end16

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %dma_mod to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %dma_mod, align 4
  %call18 = tail call i32 @rsnd_mod_init(ptr noundef %5, ptr noundef nonnull %call.i, ptr noundef nonnull %ops.1, ptr noundef null, i32 noundef %type.1, i32 noundef %dma_id.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %do.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dma_alloc.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dma_alloc, %if.then27)) #5
          to label %do.end [label %if.then27], !srcloc !99

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %dma_mod to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_mod, align 4
  %call28 = tail call ptr @rsnd_mod_name(ptr noundef %19) #5
  %spec.select = select i1 %tobool5.not, ptr @mem, ptr %11
  %call30 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %spec.select) #5
  %20 = ptrtoint ptr %mod_to to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mod_to, align 4
  %tobool31.not = icmp eq ptr %21, null
  %cond35 = select i1 %tobool31.not, ptr @mem, ptr %21
  %call36 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %cond35) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dma_alloc.__UNIQUE_ID_ddebug247, ptr noundef %dev2, ptr noundef nonnull @.str.8, ptr noundef %call28, ptr noundef %call30, ptr noundef %call36) #5
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %22 = ptrtoint ptr %mod_to to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mod_to, align 4
  %call38 = tail call i32 %attach.1(ptr noundef %io, ptr noundef nonnull %call.i, ptr noundef %11, ptr noundef %23) #5, !callees !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end.cleanup_crit_edge, label %if.end42

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call fastcc i32 @rsnd_dma_addr(ptr noundef %io, ptr noundef %11, i32 noundef %conv, i32 noundef 1)
  %src_addr = getelementptr inbounds %struct.rsnd_dma, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call43, ptr %src_addr, align 4
  %call44 = tail call fastcc i32 @rsnd_dma_addr(ptr noundef %io, ptr noundef %23, i32 noundef %conv, i32 noundef 0)
  %dst_addr = getelementptr inbounds %struct.rsnd_dma, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call44, ptr %dst_addr, align 4
  %mod_from45 = getelementptr inbounds %struct.rsnd_dma, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %mod_from45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %11, ptr %mod_from45, align 4
  %mod_to46 = getelementptr inbounds %struct.rsnd_dma, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %mod_to46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %mod_to46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ %call38, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod_to) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mod_from) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_dma_probe(ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %1, i32 noundef 512, ptr noundef nonnull @.str) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 16, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  %tobool5.not = icmp eq ptr %call, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dmapp_num = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %dmapp_num to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dmapp_num, align 4
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %ppres = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ppres to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ppres, align 4
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev3, ptr noundef nonnull %call) #5
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %dma = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %dma, align 4
  %call15 = tail call i32 @rsnd_mod_init(ptr noundef null, ptr noundef nonnull @mem, ptr noundef nonnull @mem_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then11 ], [ %call15, %if.end14 ], [ 0, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_dma_of_path(ptr noundef %this, ptr nocapture noundef readonly %io, i32 noundef %is_play, ptr nocapture noundef %mod_from, ptr nocapture noundef %mod_to) unnamed_addr #0 align 64 {
entry:
  %mod7 = alloca [14 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %arrayidx4 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %mod7) #5
  %priv8 = getelementptr inbounds %struct.rsnd_mod, ptr %this, i32 0, i32 3
  %8 = ptrtoint ptr %priv8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv8, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %13, ptr noundef nonnull @.str.9) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx13, align 4
  %arrayidx15 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx15, align 4
  %cmp = icmp eq ptr %17, %this
  %spec.select = select i1 %cmp, ptr %15, ptr %this
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx18 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then
  %ssi.0 = phi ptr [ %15, %if.then ], [ %19, %if.else ]
  %this.addr.1 = phi ptr [ %spec.select, %if.then ], [ %this, %if.else ]
  %tobool20.not = icmp eq ptr %ssi.0, null
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %cond.end.13

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cond.end.13:                                      ; preds = %if.end19
  %20 = getelementptr inbounds i8, ptr %mod7, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 52)
  %arrayidx27 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 0
  %22 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx27, align 4
  %tobool28 = icmp ne ptr %23, null
  %lnot.ext = zext i1 %tobool28 to i32
  %arrayidx27.1 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx27.1, align 4
  %tobool28.1 = icmp ne ptr %25, null
  %lnot.ext.1 = zext i1 %tobool28.1 to i32
  %add.1 = add nuw nsw i32 %lnot.ext, %lnot.ext.1
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6, align 4
  %tobool28.2 = icmp ne ptr %27, null
  %lnot.ext.2 = zext i1 %tobool28.2 to i32
  %add.2 = add nuw nsw i32 %add.1, %lnot.ext.2
  %28 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx4, align 4
  %tobool28.3 = icmp ne ptr %29, null
  %lnot.ext.3 = zext i1 %tobool28.3 to i32
  %add.3 = add nuw nsw i32 %add.2, %lnot.ext.3
  %30 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2, align 4
  %tobool28.4 = icmp ne ptr %31, null
  %lnot.ext.4 = zext i1 %tobool28.4 to i32
  %add.4 = add nuw nsw i32 %add.3, %lnot.ext.4
  %arrayidx27.5 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 5
  %32 = ptrtoint ptr %arrayidx27.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx27.5, align 4
  %tobool28.5 = icmp ne ptr %33, null
  %lnot.ext.5 = zext i1 %tobool28.5 to i32
  %add.5 = add nuw nsw i32 %add.4, %lnot.ext.5
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %tobool28.6 = icmp ne ptr %35, null
  %lnot.ext.6 = zext i1 %tobool28.6 to i32
  %add.6 = add nuw nsw i32 %add.5, %lnot.ext.6
  %arrayidx27.7 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %arrayidx27.7 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx27.7, align 4
  %tobool28.7 = icmp ne ptr %37, null
  %lnot.ext.7 = zext i1 %tobool28.7 to i32
  %add.7 = add nuw nsw i32 %add.6, %lnot.ext.7
  %arrayidx27.8 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 8
  %38 = ptrtoint ptr %arrayidx27.8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx27.8, align 4
  %tobool28.8 = icmp ne ptr %39, null
  %lnot.ext.8 = zext i1 %tobool28.8 to i32
  %add.8 = add nuw nsw i32 %add.7, %lnot.ext.8
  %arrayidx27.9 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 9
  %40 = ptrtoint ptr %arrayidx27.9 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx27.9, align 4
  %tobool28.9 = icmp ne ptr %41, null
  %lnot.ext.9 = zext i1 %tobool28.9 to i32
  %add.9 = add nuw nsw i32 %add.8, %lnot.ext.9
  %arrayidx27.10 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 10
  %42 = ptrtoint ptr %arrayidx27.10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx27.10, align 4
  %tobool28.10 = icmp ne ptr %43, null
  %lnot.ext.10 = zext i1 %tobool28.10 to i32
  %add.10 = add nuw nsw i32 %add.9, %lnot.ext.10
  %arrayidx27.11 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %44 = ptrtoint ptr %arrayidx27.11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx27.11, align 4
  %phi.cmp = icmp ne ptr %45, null
  %phi.cast = zext i1 %phi.cmp to i32
  %add.11 = add nuw nsw i32 %add.10, %phi.cast
  %arrayidx27.12 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %46 = ptrtoint ptr %arrayidx27.12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx27.12, align 4
  %phi.cmp215 = icmp ne ptr %47, null
  %phi.cast216 = zext i1 %phi.cmp215 to i32
  %add.12 = add nuw nsw i32 %add.11, %phi.cast216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_play)
  %tobool30.not = icmp eq i32 %is_play, 0
  %spec.select194 = select i1 %tobool30.not, ptr %ssi.0, ptr null
  %cond39 = select i1 %tobool30.not, ptr null, ptr %ssi.0
  %48 = ptrtoint ptr %mod7 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spec.select194, ptr %mod7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.12)
  %cmp43204 = icmp ugt i32 %add.12, 1
  br i1 %cmp43204, label %for.body44.preheader, label %cond.end.13.for.end70_crit_edge

cond.end.13.for.end70_crit_edge:                  ; preds = %cond.end.13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end70

for.body44.preheader:                             ; preds = %cond.end.13
  %tobool45.not.peel = icmp eq ptr %1, null
  br i1 %tobool45.not.peel, label %if.else49.peel, label %for.body44.preheader.for.inc68.peel.sink.split_crit_edge

for.body44.preheader.for.inc68.peel.sink.split_crit_edge: ; preds = %for.body44.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel.sink.split

if.else49.peel:                                   ; preds = %for.body44.preheader
  %tobool50.not.peel = icmp eq ptr %3, null
  br i1 %tobool50.not.peel, label %if.else54.peel, label %if.else49.peel.for.inc68.peel.sink.split_crit_edge

if.else49.peel.for.inc68.peel.sink.split_crit_edge: ; preds = %if.else49.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel.sink.split

if.else54.peel:                                   ; preds = %if.else49.peel
  %tobool55.not.peel = icmp eq ptr %5, null
  br i1 %tobool55.not.peel, label %if.else59.peel, label %if.else54.peel.for.inc68.peel.sink.split_crit_edge

if.else54.peel.for.inc68.peel.sink.split_crit_edge: ; preds = %if.else54.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel.sink.split

if.else59.peel:                                   ; preds = %if.else54.peel
  %tobool60.not.peel = icmp eq ptr %7, null
  br i1 %tobool60.not.peel, label %if.else59.peel.for.inc68.peel_crit_edge, label %if.else59.peel.for.inc68.peel.sink.split_crit_edge

if.else59.peel.for.inc68.peel.sink.split_crit_edge: ; preds = %if.else59.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel.sink.split

if.else59.peel.for.inc68.peel_crit_edge:          ; preds = %if.else59.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel

for.inc68.peel.sink.split:                        ; preds = %if.else59.peel.for.inc68.peel.sink.split_crit_edge, %if.else54.peel.for.inc68.peel.sink.split_crit_edge, %if.else49.peel.for.inc68.peel.sink.split_crit_edge, %for.body44.preheader.for.inc68.peel.sink.split_crit_edge
  %.sink = phi ptr [ %1, %for.body44.preheader.for.inc68.peel.sink.split_crit_edge ], [ %3, %if.else49.peel.for.inc68.peel.sink.split_crit_edge ], [ %5, %if.else54.peel.for.inc68.peel.sink.split_crit_edge ], [ %7, %if.else59.peel.for.inc68.peel.sink.split_crit_edge ]
  %dvc.1.peel.ph = phi ptr [ %7, %for.body44.preheader.for.inc68.peel.sink.split_crit_edge ], [ %7, %if.else49.peel.for.inc68.peel.sink.split_crit_edge ], [ %7, %if.else54.peel.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else59.peel.for.inc68.peel.sink.split_crit_edge ]
  %mix.1.peel.ph = phi ptr [ %5, %for.body44.preheader.for.inc68.peel.sink.split_crit_edge ], [ %5, %if.else49.peel.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else54.peel.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else59.peel.for.inc68.peel.sink.split_crit_edge ]
  %ctu.1.peel.ph = phi ptr [ %3, %for.body44.preheader.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else49.peel.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else54.peel.for.inc68.peel.sink.split_crit_edge ], [ null, %if.else59.peel.for.inc68.peel.sink.split_crit_edge ]
  %arrayidx63.peel = getelementptr inbounds [14 x ptr], ptr %mod7, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx63.peel to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %.sink, ptr %arrayidx63.peel, align 4
  br label %for.inc68.peel

for.inc68.peel:                                   ; preds = %for.inc68.peel.sink.split, %if.else59.peel.for.inc68.peel_crit_edge
  %dvc.1.peel = phi ptr [ null, %if.else59.peel.for.inc68.peel_crit_edge ], [ %dvc.1.peel.ph, %for.inc68.peel.sink.split ]
  %mix.1.peel = phi ptr [ null, %if.else59.peel.for.inc68.peel_crit_edge ], [ %mix.1.peel.ph, %for.inc68.peel.sink.split ]
  %idx.1.peel = phi i32 [ 1, %if.else59.peel.for.inc68.peel_crit_edge ], [ 2, %for.inc68.peel.sink.split ]
  %ctu.1.peel = phi ptr [ null, %if.else59.peel.for.inc68.peel_crit_edge ], [ %ctu.1.peel.ph, %for.inc68.peel.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.12)
  %cmp43.peel = icmp ugt i32 %add.12, 2
  br i1 %cmp43.peel, label %if.else49.peel217, label %for.inc68.peel.for.end70_crit_edge

for.inc68.peel.for.end70_crit_edge:               ; preds = %for.inc68.peel
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end70

if.else49.peel217:                                ; preds = %for.inc68.peel
  %tobool50.not.peel218 = icmp eq ptr %ctu.1.peel, null
  br i1 %tobool50.not.peel218, label %if.else54.peel219, label %if.else49.peel217.for.inc68.sink.split.peel_crit_edge

if.else49.peel217.for.inc68.sink.split.peel_crit_edge: ; preds = %if.else49.peel217
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.sink.split.peel

if.else54.peel219:                                ; preds = %if.else49.peel217
  %tobool55.not.peel220 = icmp eq ptr %mix.1.peel, null
  br i1 %tobool55.not.peel220, label %if.else59.peel221, label %if.else54.peel219.for.inc68.sink.split.peel_crit_edge

if.else54.peel219.for.inc68.sink.split.peel_crit_edge: ; preds = %if.else54.peel219
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.sink.split.peel

if.else59.peel221:                                ; preds = %if.else54.peel219
  %tobool60.not.peel222 = icmp eq ptr %dvc.1.peel, null
  br i1 %tobool60.not.peel222, label %if.else59.peel221.for.inc68.peel223_crit_edge, label %if.else59.peel221.for.inc68.sink.split.peel_crit_edge

if.else59.peel221.for.inc68.sink.split.peel_crit_edge: ; preds = %if.else59.peel221
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.sink.split.peel

if.else59.peel221.for.inc68.peel223_crit_edge:    ; preds = %if.else59.peel221
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.peel223

for.inc68.sink.split.peel:                        ; preds = %if.else59.peel221.for.inc68.sink.split.peel_crit_edge, %if.else54.peel219.for.inc68.sink.split.peel_crit_edge, %if.else49.peel217.for.inc68.sink.split.peel_crit_edge
  %mix.0206.sink.peel = phi ptr [ %ctu.1.peel, %if.else49.peel217.for.inc68.sink.split.peel_crit_edge ], [ %mix.1.peel, %if.else54.peel219.for.inc68.sink.split.peel_crit_edge ], [ %dvc.1.peel, %if.else59.peel221.for.inc68.sink.split.peel_crit_edge ]
  %dvc.1.ph.peel = phi ptr [ %dvc.1.peel, %if.else49.peel217.for.inc68.sink.split.peel_crit_edge ], [ %dvc.1.peel, %if.else54.peel219.for.inc68.sink.split.peel_crit_edge ], [ null, %if.else59.peel221.for.inc68.sink.split.peel_crit_edge ]
  %mix.1.ph.peel = phi ptr [ %mix.1.peel, %if.else49.peel217.for.inc68.sink.split.peel_crit_edge ], [ null, %if.else54.peel219.for.inc68.sink.split.peel_crit_edge ], [ null, %if.else59.peel221.for.inc68.sink.split.peel_crit_edge ]
  %inc57.peel = add nuw nsw i32 %idx.1.peel, 1
  %arrayidx58.peel = getelementptr [14 x ptr], ptr %mod7, i32 0, i32 %idx.1.peel
  %50 = ptrtoint ptr %arrayidx58.peel to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %mix.0206.sink.peel, ptr %arrayidx58.peel, align 4
  br label %for.inc68.peel223

for.inc68.peel223:                                ; preds = %for.inc68.sink.split.peel, %if.else59.peel221.for.inc68.peel223_crit_edge
  %dvc.1.peel224 = phi ptr [ null, %if.else59.peel221.for.inc68.peel223_crit_edge ], [ %dvc.1.ph.peel, %for.inc68.sink.split.peel ]
  %mix.1.peel225 = phi ptr [ null, %if.else59.peel221.for.inc68.peel223_crit_edge ], [ %mix.1.ph.peel, %for.inc68.sink.split.peel ]
  %idx.1.peel226 = phi i32 [ %idx.1.peel, %if.else59.peel221.for.inc68.peel223_crit_edge ], [ %inc57.peel, %for.inc68.sink.split.peel ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.12)
  %cmp43.peel227 = icmp ugt i32 %add.12, 3
  br i1 %cmp43.peel227, label %for.inc68.peel223.if.else49_crit_edge, label %for.inc68.peel223.for.end70_crit_edge

for.inc68.peel223.for.end70_crit_edge:            ; preds = %for.inc68.peel223
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end70

for.inc68.peel223.if.else49_crit_edge:            ; preds = %for.inc68.peel223
  br label %if.else49

if.else49:                                        ; preds = %for.inc68.if.else49_crit_edge, %for.inc68.peel223.if.else49_crit_edge
  %idx.0208 = phi i32 [ %idx.1, %for.inc68.if.else49_crit_edge ], [ %idx.1.peel226, %for.inc68.peel223.if.else49_crit_edge ]
  %i.1207 = phi i32 [ %inc69, %for.inc68.if.else49_crit_edge ], [ 3, %for.inc68.peel223.if.else49_crit_edge ]
  %mix.0206 = phi ptr [ %mix.1, %for.inc68.if.else49_crit_edge ], [ %mix.1.peel225, %for.inc68.peel223.if.else49_crit_edge ]
  %dvc.0205 = phi ptr [ %dvc.1, %for.inc68.if.else49_crit_edge ], [ %dvc.1.peel224, %for.inc68.peel223.if.else49_crit_edge ]
  %tobool55.not = icmp eq ptr %mix.0206, null
  br i1 %tobool55.not, label %if.else59, label %if.else49.for.inc68.sink.split_crit_edge

if.else49.for.inc68.sink.split_crit_edge:         ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.sink.split

if.else59:                                        ; preds = %if.else49
  %tobool60.not = icmp eq ptr %dvc.0205, null
  br i1 %tobool60.not, label %if.else59.for.inc68_crit_edge, label %if.else59.for.inc68.sink.split_crit_edge

if.else59.for.inc68.sink.split_crit_edge:         ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68.sink.split

if.else59.for.inc68_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc68

for.inc68.sink.split:                             ; preds = %if.else59.for.inc68.sink.split_crit_edge, %if.else49.for.inc68.sink.split_crit_edge
  %mix.0206.sink = phi ptr [ %mix.0206, %if.else49.for.inc68.sink.split_crit_edge ], [ %dvc.0205, %if.else59.for.inc68.sink.split_crit_edge ]
  %dvc.1.ph = phi ptr [ %dvc.0205, %if.else49.for.inc68.sink.split_crit_edge ], [ null, %if.else59.for.inc68.sink.split_crit_edge ]
  %inc57 = add i32 %idx.0208, 1
  %arrayidx58 = getelementptr [14 x ptr], ptr %mod7, i32 0, i32 %idx.0208
  %51 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %mix.0206.sink, ptr %arrayidx58, align 4
  br label %for.inc68

for.inc68:                                        ; preds = %for.inc68.sink.split, %if.else59.for.inc68_crit_edge
  %dvc.1 = phi ptr [ null, %if.else59.for.inc68_crit_edge ], [ %dvc.1.ph, %for.inc68.sink.split ]
  %mix.1 = phi ptr [ null, %if.else59.for.inc68_crit_edge ], [ null, %for.inc68.sink.split ]
  %idx.1 = phi i32 [ %idx.0208, %if.else59.for.inc68_crit_edge ], [ %inc57, %for.inc68.sink.split ]
  %inc69 = add nuw nsw i32 %i.1207, 1
  %cmp43 = icmp ult i32 %inc69, %add.12
  br i1 %cmp43, label %for.inc68.if.else49_crit_edge, label %for.inc68.for.end70_crit_edge, !llvm.loop !101

for.inc68.for.end70_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end70

for.inc68.if.else49_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else49

for.end70:                                        ; preds = %for.inc68.for.end70_crit_edge, %for.inc68.peel223.for.end70_crit_edge, %for.inc68.peel.for.end70_crit_edge, %cond.end.13.for.end70_crit_edge
  %idx.0.lcssa = phi i32 [ 1, %cond.end.13.for.end70_crit_edge ], [ %idx.1.peel, %for.inc68.peel.for.end70_crit_edge ], [ %idx.1.peel226, %for.inc68.peel223.for.end70_crit_edge ], [ %idx.1, %for.inc68.for.end70_crit_edge ]
  %arrayidx71 = getelementptr [14 x ptr], ptr %mod7, i32 0, i32 %idx.0.lcssa
  %52 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %cond39, ptr %arrayidx71, align 4
  %cmp72 = icmp eq ptr %this.addr.1, %ssi.0
  %conv = zext i1 %cmp72 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %is_play)
  %cmp73 = icmp eq i32 %conv, %is_play
  br i1 %cmp73, label %if.then75, label %if.else78

if.then75:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %idx.0.lcssa, -1
  %arrayidx76 = getelementptr [14 x ptr], ptr %mod7, i32 0, i32 %sub
  %53 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx76, align 4
  %55 = ptrtoint ptr %mod_from to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %mod_from, align 4
  br label %do.body

if.else78:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %mod7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mod7, align 4
  %58 = ptrtoint ptr %mod_from to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %mod_from, align 4
  %arrayidx80 = getelementptr inbounds [14 x ptr], ptr %mod7, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx80, align 4
  br label %do.body

do.body:                                          ; preds = %if.else78, %if.then75
  %storemerge = phi ptr [ %60, %if.else78 ], [ %cond39, %if.then75 ]
  %61 = ptrtoint ptr %mod_to to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %storemerge, ptr %mod_to, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dma_of_path.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dma_of_path, %if.then89)) #5
          to label %do.end [label %if.then89], !srcloc !99

if.then89:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call90 = tail call ptr @rsnd_mod_name(ptr noundef %this.addr.1) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dma_of_path.__UNIQUE_ID_ddebug245, ptr noundef %dev9, ptr noundef nonnull @.str.11, ptr noundef %call90) #5
  br label %do.end

do.end:                                           ; preds = %if.then89, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0.lcssa)
  %cmp93.not211 = icmp slt i32 %idx.0.lcssa, 0
  br i1 %cmp93.not211, label %do.end.cleanup_crit_edge, label %do.end.do.body96_crit_edge

do.end.do.body96_crit_edge:                       ; preds = %do.end
  br label %do.body96

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body96:                                        ; preds = %for.inc131.do.body96_crit_edge, %do.end.do.body96_crit_edge
  %i.2212 = phi i32 [ %inc132, %for.inc131.do.body96_crit_edge ], [ 0, %do.end.do.body96_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dma_of_path.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dma_of_path, %if.then108)) #5
          to label %for.inc131 [label %if.then108], !srcloc !99

if.then108:                                       ; preds = %do.body96
  %arrayidx109 = getelementptr [14 x ptr], ptr %mod7, i32 0, i32 %i.2212
  %62 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx109, align 4
  %tobool110.not = icmp eq ptr %63, null
  %spec.select195 = select i1 %tobool110.not, ptr @mem, ptr %63
  %call116 = tail call ptr @rsnd_mod_name(ptr noundef nonnull %spec.select195) #5
  %64 = ptrtoint ptr %mod_from to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mod_from, align 4
  %cmp118 = icmp eq ptr %63, %65
  br i1 %cmp118, label %if.then108.cond.end126_crit_edge, label %cond.false121

if.then108.cond.end126_crit_edge:                 ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end126

cond.false121:                                    ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %mod_to to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mod_to, align 4
  %cmp123 = icmp eq ptr %63, %67
  %cond125 = select i1 %cmp123, ptr @.str.14, ptr @.str.15
  br label %cond.end126

cond.end126:                                      ; preds = %cond.false121, %if.then108.cond.end126_crit_edge
  %cond127 = phi ptr [ %cond125, %cond.false121 ], [ @.str.13, %if.then108.cond.end126_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dma_of_path.__UNIQUE_ID_ddebug246, ptr noundef %dev9, ptr noundef nonnull @.str.12, ptr noundef %call116, ptr noundef nonnull %cond127) #5
  br label %for.inc131

for.inc131:                                       ; preds = %cond.end126, %do.body96
  %inc132 = add i32 %i.2212, 1
  %cmp93.not = icmp sgt i32 %inc132, %idx.0.lcssa
  br i1 %cmp93.not, label %for.inc131.cleanup_crit_edge, label %for.inc131.do.body96_crit_edge

for.inc131.do.body96_crit_edge:                   ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

for.inc131.cleanup_crit_edge:                     ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc131.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %mod7) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_attach(ptr nocapture noundef readonly %io, ptr noundef %dma, ptr noundef %mod_from, ptr noundef %mod_to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.rsnd_dma, ptr %dma, i32 0, i32 5
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv2 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %dma3 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma3, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dmapp_num = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %dmapp_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dmapp_num, align 4
  %10 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dma1, align 4
  %call.i = tail call fastcc i32 @rsnd_dmapp_get_id(ptr noundef %io, ptr noundef %mod_from) #5
  %shl.i = shl i32 %call.i, 24
  %call1.i = tail call fastcc i32 @rsnd_dmapp_get_id(ptr noundef %io, ptr noundef %mod_to) #5
  %shl2.i = shl i32 %call1.i, 16
  %add.i = add i32 %shl2.i, %shl.i
  %or = or i32 %add.i, 1
  %chcr = getelementptr inbounds %struct.rsnd_dma, ptr %dma, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %chcr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or, ptr %chcr, align 4
  %12 = ptrtoint ptr %dmapp_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmapp_num, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %dmapp_num, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dmapp_attach.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dmapp_attach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !99

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %14 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma1, align 4
  %src_addr = getelementptr inbounds %struct.rsnd_dma, ptr %dma, i32 0, i32 3
  %dst_addr = getelementptr inbounds %struct.rsnd_dma, ptr %dma, i32 0, i32 4
  %16 = ptrtoint ptr %chcr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chcr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dmapp_attach.__UNIQUE_ID_ddebug244, ptr noundef %dev4, ptr noundef nonnull @.str.20, i32 noundef %15, ptr noundef %src_addr, ptr noundef %dst_addr, i32 noundef %17) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_attach(ptr noundef %io, ptr nocapture noundef readnone %dma, ptr noundef %mod_from, ptr noundef %mod_to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %dma2 = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma2, align 4
  %tobool.not.i = icmp eq ptr %mod_from, null
  %tobool1.not.i = icmp eq ptr %mod_to, null
  %or.cond15.i = xor i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond15.i, label %if.end.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.i:                                         ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @rsnd_mod_dma_req(ptr noundef %io, ptr noundef nonnull %mod_from) #5
  br label %rsnd_dmaen_request_channel.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call ptr @rsnd_mod_dma_req(ptr noundef %io, ptr noundef %mod_to) #5
  br label %rsnd_dmaen_request_channel.exit

rsnd_dmaen_request_channel.exit:                  ; preds = %if.else.i, %if.then6.i
  %retval.0.i = phi ptr [ %call.i, %if.then6.i ], [ %call7.i, %if.else.i ]
  %tobool.not.i16 = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i16, %cmp.i
  br i1 %spec.select.i, label %rsnd_dmaen_request_channel.exit.if.then_crit_edge, label %if.end7

rsnd_dmaen_request_channel.exit.if.then_crit_edge: ; preds = %rsnd_dmaen_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %rsnd_dmaen_request_channel.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i21 = phi ptr [ %retval.0.i, %rsnd_dmaen_request_channel.exit.if.then_crit_edge ], [ null, %entry.if.then_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i21, inttoptr (i32 -517 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 -11
  br label %cleanup

if.end7:                                          ; preds = %rsnd_dmaen_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %retval.0.i, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %dmac_dev = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 5
  %10 = ptrtoint ptr %dmac_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dmac_dev, align 4
  tail call void @dma_release_channel(ptr noundef nonnull %retval.0.i) #5
  %dmaen_num = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %dmaen_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dmaen_num, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %dmaen_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dma_addr(ptr noundef %io, ptr noundef %mod, i32 noundef %is_play, i32 noundef %is_from) unnamed_addr #0 align 64 {
entry:
  %dma_addrs.i = alloca [3 x [2 x [3 x %struct.dma_addr]]], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %0 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdai, align 4
  %priv1 = getelementptr inbounds %struct.rsnd_dai, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %flags = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  %tobool.not = icmp eq ptr %mod, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i = tail call i32 @rsnd_gen_get_phy_addr(ptr noundef %3, i32 noundef 3) #5
  %call3.i = tail call i32 @rsnd_gen_get_phy_addr(ptr noundef %3, i32 noundef 0) #5
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i = icmp eq ptr %9, %mod
  br i1 %cmp.i, label %if.end3.lor.end.i_crit_edge, label %lor.rhs.i

if.end3.lor.end.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %10 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx6.i, align 4
  %cmp7.i = icmp eq ptr %11, %mod
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end3.lor.end.i_crit_edge
  %12 = phi i1 [ true, %if.end3.lor.end.i_crit_edge ], [ %cmp7.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %12 to i32
  %arrayidx10.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10.i, align 4
  %tobool.i = icmp ne ptr %14, null
  %arrayidx14.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14.i, align 4
  %tobool15.not.i = icmp eq ptr %16, null
  br i1 %tobool15.not.i, label %cond.true16.i, label %lor.end.i.lor.end29.i_crit_edge

lor.end.i.lor.end29.i_crit_edge:                  ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end29.i

cond.true16.i:                                    ; preds = %lor.end.i
  %arrayidx18.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18.i, align 4
  %tobool19.not.i = icmp eq ptr %18, null
  br i1 %tobool19.not.i, label %lor.rhs21.i, label %cond.true16.i.lor.end29.i_crit_edge

cond.true16.i.lor.end29.i_crit_edge:              ; preds = %cond.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end29.i

lor.rhs21.i:                                      ; preds = %cond.true16.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx23.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx23.i, align 4
  %tobool24.i = icmp ne ptr %20, null
  br label %lor.end29.i

lor.end29.i:                                      ; preds = %lor.rhs21.i, %cond.true16.i.lor.end29.i_crit_edge, %lor.end.i.lor.end29.i_crit_edge
  %21 = phi i1 [ true, %cond.true16.i.lor.end29.i_crit_edge ], [ true, %lor.end.i.lor.end29.i_crit_edge ], [ %tobool24.i, %lor.rhs21.i ]
  %call31.i = tail call i32 @rsnd_mod_id(ptr noundef nonnull %mod) #5
  %arrayidx33.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %22 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx33.i, align 4
  %call34.i = tail call i32 @rsnd_mod_id_sub(ptr noundef %23) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %dma_addrs.i) #5
  %24 = ptrtoint ptr %dma_addrs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %dma_addrs.i, align 4
  %in_addr.i = getelementptr inbounds %struct.dma_addr, ptr %dma_addrs.i, i32 0, i32 1
  %25 = ptrtoint ptr %in_addr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %in_addr.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.dma_addr, ptr %dma_addrs.i, i32 1
  %mul.i = shl i32 %call31.i, 10
  %sub.i = add i32 %mul.i, %call3.i
  %add.i = add i32 %sub.i, -5226496
  %26 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i, ptr %arrayinit.element.i, align 4
  %in_addr38.i = getelementptr inbounds %struct.dma_addr, ptr %dma_addrs.i, i32 1, i32 1
  %add41.i = add i32 %sub.i, -2097152
  %27 = ptrtoint ptr %in_addr38.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add41.i, ptr %in_addr38.i, align 4
  %arrayinit.element42.i = getelementptr inbounds %struct.dma_addr, ptr %dma_addrs.i, i32 2
  %add46.i = add i32 %sub.i, -5210112
  %28 = ptrtoint ptr %arrayinit.element42.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add46.i, ptr %arrayinit.element42.i, align 4
  %in_addr47.i = getelementptr inbounds %struct.dma_addr, ptr %dma_addrs.i, i32 2, i32 1
  %29 = ptrtoint ptr %in_addr47.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add41.i, ptr %in_addr47.i, align 4
  %arrayinit.element51.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1
  %30 = ptrtoint ptr %arrayinit.element51.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayinit.element51.i, align 4
  %in_addr54.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %in_addr54.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %in_addr54.i, align 4
  %arrayinit.element55.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1, i32 1
  %add59.i = add i32 %sub.i, -2080768
  %32 = ptrtoint ptr %arrayinit.element55.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add59.i, ptr %arrayinit.element55.i, align 4
  %in_addr60.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1, i32 1, i32 1
  %add63.i = add i32 %sub.i, -5242880
  %33 = ptrtoint ptr %in_addr60.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add63.i, ptr %in_addr60.i, align 4
  %arrayinit.element64.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1, i32 2
  %add68.i = add i32 %sub.i, -2064384
  %34 = ptrtoint ptr %arrayinit.element64.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add68.i, ptr %arrayinit.element64.i, align 4
  %in_addr69.i = getelementptr inbounds [3 x %struct.dma_addr], ptr %dma_addrs.i, i32 1, i32 2, i32 1
  %35 = ptrtoint ptr %in_addr69.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add63.i, ptr %in_addr69.i, align 4
  %arrayinit.element73.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1
  %sub77.i = add i32 %call.i, -3145728
  %mul78.i = shl i32 %call31.i, 6
  %add79.i = add i32 %sub77.i, %mul78.i
  %add80.i = add i32 %add79.i, 12
  %36 = ptrtoint ptr %arrayinit.element73.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add80.i, ptr %arrayinit.element73.i, align 4
  %in_addr81.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %in_addr81.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %in_addr81.i, align 4
  %arrayinit.element82.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 0, i32 1
  %mul85.i = shl i32 %call31.i, 12
  %call34.i.frozen = freeze i32 %call34.i
  %div.i = sdiv i32 %call34.i.frozen, 4
  %38 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %call34.i.frozen, %38
  %mul89.i = shl nsw i32 %rem.i.decomposed, 10
  %div91.neg.i = sdiv i32 %call31.i, -9
  %mul92.neg.i = shl i32 %div91.neg.i, 14
  %sub84.i = add i32 %mul85.i, %call.i
  %mul94.neg.i6 = add i32 %mul92.neg.i, 40960
  %add86.i = mul i32 %div.i, %mul94.neg.i6
  %add88.i = add i32 %add86.i, -1314816
  %add90.i = add i32 %add88.i, %sub84.i
  %sub95.i = add i32 %add90.i, %mul89.i
  %39 = ptrtoint ptr %arrayinit.element82.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub95.i, ptr %arrayinit.element82.i, align 4
  %in_addr96.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %in_addr96.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %in_addr96.i, align 4
  %arrayinit.element97.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 0, i32 2
  %41 = ptrtoint ptr %arrayinit.element97.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub95.i, ptr %arrayinit.element97.i, align 4
  %in_addr113.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 0, i32 2, i32 1
  %42 = ptrtoint ptr %in_addr113.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %in_addr113.i, align 4
  %arrayinit.element114.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1
  %43 = ptrtoint ptr %arrayinit.element114.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayinit.element114.i, align 4
  %in_addr117.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1, i32 0, i32 1
  %add121.i = add i32 %add79.i, 8
  %44 = ptrtoint ptr %in_addr117.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add121.i, ptr %in_addr117.i, align 4
  %arrayinit.element122.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1, i32 1
  %45 = ptrtoint ptr %arrayinit.element122.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayinit.element122.i, align 4
  %in_addr124.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1, i32 1, i32 1
  %46 = ptrtoint ptr %in_addr124.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub95.i, ptr %in_addr124.i, align 4
  %arrayinit.element139.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1, i32 2
  %47 = ptrtoint ptr %arrayinit.element139.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayinit.element139.i, align 4
  %in_addr141.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 1, i32 1, i32 2, i32 1
  %48 = ptrtoint ptr %in_addr141.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %sub95.i, ptr %in_addr141.i, align 4
  %arrayinit.element156.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2
  %add165.i = add i32 %add86.i, -4460544
  %add168.i = add i32 %add165.i, %sub84.i
  %sub173.i = add i32 %add168.i, %mul89.i
  %49 = ptrtoint ptr %arrayinit.element156.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub173.i, ptr %arrayinit.element156.i, align 4
  %in_addr174.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %in_addr174.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %in_addr174.i, align 4
  %arrayinit.element175.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 0, i32 1
  %51 = ptrtoint ptr %arrayinit.element175.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub95.i, ptr %arrayinit.element175.i, align 4
  %in_addr191.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %in_addr191.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %in_addr191.i, align 4
  %arrayinit.element192.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 0, i32 2
  %53 = ptrtoint ptr %arrayinit.element192.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub95.i, ptr %arrayinit.element192.i, align 4
  %in_addr208.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %in_addr208.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %in_addr208.i, align 4
  %arrayinit.element209.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1
  %55 = ptrtoint ptr %arrayinit.element209.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %arrayinit.element209.i, align 4
  %in_addr212.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1, i32 0, i32 1
  %56 = ptrtoint ptr %in_addr212.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub173.i, ptr %in_addr212.i, align 4
  %arrayinit.element227.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1, i32 1
  %57 = ptrtoint ptr %arrayinit.element227.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayinit.element227.i, align 4
  %in_addr229.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1, i32 1, i32 1
  %58 = ptrtoint ptr %in_addr229.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub95.i, ptr %in_addr229.i, align 4
  %arrayinit.element244.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1, i32 2
  %59 = ptrtoint ptr %arrayinit.element244.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %arrayinit.element244.i, align 4
  %in_addr246.i = getelementptr inbounds [2 x [3 x %struct.dma_addr]], ptr %dma_addrs.i, i32 2, i32 1, i32 2, i32 1
  %60 = ptrtoint ptr %in_addr246.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub95.i, ptr %in_addr246.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call31.i)
  %cmp261.i = icmp eq i32 %call31.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call34.i)
  %cmp262.i = icmp sgt i32 %call34.i, 3
  %or.cond.i = select i1 %cmp261.i, i1 %cmp262.i, i1 false
  br i1 %or.cond.i, label %do.end.i, label %lor.end29.i.if.end.i_crit_edge

lor.end29.i.if.end.i_crit_edge:                   ; preds = %lor.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %lor.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.35, i32 noundef 9, i32 noundef %call34.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %lor.end29.i.if.end.i_crit_edge
  %.not.i = xor i1 %21, true
  %brmerge.i = select i1 %.not.i, i1 true, i1 %tobool.i
  br i1 %brmerge.i, label %if.end.i.if.end270.i_crit_edge, label %do.end269.i

if.end.i.if.end270.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end270.i

do.end269.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.38) #8
  br label %if.end270.i

if.end270.i:                                      ; preds = %do.end269.i, %if.end.i.if.end270.i_crit_edge
  br i1 %12, label %land.lhs.true272.i, label %if.end270.i.rsnd_gen2_dma_addr.exit_crit_edge

if.end270.i.rsnd_gen2_dma_addr.exit_crit_edge:    ; preds = %if.end270.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rsnd_gen2_dma_addr.exit

land.lhs.true272.i:                               ; preds = %if.end270.i
  call void @__sanitizer_cov_trace_pc() #7
  %call273.i = tail call i32 @rsnd_ssi_use_busif(ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273.i)
  %tobool274.not.i = icmp eq i32 %call273.i, 0
  %spec.select.i = select i1 %tobool274.not.i, i32 %lor.ext.i, i32 2
  br label %rsnd_gen2_dma_addr.exit

rsnd_gen2_dma_addr.exit:                          ; preds = %land.lhs.true272.i, %if.end270.i.rsnd_gen2_dma_addr.exit_crit_edge
  %is_ssi.0.i = phi i32 [ 0, %if.end270.i.rsnd_gen2_dma_addr.exit_crit_edge ], [ %spec.select.i, %land.lhs.true272.i ]
  %lor.ext30.i = zext i1 %21 to i32
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_from)
  %tobool277.not.i = icmp eq i32 %is_from, 0
  %add281.i = add nuw nsw i32 %lor.ext30.i, %lnot.ext.i
  %arrayidx282.i = getelementptr [3 x [2 x [3 x %struct.dma_addr]]], ptr %dma_addrs.i, i32 0, i32 %is_ssi.0.i, i32 %is_play, i32 %add281.i
  %in_addr289.i = getelementptr [3 x [2 x [3 x %struct.dma_addr]]], ptr %dma_addrs.i, i32 0, i32 %is_ssi.0.i, i32 %is_play, i32 %add281.i, i32 1
  %cond.in.i = select i1 %tobool277.not.i, ptr %in_addr289.i, ptr %arrayidx282.i
  %61 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %cond.i = load i32, ptr %cond.in.i, align 4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %dma_addrs.i) #5
  br label %cleanup

cleanup:                                          ; preds = %rsnd_gen2_dma_addr.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %rsnd_gen2_dma_addr.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_stop(ptr nocapture noundef readonly %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2.i, align 4
  %dma3.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dma3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma3.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 44
  %dma5.i = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %6 = ptrtoint ptr %dma5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma5.i, align 4
  %mul.i = shl i32 %7, 4
  %add.ptr6.i = getelementptr i8, ptr %add.ptr4.i, i32 %mul.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %9 = and i32 %8, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %9) #5, !srcloc !106
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv2.i, align 4
  %dma3.i6 = getelementptr inbounds %struct.rsnd_priv, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dma3.i6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma3.i6, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr4.i7 = getelementptr i8, ptr %15, i32 44
  %16 = ptrtoint ptr %dma5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma5.i, align 4
  %mul.i9 = shl i32 %17, 4
  %add.ptr6.i10 = getelementptr i8, ptr %add.ptr4.i7, i32 %mul.i9
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i10) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1 = icmp eq i32 %19, 0
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #5
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 1024
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmapp_start(ptr nocapture noundef readonly %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr, align 4
  %priv2.i = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %2 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2.i, align 4
  %dma3.i = getelementptr inbounds %struct.rsnd_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dma3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma3.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dmapp_start, %if.then.i)) #5
          to label %rsnd_dmapp_write.exit [label %if.then.i], !srcloc !99

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  %dma8.i = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %10 = ptrtoint ptr %dma8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma8.i, align 4
  %mul.i = shl i32 %11, 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, ptr noundef %dev4.i, ptr noundef nonnull @.str.18, ptr noundef %add.ptr9.i, i32 noundef %1) #5
  br label %rsnd_dmapp_write.exit

rsnd_dmapp_write.exit:                            ; preds = %if.then.i, %entry
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %add.ptr11.i = getelementptr i8, ptr %13, i32 32
  %dma13.i = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %14 = ptrtoint ptr %dma13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma13.i, align 4
  %mul15.i = shl i32 %15, 4
  %add.ptr16.i = getelementptr i8, ptr %add.ptr11.i, i32 %mul15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %16) #5, !srcloc !106
  %dst_addr = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 4
  %17 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_addr, align 4
  %19 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv2.i, align 4
  %dma3.i8 = getelementptr inbounds %struct.rsnd_priv, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dma3.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma3.i8, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dmapp_start, %if.then.i14)) #5
          to label %rsnd_dmapp_write.exit19 [label %if.then.i14], !srcloc !99

if.then.i14:                                      ; preds = %rsnd_dmapp_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i9 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %add.ptr7.i = getelementptr i8, ptr %26, i32 36
  %27 = ptrtoint ptr %dma13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma13.i, align 4
  %mul.i12 = shl i32 %28, 4
  %add.ptr9.i13 = getelementptr i8, ptr %add.ptr7.i, i32 %mul.i12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, ptr noundef %dev4.i9, ptr noundef nonnull @.str.18, ptr noundef %add.ptr9.i13, i32 noundef %18) #5
  br label %rsnd_dmapp_write.exit19

rsnd_dmapp_write.exit19:                          ; preds = %if.then.i14, %rsnd_dmapp_write.exit
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  %add.ptr12.i = getelementptr i8, ptr %30, i32 36
  %31 = ptrtoint ptr %dma13.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma13.i, align 4
  %mul15.i17 = shl i32 %32, 4
  %add.ptr16.i18 = getelementptr i8, ptr %add.ptr12.i, i32 %mul15.i17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %33 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i18, i32 %33) #5, !srcloc !106
  %chcr = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %chcr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chcr, align 4
  %36 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv2.i, align 4
  %dma3.i21 = getelementptr inbounds %struct.rsnd_priv, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %dma3.i21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma3.i21, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dmapp_start, %if.then.i28)) #5
          to label %rsnd_dmapp_write.exit34 [label %if.then.i28], !srcloc !99

if.then.i28:                                      ; preds = %rsnd_dmapp_write.exit19
  call void @__sanitizer_cov_trace_pc() #7
  %dev4.i22 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %39, align 4
  %add.ptr7.i24 = getelementptr i8, ptr %43, i32 44
  %44 = ptrtoint ptr %dma13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma13.i, align 4
  %mul.i26 = shl i32 %45, 4
  %add.ptr9.i27 = getelementptr i8, ptr %add.ptr7.i24, i32 %mul.i26
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, ptr noundef %dev4.i22, ptr noundef nonnull @.str.18, ptr noundef %add.ptr9.i27, i32 noundef %35) #5
  br label %rsnd_dmapp_write.exit34

rsnd_dmapp_write.exit34:                          ; preds = %if.then.i28, %rsnd_dmapp_write.exit19
  %46 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %39, align 4
  %add.ptr12.i30 = getelementptr i8, ptr %47, i32 44
  %48 = ptrtoint ptr %dma13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma13.i, align 4
  %mul15.i32 = shl i32 %49, 4
  %add.ptr16.i33 = getelementptr i8, ptr %add.ptr12.i30, i32 %mul15.i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i33, i32 %50) #5, !srcloc !106
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_dmapp_debug_info(ptr noundef %m, ptr nocapture noundef readnone %io, ptr nocapture noundef readonly %mod) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %dma = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  %dma3 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %ppres = getelementptr inbounds %struct.rsnd_dma_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ppres to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ppres, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma3, align 4
  %mul = shl i32 %9, 4
  %add = add i32 %mul, 32
  tail call void @rsnd_debugfs_reg_show(ptr noundef %m, i32 noundef %5, ptr noundef %7, i32 noundef %add, i32 noundef 16) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_reg_show(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rsnd_dmapp_get_id(ptr nocapture noundef readonly %io, ptr noundef %mod) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 12
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %arrayidx7 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %cmp = icmp eq ptr %1, %mod
  %cmp9 = icmp eq ptr %3, %mod
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @rsnd_mod_id_sub(ptr noundef %3) #5
  %call10 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #5
  %mul = shl i32 %call10, 3
  %add = add i32 %mul, %call
  br label %if.end19

if.else:                                          ; preds = %entry
  %arrayidx5 = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 6
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx5, align 4
  %cmp11 = icmp eq ptr %7, %mod
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #5
  br label %if.end19

if.else14:                                        ; preds = %if.else
  %cmp15 = icmp eq ptr %5, %mod
  br i1 %cmp15, label %if.then16, label %if.else14.if.then22_crit_edge

if.else14.if.then22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then16:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @rsnd_mod_id(ptr noundef %mod) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then12, %if.then
  %entry8.0 = phi ptr [ @gen2_id_table_scu, %if.then12 ], [ @gen2_id_table_cmd, %if.then16 ], [ @gen2_id_table_ssiu, %if.then ]
  %id.0 = phi i32 [ %call13, %if.then12 ], [ %call17, %if.then16 ], [ %add, %if.then ]
  %size.0 = phi i32 [ 10, %if.then12 ], [ 2, %if.then16 ], [ 80, %if.then ]
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0, i32 %id.0)
  %cmp21.not = icmp sgt i32 %size.0, %id.0
  br i1 %cmp21.not, label %if.end25, label %if.end19.if.then22_crit_edge

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %if.else14.if.then22_crit_edge
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %8 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rdai, align 4
  %priv = getelementptr inbounds %struct.rsnd_dai, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %call24 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.21, ptr noundef %call24) #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx26 = getelementptr i8, ptr %entry8.0, i32 %id.0
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx26, align 1
  %conv = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then22
  %retval.0 = phi i32 [ 0, %if.then22 ], [ %conv, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_sub(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_start(ptr noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %cfg = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %substream2 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream2, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cfg) #5
  %4 = getelementptr inbounds i8, ptr %cfg, i32 20
  %5 = call ptr @memset(ptr %4, i32 0, i32 28)
  %rdai = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 4
  %6 = ptrtoint ptr %rdai to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdai, align 4
  %playback = getelementptr inbounds %struct.rsnd_dai, ptr %7, i32 0, i32 1
  %cmp = icmp eq ptr %playback, %io
  %call = tail call i32 @rsnd_runtime_channel_original_with_params(ptr noundef %io, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp4 = icmp eq i32 %call, 1
  br i1 %cmp4, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %substream2, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %runtime8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %11, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 12
  %12 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %format, align 4
  %call9 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %13) #5
  %14 = zext i32 %call9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call9, label %cleanup [
    i32 8, label %cond.end.if.end_crit_edge
    i32 16, label %sw.bb10
    i32 32, label %sw.bb11
  ]

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb10:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb11:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cleanup:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.24, i32 noundef %call9) #8
  br label %cleanup60

if.end:                                           ; preds = %sw.bb11, %sw.bb10, %cond.end.if.end_crit_edge, %entry.if.end_crit_edge
  %buswidth.2 = phi i32 [ 4, %entry.if.end_crit_edge ], [ 1, %cond.end.if.end_crit_edge ], [ 2, %sw.bb10 ], [ 4, %sw.bb11 ]
  %cond14 = select i1 %cmp, i32 1, i32 2
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond14, ptr %cfg, align 4
  %src_addr = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 3
  %16 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_addr, align 4
  %src_addr15 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %18 = ptrtoint ptr %src_addr15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %src_addr15, align 4
  %dst_addr = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 4
  %19 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_addr, align 4
  %dst_addr16 = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %21 = ptrtoint ptr %dst_addr16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dst_addr16, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %22 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %buswidth.2, ptr %src_addr_width, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %23 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %buswidth.2, ptr %dst_addr_width, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_dmaen_start.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_dmaen_start, %if.then23)) #5
          to label %do.end29 [label %if.then23], !srcloc !99

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call ptr @rsnd_mod_name(ptr noundef %mod) #5
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_dmaen_start.__UNIQUE_ID_ddebug242, ptr noundef %dev3, ptr noundef nonnull @.str.26, ptr noundef %call24, ptr noundef %src_addr15, ptr noundef %dst_addr16) #5
  br label %do.end29

do.end29:                                         ; preds = %if.then23, %if.end
  %24 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 44
  %28 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end29.cleanup60_crit_edge, label %dmaengine_slave_config.exit

do.end29.cleanup60_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

dmaengine_slave_config.exit:                      ; preds = %do.end29
  %call.i = call i32 %29(ptr noundef %25, ptr noundef nonnull %cfg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31 = icmp slt i32 %call.i, 0
  br i1 %cmp31, label %dmaengine_slave_config.exit.cleanup60_crit_edge, label %if.end34

dmaengine_slave_config.exit.cleanup60_crit_edge:  ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup60

if.end34:                                         ; preds = %dmaengine_slave_config.exit
  %30 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dma1, align 4
  %runtime36 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %32 = ptrtoint ptr %runtime36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %runtime36, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 51
  %34 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr, align 8
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 18
  %36 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 21
  %38 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %39, %37
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %33, i32 0, i32 16
  %40 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period_size.i, align 4
  %mul.i.i100 = mul i32 %41, %39
  %div1.i.i101 = lshr i32 %mul.i.i100, 3
  %tobool.not.i102 = icmp eq ptr %31, null
  br i1 %tobool.not.i102, label %if.end34.do.end46_crit_edge, label %lor.lhs.false.i

if.end34.do.end46_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

lor.lhs.false.i:                                  ; preds = %if.end34
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %31, align 4
  %tobool1.not.i = icmp eq ptr %43, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end46_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end46_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_cyclic.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 40
  %44 = ptrtoint ptr %device_prep_dma_cyclic.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device_prep_dma_cyclic.i, align 4
  %tobool4.not.i = icmp eq ptr %45, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end46_crit_edge, label %dmaengine_prep_dma_cyclic.exit

lor.lhs.false2.i.do.end46_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

dmaengine_prep_dma_cyclic.exit:                   ; preds = %lor.lhs.false2.i
  %call.i103 = call ptr %45(ptr noundef nonnull %31, i32 noundef %35, i32 noundef %div1.i.i, i32 noundef %div1.i.i101, i32 noundef %cond14, i32 noundef 3) #5
  %tobool42.not = icmp eq ptr %call.i103, null
  br i1 %tobool42.not, label %dmaengine_prep_dma_cyclic.exit.do.end46_crit_edge, label %if.end47

dmaengine_prep_dma_cyclic.exit.do.end46_crit_edge: ; preds = %dmaengine_prep_dma_cyclic.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end46:                                         ; preds = %dmaengine_prep_dma_cyclic.exit.do.end46_crit_edge, %lor.lhs.false2.i.do.end46_crit_edge, %lor.lhs.false.i.do.end46_crit_edge, %if.end34.do.end46_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.28) #8
  br label %cleanup60

if.end47:                                         ; preds = %dmaengine_prep_dma_cyclic.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i103, i32 0, i32 6
  %46 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @rsnd_dmaen_complete, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i103, i32 0, i32 8
  %47 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %mod, ptr %callback_param, align 4
  %48 = ptrtoint ptr %runtime36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %runtime36, align 4
  %buffer_size.i106 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %buffer_size.i106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buffer_size.i106, align 4
  %frame_bits.i.i107 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %49, i32 0, i32 21
  %52 = ptrtoint ptr %frame_bits.i.i107 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %frame_bits.i.i107, align 8
  %mul.i.i108 = mul i32 %53, %51
  %div1.i.i109 = lshr i32 %mul.i.i108, 3
  %dma_len = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5, i32 0, i32 2
  %54 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div1.i.i109, ptr %dma_len, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i103, i32 0, i32 4
  %55 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_submit.i, align 4
  %call.i110 = call i32 %56(ptr noundef nonnull %call.i103) #5
  %cookie = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5, i32 0, i32 1
  %57 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i110, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp52 = icmp slt i32 %call.i110, 0
  br i1 %cmp52, label %do.end57, label %if.end58

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.31) #8
  br label %cleanup60

if.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma1, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %61, i32 0, i32 50
  %62 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device_issue_pending.i, align 4
  call void %63(ptr noundef %59) #5
  br label %cleanup60

cleanup60:                                        ; preds = %if.end58, %do.end57, %do.end46, %dmaengine_slave_config.exit.cleanup60_crit_edge, %do.end29.cleanup60_crit_edge, %cleanup
  %retval.1 = phi i32 [ -5, %do.end57 ], [ 0, %if.end58 ], [ -5, %do.end46 ], [ -22, %cleanup ], [ %call.i, %dmaengine_slave_config.exit.cleanup60_crit_edge ], [ -38, %do.end29.cleanup60_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cfg) #5
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_stop(ptr nocapture noundef readonly %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %5(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_pointer(ptr nocapture noundef readonly %mod, ptr nocapture noundef readonly %io, ptr nocapture noundef writeonly %pointer) #0 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %dma3 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #5
  %4 = call ptr @memset(ptr %state, i32 255, i32 16)
  %5 = ptrtoint ptr %dma3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma3, align 4
  %cookie = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cookie, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 49
  %11 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %12(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %state) #5
  %call.off = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.off)
  %switch = icmp ult i32 %call.off, 2
  br i1 %switch, label %if.then, label %cond.end.if.end11_crit_edge

cond.end.if.end11_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then:                                          ; preds = %cond.end
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp5.not = icmp eq i32 %15, 0
  br i1 %cmp5.not, label %if.then.if.end11_crit_edge, label %land.lhs.true

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dma_len = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5, i32 0, i32 2
  %16 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp7.not = icmp ult i32 %17, %15
  %sub = sub i32 %17, %15
  %sub.op = shl i32 %sub, 3
  %phi.bo = select i1 %cmp7.not, i32 0, i32 %sub.op
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then.if.end11_crit_edge, %cond.end.if.end11_crit_edge
  %pos.0 = phi i32 [ 0, %if.then.if.end11_crit_edge ], [ 0, %cond.end.if.end11_crit_edge ], [ %phi.bo, %land.lhs.true ]
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 21
  %18 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %pos.0, %19
  %20 = ptrtoint ptr %pointer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.i, ptr %pointer, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_prepare(ptr nocapture noundef %mod, ptr noundef %io, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mod_from = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 1
  %4 = ptrtoint ptr %mod_from to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mod_from, align 4
  %mod_to = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 2
  %6 = ptrtoint ptr %mod_to to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mod_to, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %tobool1.not.i = icmp eq ptr %7, null
  %or.cond15.i = xor i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond15.i, label %if.end.i, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i:                                         ; preds = %if.end
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @rsnd_mod_dma_req(ptr noundef %io, ptr noundef nonnull %5) #5
  br label %rsnd_dmaen_request_channel.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call ptr @rsnd_mod_dma_req(ptr noundef %io, ptr noundef %7) #5
  br label %rsnd_dmaen_request_channel.exit

rsnd_dmaen_request_channel.exit:                  ; preds = %if.else.i, %if.then6.i
  %retval.0.i = phi ptr [ %call.i, %if.then6.i ], [ %call7.i, %if.else.i ]
  %8 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %dma1, align 4
  %tobool.not.i16 = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i16, %cmp.i
  br i1 %spec.select.i, label %rsnd_dmaen_request_channel.exit.if.then6_crit_edge, label %rsnd_dmaen_request_channel.exit.cleanup_crit_edge

rsnd_dmaen_request_channel.exit.cleanup_crit_edge: ; preds = %rsnd_dmaen_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

rsnd_dmaen_request_channel.exit.if.then6_crit_edge: ; preds = %rsnd_dmaen_request_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %rsnd_dmaen_request_channel.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %9 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %dma1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %rsnd_dmaen_request_channel.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %rsnd_dmaen_request_channel.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rsnd_dmaen_cleanup(ptr nocapture noundef %mod, ptr nocapture noundef readnone %io, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.rsnd_dma, ptr %mod, i32 0, i32 5
  %0 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dma_release_channel(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %dma1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dma1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_runtime_channel_original_with_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rsnd_dmaen_complete(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rsnd_mod_interrupt(ptr noundef %data, ptr noundef nonnull @__rsnd_dmaen_complete) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_interrupt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__rsnd_dmaen_complete(ptr nocapture noundef readnone %mod, ptr noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rsnd_io_is_working(ptr noundef %io) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rsnd_dai_period_elapsed(ptr noundef %io) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_io_is_working(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_dai_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_dma_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_gen_get_phy_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_ssi_use_busif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !24, !25, !26, !27, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/dma.c", i32 881, i32 59}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/sh/rcar/dma.c", i32 884, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @rsnd_dma_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @rsnd_dma_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/dma.c", i32 835, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @rsnd_dma_alloc.__UNIQUE_ID_ddebug247, !11, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sh/rcar/dma.c", i32 695, i32 6}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/sh/rcar/dma.c", i32 767, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rsnd_dma_of_path.__UNIQUE_ID_ddebug245, !18, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/sh/rcar/dma.c", i32 769, i32 3}
!23 = !{ptr @rsnd_dma_of_path.__UNIQUE_ID_ddebug246, !22, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sh/rcar/dma.c", i32 529, i32 11}
!29 = !{ptr @rsnd_dmapp_ops, !30, !"rsnd_dmapp_ops", i1 false, i1 false}
!30 = !{!"../sound/soc/sh/rcar/dma.c", i32 528, i32 28}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sh/rcar/dma.c", i32 430, i32 2}
!33 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @rsnd_dmapp_write.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sh/rcar/dma.c", i32 504, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rsnd_dmapp_attach.__UNIQUE_ID_ddebug244, !36, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/sh/rcar/dma.c", i32 403, i32 3}
!41 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rsnd_dmapp_get_id._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rsnd_dmapp_get_id._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @gen2_id_table_ssiu, !45, !"gen2_id_table_ssiu", i1 false, i1 false}
!45 = !{!"../sound/soc/sh/rcar/dma.c", i32 333, i32 17}
!46 = !{ptr @gen2_id_table_scu, !47, !"gen2_id_table_scu", i1 false, i1 false}
!47 = !{!"../sound/soc/sh/rcar/dma.c", i32 355, i32 17}
!48 = !{ptr @gen2_id_table_cmd, !49, !"gen2_id_table_cmd", i1 false, i1 false}
!49 = !{!"../sound/soc/sh/rcar/dma.c", i32 367, i32 17}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sh/rcar/dma.c", i32 321, i32 11}
!52 = !{ptr @rsnd_dmaen_ops, !53, !"rsnd_dmaen_ops", i1 false, i1 false}
!53 = !{!"../sound/soc/sh/rcar/dma.c", i32 320, i32 28}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sh/rcar/dma.c", i32 193, i32 4}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rsnd_dmaen_start._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rsnd_dmaen_start._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sh/rcar/dma.c", i32 204, i32 2}
!61 = !{ptr @rsnd_dmaen_start.__UNIQUE_ID_ddebug242, !60, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sh/rcar/dma.c", i32 220, i32 3}
!64 = !{ptr @rsnd_dmaen_start._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rsnd_dmaen_start._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/sh/rcar/dma.c", i32 231, i32 3}
!68 = !{ptr @rsnd_dmaen_start._entry.30, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @rsnd_dmaen_start._entry_ptr.32, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sh/rcar/dma.c", i32 152, i32 3}
!72 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rsnd_dmaen_prepare._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rsnd_dmaen_prepare._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/sh/rcar/dma.c", i32 633, i32 3}
!77 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rsnd_gen2_dma_addr._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rsnd_gen2_dma_addr._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sh/rcar/dma.c", i32 638, i32 3}
!82 = !{ptr @rsnd_gen2_dma_addr._entry.37, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rsnd_gen2_dma_addr._entry_ptr.39, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mem, !85, !"mem", i1 false, i1 false}
!85 = !{!"../sound/soc/sh/rcar/dma.c", i32 63, i32 24}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/sh/rcar/dma.c", i32 60, i32 10}
!88 = !{ptr @mem_ops, !89, !"mem_ops", i1 false, i1 false}
!89 = !{!"../sound/soc/sh/rcar/dma.c", i32 59, i32 28}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148777525, i64 2148777530, i64 2148777543, i64 2148777587, i64 2148777621, i64 2148777642}
!100 = !{ptr @rsnd_dmaen_attach, ptr @rsnd_dmapp_attach}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.peeled.count", i32 2}
!103 = !{i64 6407484}
!104 = !{i64 2153940343}
!105 = !{i64 2153941698}
!106 = !{i64 6407066}
