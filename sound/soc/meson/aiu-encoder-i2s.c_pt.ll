; ModuleID = '/llk/IR_all_yes/sound/soc/meson/aiu-encoder-i2s.c_pt.bc'
source_filename = "../sound/soc/meson/aiu-encoder-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.aiu = type { ptr, ptr, %struct.aiu_interface, %struct.aiu_interface, ptr }
%struct.aiu_interface = type { ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.aiu_platform_data = type { i8, i8 }

@aiu_encoder_i2s_dai_ops = dso_local constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @aiu_encoder_i2s_set_sysclk, ptr null, ptr null, ptr null, ptr @aiu_encoder_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aiu_encoder_i2s_startup, ptr @aiu_encoder_i2s_shutdown, ptr @aiu_encoder_i2s_hw_params, ptr @aiu_encoder_i2s_hw_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/meson/aiu-encoder-i2s.c\00", [62 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to set sysclk to %uHz\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aiu_encoder_i2s_set_sysclk\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_set_sysclk._entry_ptr = internal global ptr @aiu_encoder_i2s_set_sysclk._entry, section ".printk_index", align 4
@hw_channel_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @hw_channels, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 304, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"adding channels constraints failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aiu_encoder_i2s_startup\00", [40 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_startup._entry_ptr = internal global ptr @aiu_encoder_i2s_startup._entry, section ".printk_index", align 4
@aiu_encoder_i2s_startup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str, i32 310, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable i2s clocks\0A\00", [35 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_startup._entry_ptr.9 = internal global ptr @aiu_encoder_i2s_startup._entry.7, section ".printk_index", align 4
@hw_channels = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 8], [24 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setting i2s desc failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"aiu_encoder_i2s_hw_params\00", [38 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_hw_params._entry_ptr = internal global ptr @aiu_encoder_i2s_hw_params._entry, section ".printk_index", align 4
@aiu_encoder_i2s_hw_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str, i32 205, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"setting i2s clocks failed\0A\00", [37 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_hw_params._entry_ptr.14 = internal global ptr @aiu_encoder_i2s_hw_params._entry.12, section ".printk_index", align 4
@aiu_encoder_i2s_set_more_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot increase i2s divider by 50%%\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aiu_encoder_i2s_set_more_div\00", [35 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_set_more_div._entry_ptr = internal global ptr @aiu_encoder_i2s_set_more_div._entry, section ".printk_index", align 4
@aiu_encoder_i2s_set_legacy_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported i2s divider: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"aiu_encoder_i2s_set_legacy_div\00", [33 x i8] zeroinitializer }, align 32
@aiu_encoder_i2s_set_legacy_div._entry_ptr = internal global ptr @aiu_encoder_i2s_set_legacy_div._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"aiu_encoder_i2s_dai_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 323, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 273, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 281, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"hw_channel_constraints\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 287, i32 48 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 304, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 310, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [12 x i8] c"hw_channels\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 286, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 199, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 205, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 124, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [37 x i8] c"../sound/soc/meson/aiu-encoder-i2s.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 94, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @aiu_encoder_i2s_hw_params._entry, ptr @aiu_encoder_i2s_hw_params._entry.12, ptr @aiu_encoder_i2s_hw_params._entry_ptr, ptr @aiu_encoder_i2s_hw_params._entry_ptr.14, ptr @aiu_encoder_i2s_set_legacy_div._entry, ptr @aiu_encoder_i2s_set_legacy_div._entry_ptr, ptr @aiu_encoder_i2s_set_more_div._entry, ptr @aiu_encoder_i2s_set_more_div._entry_ptr, ptr @aiu_encoder_i2s_set_sysclk._entry, ptr @aiu_encoder_i2s_set_sysclk._entry_ptr, ptr @aiu_encoder_i2s_startup._entry, ptr @aiu_encoder_i2s_startup._entry.7, ptr @aiu_encoder_i2s_startup._entry_ptr, ptr @aiu_encoder_i2s_startup._entry_ptr.9, ptr @aiu_encoder_i2s_dai_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hw_channel_constraints, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @hw_channels, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_channel_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_startup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_channels to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_hw_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_set_more_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aiu_encoder_i2s_set_legacy_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_i2s_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp.not = icmp eq i32 %clk_id, 0
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !52

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp22 = icmp eq i32 %dir, 0
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end24

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %i2s = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2s, align 4
  %clk = getelementptr %struct.clk_bulk_data, ptr %7, i32 2, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call25 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %freq) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end24.cleanup_crit_edge, label %do.end30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %freq) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end21.cleanup_crit_edge ], [ %call25, %do.end30 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_i2s_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and2 = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and2)
  %cmp.not = icmp eq i32 %and2, 16384
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %fmt, 3840
  %2 = add nsw i32 %and, -512
  %switch.and = and i32 %2, -768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = select i1 %switch.selectcmp, i32 128, i32 0
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end.if.end12_crit_edge [
    i32 768, label %if.end.if.then10_crit_edge
    i32 1024, label %if.end.if.then10_crit_edge46
  ]

if.end.if.then10_crit_edge46:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.if.then10_crit_edge46
  %or11 = or i32 %3, 64
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %val.1 = phi i32 [ %or11, %if.then10 ], [ %3, %if.end.if.end12_crit_edge ]
  %and13 = and i32 %fmt, 15
  %5 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and13, label %if.end12.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.end12.do.body18_crit_edge
  ]

if.end12.do.body18_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %xor = xor i32 %val.1, 128
  br label %do.body18

do.body18:                                        ; preds = %sw.bb, %if.end12.do.body18_crit_edge
  %val.2 = phi i32 [ %xor, %sw.bb ], [ %val.1, %if.end12.do.body18_crit_edge ]
  %skew.0 = phi i32 [ 256, %sw.bb ], [ 0, %if.end12.do.body18_crit_edge ]
  %or31 = or i32 %skew.0, %val.2
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 960, i32 noundef %or31) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body18 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_i2s_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %call1 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %7, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @hw_channel_constraints) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %i2s = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 2
  %clk_num = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_num, align 4
  %10 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2s, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %9, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %9, ptr noundef %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_bulk_unprepare(i32 noundef %9, ptr noundef %11) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then3.i, %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %entry.cleanup.sink.split_crit_edge ], [ @.str.8, %if.end.cleanup.sink.split_crit_edge ], [ @.str.8, %if.then3.i ]
  %retval.0.ph = phi i32 [ %call1, %entry.cleanup.sink.split_crit_edge ], [ %call.i, %if.end.cleanup.sink.split_crit_edge ], [ %call1.i, %if.then3.i ]
  %dev9 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %.str.8.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aiu_encoder_i2s_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %i2s = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 2
  %clk_num = getelementptr inbounds %struct.aiu, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_num, align 4
  %8 = ptrtoint ptr %i2s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2s, align 4
  tail call void @clk_bulk_disable(i32 noundef %7, ptr noundef %9) #4
  tail call void @clk_bulk_unprepare(i32 noundef %7, ptr noundef %9) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_i2s_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 1, i32 noundef 0) #4
  %call.i20 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 84, i32 noundef 1) #4
  %call1.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 68) #4
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %entry.if.then.i.i.i.i_crit_edge

entry.if.then.i.i.i.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %entry.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %3, %entry.if.then.i.i.i.i_crit_edge ], [ %6, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #4, !range !53
  %add.i.i.i.i = or i32 %4, %i.09.lcssa.i.i.i.i
  br label %params_physical_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %entry
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.1.i.i.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_physical_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_physical_width.exit.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_physical_width.exit.i

params_physical_width.exit.i:                     ; preds = %for.inc.i.i.i.i.params_physical_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_physical_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i.i) #4
  %7 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call1.i.i, label %params_physical_width.exit.i.do.end_crit_edge [
    i32 16, label %params_physical_width.exit.i.sw.epilog.i_crit_edge
    i32 32, label %sw.bb.i
  ]

params_physical_width.exit.i.sw.epilog.i_crit_edge: ; preds = %params_physical_width.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

params_physical_width.exit.i.do.end_crit_edge:    ; preds = %params_physical_width.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb.i:                                          ; preds = %params_physical_width.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %params_physical_width.exit.i.sw.epilog.i_crit_edge
  %desc.0.i = phi i32 [ 2592, %sw.bb.i ], [ 2048, %params_physical_width.exit.i.sw.epilog.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %sw.epilog.i.do.end_crit_edge [
    i32 2, label %sw.epilog.i.if.end_crit_edge
    i32 8, label %sw.bb4.i
  ]

sw.epilog.i.if.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

sw.epilog.i.do.end_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  %or5.i = or i32 %desc.0.i, 1
  br label %if.end

do.end:                                           ; preds = %sw.epilog.i.do.end_crit_edge, %params_physical_width.exit.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb4.i, %sw.epilog.i.if.end_crit_edge
  %desc.1.i = phi i32 [ %or5.i, %sw.bb4.i ], [ %desc.0.i, %sw.epilog.i.if.end_crit_edge ]
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 2593, i32 noundef %desc.1.i) #4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i, align 4
  %arrayidx.i.i.i21 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %arrayidx.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i21, align 4
  %i2s.i = getelementptr inbounds %struct.aiu, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %i2s.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2s.i, align 4
  %clk.i = getelementptr %struct.clk_bulk_data, ptr %20, i32 2, i32 1
  %21 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk.i, align 4
  %call2.i = tail call i32 @clk_get_rate(ptr noundef %22) #4
  %div45.i = lshr i32 %18, 1
  %add.i = add i32 %call2.i, %div45.i
  %div3.i = udiv i32 %add.i, %18
  %rem.i = and i32 %div3.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end7

if.end.i:                                         ; preds = %if.end
  %call4.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 64, i32 noundef 4, i32 noundef 4) #4
  %call18.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 160, i32 noundef 4095, i32 noundef 63) #4
  %div1946.i = lshr i32 %div3.i, 6
  %platform.i = getelementptr inbounds %struct.aiu, ptr %16, i32 0, i32 4
  %23 = ptrtoint ptr %platform.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform.i, align 4
  %has_clk_ctrl_more_i2s_div.i = getelementptr inbounds %struct.aiu_platform_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %has_clk_ctrl_more_i2s_div.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_clk_ctrl_more_i2s_div.i, align 1, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not.i = icmp eq i8 %26, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end.i
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i.i.i, label %for.inc.i.i.i.i.i, label %if.then21.i.if.then.i.i.i.i.i_crit_edge

if.then21.i.if.then.i.i.i.i.i_crit_edge:          ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %for.inc.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.then21.i.if.then.i.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i.i = phi i32 [ 0, %if.then21.i.if.then.i.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i.i = phi i32 [ %28, %if.then21.i.if.then.i.i.i.i.i_crit_edge ], [ %31, %for.inc.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i.i, i1 true) #4, !range !53
  %add.i.i.i.i.i = or i32 %29, %i.09.lcssa.i.i.i.i.i
  br label %params_width.exit.i.i

for.inc.i.i.i.i.i:                                ; preds = %if.then21.i
  %arrayidx.1.i.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i.i.i.i = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i.i.i.i, label %for.inc.i.i.i.i.i.params_width.exit.i.i_crit_edge, label %for.inc.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.if.then.i.i.i.i.i_crit_edge:    ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i.i.i

for.inc.i.i.i.i.i.params_width.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_width.exit.i.i

params_width.exit.i.i:                            ; preds = %for.inc.i.i.i.i.i.params_width.exit.i.i_crit_edge, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %add.i.i.i.i.i, %if.then.i.i.i.i.i ], [ 0, %for.inc.i.i.i.i.i.params_width.exit.i.i_crit_edge ]
  %call1.i.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i.i.i)
  %cmp.i.i = icmp eq i32 %call1.i.i.i, 16
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %params_width.exit.i.i.if.end4.i.i_crit_edge

params_width.exit.i.i.if.end4.i.i_crit_edge:      ; preds = %params_width.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i

land.lhs.true.i.i:                                ; preds = %params_width.exit.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp2.i.i = icmp eq i32 %33, 8
  br i1 %cmp2.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end4.i.i_crit_edge

land.lhs.true.i.i.if.end4.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %34 = and i32 %div3.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.15) #7
  br label %do.end7

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %div42.i.i = lshr i32 %div3.i, 7
  %add.i.i = add nuw nsw i32 %div42.i.i, %div1946.i
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i, %land.lhs.true.i.i.if.end4.i.i_crit_edge, %params_width.exit.i.i.if.end4.i.i_crit_edge
  %bs.addr.0.i.i = phi i32 [ %add.i.i, %if.end.i.i ], [ %div1946.i, %land.lhs.true.i.i.if.end4.i.i_crit_edge ], [ %div1946.i, %params_width.exit.i.i.if.end4.i.i_crit_edge ]
  %call15.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 12, i32 noundef 0) #4
  %sub.i.i = add nsw i32 %bs.addr.0.i.i, 63
  %and32.i.i = and i32 %sub.i.i, 63
  br label %if.end9

if.else.i:                                        ; preds = %if.end.i
  %37 = zext i32 %div1946.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %div1946.i, label %do.end.i49.i [
    i32 1, label %if.else.i.sw.epilog.i.i_crit_edge
    i32 2, label %if.else.i.sw.epilog.i.i_crit_edge31
    i32 4, label %if.else.i.sw.epilog.i.i_crit_edge32
    i32 8, label %if.else.i.sw.epilog.i.i_crit_edge33
  ]

if.else.i.sw.epilog.i.i_crit_edge33:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.else.i.sw.epilog.i.i_crit_edge32:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.else.i.sw.epilog.i.i_crit_edge31:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

if.else.i.sw.epilog.i.i_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

do.end.i49.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.17, i32 noundef %div1946.i) #7
  br label %do.end7

sw.epilog.i.i:                                    ; preds = %if.else.i.sw.epilog.i.i_crit_edge, %if.else.i.sw.epilog.i.i_crit_edge31, %if.else.i.sw.epilog.i.i_crit_edge32, %if.else.i.sw.epilog.i.i_crit_edge33
  %40 = tail call i32 @llvm.cttz.i32(i32 %div1946.i, i1 false) #4, !range !53
  %shl.i.i = shl nuw nsw i32 %40, 2
  %and.i.i = and i32 %shl.i.i, 12
  %call11.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 12, i32 noundef %and.i.i) #4
  br label %if.end9

do.end7:                                          ; preds = %do.end.i49.i, %do.end.i.i, %if.end.do.end7_crit_edge
  %dev8 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %41 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog.i.i, %if.end4.i.i
  %and32.i.sink.i = phi i32 [ %and32.i.i, %if.end4.i.i ], [ 0, %sw.epilog.i.i ]
  %call33.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 100, i32 noundef 63, i32 noundef %and32.i.sink.i) #4
  %call28.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 100, i32 noundef 64, i32 noundef 64) #4
  %call.i24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 1, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiu_encoder_i2s_hw_free(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 88, i32 noundef 1, i32 noundef 0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @aiu_encoder_i2s_dai_ops, !1, !"aiu_encoder_i2s_dai_ops", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 323, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 273, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 281, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @aiu_encoder_i2s_set_sysclk._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @aiu_encoder_i2s_set_sysclk._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 304, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @aiu_encoder_i2s_startup._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @aiu_encoder_i2s_startup._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 310, i32 3}
!18 = !{ptr @aiu_encoder_i2s_startup._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @aiu_encoder_i2s_startup._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @hw_channel_constraints, !21, !"hw_channel_constraints", i1 false, i1 false}
!21 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 287, i32 48}
!22 = !{ptr @hw_channels, !23, !"hw_channels", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 286, i32 27}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 199, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aiu_encoder_i2s_hw_params._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @aiu_encoder_i2s_hw_params._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 205, i32 3}
!31 = !{ptr @aiu_encoder_i2s_hw_params._entry.12, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @aiu_encoder_i2s_hw_params._entry_ptr.14, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 124, i32 4}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @aiu_encoder_i2s_set_more_div._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @aiu_encoder_i2s_set_more_div._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/meson/aiu-encoder-i2s.c", i32 94, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aiu_encoder_i2s_set_legacy_div._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @aiu_encoder_i2s_set_legacy_div._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i32 0, i32 33}
!54 = !{i8 0, i8 2}
