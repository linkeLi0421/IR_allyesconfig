; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vc4/vc4_hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_hdmi_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_settings = type { i64, i64, [3 x %struct.phy_lane_settings], %struct.phy_lane_settings }
%struct.phy_lane_settings = type { %struct.anon.113, i8, i8 }
%struct.anon.113 = type { i8, i8 }
%struct.vc4_hdmi = type { %struct.vc4_hdmi_audio, ptr, ptr, %struct.vc4_hdmi_encoder, %struct.drm_connector, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, %struct.cec_msg, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.debugfs_regset32, %struct.debugfs_regset32, %struct.spinlock, %struct.mutex, %struct.drm_display_mode, i8, i8 }
%struct.vc4_hdmi_audio = type { %struct.snd_soc_card, %struct.snd_soc_dai_link, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_soc_dai_link_component, %struct.snd_dmaengine_dai_dma_data, %struct.hdmi_audio_infoframe, ptr, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.vc4_hdmi_encoder = type { %struct.vc4_encoder, i8, i8 }
%struct.vc4_encoder = type { %struct.drm_encoder, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.cec_msg = type { i64, i64, i32, i32, i32, i32, [16 x i8], i8, i8, i8, i8, i8, i8, i8 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.vc4_hdmi_variant = type { i32, ptr, ptr, i64, ptr, i32, [4 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.vc4_hdmi_register = type { ptr, i32, i32 }
%struct.vc4_hdmi_connector_state = type { %struct.drm_connector_state, i64 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_phy.c\00", [61 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", [60 x i8] zeroinitializer }, align 32
@vc4_hdmi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 451, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid register ID %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vc4_hdmi_write\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vc4_hdmi_write._entry_ptr = internal global ptr @vc4_hdmi_write._entry, section ".printk_index", align 4
@vc4_hdmi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.6, ptr @.str.1, i32 421, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vc4_hdmi_read\00", [18 x i8] zeroinitializer }, align 32
@vc4_hdmi_read._entry_ptr = internal global ptr @vc4_hdmi_read._entry, section ".printk_index", align 4
@vc4_hdmi_read._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.1, i32 429, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown register ID %u\0A\00", [40 x i8] zeroinitializer }, align 32
@vc4_hdmi_read._entry_ptr.9 = internal global ptr @vc4_hdmi_read._entry.7, section ".printk_index", align 4
@vc5_hdmi_phy_settings = internal constant { [7 x %struct.phy_settings], [32 x i8] } { [7 x %struct.phy_settings] [%struct.phy_settings { i64 0, i64 50000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 10 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 10 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 10 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 10 }, i8 24, i8 0 } }, %struct.phy_settings { i64 50000001, i64 75000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 75000001, i64 165000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 9 }, i8 18, i8 0 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 165000001, i64 250000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 15 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 15 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 15 }, i8 18, i8 1 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 12 }, i8 24, i8 3 } }, %struct.phy_settings { i64 250000001, i64 340000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 2, i8 13 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.113 { i8 2, i8 13 }, i8 18, i8 1 }, %struct.phy_lane_settings { %struct.anon.113 { i8 2, i8 13 }, i8 18, i8 1 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 12 }, i8 24, i8 15 } }, %struct.phy_settings { i64 340000001, i64 450000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 27 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 27 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 27 }, i8 18, i8 15 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 10 }, i8 18, i8 15 } }, %struct.phy_settings { i64 450000001, i64 600000000, [3 x %struct.phy_lane_settings] [%struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 28 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 28 }, i8 18, i8 15 }, %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 28 }, i8 18, i8 15 }], %struct.phy_lane_settings { %struct.anon.113 { i8 0, i8 11 }, i8 19, i8 15 } }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.10 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.16 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.19 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.20 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.22 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.23 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 396, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 445, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 450, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 420, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 428, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"vc5_hdmi_phy_settings\00", align 1
@___asan_gen_.58 = private constant [38 x i8] c"../drivers/gpu/drm/vc4/vc4_hdmi_phy.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 258, i32 34 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @vc4_hdmi_read._entry, ptr @vc4_hdmi_read._entry.7, ptr @vc4_hdmi_read._entry_ptr, ptr @vc4_hdmi_read._entry_ptr.9, ptr @vc4_hdmi_write._entry, ptr @vc4_hdmi_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @vc5_hdmi_phy_settings], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc4_hdmi_read._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc5_hdmi_phy_settings to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_init(ptr noundef %vc4_hdmi, ptr nocapture noundef readnone %conn_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef 983040)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vc4_hdmi_write(ptr noundef %hdmi, i32 noundef %reg, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %variant1 = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !30

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 445, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %pdev = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 1
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %runtime_status.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.if.end50_crit_edge, label %pm_runtime_active.exit

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

pm_runtime_active.exit:                           ; preds = %if.end
  %disable_depth.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 12, i32 15
  %7 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i)
  %tobool.i = icmp ugt i16 %bf.load.i, 8191
  br i1 %tobool.i, label %pm_runtime_active.exit.if.end50_crit_edge, label %do.end44, !prof !31

pm_runtime_active.exit.if.end50_crit_edge:        ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end44:                                         ; preds = %pm_runtime_active.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 447, i32 noundef 9, ptr noundef null) #5
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %pm_runtime_active.exit.if.end50_crit_edge, %if.end.if.end50_crit_edge
  %num_registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_registers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_registers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %reg)
  %cmp58.not = icmp ugt i32 %9, %reg
  br i1 %cmp58.not, label %if.end65, label %do.end62

do.end62:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %dev64 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev64, ptr noundef nonnull @.str.2, i32 noundef %reg) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end50
  %registers = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %registers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %registers, align 8
  %reg66 = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 %reg, i32 1
  %14 = ptrtoint ptr %reg66 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg66, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end65.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 6, label %sw.bb5.i
    i32 7, label %sw.bb6.i
    i32 8, label %sw.bb7.i
  ]

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit

sw.bb1.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit

sw.bb2.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit

sw.bb3.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit

sw.bb4.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit

sw.bb5.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit

sw.bb6.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit

sw.bb7.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i = getelementptr inbounds %struct.vc4_hdmi, ptr %hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit

__vc4_hdmi_get_field_base.exit:                   ; preds = %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i.in = phi ptr [ %rm_regs.i, %sw.bb7.i ], [ %ram_regs.i, %sw.bb6.i ], [ %phy_regs.i, %sw.bb5.i ], [ %dvp_regs.i, %sw.bb4.i ], [ %cec_regs.i, %sw.bb3.i ], [ %csc_regs.i, %sw.bb2.i ], [ %hdmicore_regs.i, %sw.bb1.i ], [ %hd_regs.i, %sw.bb.i ]
  %17 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %17)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool68.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool68.not, label %__vc4_hdmi_get_field_base.exit.cleanup_crit_edge, label %do.body71

__vc4_hdmi_get_field_base.exit.cleanup_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body71:                                        ; preds = %__vc4_hdmi_get_field_base.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %value)
  %offset = getelementptr %struct.vc4_hdmi_register, ptr %13, i32 %reg, i32 2
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #5, !srcloc !33
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %__vc4_hdmi_get_field_base.exit.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %do.end62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_disable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef 983040)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_rng_enable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !31

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 62
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.2, i32 noundef 62) #8
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 62, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.8, i32 noundef 62) #8
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 62, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %22 = and i32 %21, -3
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %23, %if.end37.i ], [ 0, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 62, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc4_hdmi_phy_rng_disable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !31

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 62
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.2, i32 noundef 62) #8
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 62, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.8, i32 noundef 62) #8
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 62, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %22 = or i32 %21, 2
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 33554432, %do.end24.i ], [ %23, %if.end37.i ], [ 33554432, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 62, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_init(ptr noundef %vc4_hdmi, ptr nocapture noundef readonly %conn_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant1 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1, align 4
  %pixel_rate = getelementptr inbounds %struct.vc4_hdmi_connector_state, ptr %conn_state, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_rate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pixel_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3000000000, i64 %3)
  %cmp11.i = icmp ult i64 %3, 3000000000
  br i1 %cmp11.i, label %while.body.lr.ph.i, label %entry.phy_get_vco_freq.exit_crit_edge

entry.phy_get_vco_freq.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_freq.exit

while.body.lr.ph.i:                               ; preds = %entry
  %mul.i = mul nuw nsw i64 %3, 10
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %_vco_div.012.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %while.body.i.while.body.i_crit_edge ]
  %inc.i = add i32 %_vco_div.012.i, 1
  %conv.i = zext i32 %inc.i to i64
  %mul1.i = mul i64 %mul.i, %conv.i
  %cmp.i = icmp ult i64 %mul1.i, 3000000000
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.phy_get_vco_freq.exit_crit_edge

while.body.i.phy_get_vco_freq.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_freq.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

phy_get_vco_freq.exit:                            ; preds = %while.body.i.phy_get_vco_freq.exit_crit_edge, %entry.phy_get_vco_freq.exit_crit_edge
  %vco_freq.0.lcssa.i = phi i64 [ %3, %entry.phy_get_vco_freq.exit_crit_edge ], [ %mul1.i, %while.body.i.phy_get_vco_freq.exit_crit_edge ]
  %_vco_div.0.lcssa.i = phi i32 [ 0, %entry.phy_get_vco_freq.exit_crit_edge ], [ %inc.i, %while.body.i.phy_get_vco_freq.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4500000000, i64 %vco_freq.0.lcssa.i)
  %cmp2.i = icmp ugt i64 %vco_freq.0.lcssa.i, 4500000000
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %4 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %phy_get_vco_freq.exit.vc5_hdmi_reset_phy.exit_crit_edge, label %land.rhs.i

phy_get_vco_freq.exit.vc5_hdmi_reset_phy.exit_crit_edge: ; preds = %phy_get_vco_freq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc5_hdmi_reset_phy.exit

land.rhs.i:                                       ; preds = %phy_get_vco_freq.exit
  %dep_map.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge, !prof !30

land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc5_hdmi_reset_phy.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #5
  br label %vc5_hdmi_reset_phy.exit

vc5_hdmi_reset_phy.exit:                          ; preds = %do.end.i, %land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge, %phy_get_vco_freq.exit.vc5_hdmi_reset_phy.exit_crit_edge
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef 15) #5
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 72, i32 noundef 1024) #5
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 72, i32 noundef 16)
  %5 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %variant1, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %7 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 18
  %9 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i, label %vc5_hdmi_reset_phy.exit.if.end.i_crit_edge, label %pm_runtime_active.exit.i

vc5_hdmi_reset_phy.exit.if.end.i_crit_edge:       ; preds = %vc5_hdmi_reset_phy.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %vc5_hdmi_reset_phy.exit
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3, i32 12, i32 15
  %11 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i3336, !prof !31

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i3336:                                     ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i3336, %pm_runtime_active.exit.i.if.end.i_crit_edge, %vc5_hdmi_reset_phy.exit.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 5
  %12 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %13)
  %cmp.not.i3337 = icmp ugt i32 %13, 73
  br i1 %cmp.not.i3337, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.2, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 73, i32 1
  %18 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg28.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %19, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %21 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.8, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %17, i32 73, i32 2
  %24 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %27, %if.end37.i ], [ 0, %do.end34.i ]
  %and10 = and i32 %retval.0.i, -16
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef %and10)
  %28 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %variant1, align 4
  %30 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3340 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 12, i32 18
  %32 = ptrtoint ptr %runtime_status.i.i3340 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %runtime_status.i.i3340, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i3341 = icmp eq i32 %33, 0
  br i1 %cmp.i.i3341, label %vc4_hdmi_read.exit.if.end.i3349_crit_edge, label %pm_runtime_active.exit.i3345

vc4_hdmi_read.exit.if.end.i3349_crit_edge:        ; preds = %vc4_hdmi_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3349

pm_runtime_active.exit.i3345:                     ; preds = %vc4_hdmi_read.exit
  %disable_depth.i.i3342 = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 12, i32 15
  %34 = ptrtoint ptr %disable_depth.i.i3342 to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load.i.i3343 = load i16, ptr %disable_depth.i.i3342, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3343)
  %tobool.i.i3344 = icmp ugt i16 %bf.load.i.i3343, 8191
  br i1 %tobool.i.i3344, label %pm_runtime_active.exit.i3345.if.end.i3349_crit_edge, label %do.end.i3346, !prof !31

pm_runtime_active.exit.i3345.if.end.i3349_crit_edge: ; preds = %pm_runtime_active.exit.i3345
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3349

do.end.i3346:                                     ; preds = %pm_runtime_active.exit.i3345
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3349

if.end.i3349:                                     ; preds = %do.end.i3346, %pm_runtime_active.exit.i3345.if.end.i3349_crit_edge, %vc4_hdmi_read.exit.if.end.i3349_crit_edge
  %num_registers.i3347 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %29, i32 0, i32 5
  %35 = ptrtoint ptr %num_registers.i3347 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_registers.i3347, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54, i32 %36)
  %cmp.not.i3348 = icmp ugt i32 %36, 54
  br i1 %cmp.not.i3348, label %if.end27.i3354, label %do.end24.i3351

do.end24.i3351:                                   ; preds = %if.end.i3349
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev.i, align 8
  %dev26.i3350 = getelementptr inbounds %struct.platform_device, ptr %38, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3350, ptr noundef nonnull @.str.2, i32 noundef 54) #8
  br label %vc4_hdmi_read.exit3381

if.end27.i3354:                                   ; preds = %if.end.i3349
  %registers.i3352 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %29, i32 0, i32 4
  %39 = ptrtoint ptr %registers.i3352 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %registers.i3352, align 8
  %reg28.i3353 = getelementptr %struct.vc4_hdmi_register, ptr %40, i32 54, i32 1
  %41 = ptrtoint ptr %reg28.i3353 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg28.i3353, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %42, label %if.end27.i3354.do.end34.i3376_crit_edge [
    i32 2, label %sw.bb.i.i3356
    i32 1, label %sw.bb1.i.i3358
    i32 4, label %sw.bb2.i.i3360
    i32 3, label %sw.bb3.i.i3362
    i32 5, label %sw.bb4.i.i3364
    i32 6, label %sw.bb5.i.i3366
    i32 7, label %sw.bb6.i.i3368
    i32 8, label %sw.bb7.i.i3370
  ]

if.end27.i3354.do.end34.i3376_crit_edge:          ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3376

sw.bb.i.i3356:                                    ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3355 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb1.i.i3358:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3357 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb2.i.i3360:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3359 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb3.i.i3362:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3361 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb4.i.i3364:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3363 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb5.i.i3366:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3365 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb6.i.i3368:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3367 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3374

sw.bb7.i.i3370:                                   ; preds = %if.end27.i3354
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3369 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3374

__vc4_hdmi_get_field_base.exit.i3374:             ; preds = %sw.bb7.i.i3370, %sw.bb6.i.i3368, %sw.bb5.i.i3366, %sw.bb4.i.i3364, %sw.bb3.i.i3362, %sw.bb2.i.i3360, %sw.bb1.i.i3358, %sw.bb.i.i3356
  %retval.0.i.in.i3371 = phi ptr [ %rm_regs.i.i3369, %sw.bb7.i.i3370 ], [ %ram_regs.i.i3367, %sw.bb6.i.i3368 ], [ %phy_regs.i.i3365, %sw.bb5.i.i3366 ], [ %dvp_regs.i.i3363, %sw.bb4.i.i3364 ], [ %cec_regs.i.i3361, %sw.bb3.i.i3362 ], [ %csc_regs.i.i3359, %sw.bb2.i.i3360 ], [ %hdmicore_regs.i.i3357, %sw.bb1.i.i3358 ], [ %hd_regs.i.i3355, %sw.bb.i.i3356 ]
  %44 = ptrtoint ptr %retval.0.i.in.i3371 to i32
  call void @__asan_load4_noabort(i32 %44)
  %retval.0.i.i3372 = load ptr, ptr %retval.0.i.in.i3371, align 4
  %tobool30.not.i3373 = icmp eq ptr %retval.0.i.i3372, null
  br i1 %tobool30.not.i3373, label %__vc4_hdmi_get_field_base.exit.i3374.do.end34.i3376_crit_edge, label %if.end37.i3379

__vc4_hdmi_get_field_base.exit.i3374.do.end34.i3376_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3374
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3376

do.end34.i3376:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3374.do.end34.i3376_crit_edge, %if.end27.i3354.do.end34.i3376_crit_edge
  %45 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdev.i, align 8
  %dev36.i3375 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3375, ptr noundef nonnull @.str.8, i32 noundef 54) #8
  br label %vc4_hdmi_read.exit3381

if.end37.i3379:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3374
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3377 = getelementptr %struct.vc4_hdmi_register, ptr %40, i32 54, i32 2
  %47 = ptrtoint ptr %offset.i3377 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %offset.i3377, align 4
  %add.ptr.i3378 = getelementptr i8, ptr %retval.0.i.i3372, i32 %48
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3378) #5, !srcloc !34
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3381

vc4_hdmi_read.exit3381:                           ; preds = %if.end37.i3379, %do.end34.i3376, %do.end24.i3351
  %retval.0.i3380 = phi i32 [ 0, %do.end24.i3351 ], [ %50, %if.end37.i3379 ], [ 0, %do.end34.i3376 ]
  %or13 = or i32 %retval.0.i3380, 655376
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 54, i32 noundef %or13)
  %51 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %variant1, align 4
  %53 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3384 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 12, i32 18
  %55 = ptrtoint ptr %runtime_status.i.i3384 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %runtime_status.i.i3384, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i.i3385 = icmp eq i32 %56, 0
  br i1 %cmp.i.i3385, label %vc4_hdmi_read.exit3381.if.end.i3393_crit_edge, label %pm_runtime_active.exit.i3389

vc4_hdmi_read.exit3381.if.end.i3393_crit_edge:    ; preds = %vc4_hdmi_read.exit3381
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3393

pm_runtime_active.exit.i3389:                     ; preds = %vc4_hdmi_read.exit3381
  %disable_depth.i.i3386 = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 12, i32 15
  %57 = ptrtoint ptr %disable_depth.i.i3386 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i.i3387 = load i16, ptr %disable_depth.i.i3386, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3387)
  %tobool.i.i3388 = icmp ugt i16 %bf.load.i.i3387, 8191
  br i1 %tobool.i.i3388, label %pm_runtime_active.exit.i3389.if.end.i3393_crit_edge, label %do.end.i3390, !prof !31

pm_runtime_active.exit.i3389.if.end.i3393_crit_edge: ; preds = %pm_runtime_active.exit.i3389
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3393

do.end.i3390:                                     ; preds = %pm_runtime_active.exit.i3389
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3393

if.end.i3393:                                     ; preds = %do.end.i3390, %pm_runtime_active.exit.i3389.if.end.i3393_crit_edge, %vc4_hdmi_read.exit3381.if.end.i3393_crit_edge
  %num_registers.i3391 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %52, i32 0, i32 5
  %58 = ptrtoint ptr %num_registers.i3391 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_registers.i3391, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 66, i32 %59)
  %cmp.not.i3392 = icmp ugt i32 %59, 66
  br i1 %cmp.not.i3392, label %if.end27.i3398, label %do.end24.i3395

do.end24.i3395:                                   ; preds = %if.end.i3393
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev.i, align 8
  %dev26.i3394 = getelementptr inbounds %struct.platform_device, ptr %61, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3394, ptr noundef nonnull @.str.2, i32 noundef 66) #8
  br label %vc4_hdmi_read.exit3425

if.end27.i3398:                                   ; preds = %if.end.i3393
  %registers.i3396 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %52, i32 0, i32 4
  %62 = ptrtoint ptr %registers.i3396 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %registers.i3396, align 8
  %reg28.i3397 = getelementptr %struct.vc4_hdmi_register, ptr %63, i32 66, i32 1
  %64 = ptrtoint ptr %reg28.i3397 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %reg28.i3397, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %65, label %if.end27.i3398.do.end34.i3420_crit_edge [
    i32 2, label %sw.bb.i.i3400
    i32 1, label %sw.bb1.i.i3402
    i32 4, label %sw.bb2.i.i3404
    i32 3, label %sw.bb3.i.i3406
    i32 5, label %sw.bb4.i.i3408
    i32 6, label %sw.bb5.i.i3410
    i32 7, label %sw.bb6.i.i3412
    i32 8, label %sw.bb7.i.i3414
  ]

if.end27.i3398.do.end34.i3420_crit_edge:          ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3420

sw.bb.i.i3400:                                    ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3399 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb1.i.i3402:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3401 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb2.i.i3404:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3403 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb3.i.i3406:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3405 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb4.i.i3408:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3407 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb5.i.i3410:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3409 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb6.i.i3412:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3411 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3418

sw.bb7.i.i3414:                                   ; preds = %if.end27.i3398
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3413 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3418

__vc4_hdmi_get_field_base.exit.i3418:             ; preds = %sw.bb7.i.i3414, %sw.bb6.i.i3412, %sw.bb5.i.i3410, %sw.bb4.i.i3408, %sw.bb3.i.i3406, %sw.bb2.i.i3404, %sw.bb1.i.i3402, %sw.bb.i.i3400
  %retval.0.i.in.i3415 = phi ptr [ %rm_regs.i.i3413, %sw.bb7.i.i3414 ], [ %ram_regs.i.i3411, %sw.bb6.i.i3412 ], [ %phy_regs.i.i3409, %sw.bb5.i.i3410 ], [ %dvp_regs.i.i3407, %sw.bb4.i.i3408 ], [ %cec_regs.i.i3405, %sw.bb3.i.i3406 ], [ %csc_regs.i.i3403, %sw.bb2.i.i3404 ], [ %hdmicore_regs.i.i3401, %sw.bb1.i.i3402 ], [ %hd_regs.i.i3399, %sw.bb.i.i3400 ]
  %67 = ptrtoint ptr %retval.0.i.in.i3415 to i32
  call void @__asan_load4_noabort(i32 %67)
  %retval.0.i.i3416 = load ptr, ptr %retval.0.i.in.i3415, align 4
  %tobool30.not.i3417 = icmp eq ptr %retval.0.i.i3416, null
  br i1 %tobool30.not.i3417, label %__vc4_hdmi_get_field_base.exit.i3418.do.end34.i3420_crit_edge, label %if.end37.i3423

__vc4_hdmi_get_field_base.exit.i3418.do.end34.i3420_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3418
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3420

do.end34.i3420:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3418.do.end34.i3420_crit_edge, %if.end27.i3398.do.end34.i3420_crit_edge
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 8
  %dev36.i3419 = getelementptr inbounds %struct.platform_device, ptr %69, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3419, ptr noundef nonnull @.str.8, i32 noundef 66) #8
  br label %vc4_hdmi_read.exit3425

if.end37.i3423:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3418
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3421 = getelementptr %struct.vc4_hdmi_register, ptr %63, i32 66, i32 2
  %70 = ptrtoint ptr %offset.i3421 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %offset.i3421, align 4
  %add.ptr.i3422 = getelementptr i8, ptr %retval.0.i.i3416, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3422) #5, !srcloc !34
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3425

vc4_hdmi_read.exit3425:                           ; preds = %if.end37.i3423, %do.end34.i3420, %do.end24.i3395
  %retval.0.i3424 = phi i32 [ 0, %do.end24.i3395 ], [ %73, %if.end37.i3423 ], [ 0, %do.end34.i3420 ]
  %and15 = and i32 %retval.0.i3424, -268435456
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 66, i32 noundef %and15)
  %74 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %variant1, align 4
  %76 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3428 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3, i32 12, i32 18
  %78 = ptrtoint ptr %runtime_status.i.i3428 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %runtime_status.i.i3428, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp.i.i3429 = icmp eq i32 %79, 0
  br i1 %cmp.i.i3429, label %vc4_hdmi_read.exit3425.if.end.i3437_crit_edge, label %pm_runtime_active.exit.i3433

vc4_hdmi_read.exit3425.if.end.i3437_crit_edge:    ; preds = %vc4_hdmi_read.exit3425
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3437

pm_runtime_active.exit.i3433:                     ; preds = %vc4_hdmi_read.exit3425
  %disable_depth.i.i3430 = getelementptr inbounds %struct.platform_device, ptr %77, i32 0, i32 3, i32 12, i32 15
  %80 = ptrtoint ptr %disable_depth.i.i3430 to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i3431 = load i16, ptr %disable_depth.i.i3430, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3431)
  %tobool.i.i3432 = icmp ugt i16 %bf.load.i.i3431, 8191
  br i1 %tobool.i.i3432, label %pm_runtime_active.exit.i3433.if.end.i3437_crit_edge, label %do.end.i3434, !prof !31

pm_runtime_active.exit.i3433.if.end.i3437_crit_edge: ; preds = %pm_runtime_active.exit.i3433
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3437

do.end.i3434:                                     ; preds = %pm_runtime_active.exit.i3433
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3437

if.end.i3437:                                     ; preds = %do.end.i3434, %pm_runtime_active.exit.i3433.if.end.i3437_crit_edge, %vc4_hdmi_read.exit3425.if.end.i3437_crit_edge
  %num_registers.i3435 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %75, i32 0, i32 5
  %81 = ptrtoint ptr %num_registers.i3435 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_registers.i3435, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %82)
  %cmp.not.i3436 = icmp ugt i32 %82, 67
  br i1 %cmp.not.i3436, label %if.end27.i3442, label %do.end24.i3439

do.end24.i3439:                                   ; preds = %if.end.i3437
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev.i, align 8
  %dev26.i3438 = getelementptr inbounds %struct.platform_device, ptr %84, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3438, ptr noundef nonnull @.str.2, i32 noundef 67) #8
  br label %vc4_hdmi_read.exit3469

if.end27.i3442:                                   ; preds = %if.end.i3437
  %registers.i3440 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %75, i32 0, i32 4
  %85 = ptrtoint ptr %registers.i3440 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %registers.i3440, align 8
  %reg28.i3441 = getelementptr %struct.vc4_hdmi_register, ptr %86, i32 67, i32 1
  %87 = ptrtoint ptr %reg28.i3441 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %reg28.i3441, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %88, label %if.end27.i3442.do.end34.i3464_crit_edge [
    i32 2, label %sw.bb.i.i3444
    i32 1, label %sw.bb1.i.i3446
    i32 4, label %sw.bb2.i.i3448
    i32 3, label %sw.bb3.i.i3450
    i32 5, label %sw.bb4.i.i3452
    i32 6, label %sw.bb5.i.i3454
    i32 7, label %sw.bb6.i.i3456
    i32 8, label %sw.bb7.i.i3458
  ]

if.end27.i3442.do.end34.i3464_crit_edge:          ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3464

sw.bb.i.i3444:                                    ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3443 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb1.i.i3446:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3445 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb2.i.i3448:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3447 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb3.i.i3450:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3449 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb4.i.i3452:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3451 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb5.i.i3454:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3453 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb6.i.i3456:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3455 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3462

sw.bb7.i.i3458:                                   ; preds = %if.end27.i3442
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3457 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3462

__vc4_hdmi_get_field_base.exit.i3462:             ; preds = %sw.bb7.i.i3458, %sw.bb6.i.i3456, %sw.bb5.i.i3454, %sw.bb4.i.i3452, %sw.bb3.i.i3450, %sw.bb2.i.i3448, %sw.bb1.i.i3446, %sw.bb.i.i3444
  %retval.0.i.in.i3459 = phi ptr [ %rm_regs.i.i3457, %sw.bb7.i.i3458 ], [ %ram_regs.i.i3455, %sw.bb6.i.i3456 ], [ %phy_regs.i.i3453, %sw.bb5.i.i3454 ], [ %dvp_regs.i.i3451, %sw.bb4.i.i3452 ], [ %cec_regs.i.i3449, %sw.bb3.i.i3450 ], [ %csc_regs.i.i3447, %sw.bb2.i.i3448 ], [ %hdmicore_regs.i.i3445, %sw.bb1.i.i3446 ], [ %hd_regs.i.i3443, %sw.bb.i.i3444 ]
  %90 = ptrtoint ptr %retval.0.i.in.i3459 to i32
  call void @__asan_load4_noabort(i32 %90)
  %retval.0.i.i3460 = load ptr, ptr %retval.0.i.in.i3459, align 4
  %tobool30.not.i3461 = icmp eq ptr %retval.0.i.i3460, null
  br i1 %tobool30.not.i3461, label %__vc4_hdmi_get_field_base.exit.i3462.do.end34.i3464_crit_edge, label %if.end37.i3467

__vc4_hdmi_get_field_base.exit.i3462.do.end34.i3464_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3462
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3464

do.end34.i3464:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3462.do.end34.i3464_crit_edge, %if.end27.i3442.do.end34.i3464_crit_edge
  %91 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pdev.i, align 8
  %dev36.i3463 = getelementptr inbounds %struct.platform_device, ptr %92, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3463, ptr noundef nonnull @.str.8, i32 noundef 67) #8
  br label %vc4_hdmi_read.exit3469

if.end37.i3467:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3462
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3465 = getelementptr %struct.vc4_hdmi_register, ptr %86, i32 67, i32 2
  %93 = ptrtoint ptr %offset.i3465 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %offset.i3465, align 4
  %add.ptr.i3466 = getelementptr i8, ptr %retval.0.i.i3460, i32 %94
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3466) #5, !srcloc !34
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3469

vc4_hdmi_read.exit3469:                           ; preds = %if.end37.i3467, %do.end34.i3464, %do.end24.i3439
  %retval.0.i3468 = phi i32 [ 0, %do.end24.i3439 ], [ %96, %if.end37.i3467 ], [ 0, %do.end34.i3464 ]
  %and75 = and i32 %retval.0.i3468, -268435456
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 67, i32 noundef %and75)
  %mul.i3470 = shl i64 %vco_freq.0.lcssa.i, 23
  %97 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -6984336302548623145, i64 %mul.i3470, i32 0) #9, !srcloc !36
  %asmresult.i.i = extractvalue { i64, i32 } %97, 0
  %asmresult4.i.i = extractvalue { i64, i32 } %97, 1
  %98 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -6984336302548623145, i64 %mul.i3470, i64 %asmresult.i.i, i32 %asmresult4.i.i) #9, !srcloc !37
  %asmresult10.i.i = extractvalue { i64, i32 } %98, 0
  %div162265.i = lshr i64 %asmresult10.i.i, 27
  %conv185.i = trunc i64 %div162265.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv185.i)
  %tobool162.not = icmp sgt i32 %conv185.i, -1
  br i1 %tobool162.not, label %vc4_hdmi_read.exit3469.do.end508_crit_edge, label %do.end183, !prof !31

vc4_hdmi_read.exit3469.do.end508_crit_edge:       ; preds = %vc4_hdmi_read.exit3469
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end508

do.end183:                                        ; preds = %vc4_hdmi_read.exit3469
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 408, i32 noundef 9, ptr noundef null) #5
  br label %do.end508

do.end508:                                        ; preds = %do.end183, %vc4_hdmi_read.exit3469.do.end508_crit_edge
  %or217 = or i32 %conv185.i, -2147483648
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 56, i32 noundef %or217)
  %conv295 = shl i32 %_vco_div.0.lcssa.i, 8
  %shl296 = and i32 %conv295, 65280
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 61, i32 noundef %shl296)
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 68, i32 noundef 236249415)
  %or513 = select i1 %cmp2.i, i32 8800, i32 8288
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 70, i32 noundef %or513)
  %99 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %variant1, align 4
  %101 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3479 = getelementptr inbounds %struct.platform_device, ptr %102, i32 0, i32 3, i32 12, i32 18
  %103 = ptrtoint ptr %runtime_status.i.i3479 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %runtime_status.i.i3479, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i.i3480 = icmp eq i32 %104, 0
  br i1 %cmp.i.i3480, label %do.end508.if.end.i3488_crit_edge, label %pm_runtime_active.exit.i3484

do.end508.if.end.i3488_crit_edge:                 ; preds = %do.end508
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3488

pm_runtime_active.exit.i3484:                     ; preds = %do.end508
  %disable_depth.i.i3481 = getelementptr inbounds %struct.platform_device, ptr %102, i32 0, i32 3, i32 12, i32 15
  %105 = ptrtoint ptr %disable_depth.i.i3481 to i32
  call void @__asan_load2_noabort(i32 %105)
  %bf.load.i.i3482 = load i16, ptr %disable_depth.i.i3481, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3482)
  %tobool.i.i3483 = icmp ugt i16 %bf.load.i.i3482, 8191
  br i1 %tobool.i.i3483, label %pm_runtime_active.exit.i3484.if.end.i3488_crit_edge, label %do.end.i3485, !prof !31

pm_runtime_active.exit.i3484.if.end.i3488_crit_edge: ; preds = %pm_runtime_active.exit.i3484
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3488

do.end.i3485:                                     ; preds = %pm_runtime_active.exit.i3484
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3488

if.end.i3488:                                     ; preds = %do.end.i3485, %pm_runtime_active.exit.i3484.if.end.i3488_crit_edge, %do.end508.if.end.i3488_crit_edge
  %num_registers.i3486 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %100, i32 0, i32 5
  %106 = ptrtoint ptr %num_registers.i3486 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_registers.i3486, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %107)
  %cmp.not.i3487 = icmp ugt i32 %107, 71
  br i1 %cmp.not.i3487, label %if.end27.i3493, label %do.end24.i3490

do.end24.i3490:                                   ; preds = %if.end.i3488
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev.i, align 8
  %dev26.i3489 = getelementptr inbounds %struct.platform_device, ptr %109, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3489, ptr noundef nonnull @.str.2, i32 noundef 71) #8
  br label %vc4_hdmi_read.exit3520

if.end27.i3493:                                   ; preds = %if.end.i3488
  %registers.i3491 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %100, i32 0, i32 4
  %110 = ptrtoint ptr %registers.i3491 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %registers.i3491, align 8
  %reg28.i3492 = getelementptr %struct.vc4_hdmi_register, ptr %111, i32 71, i32 1
  %112 = ptrtoint ptr %reg28.i3492 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %reg28.i3492, align 4
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %113, label %if.end27.i3493.do.end34.i3515_crit_edge [
    i32 2, label %sw.bb.i.i3495
    i32 1, label %sw.bb1.i.i3497
    i32 4, label %sw.bb2.i.i3499
    i32 3, label %sw.bb3.i.i3501
    i32 5, label %sw.bb4.i.i3503
    i32 6, label %sw.bb5.i.i3505
    i32 7, label %sw.bb6.i.i3507
    i32 8, label %sw.bb7.i.i3509
  ]

if.end27.i3493.do.end34.i3515_crit_edge:          ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3515

sw.bb.i.i3495:                                    ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3494 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb1.i.i3497:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3496 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb2.i.i3499:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3498 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb3.i.i3501:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3500 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb4.i.i3503:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3502 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb5.i.i3505:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3504 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb6.i.i3507:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3506 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3513

sw.bb7.i.i3509:                                   ; preds = %if.end27.i3493
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3508 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3513

__vc4_hdmi_get_field_base.exit.i3513:             ; preds = %sw.bb7.i.i3509, %sw.bb6.i.i3507, %sw.bb5.i.i3505, %sw.bb4.i.i3503, %sw.bb3.i.i3501, %sw.bb2.i.i3499, %sw.bb1.i.i3497, %sw.bb.i.i3495
  %retval.0.i.in.i3510 = phi ptr [ %rm_regs.i.i3508, %sw.bb7.i.i3509 ], [ %ram_regs.i.i3506, %sw.bb6.i.i3507 ], [ %phy_regs.i.i3504, %sw.bb5.i.i3505 ], [ %dvp_regs.i.i3502, %sw.bb4.i.i3503 ], [ %cec_regs.i.i3500, %sw.bb3.i.i3501 ], [ %csc_regs.i.i3498, %sw.bb2.i.i3499 ], [ %hdmicore_regs.i.i3496, %sw.bb1.i.i3497 ], [ %hd_regs.i.i3494, %sw.bb.i.i3495 ]
  %115 = ptrtoint ptr %retval.0.i.in.i3510 to i32
  call void @__asan_load4_noabort(i32 %115)
  %retval.0.i.i3511 = load ptr, ptr %retval.0.i.in.i3510, align 4
  %tobool30.not.i3512 = icmp eq ptr %retval.0.i.i3511, null
  br i1 %tobool30.not.i3512, label %__vc4_hdmi_get_field_base.exit.i3513.do.end34.i3515_crit_edge, label %if.end37.i3518

__vc4_hdmi_get_field_base.exit.i3513.do.end34.i3515_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3513
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3515

do.end34.i3515:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3513.do.end34.i3515_crit_edge, %if.end27.i3493.do.end34.i3515_crit_edge
  %116 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pdev.i, align 8
  %dev36.i3514 = getelementptr inbounds %struct.platform_device, ptr %117, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3514, ptr noundef nonnull @.str.8, i32 noundef 71) #8
  br label %vc4_hdmi_read.exit3520

if.end37.i3518:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3513
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3516 = getelementptr %struct.vc4_hdmi_register, ptr %111, i32 71, i32 2
  %118 = ptrtoint ptr %offset.i3516 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset.i3516, align 4
  %add.ptr.i3517 = getelementptr i8, ptr %retval.0.i.i3511, i32 %119
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3517) #5, !srcloc !34
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3520

vc4_hdmi_read.exit3520:                           ; preds = %if.end37.i3518, %do.end34.i3515, %do.end24.i3490
  %retval.0.i3519 = phi i32 [ 0, %do.end24.i3490 ], [ %121, %if.end37.i3518 ], [ 0, %do.end34.i3515 ]
  %or716 = or i32 %retval.0.i3519, 9074688
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 71, i32 noundef %or716)
  %122 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %variant1, align 4
  %124 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3523 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3, i32 12, i32 18
  %126 = ptrtoint ptr %runtime_status.i.i3523 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %runtime_status.i.i3523, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp.i.i3524 = icmp eq i32 %127, 0
  br i1 %cmp.i.i3524, label %vc4_hdmi_read.exit3520.if.end.i3532_crit_edge, label %pm_runtime_active.exit.i3528

vc4_hdmi_read.exit3520.if.end.i3532_crit_edge:    ; preds = %vc4_hdmi_read.exit3520
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3532

pm_runtime_active.exit.i3528:                     ; preds = %vc4_hdmi_read.exit3520
  %disable_depth.i.i3525 = getelementptr inbounds %struct.platform_device, ptr %125, i32 0, i32 3, i32 12, i32 15
  %128 = ptrtoint ptr %disable_depth.i.i3525 to i32
  call void @__asan_load2_noabort(i32 %128)
  %bf.load.i.i3526 = load i16, ptr %disable_depth.i.i3525, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3526)
  %tobool.i.i3527 = icmp ugt i16 %bf.load.i.i3526, 8191
  br i1 %tobool.i.i3527, label %pm_runtime_active.exit.i3528.if.end.i3532_crit_edge, label %do.end.i3529, !prof !31

pm_runtime_active.exit.i3528.if.end.i3532_crit_edge: ; preds = %pm_runtime_active.exit.i3528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3532

do.end.i3529:                                     ; preds = %pm_runtime_active.exit.i3528
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3532

if.end.i3532:                                     ; preds = %do.end.i3529, %pm_runtime_active.exit.i3528.if.end.i3532_crit_edge, %vc4_hdmi_read.exit3520.if.end.i3532_crit_edge
  %num_registers.i3530 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %123, i32 0, i32 5
  %129 = ptrtoint ptr %num_registers.i3530 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %num_registers.i3530, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %130)
  %cmp.not.i3531 = icmp ugt i32 %130, 55
  br i1 %cmp.not.i3531, label %if.end27.i3537, label %do.end24.i3534

do.end24.i3534:                                   ; preds = %if.end.i3532
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev.i, align 8
  %dev26.i3533 = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3533, ptr noundef nonnull @.str.2, i32 noundef 55) #8
  br label %vc4_hdmi_read.exit3564

if.end27.i3537:                                   ; preds = %if.end.i3532
  %registers.i3535 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %123, i32 0, i32 4
  %133 = ptrtoint ptr %registers.i3535 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %registers.i3535, align 8
  %reg28.i3536 = getelementptr %struct.vc4_hdmi_register, ptr %134, i32 55, i32 1
  %135 = ptrtoint ptr %reg28.i3536 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reg28.i3536, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %136, label %if.end27.i3537.do.end34.i3559_crit_edge [
    i32 2, label %sw.bb.i.i3539
    i32 1, label %sw.bb1.i.i3541
    i32 4, label %sw.bb2.i.i3543
    i32 3, label %sw.bb3.i.i3545
    i32 5, label %sw.bb4.i.i3547
    i32 6, label %sw.bb5.i.i3549
    i32 7, label %sw.bb6.i.i3551
    i32 8, label %sw.bb7.i.i3553
  ]

if.end27.i3537.do.end34.i3559_crit_edge:          ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3559

sw.bb.i.i3539:                                    ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3538 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb1.i.i3541:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3540 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb2.i.i3543:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3542 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb3.i.i3545:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3544 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb4.i.i3547:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3546 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb5.i.i3549:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3548 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb6.i.i3551:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3550 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3557

sw.bb7.i.i3553:                                   ; preds = %if.end27.i3537
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3552 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3557

__vc4_hdmi_get_field_base.exit.i3557:             ; preds = %sw.bb7.i.i3553, %sw.bb6.i.i3551, %sw.bb5.i.i3549, %sw.bb4.i.i3547, %sw.bb3.i.i3545, %sw.bb2.i.i3543, %sw.bb1.i.i3541, %sw.bb.i.i3539
  %retval.0.i.in.i3554 = phi ptr [ %rm_regs.i.i3552, %sw.bb7.i.i3553 ], [ %ram_regs.i.i3550, %sw.bb6.i.i3551 ], [ %phy_regs.i.i3548, %sw.bb5.i.i3549 ], [ %dvp_regs.i.i3546, %sw.bb4.i.i3547 ], [ %cec_regs.i.i3544, %sw.bb3.i.i3545 ], [ %csc_regs.i.i3542, %sw.bb2.i.i3543 ], [ %hdmicore_regs.i.i3540, %sw.bb1.i.i3541 ], [ %hd_regs.i.i3538, %sw.bb.i.i3539 ]
  %138 = ptrtoint ptr %retval.0.i.in.i3554 to i32
  call void @__asan_load4_noabort(i32 %138)
  %retval.0.i.i3555 = load ptr, ptr %retval.0.i.in.i3554, align 4
  %tobool30.not.i3556 = icmp eq ptr %retval.0.i.i3555, null
  br i1 %tobool30.not.i3556, label %__vc4_hdmi_get_field_base.exit.i3557.do.end34.i3559_crit_edge, label %if.end37.i3562

__vc4_hdmi_get_field_base.exit.i3557.do.end34.i3559_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3557
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3559

do.end34.i3559:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3557.do.end34.i3559_crit_edge, %if.end27.i3537.do.end34.i3559_crit_edge
  %139 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev.i, align 8
  %dev36.i3558 = getelementptr inbounds %struct.platform_device, ptr %140, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3558, ptr noundef nonnull @.str.8, i32 noundef 55) #8
  br label %vc4_hdmi_read.exit3564

if.end37.i3562:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3557
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3560 = getelementptr %struct.vc4_hdmi_register, ptr %134, i32 55, i32 2
  %141 = ptrtoint ptr %offset.i3560 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %offset.i3560, align 4
  %add.ptr.i3561 = getelementptr i8, ptr %retval.0.i.i3555, i32 %142
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3561) #5, !srcloc !34
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3564

vc4_hdmi_read.exit3564:                           ; preds = %if.end37.i3562, %do.end34.i3559, %do.end24.i3534
  %retval.0.i3563 = phi i32 [ 0, %do.end24.i3534 ], [ %144, %if.end37.i3562 ], [ 0, %do.end34.i3559 ]
  %or784 = or i32 %retval.0.i3563, 33554432
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 55, i32 noundef %or784)
  %145 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %variant1, align 4
  %147 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3567 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 12, i32 18
  %149 = ptrtoint ptr %runtime_status.i.i3567 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %runtime_status.i.i3567, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %cmp.i.i3568 = icmp eq i32 %150, 0
  br i1 %cmp.i.i3568, label %vc4_hdmi_read.exit3564.if.end.i3576_crit_edge, label %pm_runtime_active.exit.i3572

vc4_hdmi_read.exit3564.if.end.i3576_crit_edge:    ; preds = %vc4_hdmi_read.exit3564
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3576

pm_runtime_active.exit.i3572:                     ; preds = %vc4_hdmi_read.exit3564
  %disable_depth.i.i3569 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 12, i32 15
  %151 = ptrtoint ptr %disable_depth.i.i3569 to i32
  call void @__asan_load2_noabort(i32 %151)
  %bf.load.i.i3570 = load i16, ptr %disable_depth.i.i3569, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3570)
  %tobool.i.i3571 = icmp ugt i16 %bf.load.i.i3570, 8191
  br i1 %tobool.i.i3571, label %pm_runtime_active.exit.i3572.if.end.i3576_crit_edge, label %do.end.i3573, !prof !31

pm_runtime_active.exit.i3572.if.end.i3576_crit_edge: ; preds = %pm_runtime_active.exit.i3572
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3576

do.end.i3573:                                     ; preds = %pm_runtime_active.exit.i3572
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3576

if.end.i3576:                                     ; preds = %do.end.i3573, %pm_runtime_active.exit.i3572.if.end.i3576_crit_edge, %vc4_hdmi_read.exit3564.if.end.i3576_crit_edge
  %num_registers.i3574 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %146, i32 0, i32 5
  %152 = ptrtoint ptr %num_registers.i3574 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_registers.i3574, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %153)
  %cmp.not.i3575 = icmp ugt i32 %153, 69
  br i1 %cmp.not.i3575, label %if.end27.i3581, label %do.end24.i3578

do.end24.i3578:                                   ; preds = %if.end.i3576
  call void @__sanitizer_cov_trace_pc() #7
  %154 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i, align 8
  %dev26.i3577 = getelementptr inbounds %struct.platform_device, ptr %155, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3577, ptr noundef nonnull @.str.2, i32 noundef 69) #8
  br label %if.end907

if.end27.i3581:                                   ; preds = %if.end.i3576
  %registers.i3579 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %146, i32 0, i32 4
  %156 = ptrtoint ptr %registers.i3579 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %registers.i3579, align 8
  %reg28.i3580 = getelementptr %struct.vc4_hdmi_register, ptr %157, i32 69, i32 1
  %158 = ptrtoint ptr %reg28.i3580 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %reg28.i3580, align 4
  %160 = zext i32 %159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %160, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %159, label %if.end27.i3581.do.end34.i3603_crit_edge [
    i32 2, label %sw.bb.i.i3583
    i32 1, label %sw.bb1.i.i3585
    i32 4, label %sw.bb2.i.i3587
    i32 3, label %sw.bb3.i.i3589
    i32 5, label %sw.bb4.i.i3591
    i32 6, label %sw.bb5.i.i3593
    i32 7, label %sw.bb6.i.i3595
    i32 8, label %sw.bb7.i.i3597
  ]

if.end27.i3581.do.end34.i3603_crit_edge:          ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3603

sw.bb.i.i3583:                                    ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3582 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb1.i.i3585:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3584 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb2.i.i3587:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3586 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb3.i.i3589:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3588 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb4.i.i3591:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3590 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb5.i.i3593:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3592 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb6.i.i3595:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3594 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3601

sw.bb7.i.i3597:                                   ; preds = %if.end27.i3581
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3596 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3601

__vc4_hdmi_get_field_base.exit.i3601:             ; preds = %sw.bb7.i.i3597, %sw.bb6.i.i3595, %sw.bb5.i.i3593, %sw.bb4.i.i3591, %sw.bb3.i.i3589, %sw.bb2.i.i3587, %sw.bb1.i.i3585, %sw.bb.i.i3583
  %retval.0.i.in.i3598 = phi ptr [ %rm_regs.i.i3596, %sw.bb7.i.i3597 ], [ %ram_regs.i.i3594, %sw.bb6.i.i3595 ], [ %phy_regs.i.i3592, %sw.bb5.i.i3593 ], [ %dvp_regs.i.i3590, %sw.bb4.i.i3591 ], [ %cec_regs.i.i3588, %sw.bb3.i.i3589 ], [ %csc_regs.i.i3586, %sw.bb2.i.i3587 ], [ %hdmicore_regs.i.i3584, %sw.bb1.i.i3585 ], [ %hd_regs.i.i3582, %sw.bb.i.i3583 ]
  %161 = ptrtoint ptr %retval.0.i.in.i3598 to i32
  call void @__asan_load4_noabort(i32 %161)
  %retval.0.i.i3599 = load ptr, ptr %retval.0.i.in.i3598, align 4
  %tobool30.not.i3600 = icmp eq ptr %retval.0.i.i3599, null
  br i1 %tobool30.not.i3600, label %__vc4_hdmi_get_field_base.exit.i3601.do.end34.i3603_crit_edge, label %if.end37.i3606

__vc4_hdmi_get_field_base.exit.i3601.do.end34.i3603_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3601
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3603

do.end34.i3603:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3601.do.end34.i3603_crit_edge, %if.end27.i3581.do.end34.i3603_crit_edge
  %162 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pdev.i, align 8
  %dev36.i3602 = getelementptr inbounds %struct.platform_device, ptr %163, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3602, ptr noundef nonnull @.str.8, i32 noundef 69) #8
  br label %if.end907

if.end37.i3606:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3601
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3604 = getelementptr %struct.vc4_hdmi_register, ptr %157, i32 69, i32 2
  %164 = ptrtoint ptr %offset.i3604 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %offset.i3604, align 4
  %add.ptr.i3605 = getelementptr i8, ptr %retval.0.i.i3599, i32 %165
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3605) #5, !srcloc !34
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %if.end907

if.end907:                                        ; preds = %if.end37.i3606, %do.end34.i3603, %do.end24.i3578
  %retval.0.i3607 = phi i32 [ 0, %do.end24.i3578 ], [ %167, %if.end37.i3606 ], [ 0, %do.end34.i3603 ]
  %or852 = or i32 %retval.0.i3607, 1
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 69, i32 noundef %or852)
  call void @__sanitizer_cov_trace_const_cmp8(i64 339999999, i64 %3)
  %cmp853 = icmp ugt i64 %3, 339999999
  %word_sel.0 = select i1 %cmp853, i32 3, i32 0
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 74, i32 noundef %word_sel.0)
  %conv875 = trunc i64 %vco_freq.0.lcssa.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -594967296, i32 %conv875)
  %cmp.i3609 = icmp ult i32 %conv875, -594967296
  %or1271 = select i1 %cmp.i3609, i32 550364, i32 550360
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 65, i32 noundef %or1271)
  %phy_lane_mapping = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6
  %168 = ptrtoint ptr %phy_lane_mapping to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %phy_lane_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 50000000, i64 %3)
  %cmp2.not.i.i = icmp ugt i64 %3, 50000000
  br i1 %cmp2.not.i.i, label %land.lhs.true.1.i.i, label %phy_get_channel_settings.exit3649

land.lhs.true.1.i.i:                              ; preds = %if.end907
  call void @__sanitizer_cov_trace_const_cmp8(i64 75000000, i64 %3)
  %cmp2.not.1.i.i = icmp ugt i64 %3, 75000000
  br i1 %cmp2.not.1.i.i, label %land.lhs.true.2.i.i, label %land.lhs.true.1.i.i3652

land.lhs.true.2.i.i:                              ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 165000000, i64 %3)
  %cmp2.not.2.i.i = icmp ugt i64 %3, 165000000
  br i1 %cmp2.not.2.i.i, label %land.lhs.true.3.i.i, label %land.lhs.true.2.i.i3654

land.lhs.true.3.i.i:                              ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 250000000, i64 %3)
  %cmp2.not.3.i.i = icmp ugt i64 %3, 250000000
  br i1 %cmp2.not.3.i.i, label %land.lhs.true.4.i.i, label %land.lhs.true.3.i.i3656

land.lhs.true.4.i.i:                              ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 340000000, i64 %3)
  %cmp2.not.4.i.i = icmp ugt i64 %3, 340000000
  br i1 %cmp2.not.4.i.i, label %land.lhs.true.5.i.i3661, label %land.lhs.true.4.i.i3658

phy_get_channel_settings.exit3649:                ; preds = %if.end907
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %169
  %arrayidx1274 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %170 = ptrtoint ptr %arrayidx1274 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx1274, align 4
  %arrayidx.i3629 = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %171
  %arrayidx1277 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %172 = ptrtoint ptr %arrayidx1277 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx1277, align 8
  %arrayidx.i3647 = getelementptr %struct.phy_settings, ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 %173
  br label %phy_get_channel_settings.exit3667

land.lhs.true.1.i.i3652:                          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i3822 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %169
  %arrayidx12743824 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %174 = ptrtoint ptr %arrayidx12743824 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx12743824, align 4
  %arrayidx.i36293870 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %175
  %arrayidx12773872 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %176 = ptrtoint ptr %arrayidx12773872 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx12773872, align 8
  %arrayidx.i36473944 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1, i32 2, i32 %177
  br label %phy_get_channel_settings.exit3667

land.lhs.true.2.i.i3654:                          ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i38223832 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %169
  %arrayidx127438243834 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %178 = ptrtoint ptr %arrayidx127438243834 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx127438243834, align 4
  %arrayidx.i362938703887 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %179
  %arrayidx127738723889 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %180 = ptrtoint ptr %arrayidx127738723889 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx127738723889, align 8
  %arrayidx.i364739443967 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2, i32 2, i32 %181
  br label %phy_get_channel_settings.exit3667

land.lhs.true.3.i.i3656:                          ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i382238323841 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %169
  %arrayidx1274382438343843 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %182 = ptrtoint ptr %arrayidx1274382438343843 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx1274382438343843, align 4
  %arrayidx.i3629387038873901 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %183
  %arrayidx1277387238893903 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %184 = ptrtoint ptr %arrayidx1277387238893903 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx1277387238893903, align 8
  %arrayidx.i3647394439673985 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3, i32 2, i32 %185
  br label %phy_get_channel_settings.exit3667

land.lhs.true.4.i.i3658:                          ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i3822383238413850 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %169
  %arrayidx12743824383438433852 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %186 = ptrtoint ptr %arrayidx12743824383438433852 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx12743824383438433852, align 4
  %arrayidx.i36293870388739013915 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %187
  %arrayidx12773872388939033917 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %188 = ptrtoint ptr %arrayidx12773872388939033917 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx12773872388939033917, align 8
  %arrayidx.i36473944396739854003 = getelementptr [7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4, i32 2, i32 %189
  br label %phy_get_channel_settings.exit3667

land.lhs.true.5.i.i3661:                          ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 450000000, i64 %3)
  %cmp2.not.5.i.i = icmp ugt i64 %3, 450000000
  %spec.select.i.i = select i1 %cmp2.not.5.i.i, ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 6), ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %169)
  %cmp.i361238203830383938483857 = icmp eq i32 %169, 3
  %clock.i38213831384038493858 = select i1 %cmp2.not.5.i.i, ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 6, i32 3), ptr getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 5, i32 3)
  %arrayidx.i38223832384138503859 = getelementptr %struct.phy_settings, ptr %spec.select.i.i, i32 0, i32 2, i32 %169
  %retval.0.i361338233833384238513860 = select i1 %cmp.i361238203830383938483857, ptr %clock.i38213831384038493858, ptr %arrayidx.i38223832384138503859
  %arrayidx127438243834384338523861 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 1
  %190 = ptrtoint ptr %arrayidx127438243834384338523861 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx127438243834384338523861, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %cmp.i362738683885389939133927 = icmp eq i32 %191, 3
  %arrayidx.i362938703887390139153929 = getelementptr %struct.phy_settings, ptr %spec.select.i.i, i32 0, i32 2, i32 %191
  %retval.0.i363038713888390239163930 = select i1 %cmp.i362738683885389939133927, ptr %clock.i38213831384038493858, ptr %arrayidx.i362938703887390139153929
  %arrayidx127738723889390339173931 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 2
  %192 = ptrtoint ptr %arrayidx127738723889390339173931 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx127738723889390339173931, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %193)
  %cmp.i364539423965398340014019 = icmp eq i32 %193, 3
  %arrayidx.i364739443967398540034021 = getelementptr %struct.phy_settings, ptr %spec.select.i.i, i32 0, i32 2, i32 %193
  %retval.0.i364839453968398640044022 = select i1 %cmp.i364539423965398340014019, ptr %clock.i38213831384038493858, ptr %arrayidx.i364739443967398540034021
  br label %phy_get_channel_settings.exit3667

phy_get_channel_settings.exit3667:                ; preds = %land.lhs.true.5.i.i3661, %land.lhs.true.4.i.i3658, %land.lhs.true.3.i.i3656, %land.lhs.true.2.i.i3654, %land.lhs.true.1.i.i3652, %phy_get_channel_settings.exit3649
  %retval.0.i36483955 = phi ptr [ %arrayidx.i3647, %phy_get_channel_settings.exit3649 ], [ %arrayidx.i36473944, %land.lhs.true.1.i.i3652 ], [ %arrayidx.i364739443967, %land.lhs.true.2.i.i3654 ], [ %arrayidx.i3647394439673985, %land.lhs.true.3.i.i3656 ], [ %arrayidx.i36473944396739854003, %land.lhs.true.4.i.i3658 ], [ %retval.0.i364839453968398640044022, %land.lhs.true.5.i.i3661 ]
  %arrayidx1274382738733953 = phi ptr [ %arrayidx1274, %phy_get_channel_settings.exit3649 ], [ %arrayidx12743824, %land.lhs.true.1.i.i3652 ], [ %arrayidx127438243834, %land.lhs.true.2.i.i3654 ], [ %arrayidx1274382438343843, %land.lhs.true.3.i.i3656 ], [ %arrayidx12743824383438433852, %land.lhs.true.4.i.i3658 ], [ %arrayidx127438243834384338523861, %land.lhs.true.5.i.i3661 ]
  %retval.0.i3613382538753951 = phi ptr [ %arrayidx.i, %phy_get_channel_settings.exit3649 ], [ %arrayidx.i3822, %land.lhs.true.1.i.i3652 ], [ %arrayidx.i38223832, %land.lhs.true.2.i.i3654 ], [ %arrayidx.i382238323841, %land.lhs.true.3.i.i3656 ], [ %arrayidx.i3822383238413850, %land.lhs.true.4.i.i3658 ], [ %retval.0.i361338233833384238513860, %land.lhs.true.5.i.i3661 ]
  %retval.0.i363038773949 = phi ptr [ %arrayidx.i3629, %phy_get_channel_settings.exit3649 ], [ %arrayidx.i36293870, %land.lhs.true.1.i.i3652 ], [ %arrayidx.i362938703887, %land.lhs.true.2.i.i3654 ], [ %arrayidx.i3629387038873901, %land.lhs.true.3.i.i3656 ], [ %arrayidx.i36293870388739013915, %land.lhs.true.4.i.i3658 ], [ %retval.0.i363038713888390239163930, %land.lhs.true.5.i.i3661 ]
  %arrayidx127738793947 = phi ptr [ %arrayidx1277, %phy_get_channel_settings.exit3649 ], [ %arrayidx12773872, %land.lhs.true.1.i.i3652 ], [ %arrayidx127738723889, %land.lhs.true.2.i.i3654 ], [ %arrayidx1277387238893903, %land.lhs.true.3.i.i3656 ], [ %arrayidx12773872388939033917, %land.lhs.true.4.i.i3658 ], [ %arrayidx127738723889390339173931, %land.lhs.true.5.i.i3661 ]
  %retval.2.i.i3662 = phi ptr [ @vc5_hdmi_phy_settings, %phy_get_channel_settings.exit3649 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 1), %land.lhs.true.1.i.i3652 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 2), %land.lhs.true.2.i.i3654 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 3), %land.lhs.true.3.i.i3656 ], [ getelementptr inbounds ([7 x %struct.phy_settings], ptr @vc5_hdmi_phy_settings, i32 0, i32 4), %land.lhs.true.4.i.i3658 ], [ %spec.select.i.i, %land.lhs.true.5.i.i3661 ]
  %arrayidx12803957 = getelementptr %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 6, i32 3
  %194 = ptrtoint ptr %arrayidx12803957 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx12803957, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %195)
  %cmp.i3663 = icmp eq i32 %195, 3
  %clock.i3664 = getelementptr inbounds %struct.phy_settings, ptr %retval.2.i.i3662, i32 0, i32 3
  %arrayidx.i3665 = getelementptr %struct.phy_settings, ptr %retval.2.i.i3662, i32 0, i32 2, i32 %195
  %retval.0.i3666 = select i1 %cmp.i3663, ptr %clock.i3664, ptr %arrayidx.i3665
  %196 = ptrtoint ptr %retval.0.i3613382538753951 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %retval.0.i3613382538753951, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %197)
  %tobool1302.not = icmp ult i8 %197, 8
  br i1 %tobool1302.not, label %phy_get_channel_settings.exit3667.do.end1363_crit_edge, label %do.end1323, !prof !31

phy_get_channel_settings.exit3667.do.end1363_crit_edge: ; preds = %phy_get_channel_settings.exit3667
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1363

do.end1323:                                       ; preds = %phy_get_channel_settings.exit3667
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 469, i32 noundef 9, ptr noundef null) #5
  br label %do.end1363

do.end1363:                                       ; preds = %do.end1323, %phy_get_channel_settings.exit3667.do.end1363_crit_edge
  %198 = ptrtoint ptr %retval.0.i3613382538753951 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %retval.0.i3613382538753951, align 1
  %conv1367 = zext i8 %199 to i32
  %shl1368 = shl nuw nsw i32 %conv1367, 13
  %and1369 = and i32 %shl1368, 57344
  %main_driver = getelementptr inbounds %struct.anon.113, ptr %retval.0.i3613382538753951, i32 0, i32 1
  %200 = ptrtoint ptr %main_driver to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %main_driver, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %201)
  %tobool1391.not = icmp ult i8 %201, 32
  br i1 %tobool1391.not, label %do.end1363.do.end1452_crit_edge, label %do.end1412, !prof !31

do.end1363.do.end1452_crit_edge:                  ; preds = %do.end1363
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1452

do.end1412:                                       ; preds = %do.end1363
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 9, ptr noundef null) #5
  br label %do.end1452

do.end1452:                                       ; preds = %do.end1412, %do.end1363.do.end1452_crit_edge
  %202 = ptrtoint ptr %main_driver to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %main_driver, align 1
  %conv1456 = zext i8 %203 to i32
  %shl1457 = shl nuw nsw i32 %conv1456, 8
  %and1458 = and i32 %shl1457, 7936
  %or1459 = or i32 %and1369, %and1458
  %204 = ptrtoint ptr %retval.0.i363038773949 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %retval.0.i363038773949, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %205)
  %tobool1482.not = icmp ult i8 %205, 8
  br i1 %tobool1482.not, label %do.end1452.do.end1543_crit_edge, label %do.end1503, !prof !31

do.end1452.do.end1543_crit_edge:                  ; preds = %do.end1452
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1543

do.end1503:                                       ; preds = %do.end1452
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 473, i32 noundef 9, ptr noundef null) #5
  br label %do.end1543

do.end1543:                                       ; preds = %do.end1503, %do.end1452.do.end1543_crit_edge
  %206 = ptrtoint ptr %retval.0.i363038773949 to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %retval.0.i363038773949, align 1
  %conv1547 = zext i8 %207 to i32
  %shl1548 = shl nuw nsw i32 %conv1547, 21
  %and1549 = and i32 %shl1548, 14680064
  %or1550 = or i32 %or1459, %and1549
  %main_driver1569 = getelementptr inbounds %struct.anon.113, ptr %retval.0.i363038773949, i32 0, i32 1
  %208 = ptrtoint ptr %main_driver1569 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %main_driver1569, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %209)
  %tobool1573.not = icmp ult i8 %209, 32
  br i1 %tobool1573.not, label %do.end1543.if.end1600_crit_edge, label %do.end1594, !prof !31

do.end1543.if.end1600_crit_edge:                  ; preds = %do.end1543
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1600

do.end1594:                                       ; preds = %do.end1543
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 475, i32 noundef 9, ptr noundef null) #5
  br label %if.end1600

if.end1600:                                       ; preds = %do.end1594, %do.end1543.if.end1600_crit_edge
  %210 = ptrtoint ptr %main_driver1569 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %main_driver1569, align 1
  %212 = ptrtoint ptr %retval.0.i36483955 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %retval.0.i36483955, align 1
  %conv1638 = zext i8 %211 to i32
  %shl1639 = shl nuw nsw i32 %conv1638, 16
  %and1640 = and i32 %shl1639, 2031616
  %or1641 = or i32 %or1550, %and1640
  %conv1729 = zext i8 %213 to i32
  %shl1730 = shl i32 %conv1729, 29
  %or1732 = or i32 %shl1730, %or1641
  %main_driver1751 = getelementptr inbounds %struct.anon.113, ptr %retval.0.i36483955, i32 0, i32 1
  %214 = ptrtoint ptr %main_driver1751 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %main_driver1751, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %215)
  %tobool1755.not = icmp ult i8 %215, 32
  br i1 %tobool1755.not, label %if.end1600.do.end1816_crit_edge, label %do.end1776, !prof !31

if.end1600.do.end1816_crit_edge:                  ; preds = %if.end1600
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1816

do.end1776:                                       ; preds = %if.end1600
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 479, i32 noundef 9, ptr noundef null) #5
  br label %do.end1816

do.end1816:                                       ; preds = %do.end1776, %if.end1600.do.end1816_crit_edge
  %216 = ptrtoint ptr %main_driver1751 to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %main_driver1751, align 1
  %conv1820 = zext i8 %217 to i32
  %shl1821 = shl nuw i32 %conv1820, 24
  %and1822 = and i32 %shl1821, 520093696
  %or1823 = or i32 %and1822, %or1732
  %218 = ptrtoint ptr %retval.0.i3666 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %retval.0.i3666, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %219)
  %tobool1846.not = icmp ult i8 %219, 8
  br i1 %tobool1846.not, label %do.end1816.do.end1907_crit_edge, label %do.end1867, !prof !31

do.end1816.do.end1907_crit_edge:                  ; preds = %do.end1816
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1907

do.end1867:                                       ; preds = %do.end1816
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 481, i32 noundef 9, ptr noundef null) #5
  br label %do.end1907

do.end1907:                                       ; preds = %do.end1867, %do.end1816.do.end1907_crit_edge
  %220 = ptrtoint ptr %retval.0.i3666 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %retval.0.i3666, align 1
  %conv1911 = zext i8 %221 to i32
  %shl1912 = shl nuw nsw i32 %conv1911, 5
  %and1913 = and i32 %shl1912, 224
  %or1914 = or i32 %and1913, %or1823
  %main_driver1933 = getelementptr inbounds %struct.anon.113, ptr %retval.0.i3666, i32 0, i32 1
  %222 = ptrtoint ptr %main_driver1933 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %main_driver1933, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %223)
  %tobool1937.not = icmp ult i8 %223, 32
  br i1 %tobool1937.not, label %do.end1907.do.end1998_crit_edge, label %do.end1958, !prof !31

do.end1907.do.end1998_crit_edge:                  ; preds = %do.end1907
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end1998

do.end1958:                                       ; preds = %do.end1907
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 483, i32 noundef 9, ptr noundef null) #5
  br label %do.end1998

do.end1998:                                       ; preds = %do.end1958, %do.end1907.do.end1998_crit_edge
  %224 = ptrtoint ptr %main_driver1933 to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %main_driver1933, align 1
  %226 = and i8 %225, 31
  %and2004 = zext i8 %226 to i32
  %or2005 = or i32 %or1914, %and2004
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 62, i32 noundef %or2005)
  %227 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %variant1, align 4
  %229 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3670 = getelementptr inbounds %struct.platform_device, ptr %230, i32 0, i32 3, i32 12, i32 18
  %231 = ptrtoint ptr %runtime_status.i.i3670 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %runtime_status.i.i3670, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %cmp.i.i3671 = icmp eq i32 %232, 0
  br i1 %cmp.i.i3671, label %do.end1998.if.end.i3679_crit_edge, label %pm_runtime_active.exit.i3675

do.end1998.if.end.i3679_crit_edge:                ; preds = %do.end1998
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3679

pm_runtime_active.exit.i3675:                     ; preds = %do.end1998
  %disable_depth.i.i3672 = getelementptr inbounds %struct.platform_device, ptr %230, i32 0, i32 3, i32 12, i32 15
  %233 = ptrtoint ptr %disable_depth.i.i3672 to i32
  call void @__asan_load2_noabort(i32 %233)
  %bf.load.i.i3673 = load i16, ptr %disable_depth.i.i3672, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3673)
  %tobool.i.i3674 = icmp ugt i16 %bf.load.i.i3673, 8191
  br i1 %tobool.i.i3674, label %pm_runtime_active.exit.i3675.if.end.i3679_crit_edge, label %do.end.i3676, !prof !31

pm_runtime_active.exit.i3675.if.end.i3679_crit_edge: ; preds = %pm_runtime_active.exit.i3675
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3679

do.end.i3676:                                     ; preds = %pm_runtime_active.exit.i3675
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3679

if.end.i3679:                                     ; preds = %do.end.i3676, %pm_runtime_active.exit.i3675.if.end.i3679_crit_edge, %do.end1998.if.end.i3679_crit_edge
  %num_registers.i3677 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %228, i32 0, i32 5
  %234 = ptrtoint ptr %num_registers.i3677 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %num_registers.i3677, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %235)
  %cmp.not.i3678 = icmp ugt i32 %235, 63
  br i1 %cmp.not.i3678, label %if.end27.i3684, label %do.end24.i3681

do.end24.i3681:                                   ; preds = %if.end.i3679
  call void @__sanitizer_cov_trace_pc() #7
  %236 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %pdev.i, align 8
  %dev26.i3680 = getelementptr inbounds %struct.platform_device, ptr %237, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3680, ptr noundef nonnull @.str.2, i32 noundef 63) #8
  br label %vc4_hdmi_read.exit3711

if.end27.i3684:                                   ; preds = %if.end.i3679
  %registers.i3682 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %228, i32 0, i32 4
  %238 = ptrtoint ptr %registers.i3682 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %registers.i3682, align 8
  %reg28.i3683 = getelementptr %struct.vc4_hdmi_register, ptr %239, i32 63, i32 1
  %240 = ptrtoint ptr %reg28.i3683 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %reg28.i3683, align 4
  %242 = zext i32 %241 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %241, label %if.end27.i3684.do.end34.i3706_crit_edge [
    i32 2, label %sw.bb.i.i3686
    i32 1, label %sw.bb1.i.i3688
    i32 4, label %sw.bb2.i.i3690
    i32 3, label %sw.bb3.i.i3692
    i32 5, label %sw.bb4.i.i3694
    i32 6, label %sw.bb5.i.i3696
    i32 7, label %sw.bb6.i.i3698
    i32 8, label %sw.bb7.i.i3700
  ]

if.end27.i3684.do.end34.i3706_crit_edge:          ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3706

sw.bb.i.i3686:                                    ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3685 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb1.i.i3688:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3687 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb2.i.i3690:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3689 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb3.i.i3692:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3691 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb4.i.i3694:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3693 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb5.i.i3696:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3695 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb6.i.i3698:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3697 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3704

sw.bb7.i.i3700:                                   ; preds = %if.end27.i3684
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3699 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3704

__vc4_hdmi_get_field_base.exit.i3704:             ; preds = %sw.bb7.i.i3700, %sw.bb6.i.i3698, %sw.bb5.i.i3696, %sw.bb4.i.i3694, %sw.bb3.i.i3692, %sw.bb2.i.i3690, %sw.bb1.i.i3688, %sw.bb.i.i3686
  %retval.0.i.in.i3701 = phi ptr [ %rm_regs.i.i3699, %sw.bb7.i.i3700 ], [ %ram_regs.i.i3697, %sw.bb6.i.i3698 ], [ %phy_regs.i.i3695, %sw.bb5.i.i3696 ], [ %dvp_regs.i.i3693, %sw.bb4.i.i3694 ], [ %cec_regs.i.i3691, %sw.bb3.i.i3692 ], [ %csc_regs.i.i3689, %sw.bb2.i.i3690 ], [ %hdmicore_regs.i.i3687, %sw.bb1.i.i3688 ], [ %hd_regs.i.i3685, %sw.bb.i.i3686 ]
  %243 = ptrtoint ptr %retval.0.i.in.i3701 to i32
  call void @__asan_load4_noabort(i32 %243)
  %retval.0.i.i3702 = load ptr, ptr %retval.0.i.in.i3701, align 4
  %tobool30.not.i3703 = icmp eq ptr %retval.0.i.i3702, null
  br i1 %tobool30.not.i3703, label %__vc4_hdmi_get_field_base.exit.i3704.do.end34.i3706_crit_edge, label %if.end37.i3709

__vc4_hdmi_get_field_base.exit.i3704.do.end34.i3706_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3704
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3706

do.end34.i3706:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3704.do.end34.i3706_crit_edge, %if.end27.i3684.do.end34.i3706_crit_edge
  %244 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %pdev.i, align 8
  %dev36.i3705 = getelementptr inbounds %struct.platform_device, ptr %245, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3705, ptr noundef nonnull @.str.8, i32 noundef 63) #8
  br label %vc4_hdmi_read.exit3711

if.end37.i3709:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3704
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3707 = getelementptr %struct.vc4_hdmi_register, ptr %239, i32 63, i32 2
  %246 = ptrtoint ptr %offset.i3707 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %offset.i3707, align 4
  %add.ptr.i3708 = getelementptr i8, ptr %retval.0.i.i3702, i32 %247
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3708) #5, !srcloc !34
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  br label %vc4_hdmi_read.exit3711

vc4_hdmi_read.exit3711:                           ; preds = %if.end37.i3709, %do.end34.i3706, %do.end24.i3681
  %retval.0.i3710 = phi i32 [ 0, %do.end24.i3681 ], [ %249, %if.end37.i3709 ], [ 0, %do.end34.i3706 ]
  %res_sel_data = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i3613382538753951, i32 0, i32 1
  %250 = ptrtoint ptr %res_sel_data to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %res_sel_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %251)
  %tobool2027.not = icmp ult i8 %251, 32
  br i1 %tobool2027.not, label %vc4_hdmi_read.exit3711.do.end2086_crit_edge, label %do.end2048, !prof !31

vc4_hdmi_read.exit3711.do.end2086_crit_edge:      ; preds = %vc4_hdmi_read.exit3711
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2086

do.end2048:                                       ; preds = %vc4_hdmi_read.exit3711
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 488, i32 noundef 9, ptr noundef null) #5
  br label %do.end2086

do.end2086:                                       ; preds = %do.end2048, %vc4_hdmi_read.exit3711.do.end2086_crit_edge
  %252 = ptrtoint ptr %res_sel_data to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %res_sel_data, align 1
  %conv2089 = zext i8 %253 to i32
  %shl2090 = shl nuw nsw i32 %conv2089, 5
  %and2091 = and i32 %shl2090, 992
  %or2092 = or i32 %and2091, %retval.0.i3710
  %res_sel_data2110 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i363038773949, i32 0, i32 1
  %254 = ptrtoint ptr %res_sel_data2110 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %res_sel_data2110, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %255)
  %tobool2114.not = icmp ult i8 %255, 32
  br i1 %tobool2114.not, label %do.end2086.do.end2173_crit_edge, label %do.end2135, !prof !31

do.end2086.do.end2173_crit_edge:                  ; preds = %do.end2086
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2173

do.end2135:                                       ; preds = %do.end2086
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #5
  br label %do.end2173

do.end2173:                                       ; preds = %do.end2135, %do.end2086.do.end2173_crit_edge
  %256 = ptrtoint ptr %res_sel_data2110 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %res_sel_data2110, align 1
  %conv2176 = zext i8 %257 to i32
  %shl2177 = shl nuw nsw i32 %conv2176, 10
  %and2178 = and i32 %shl2177, 31744
  %or2179 = or i32 %or2092, %and2178
  %res_sel_data2197 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i36483955, i32 0, i32 1
  %258 = ptrtoint ptr %res_sel_data2197 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %res_sel_data2197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %259)
  %tobool2201.not = icmp ult i8 %259, 32
  br i1 %tobool2201.not, label %do.end2173.do.end2260_crit_edge, label %do.end2222, !prof !31

do.end2173.do.end2260_crit_edge:                  ; preds = %do.end2173
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2260

do.end2222:                                       ; preds = %do.end2173
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 492, i32 noundef 9, ptr noundef null) #5
  br label %do.end2260

do.end2260:                                       ; preds = %do.end2222, %do.end2173.do.end2260_crit_edge
  %260 = ptrtoint ptr %res_sel_data2197 to i32
  call void @__asan_load1_noabort(i32 %260)
  %261 = load i8, ptr %res_sel_data2197, align 1
  %conv2263 = zext i8 %261 to i32
  %shl2264 = shl nuw nsw i32 %conv2263, 15
  %and2265 = and i32 %shl2264, 1015808
  %or2266 = or i32 %or2179, %and2265
  %res_sel_data2284 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i3666, i32 0, i32 1
  %262 = ptrtoint ptr %res_sel_data2284 to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %res_sel_data2284, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %263)
  %tobool2288.not = icmp ult i8 %263, 32
  br i1 %tobool2288.not, label %do.end2260.do.end2347_crit_edge, label %do.end2309, !prof !31

do.end2260.do.end2347_crit_edge:                  ; preds = %do.end2260
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2347

do.end2309:                                       ; preds = %do.end2260
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #5
  br label %do.end2347

do.end2347:                                       ; preds = %do.end2309, %do.end2260.do.end2347_crit_edge
  %264 = ptrtoint ptr %res_sel_data2284 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %res_sel_data2284, align 1
  %266 = and i8 %265, 31
  %and2352 = zext i8 %266 to i32
  %or2353 = or i32 %or2266, %and2352
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 63, i32 noundef %or2353)
  %term_res_sel_data = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i3613382538753951, i32 0, i32 2
  %267 = ptrtoint ptr %term_res_sel_data to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %term_res_sel_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %268)
  %tobool2374.not = icmp ult i8 %268, 16
  br i1 %tobool2374.not, label %do.end2347.do.end2433_crit_edge, label %do.end2395, !prof !31

do.end2347.do.end2433_crit_edge:                  ; preds = %do.end2347
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2433

do.end2395:                                       ; preds = %do.end2347
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 498, i32 noundef 9, ptr noundef null) #5
  br label %do.end2433

do.end2433:                                       ; preds = %do.end2395, %do.end2347.do.end2433_crit_edge
  %269 = ptrtoint ptr %term_res_sel_data to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %term_res_sel_data, align 1
  %conv2436 = zext i8 %270 to i32
  %shl2437 = shl nuw nsw i32 %conv2436, 4
  %and2438 = and i32 %shl2437, 240
  %term_res_sel_data2456 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i363038773949, i32 0, i32 2
  %271 = ptrtoint ptr %term_res_sel_data2456 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %term_res_sel_data2456, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %272)
  %tobool2460.not = icmp ult i8 %272, 16
  br i1 %tobool2460.not, label %do.end2433.do.end2519_crit_edge, label %do.end2481, !prof !31

do.end2433.do.end2519_crit_edge:                  ; preds = %do.end2433
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2519

do.end2481:                                       ; preds = %do.end2433
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 500, i32 noundef 9, ptr noundef null) #5
  br label %do.end2519

do.end2519:                                       ; preds = %do.end2481, %do.end2433.do.end2519_crit_edge
  %273 = ptrtoint ptr %term_res_sel_data2456 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %term_res_sel_data2456, align 1
  %conv2522 = zext i8 %274 to i32
  %shl2523 = shl nuw nsw i32 %conv2522, 8
  %and2524 = and i32 %shl2523, 3840
  %or2525 = or i32 %and2524, %and2438
  %term_res_sel_data2543 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i36483955, i32 0, i32 2
  %275 = ptrtoint ptr %term_res_sel_data2543 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %term_res_sel_data2543, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %276)
  %tobool2547.not = icmp ult i8 %276, 16
  br i1 %tobool2547.not, label %do.end2519.do.end2606_crit_edge, label %do.end2568, !prof !31

do.end2519.do.end2606_crit_edge:                  ; preds = %do.end2519
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2606

do.end2568:                                       ; preds = %do.end2519
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 502, i32 noundef 9, ptr noundef null) #5
  br label %do.end2606

do.end2606:                                       ; preds = %do.end2568, %do.end2519.do.end2606_crit_edge
  %277 = ptrtoint ptr %term_res_sel_data2543 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %term_res_sel_data2543, align 1
  %conv2609 = zext i8 %278 to i32
  %shl2610 = shl nuw nsw i32 %conv2609, 12
  %and2611 = and i32 %shl2610, 61440
  %or2612 = or i32 %or2525, %and2611
  %term_res_sel_data2630 = getelementptr inbounds %struct.phy_lane_settings, ptr %retval.0.i3666, i32 0, i32 2
  %279 = ptrtoint ptr %term_res_sel_data2630 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %term_res_sel_data2630, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %280)
  %tobool2634.not = icmp ult i8 %280, 16
  br i1 %tobool2634.not, label %do.end2606.do.end2693_crit_edge, label %do.end2655, !prof !31

do.end2606.do.end2693_crit_edge:                  ; preds = %do.end2606
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2693

do.end2655:                                       ; preds = %do.end2606
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef null) #5
  br label %do.end2693

do.end2693:                                       ; preds = %do.end2655, %do.end2606.do.end2693_crit_edge
  %281 = ptrtoint ptr %term_res_sel_data2630 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %term_res_sel_data2630, align 1
  %283 = and i8 %282, 15
  %and2698 = zext i8 %283 to i32
  %or2699 = or i32 %or2612, %and2698
  call void @__sanitizer_cov_trace_const_cmp8(i64 3350000000, i64 %vco_freq.0.lcssa.i)
  %cmp.i3712 = icmp ult i64 %vco_freq.0.lcssa.i, 3350000000
  br i1 %cmp.i3712, label %do.end2693.phy_get_vco_gain.exit3727_crit_edge, label %if.end.i3713

do.end2693.phy_get_vco_gain.exit3727_crit_edge:   ; preds = %do.end2693
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_gain.exit3727

if.end.i3713:                                     ; preds = %do.end2693
  call void @__sanitizer_cov_trace_const_cmp8(i64 3700000000, i64 %vco_freq.0.lcssa.i)
  %cmp1.i = icmp ult i64 %vco_freq.0.lcssa.i, 3700000000
  br i1 %cmp1.i, label %if.end.i3713.phy_get_vco_gain.exit3727_crit_edge, label %if.end3.i

if.end.i3713.phy_get_vco_gain.exit3727_crit_edge: ; preds = %if.end.i3713
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_gain.exit3727

if.end3.i:                                        ; preds = %if.end.i3713
  call void @__sanitizer_cov_trace_const_cmp8(i64 4050000000, i64 %vco_freq.0.lcssa.i)
  %cmp4.i = icmp ult i64 %vco_freq.0.lcssa.i, 4050000000
  br i1 %cmp4.i, label %if.end3.i.phy_get_vco_gain.exit3727_crit_edge, label %if.end6.i

if.end3.i.phy_get_vco_gain.exit3727_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_gain.exit3727

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4800000000, i64 %vco_freq.0.lcssa.i)
  %cmp7.i = icmp ult i64 %vco_freq.0.lcssa.i, 4800000000
  br i1 %cmp7.i, label %if.end6.i.phy_get_vco_gain.exit3727_crit_edge, label %if.end9.i3725

if.end6.i.phy_get_vco_gain.exit3727_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %phy_get_vco_gain.exit3727

if.end9.i3725:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 5200000000, i64 %vco_freq.0.lcssa.i)
  %cmp10.i3723 = icmp ult i64 %vco_freq.0.lcssa.i, 5200000000
  %..i3724 = select i1 %cmp10.i3723, i32 458752, i32 131072
  br label %phy_get_vco_gain.exit3727

phy_get_vco_gain.exit3727:                        ; preds = %if.end9.i3725, %if.end6.i.phy_get_vco_gain.exit3727_crit_edge, %if.end3.i.phy_get_vco_gain.exit3727_crit_edge, %if.end.i3713.phy_get_vco_gain.exit3727_crit_edge, %do.end2693.phy_get_vco_gain.exit3727_crit_edge
  %retval.0.i3726 = phi i32 [ %..i3724, %if.end9.i3725 ], [ 983040, %do.end2693.phy_get_vco_gain.exit3727_crit_edge ], [ 786432, %if.end.i3713.phy_get_vco_gain.exit3727_crit_edge ], [ 393216, %if.end3.i.phy_get_vco_gain.exit3727_crit_edge ], [ 327680, %if.end6.i.phy_get_vco_gain.exit3727_crit_edge ]
  %or2777 = or i32 %or2699, %retval.0.i3726
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 64, i32 noundef %or2777)
  %284 = ptrtoint ptr %phy_lane_mapping to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %phy_lane_mapping, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %285)
  %tobool2799.not = icmp ult i32 %285, 4
  br i1 %tobool2799.not, label %phy_get_vco_gain.exit3727.if.end2826_crit_edge, label %do.end2820, !prof !31

phy_get_vco_gain.exit3727.if.end2826_crit_edge:   ; preds = %phy_get_vco_gain.exit3727
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2826

do.end2820:                                       ; preds = %phy_get_vco_gain.exit3727
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 9, ptr noundef null) #5
  br label %if.end2826

if.end2826:                                       ; preds = %do.end2820, %phy_get_vco_gain.exit3727.if.end2826_crit_edge
  %286 = ptrtoint ptr %phy_lane_mapping to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %phy_lane_mapping, align 8
  %288 = ptrtoint ptr %arrayidx1274382738733953 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx1274382738733953, align 4
  %290 = and i32 %289, 268435452
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %290)
  %tobool2886.not = icmp eq i32 %290, 0
  br i1 %tobool2886.not, label %if.end2826.if.end2913_crit_edge, label %do.end2907, !prof !31

if.end2826.if.end2913_crit_edge:                  ; preds = %if.end2826
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2913

do.end2907:                                       ; preds = %if.end2826
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 9, ptr noundef null) #5
  br label %if.end2913

if.end2913:                                       ; preds = %do.end2907, %if.end2826.if.end2913_crit_edge
  %291 = ptrtoint ptr %arrayidx1274382738733953 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx1274382738733953, align 4
  %293 = ptrtoint ptr %arrayidx127738793947 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %arrayidx127738793947, align 8
  %295 = and i32 %294, 16777212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %295)
  %tobool2974.not = icmp eq i32 %295, 0
  br i1 %tobool2974.not, label %if.end2913.if.end3001_crit_edge, label %do.end2995, !prof !31

if.end2913.if.end3001_crit_edge:                  ; preds = %if.end2913
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3001

do.end2995:                                       ; preds = %if.end2913
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 514, i32 noundef 9, ptr noundef null) #5
  br label %if.end3001

if.end3001:                                       ; preds = %do.end2995, %if.end2913.if.end3001_crit_edge
  %296 = ptrtoint ptr %arrayidx127738793947 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %arrayidx127738793947, align 8
  %298 = ptrtoint ptr %arrayidx12803957 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %arrayidx12803957, align 4
  %300 = and i32 %299, 1048572
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool3062.not = icmp eq i32 %300, 0
  br i1 %tobool3062.not, label %if.end3001.do.end3122_crit_edge, label %do.end3083, !prof !31

if.end3001.do.end3122_crit_edge:                  ; preds = %if.end3001
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3122

do.end3083:                                       ; preds = %if.end3001
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #5
  br label %do.end3122

do.end3122:                                       ; preds = %do.end3083, %if.end3001.do.end3122_crit_edge
  %301 = ptrtoint ptr %arrayidx12803957 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx12803957, align 4
  %and2864 = and i32 %287, 3
  %shl2950 = shl i32 %292, 4
  %and2951 = and i32 %shl2950, 48
  %or2952 = or i32 %and2951, %and2864
  %shl3038 = shl i32 %297, 8
  %and3039 = and i32 %shl3038, 768
  %or3040 = or i32 %or2952, %and3039
  %shl3126 = shl i32 %302, 12
  %and3127 = and i32 %shl3126, 12288
  %or3128 = or i32 %or3040, %and3127
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 60, i32 noundef %or3128)
  %303 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %variant1, align 4
  %305 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3730 = getelementptr inbounds %struct.platform_device, ptr %306, i32 0, i32 3, i32 12, i32 18
  %307 = ptrtoint ptr %runtime_status.i.i3730 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %runtime_status.i.i3730, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %308)
  %cmp.i.i3731 = icmp eq i32 %308, 0
  br i1 %cmp.i.i3731, label %do.end3122.if.end.i3739_crit_edge, label %pm_runtime_active.exit.i3735

do.end3122.if.end.i3739_crit_edge:                ; preds = %do.end3122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3739

pm_runtime_active.exit.i3735:                     ; preds = %do.end3122
  %disable_depth.i.i3732 = getelementptr inbounds %struct.platform_device, ptr %306, i32 0, i32 3, i32 12, i32 15
  %309 = ptrtoint ptr %disable_depth.i.i3732 to i32
  call void @__asan_load2_noabort(i32 %309)
  %bf.load.i.i3733 = load i16, ptr %disable_depth.i.i3732, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3733)
  %tobool.i.i3734 = icmp ugt i16 %bf.load.i.i3733, 8191
  br i1 %tobool.i.i3734, label %pm_runtime_active.exit.i3735.if.end.i3739_crit_edge, label %do.end.i3736, !prof !31

pm_runtime_active.exit.i3735.if.end.i3739_crit_edge: ; preds = %pm_runtime_active.exit.i3735
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3739

do.end.i3736:                                     ; preds = %pm_runtime_active.exit.i3735
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3739

if.end.i3739:                                     ; preds = %do.end.i3736, %pm_runtime_active.exit.i3735.if.end.i3739_crit_edge, %do.end3122.if.end.i3739_crit_edge
  %num_registers.i3737 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %304, i32 0, i32 5
  %310 = ptrtoint ptr %num_registers.i3737 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %num_registers.i3737, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %311)
  %cmp.not.i3738 = icmp ugt i32 %311, 73
  br i1 %cmp.not.i3738, label %if.end27.i3744, label %do.end24.i3741

do.end24.i3741:                                   ; preds = %if.end.i3739
  call void @__sanitizer_cov_trace_pc() #7
  %312 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %pdev.i, align 8
  %dev26.i3740 = getelementptr inbounds %struct.platform_device, ptr %313, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3740, ptr noundef nonnull @.str.2, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit3771

if.end27.i3744:                                   ; preds = %if.end.i3739
  %registers.i3742 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %304, i32 0, i32 4
  %314 = ptrtoint ptr %registers.i3742 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %registers.i3742, align 8
  %reg28.i3743 = getelementptr %struct.vc4_hdmi_register, ptr %315, i32 73, i32 1
  %316 = ptrtoint ptr %reg28.i3743 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %reg28.i3743, align 4
  %318 = zext i32 %317 to i64
  call void @__sanitizer_cov_trace_switch(i64 %318, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %317, label %if.end27.i3744.do.end34.i3766_crit_edge [
    i32 2, label %sw.bb.i.i3746
    i32 1, label %sw.bb1.i.i3748
    i32 4, label %sw.bb2.i.i3750
    i32 3, label %sw.bb3.i.i3752
    i32 5, label %sw.bb4.i.i3754
    i32 6, label %sw.bb5.i.i3756
    i32 7, label %sw.bb6.i.i3758
    i32 8, label %sw.bb7.i.i3760
  ]

if.end27.i3744.do.end34.i3766_crit_edge:          ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3766

sw.bb.i.i3746:                                    ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3745 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb1.i.i3748:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3747 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb2.i.i3750:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3749 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb3.i.i3752:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3751 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb4.i.i3754:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3753 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb5.i.i3756:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3755 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb6.i.i3758:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3757 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3764

sw.bb7.i.i3760:                                   ; preds = %if.end27.i3744
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3759 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3764

__vc4_hdmi_get_field_base.exit.i3764:             ; preds = %sw.bb7.i.i3760, %sw.bb6.i.i3758, %sw.bb5.i.i3756, %sw.bb4.i.i3754, %sw.bb3.i.i3752, %sw.bb2.i.i3750, %sw.bb1.i.i3748, %sw.bb.i.i3746
  %retval.0.i.in.i3761 = phi ptr [ %rm_regs.i.i3759, %sw.bb7.i.i3760 ], [ %ram_regs.i.i3757, %sw.bb6.i.i3758 ], [ %phy_regs.i.i3755, %sw.bb5.i.i3756 ], [ %dvp_regs.i.i3753, %sw.bb4.i.i3754 ], [ %cec_regs.i.i3751, %sw.bb3.i.i3752 ], [ %csc_regs.i.i3749, %sw.bb2.i.i3750 ], [ %hdmicore_regs.i.i3747, %sw.bb1.i.i3748 ], [ %hd_regs.i.i3745, %sw.bb.i.i3746 ]
  %319 = ptrtoint ptr %retval.0.i.in.i3761 to i32
  call void @__asan_load4_noabort(i32 %319)
  %retval.0.i.i3762 = load ptr, ptr %retval.0.i.in.i3761, align 4
  %tobool30.not.i3763 = icmp eq ptr %retval.0.i.i3762, null
  br i1 %tobool30.not.i3763, label %__vc4_hdmi_get_field_base.exit.i3764.do.end34.i3766_crit_edge, label %if.end37.i3769

__vc4_hdmi_get_field_base.exit.i3764.do.end34.i3766_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3764
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3766

do.end34.i3766:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3764.do.end34.i3766_crit_edge, %if.end27.i3744.do.end34.i3766_crit_edge
  %320 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %pdev.i, align 8
  %dev36.i3765 = getelementptr inbounds %struct.platform_device, ptr %321, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3765, ptr noundef nonnull @.str.8, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit3771

if.end37.i3769:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3764
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3767 = getelementptr %struct.vc4_hdmi_register, ptr %315, i32 73, i32 2
  %322 = ptrtoint ptr %offset.i3767 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %offset.i3767, align 4
  %add.ptr.i3768 = getelementptr i8, ptr %retval.0.i.i3762, i32 %323
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3768) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %325 = and i32 %324, -805306369
  %326 = tail call i32 @llvm.bswap.i32(i32 %325)
  br label %vc4_hdmi_read.exit3771

vc4_hdmi_read.exit3771:                           ; preds = %if.end37.i3769, %do.end34.i3766, %do.end24.i3741
  %retval.0.i3770 = phi i32 [ 0, %do.end24.i3741 ], [ %326, %if.end37.i3769 ], [ 0, %do.end34.i3766 ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef %retval.0.i3770)
  %327 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %variant1, align 4
  %329 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i3774 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 12, i32 18
  %331 = ptrtoint ptr %runtime_status.i.i3774 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %runtime_status.i.i3774, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp.i.i3775 = icmp eq i32 %332, 0
  br i1 %cmp.i.i3775, label %vc4_hdmi_read.exit3771.if.end.i3783_crit_edge, label %pm_runtime_active.exit.i3779

vc4_hdmi_read.exit3771.if.end.i3783_crit_edge:    ; preds = %vc4_hdmi_read.exit3771
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3783

pm_runtime_active.exit.i3779:                     ; preds = %vc4_hdmi_read.exit3771
  %disable_depth.i.i3776 = getelementptr inbounds %struct.platform_device, ptr %330, i32 0, i32 3, i32 12, i32 15
  %333 = ptrtoint ptr %disable_depth.i.i3776 to i32
  call void @__asan_load2_noabort(i32 %333)
  %bf.load.i.i3777 = load i16, ptr %disable_depth.i.i3776, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i3777)
  %tobool.i.i3778 = icmp ugt i16 %bf.load.i.i3777, 8191
  br i1 %tobool.i.i3778, label %pm_runtime_active.exit.i3779.if.end.i3783_crit_edge, label %do.end.i3780, !prof !31

pm_runtime_active.exit.i3779.if.end.i3783_crit_edge: ; preds = %pm_runtime_active.exit.i3779
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i3783

do.end.i3780:                                     ; preds = %pm_runtime_active.exit.i3779
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i3783

if.end.i3783:                                     ; preds = %do.end.i3780, %pm_runtime_active.exit.i3779.if.end.i3783_crit_edge, %vc4_hdmi_read.exit3771.if.end.i3783_crit_edge
  %num_registers.i3781 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %328, i32 0, i32 5
  %334 = ptrtoint ptr %num_registers.i3781 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %num_registers.i3781, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %335)
  %cmp.not.i3782 = icmp ugt i32 %335, 73
  br i1 %cmp.not.i3782, label %if.end27.i3788, label %do.end24.i3785

do.end24.i3785:                                   ; preds = %if.end.i3783
  call void @__sanitizer_cov_trace_pc() #7
  %336 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %pdev.i, align 8
  %dev26.i3784 = getelementptr inbounds %struct.platform_device, ptr %337, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i3784, ptr noundef nonnull @.str.2, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit3815

if.end27.i3788:                                   ; preds = %if.end.i3783
  %registers.i3786 = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %328, i32 0, i32 4
  %338 = ptrtoint ptr %registers.i3786 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %registers.i3786, align 8
  %reg28.i3787 = getelementptr %struct.vc4_hdmi_register, ptr %339, i32 73, i32 1
  %340 = ptrtoint ptr %reg28.i3787 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %reg28.i3787, align 4
  %342 = zext i32 %341 to i64
  call void @__sanitizer_cov_trace_switch(i64 %342, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %341, label %if.end27.i3788.do.end34.i3810_crit_edge [
    i32 2, label %sw.bb.i.i3790
    i32 1, label %sw.bb1.i.i3792
    i32 4, label %sw.bb2.i.i3794
    i32 3, label %sw.bb3.i.i3796
    i32 5, label %sw.bb4.i.i3798
    i32 6, label %sw.bb5.i.i3800
    i32 7, label %sw.bb6.i.i3802
    i32 8, label %sw.bb7.i.i3804
  ]

if.end27.i3788.do.end34.i3810_crit_edge:          ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3810

sw.bb.i.i3790:                                    ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i3789 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb1.i.i3792:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i3791 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb2.i.i3794:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i3793 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb3.i.i3796:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i3795 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb4.i.i3798:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i3797 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb5.i.i3800:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i3799 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb6.i.i3802:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i3801 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i3808

sw.bb7.i.i3804:                                   ; preds = %if.end27.i3788
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i3803 = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i3808

__vc4_hdmi_get_field_base.exit.i3808:             ; preds = %sw.bb7.i.i3804, %sw.bb6.i.i3802, %sw.bb5.i.i3800, %sw.bb4.i.i3798, %sw.bb3.i.i3796, %sw.bb2.i.i3794, %sw.bb1.i.i3792, %sw.bb.i.i3790
  %retval.0.i.in.i3805 = phi ptr [ %rm_regs.i.i3803, %sw.bb7.i.i3804 ], [ %ram_regs.i.i3801, %sw.bb6.i.i3802 ], [ %phy_regs.i.i3799, %sw.bb5.i.i3800 ], [ %dvp_regs.i.i3797, %sw.bb4.i.i3798 ], [ %cec_regs.i.i3795, %sw.bb3.i.i3796 ], [ %csc_regs.i.i3793, %sw.bb2.i.i3794 ], [ %hdmicore_regs.i.i3791, %sw.bb1.i.i3792 ], [ %hd_regs.i.i3789, %sw.bb.i.i3790 ]
  %343 = ptrtoint ptr %retval.0.i.in.i3805 to i32
  call void @__asan_load4_noabort(i32 %343)
  %retval.0.i.i3806 = load ptr, ptr %retval.0.i.in.i3805, align 4
  %tobool30.not.i3807 = icmp eq ptr %retval.0.i.i3806, null
  br i1 %tobool30.not.i3807, label %__vc4_hdmi_get_field_base.exit.i3808.do.end34.i3810_crit_edge, label %if.end37.i3813

__vc4_hdmi_get_field_base.exit.i3808.do.end34.i3810_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i3808
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i3810

do.end34.i3810:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3808.do.end34.i3810_crit_edge, %if.end27.i3788.do.end34.i3810_crit_edge
  %344 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %pdev.i, align 8
  %dev36.i3809 = getelementptr inbounds %struct.platform_device, ptr %345, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i3809, ptr noundef nonnull @.str.8, i32 noundef 73) #8
  br label %vc4_hdmi_read.exit3815

if.end37.i3813:                                   ; preds = %__vc4_hdmi_get_field_base.exit.i3808
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i3811 = getelementptr %struct.vc4_hdmi_register, ptr %339, i32 73, i32 2
  %346 = ptrtoint ptr %offset.i3811 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %offset.i3811, align 4
  %add.ptr.i3812 = getelementptr i8, ptr %retval.0.i.i3806, i32 %347
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3812) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %349 = or i32 %348, 805306368
  %350 = tail call i32 @llvm.bswap.i32(i32 %349)
  br label %vc4_hdmi_read.exit3815

vc4_hdmi_read.exit3815:                           ; preds = %if.end37.i3813, %do.end34.i3810, %do.end24.i3785
  %retval.0.i3814 = phi i32 [ 48, %do.end24.i3785 ], [ %350, %if.end37.i3813 ], [ 48, %do.end34.i3810 ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef %retval.0.i3814)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_disable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.vc5_hdmi_reset_phy.exit_crit_edge, label %land.rhs.i

entry.vc5_hdmi_reset_phy.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc5_hdmi_reset_phy.exit

land.rhs.i:                                       ; preds = %entry
  %dep_map.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge, !prof !30

land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %vc5_hdmi_reset_phy.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 357, i32 noundef 9, ptr noundef null) #5
  br label %vc5_hdmi_reset_phy.exit

vc5_hdmi_reset_phy.exit:                          ; preds = %do.end.i, %land.rhs.i.vc5_hdmi_reset_phy.exit_crit_edge, %entry.vc5_hdmi_reset_phy.exit_crit_edge
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 73, i32 noundef 15) #5
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 72, i32 noundef 1024) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_rng_enable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !31

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 72
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.2, i32 noundef 72) #8
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 72, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.8, i32 noundef 72) #8
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 72, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %22 = and i32 %21, -268435457
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 0, %do.end24.i ], [ %23, %if.end37.i ], [ 0, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 72, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vc5_hdmi_phy_rng_disable(ptr noundef %vc4_hdmi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 30
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %hw_lock) #5
  %variant1.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 2
  %0 = ptrtoint ptr %variant1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant1.i, align 4
  %pdev.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 1
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 8
  %runtime_status.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 18
  %4 = ptrtoint ptr %runtime_status.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %runtime_status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 0
  br i1 %cmp.i.i, label %entry.if.end.i_crit_edge, label %pm_runtime_active.exit.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

pm_runtime_active.exit.i:                         ; preds = %entry
  %disable_depth.i.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, i32 12, i32 15
  %6 = ptrtoint ptr %disable_depth.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i.i = load i16, ptr %disable_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %bf.load.i.i)
  %tobool.i.i = icmp ugt i16 %bf.load.i.i, 8191
  br i1 %tobool.i.i, label %pm_runtime_active.exit.i.if.end.i_crit_edge, label %do.end.i, !prof !31

pm_runtime_active.exit.i.if.end.i_crit_edge:      ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %pm_runtime_active.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 417, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pm_runtime_active.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %num_registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %num_registers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_registers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %8)
  %cmp.not.i = icmp ugt i32 %8, 72
  br i1 %cmp.not.i, label %if.end27.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev.i, align 8
  %dev26.i = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev26.i, ptr noundef nonnull @.str.2, i32 noundef 72) #8
  br label %vc4_hdmi_read.exit

if.end27.i:                                       ; preds = %if.end.i
  %registers.i = getelementptr inbounds %struct.vc4_hdmi_variant, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %registers.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %registers.i, align 8
  %reg28.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 72, i32 1
  %13 = ptrtoint ptr %reg28.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg28.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %14, label %if.end27.i.do.end34.i_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 4, label %sw.bb2.i.i
    i32 3, label %sw.bb3.i.i
    i32 5, label %sw.bb4.i.i
    i32 6, label %sw.bb5.i.i
    i32 7, label %sw.bb6.i.i
    i32 8, label %sw.bb7.i.i
  ]

if.end27.i.do.end34.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

sw.bb.i.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hd_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 8
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb1.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %hdmicore_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 7
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb2.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %csc_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 10
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb3.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %cec_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 9
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb4.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %dvp_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 11
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb5.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %phy_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 12
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb6.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 13
  br label %__vc4_hdmi_get_field_base.exit.i

sw.bb7.i.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %rm_regs.i.i = getelementptr inbounds %struct.vc4_hdmi, ptr %vc4_hdmi, i32 0, i32 14
  br label %__vc4_hdmi_get_field_base.exit.i

__vc4_hdmi_get_field_base.exit.i:                 ; preds = %sw.bb7.i.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.in.i = phi ptr [ %rm_regs.i.i, %sw.bb7.i.i ], [ %ram_regs.i.i, %sw.bb6.i.i ], [ %phy_regs.i.i, %sw.bb5.i.i ], [ %dvp_regs.i.i, %sw.bb4.i.i ], [ %cec_regs.i.i, %sw.bb3.i.i ], [ %csc_regs.i.i, %sw.bb2.i.i ], [ %hdmicore_regs.i.i, %sw.bb1.i.i ], [ %hd_regs.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %retval.0.i.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i.i = load ptr, ptr %retval.0.i.in.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool30.not.i, label %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, label %if.end37.i

__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge: ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i.do.end34.i_crit_edge, %if.end27.i.do.end34.i_crit_edge
  %17 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i, align 8
  %dev36.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36.i, ptr noundef nonnull @.str.8, i32 noundef 72) #8
  br label %vc4_hdmi_read.exit

if.end37.i:                                       ; preds = %__vc4_hdmi_get_field_base.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset.i = getelementptr %struct.vc4_hdmi_register, ptr %12, i32 72, i32 2
  %19 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %22 = or i32 %21, 268435456
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %vc4_hdmi_read.exit

vc4_hdmi_read.exit:                               ; preds = %if.end37.i, %do.end34.i, %do.end24.i
  %retval.0.i = phi i32 [ 16, %do.end24.i ], [ %23, %if.end37.i ], [ 16, %do.end34.i ]
  tail call fastcc void @vc4_hdmi_write(ptr noundef %vc4_hdmi, i32 noundef 72, i32 noundef %retval.0.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %hw_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_phy.c", i32 396, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 445, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 450, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @vc4_hdmi_write._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @vc4_hdmi_write._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 420, i32 3}
!13 = !{ptr @vc4_hdmi_read._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @vc4_hdmi_read._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_regs.h", i32 428, i32 3}
!17 = !{ptr @vc4_hdmi_read._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vc4_hdmi_read._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @vc5_hdmi_phy_settings, !20, !"vc5_hdmi_phy_settings", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/vc4/vc4_hdmi_phy.c", i32 258, i32 34}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i64 2157865269}
!33 = !{i64 4966210}
!34 = !{i64 4966628}
!35 = !{i64 2157861932}
!36 = !{i64 1453352, i64 1453379, i64 1453401, i64 1453429}
!37 = !{i64 1453760, i64 1453787, i64 1453820, i64 1453841, i64 1453868, i64 1453894}
