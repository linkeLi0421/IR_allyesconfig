; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/cdn-dp-reg.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/cdn-dp-reg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cdn_dp_device = type { ptr, ptr, %struct.drm_connector, %struct.drm_encoder, %struct.drm_display_mode, ptr, %struct.work_struct, ptr, %struct.mutex, i8, i8, i8, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.audio_info, %struct.video_info, [2 x ptr], i8, i8, i32, i8, i32, [15 x i8], i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.audio_info = type { i32, i32, i32, i32 }
%struct.video_info = type { i8, i8, i8, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* dpcd write failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/rockchip/cdn-dp-reg.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to loaded the FW reg = %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"firmware version: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* set firmware active failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* set host cap failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* set event config failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* get hpd status failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* get block[%d] edid failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* Failed to start training %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Failed to get training stat %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rate:0x%x, lanes:%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* set video status failed: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* tu error, clk:%d, lanes:%d, rate:%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* config video failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* audio stop failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* audio mute failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* audio config failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* training failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* get training status failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.cdn_dp_config_video = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 1, i32 1, i32 2, i32 1, i32 4, i32 1, i32 8, i32 1, i32 1, i32 1, i32 16], [52 x i8] zeroinitializer }, align 32
@switch.table.cdn_dp_get_msa_misc = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 12, i32 0, i32 10, i32 0, i32 0, i32 0, i32 10], [36 x i8] zeroinitializer }, align 32
@switch.table.cdn_dp_get_msa_misc.21 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 32, i32 0, i32 64, i32 0, i32 96, i32 0, i32 0, i32 0, i32 128], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 277, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 301, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 304, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 318, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 353, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 382, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 398, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 430, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 469, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 553, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 559, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 563, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 578, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 666, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 780, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 790, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 823, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 958, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 514, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [41 x i8] c"../drivers/gpu/drm/rockchip/cdn-dp-reg.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 543, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [33 x i8] c"switch.table.cdn_dp_config_video\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [33 x i8] c"switch.table.cdn_dp_get_msa_misc\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [36 x i8] c"switch.table.cdn_dp_get_msa_misc.21\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @switch.table.cdn_dp_config_video, ptr @switch.table.cdn_dp_get_msa_misc, ptr @switch.table.cdn_dp_get_msa_misc.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdn_dp_config_video to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdn_dp_get_msa_misc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdn_dp_get_msa_misc.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdn_dp_set_fw_clk(ptr nocapture noundef readonly %dp, i32 noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %div = udiv i32 %clk, 1000000
  %0 = tail call i32 @llvm.bswap.i32(i32 %div)
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdn_dp_clock_reset(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 2308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -15794176) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %3, i32 2312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 50331648) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %5, i32 2328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 251658240) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %7, i32 2332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 1056964608) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %9, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 251658240) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr25 = getelementptr i8, ptr %11, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 50331648) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %13, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #4, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_dpcd_read(ptr nocapture noundef readonly %dp, i32 noundef %addr, ptr nocapture noundef writeonly %data, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %len, 8
  %conv1 = trunc i16 %0 to i8
  %conv4 = trunc i16 %len to i8
  %shr6 = lshr i32 %addr, 16
  %conv8 = trunc i32 %shr6 to i8
  %shr10 = lshr i32 %addr, 8
  %conv12 = trunc i32 %shr10 to i8
  %conv15 = trunc i32 %addr to i8
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.err_dpcd_read_crit_edge

entry.err_dpcd_read_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.err_dpcd_read_crit_edge

for.cond.i.err_dpcd_read_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.err_dpcd_read_crit_edge

for.cond.1.i.err_dpcd_read_crit_edge:             ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.err_dpcd_read_crit_edge

for.cond.2.i.err_dpcd_read_crit_edge:             ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.err_dpcd_read_crit_edge

for.body14.i.preheader.err_dpcd_read_crit_edge:   ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.err_dpcd_read_crit_edge

for.cond10.i.err_dpcd_read_crit_edge:             ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.err_dpcd_read_crit_edge

for.cond10.i.1.err_dpcd_read_crit_edge:           ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.err_dpcd_read_crit_edge

for.cond10.i.2.err_dpcd_read_crit_edge:           ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.4, label %for.cond10.i.3.err_dpcd_read_crit_edge

for.cond10.i.3.err_dpcd_read_crit_edge:           ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.cond10.i.4:                                   ; preds = %for.cond10.i.3
  %add = add i16 %len, 5
  %call19 = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %dp, i8 noundef zeroext 3, i16 noundef zeroext %add)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.body.i.preheader, label %for.cond10.i.4.err_dpcd_read_crit_edge

for.cond10.i.4.err_dpcd_read_crit_edge:           ; preds = %for.cond10.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.body.i.preheader:                             ; preds = %for.cond10.i.4
  %call.i40 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %cmp2.i = icmp slt i32 %call.i40, 0
  br i1 %cmp2.i, label %for.body.i.preheader.err_dpcd_read_crit_edge, label %if.end.i

for.body.i.preheader.err_dpcd_read_crit_edge:     ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i40.1 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.1)
  %cmp2.i.1 = icmp slt i32 %call.i40.1, 0
  br i1 %cmp2.i.1, label %if.end.i.err_dpcd_read_crit_edge, label %if.end.i.1

if.end.i.err_dpcd_read_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i.1:                                       ; preds = %if.end.i
  %call.i40.2 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.2)
  %cmp2.i.2 = icmp slt i32 %call.i40.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.err_dpcd_read_crit_edge, label %if.end.i.2

if.end.i.1.err_dpcd_read_crit_edge:               ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i40.3 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.3)
  %cmp2.i.3 = icmp slt i32 %call.i40.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.err_dpcd_read_crit_edge, label %if.end.i.3

if.end.i.2.err_dpcd_read_crit_edge:               ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i40.4 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.4)
  %cmp2.i.4 = icmp slt i32 %call.i40.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.err_dpcd_read_crit_edge, label %if.end.i.4

if.end.i.3.err_dpcd_read_crit_edge:               ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i.4:                                       ; preds = %if.end.i.3
  %conv.i = zext i16 %len to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %len)
  %cmp10.not.i = icmp eq i16 %len, 0
  br i1 %cmp10.not.i, label %if.end.i.4.err_dpcd_read_crit_edge, label %if.end.i.4.for.body.i46_crit_edge

if.end.i.4.for.body.i46_crit_edge:                ; preds = %if.end.i.4
  br label %for.body.i46

if.end.i.4.err_dpcd_read_crit_edge:               ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

for.body.i46:                                     ; preds = %if.end.i51.for.body.i46_crit_edge, %if.end.i.4.for.body.i46_crit_edge
  %i.011.i43 = phi i32 [ %inc.i49, %if.end.i51.for.body.i46_crit_edge ], [ 0, %if.end.i.4.for.body.i46_crit_edge ]
  %call.i44 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp2.i45 = icmp slt i32 %call.i44, 0
  br i1 %cmp2.i45, label %for.body.i46.err_dpcd_read_crit_edge, label %if.end.i51

for.body.i46.err_dpcd_read_crit_edge:             ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

if.end.i51:                                       ; preds = %for.body.i46
  %conv4.i47 = trunc i32 %call.i44 to i8
  %arrayidx.i48 = getelementptr i8, ptr %data, i32 %i.011.i43
  %1 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv4.i47, ptr %arrayidx.i48, align 1
  %inc.i49 = add nuw nsw i32 %i.011.i43, 1
  %exitcond.not.i50 = icmp eq i32 %inc.i49, %conv.i
  br i1 %exitcond.not.i50, label %if.end.i51.err_dpcd_read_crit_edge, label %if.end.i51.for.body.i46_crit_edge

if.end.i51.for.body.i46_crit_edge:                ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i46

if.end.i51.err_dpcd_read_crit_edge:               ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_dpcd_read

err_dpcd_read:                                    ; preds = %if.end.i51.err_dpcd_read_crit_edge, %for.body.i46.err_dpcd_read_crit_edge, %if.end.i.4.err_dpcd_read_crit_edge, %if.end.i.3.err_dpcd_read_crit_edge, %if.end.i.2.err_dpcd_read_crit_edge, %if.end.i.1.err_dpcd_read_crit_edge, %if.end.i.err_dpcd_read_crit_edge, %for.body.i.preheader.err_dpcd_read_crit_edge, %for.cond10.i.4.err_dpcd_read_crit_edge, %for.cond10.i.3.err_dpcd_read_crit_edge, %for.cond10.i.2.err_dpcd_read_crit_edge, %for.cond10.i.1.err_dpcd_read_crit_edge, %for.cond10.i.err_dpcd_read_crit_edge, %for.body14.i.preheader.err_dpcd_read_crit_edge, %for.cond.2.i.err_dpcd_read_crit_edge, %for.cond.1.i.err_dpcd_read_crit_edge, %for.cond.i.err_dpcd_read_crit_edge, %entry.err_dpcd_read_crit_edge
  %ret.0 = phi i32 [ %call19, %for.cond10.i.4.err_dpcd_read_crit_edge ], [ 0, %if.end.i.4.err_dpcd_read_crit_edge ], [ %call.3.i, %for.cond.2.i.err_dpcd_read_crit_edge ], [ %call.2.i, %for.cond.1.i.err_dpcd_read_crit_edge ], [ %call.1.i, %for.cond.i.err_dpcd_read_crit_edge ], [ %call.i, %entry.err_dpcd_read_crit_edge ], [ %call.i40, %for.body.i.preheader.err_dpcd_read_crit_edge ], [ %call.i40.1, %if.end.i.err_dpcd_read_crit_edge ], [ %call.i40.2, %if.end.i.1.err_dpcd_read_crit_edge ], [ %call.i40.3, %if.end.i.2.err_dpcd_read_crit_edge ], [ %call.i40.4, %if.end.i.3.err_dpcd_read_crit_edge ], [ %call16.i, %for.body14.i.preheader.err_dpcd_read_crit_edge ], [ %call16.i.1, %for.cond10.i.err_dpcd_read_crit_edge ], [ %call16.i.2, %for.cond10.i.1.err_dpcd_read_crit_edge ], [ %call16.i.3, %for.cond10.i.2.err_dpcd_read_crit_edge ], [ %call16.i.4, %for.cond10.i.3.err_dpcd_read_crit_edge ], [ %call.i44, %for.body.i46.err_dpcd_read_crit_edge ], [ 0, %if.end.i51.err_dpcd_read_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_mailbox_validate_receive(ptr nocapture noundef readonly %dp, i8 noundef zeroext %opcode, i16 noundef zeroext %req_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call.1 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %conv.1 = trunc i32 %call.1 to i8
  %call.2 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %call.3 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %conv3 = shl i32 %call.2, 8
  %shl = and i32 %conv3, 65280
  %conv5 = and i32 %call.3, 255
  %or = or i32 %shl, %conv5
  call void @__sanitizer_cov_trace_cmp1(i8 %conv, i8 %opcode)
  %cmp9.not = icmp eq i8 %conv, %opcode
  br i1 %cmp9.not, label %lor.lhs.false, label %if.end.3.if.then20_crit_edge

if.end.3.if.then20_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv.1)
  %cmp14.not = icmp eq i8 %conv.1, 1
  %conv17 = zext i16 %req_size to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv17)
  %cmp18.not = icmp eq i32 %or, %conv17
  %or.cond = select i1 %cmp14.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end.3.if.then20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp223.not = icmp eq i32 %or, 0
  br i1 %cmp223.not, label %if.then20.cleanup_crit_edge, label %if.then20.for.body24_crit_edge

if.then20.for.body24_crit_edge:                   ; preds = %if.then20
  br label %for.body24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %if.then20.for.body24_crit_edge
  %i.14 = phi i32 [ %inc31, %for.body24.for.body24_crit_edge ], [ 0, %if.then20.for.body24_crit_edge ]
  %call25 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  %inc31 = add nuw nsw i32 %i.14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc31, i32 %or)
  %exitcond.not = icmp eq i32 %inc31, %or
  %or.cond7 = select i1 %cmp26, i1 true, i1 %exitcond.not
  br i1 %or.cond7, label %for.body24.cleanup_crit_edge, label %for.body24.for.body24_crit_edge

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

for.body24.cleanup_crit_edge:                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body24.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then20.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ %call.3, %if.end.2.cleanup_crit_edge ], [ -22, %for.body24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_dpcd_write(ptr nocapture noundef readonly %dp, i32 noundef %addr, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %addr, 16
  %conv = trunc i32 %shr to i8
  %shr3 = lshr i32 %addr, 8
  %conv5 = trunc i32 %shr3 to i8
  %conv8 = trunc i32 %addr to i8
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.then32_crit_edge

entry.if.then32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then32_crit_edge

for.cond.i.if.then32_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then32_crit_edge

for.cond.1.i.if.then32_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.if.then32_crit_edge

for.cond.2.i.if.then32_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.if.then32_crit_edge

for.body14.i.preheader.if.then32_crit_edge:       ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.if.then32_crit_edge

for.cond10.i.if.then32_crit_edge:                 ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.if.then32_crit_edge

for.cond10.i.1.if.then32_crit_edge:               ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.if.then32_crit_edge

for.cond10.i.2.if.then32_crit_edge:               ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.4, label %for.cond10.i.3.if.then32_crit_edge

for.cond10.i.3.if.then32_crit_edge:               ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i.4:                                   ; preds = %for.cond10.i.3
  %call16.i.5 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %value) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.5)
  %tobool17.not.i.5 = icmp eq i32 %call16.i.5, 0
  br i1 %tobool17.not.i.5, label %for.cond10.i.5, label %for.cond10.i.4.if.then32_crit_edge

for.cond10.i.4.if.then32_crit_edge:               ; preds = %for.cond10.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.cond10.i.5:                                   ; preds = %for.cond10.i.4
  %call11 = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %dp, i8 noundef zeroext 4, i16 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.body.i.preheader, label %for.cond10.i.5.if.then32_crit_edge

for.cond10.i.5.if.then32_crit_edge:               ; preds = %for.cond10.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

for.body.i.preheader:                             ; preds = %for.cond10.i.5
  %call.i45 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %cmp2.i = icmp slt i32 %call.i45, 0
  br i1 %cmp2.i, label %for.body.i.preheader.if.then32_crit_edge, label %if.end.i

for.body.i.preheader.if.then32_crit_edge:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i45.1 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.1)
  %cmp2.i.1 = icmp slt i32 %call.i45.1, 0
  br i1 %cmp2.i.1, label %if.end.i.if.then32_crit_edge, label %if.end.i.1

if.end.i.if.then32_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i.1:                                       ; preds = %if.end.i
  %call.i45.2 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.2)
  %cmp2.i.2 = icmp slt i32 %call.i45.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.if.then32_crit_edge, label %if.end.i.2

if.end.i.1.if.then32_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i45.3 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.3)
  %cmp2.i.3 = icmp slt i32 %call.i45.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.if.then32_crit_edge, label %if.end.i.3

if.end.i.2.if.then32_crit_edge:                   ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i45.4 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.4)
  %cmp2.i.4 = icmp slt i32 %call.i45.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.if.then32_crit_edge, label %if.end.i.4

if.end.i.3.if.then32_crit_edge:                   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i.4:                                       ; preds = %if.end.i.3
  %conv21 = shl i32 %call.i45.2, 16
  %shl = and i32 %conv21, 16711680
  %conv23 = shl i32 %call.i45.3, 8
  %shl24 = and i32 %conv23, 65280
  %or = or i32 %shl24, %shl
  %conv26 = and i32 %call.i45.4, 255
  %or27 = or i32 %or, %conv26
  call void @__sanitizer_cov_trace_cmp4(i32 %or27, i32 %addr)
  %cmp.not = icmp eq i32 %or27, %addr
  br i1 %cmp.not, label %if.end.i.4.if.end33_crit_edge, label %if.end.i.4.if.then32_crit_edge

if.end.i.4.if.then32_crit_edge:                   ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.end.i.4.if.end33_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then32:                                        ; preds = %if.end.i.4.if.then32_crit_edge, %if.end.i.3.if.then32_crit_edge, %if.end.i.2.if.then32_crit_edge, %if.end.i.1.if.then32_crit_edge, %if.end.i.if.then32_crit_edge, %for.body.i.preheader.if.then32_crit_edge, %for.cond10.i.5.if.then32_crit_edge, %for.cond10.i.4.if.then32_crit_edge, %for.cond10.i.3.if.then32_crit_edge, %for.cond10.i.2.if.then32_crit_edge, %for.cond10.i.1.if.then32_crit_edge, %for.cond10.i.if.then32_crit_edge, %for.body14.i.preheader.if.then32_crit_edge, %for.cond.2.i.if.then32_crit_edge, %for.cond.1.i.if.then32_crit_edge, %for.cond.i.if.then32_crit_edge, %entry.if.then32_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end.i.4.if.then32_crit_edge ], [ %call11, %for.cond10.i.5.if.then32_crit_edge ], [ %call.3.i, %for.cond.2.i.if.then32_crit_edge ], [ %call.2.i, %for.cond.1.i.if.then32_crit_edge ], [ %call.1.i, %for.cond.i.if.then32_crit_edge ], [ %call.i, %entry.if.then32_crit_edge ], [ %call.i45, %for.body.i.preheader.if.then32_crit_edge ], [ %call.i45.1, %if.end.i.if.then32_crit_edge ], [ %call.i45.2, %if.end.i.1.if.then32_crit_edge ], [ %call.i45.3, %if.end.i.2.if.then32_crit_edge ], [ %call.i45.4, %if.end.i.3.if.then32_crit_edge ], [ %call16.i, %for.body14.i.preheader.if.then32_crit_edge ], [ %call16.i.1, %for.cond10.i.if.then32_crit_edge ], [ %call16.i.2, %for.cond10.i.1.if.then32_crit_edge ], [ %call16.i.3, %for.cond10.i.2.if.then32_crit_edge ], [ %call16.i.4, %for.cond10.i.3.if.then32_crit_edge ], [ %call16.i.5, %for.cond10.i.4.if.then32_crit_edge ]
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %ret.0.ph) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end.i.4.if.end33_crit_edge
  %ret.055 = phi i32 [ %ret.0.ph, %if.then32 ], [ 0, %if.end.i.4.if.end33_crit_edge ]
  ret i32 %ret.055
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_load_firmware(ptr nocapture noundef %dp, ptr nocapture noundef readonly %i_mem, i32 noundef %i_size, ptr nocapture noundef readonly %d_mem, i32 noundef %d_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 117440512) #4, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i_size)
  %cmp140.not = icmp eq i32 %i_size, 0
  br i1 %cmp140.not, label %entry.for.cond7.preheader_crit_edge, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  br label %do.body1

entry.for.cond7.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %do.body1.for.cond7.preheader_crit_edge, %entry.for.cond7.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %d_size)
  %cmp8143.not = icmp eq i32 %d_size, 0
  br i1 %cmp8143.not, label %for.cond7.preheader.do.body20_crit_edge, label %for.cond7.preheader.do.body10_crit_edge

for.cond7.preheader.do.body10_crit_edge:          ; preds = %for.cond7.preheader
  br label %do.body10

for.cond7.preheader.do.body20_crit_edge:          ; preds = %for.cond7.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry.do.body1_crit_edge
  %i_mem.addr.0142 = phi ptr [ %incdec.ptr, %do.body1.do.body1_crit_edge ], [ %i_mem, %entry.do.body1_crit_edge ]
  %i.0141 = phi i32 [ %add, %do.body1.do.body1_crit_edge ], [ 0, %entry.do.body1_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %incdec.ptr = getelementptr i32, ptr %i_mem.addr.0142, i32 1
  %2 = ptrtoint ptr %i_mem.addr.0142 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_mem.addr.0142, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %6, i32 65536
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %i.0141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %4) #4, !srcloc !51
  %add = add i32 %i.0141, 4
  %cmp = icmp ult i32 %add, %i_size
  br i1 %cmp, label %do.body1.do.body1_crit_edge, label %do.body1.for.cond7.preheader_crit_edge

do.body1.for.cond7.preheader_crit_edge:           ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond7.preheader

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body1

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %for.cond7.preheader.do.body10_crit_edge
  %d_mem.addr.0145 = phi ptr [ %incdec.ptr13, %do.body10.do.body10_crit_edge ], [ %d_mem, %for.cond7.preheader.do.body10_crit_edge ]
  %i.1144 = phi i32 [ %add18, %do.body10.do.body10_crit_edge ], [ 0, %for.cond7.preheader.do.body10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %incdec.ptr13 = getelementptr i32, ptr %d_mem.addr.0145, i32 1
  %7 = ptrtoint ptr %d_mem.addr.0145 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %d_mem.addr.0145, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %11, i32 131072
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %i.1144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %9) #4, !srcloc !51
  %add18 = add i32 %i.1144, 4
  %cmp8 = icmp ult i32 %add18, %d_size
  br i1 %cmp8, label %do.body10.do.body10_crit_edge, label %do.body10.do.body20_crit_edge

do.body10.do.body20_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body10

do.body20:                                        ; preds = %do.body10.do.body20_crit_edge, %for.cond7.preheader.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #4, !srcloc !51
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 302) #4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr38147 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38147) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not148 = icmp eq i32 %16, 0
  br i1 %tobool.not148, label %do.body20.land.lhs.true_crit_edge, label %do.body20.for.end60.loopexit_crit_edge

do.body20.for.end60.loopexit_crit_edge:           ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60.loopexit

do.body20.land.lhs.true_crit_edge:                ; preds = %do.body20
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then57.land.lhs.true_crit_edge, %do.body20.land.lhs.true_crit_edge
  %call44 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call44, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call44, %add.i
  br i1 %cmp3.i, label %if.then47, label %if.then57

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr51 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #4, !srcloc !63
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  br label %for.end60

if.then57:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %22, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.then57.land.lhs.true_crit_edge, label %if.then57.for.end60.loopexit_crit_edge

if.then57.for.end60.loopexit_crit_edge:           ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end60.loopexit

if.then57.land.lhs.true_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

for.end60.loopexit:                               ; preds = %if.then57.for.end60.loopexit_crit_edge, %do.body20.for.end60.loopexit_crit_edge
  %.lcssa146 = phi i32 [ %16, %do.body20.for.end60.loopexit_crit_edge ], [ %23, %if.then57.for.end60.loopexit_crit_edge ]
  %24 = tail call i32 @llvm.bswap.i32(i32 %.lcssa146)
  br label %for.end60

for.end60:                                        ; preds = %for.end60.loopexit, %if.then47
  %reg.0 = phi i32 [ %20, %if.then47 ], [ %24, %for.end60.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg.0)
  %tobool62.not = icmp eq i32 %reg.0, 0
  br i1 %tobool62.not, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %26, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #4
  br label %cleanup

if.end65:                                         ; preds = %for.end60
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %add.ptr69 = getelementptr i8, ptr %28, i32 28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #4, !srcloc !63
  %30 = lshr i32 %29, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %fw_version = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 13
  %31 = ptrtoint ptr %fw_version to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fw_version, align 8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr76 = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %35 = lshr i32 %34, 16
  %shl = and i32 %35, 65280
  %36 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw_version, align 8
  %or = or i32 %37, %shl
  store i32 %or, ptr %fw_version, align 8
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %add.ptr85 = getelementptr i8, ptr %39, i32 36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  %41 = lshr i32 %40, 8
  %shl90 = and i32 %41, 16711680
  %42 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fw_version, align 8
  %or92 = or i32 %43, %shl90
  store i32 %or92, ptr %fw_version, align 8
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr96 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #4, !srcloc !63
  %47 = and i32 %46, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  %48 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %fw_version, align 8
  %or103 = or i32 %49, %47
  store i32 %or103, ptr %fw_version, align 8
  %50 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dp, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %51, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %or103) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.then64
  %retval.0 = phi i32 [ -22, %if.then64 ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_set_firmware_active(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i8
  %call = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.cond, label %entry.err_set_firmware_active_crit_edge

entry.err_set_firmware_active_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_set_firmware_active

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool7.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool7.not.1, label %for.cond.1, label %for.cond.err_set_firmware_active_crit_edge

for.cond.err_set_firmware_active_crit_edge:       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_set_firmware_active

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool7.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool7.not.2, label %for.cond.2, label %for.cond.1.err_set_firmware_active_crit_edge

for.cond.1.err_set_firmware_active_crit_edge:     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_set_firmware_active

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool7.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool7.not.3, label %for.cond.3, label %for.cond.2.err_set_firmware_active_crit_edge

for.cond.2.err_set_firmware_active_crit_edge:     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_set_firmware_active

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool7.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool7.not.4, label %for.cond.4, label %for.cond.3.err_set_firmware_active_crit_edge

for.cond.3.err_set_firmware_active_crit_edge:     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_set_firmware_active

for.cond.4:                                       ; preds = %for.cond.3
  %call12 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %for.cond.4.if.then24_crit_edge, label %if.end16

for.cond.4.if.then24_crit_edge:                   ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end16:                                         ; preds = %for.cond.4
  %call12.1 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %cmp13.1 = icmp slt i32 %call12.1, 0
  br i1 %cmp13.1, label %if.end16.if.then24_crit_edge, label %if.end16.1

if.end16.if.then24_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end16.1:                                       ; preds = %if.end16
  %call12.2 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %cmp13.2 = icmp slt i32 %call12.2, 0
  br i1 %cmp13.2, label %if.end16.1.if.then24_crit_edge, label %if.end16.2

if.end16.1.if.then24_crit_edge:                   ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end16.2:                                       ; preds = %if.end16.1
  %call12.3 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %cmp13.3 = icmp slt i32 %call12.3, 0
  br i1 %cmp13.3, label %if.end16.2.if.then24_crit_edge, label %if.end16.3

if.end16.2.if.then24_crit_edge:                   ; preds = %if.end16.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.end16.3:                                       ; preds = %if.end16.2
  %call12.4 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %cmp13.4 = icmp slt i32 %call12.4, 0
  br i1 %cmp13.4, label %if.end16.3.if.then24_crit_edge, label %if.end16.3.if.end25_crit_edge

if.end16.3.if.end25_crit_edge:                    ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end16.3.if.then24_crit_edge:                   ; preds = %if.end16.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

err_set_firmware_active:                          ; preds = %for.cond.3.err_set_firmware_active_crit_edge, %for.cond.2.err_set_firmware_active_crit_edge, %for.cond.1.err_set_firmware_active_crit_edge, %for.cond.err_set_firmware_active_crit_edge, %entry.err_set_firmware_active_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.err_set_firmware_active_crit_edge ], [ %call.1, %for.cond.err_set_firmware_active_crit_edge ], [ %call.2, %for.cond.1.err_set_firmware_active_crit_edge ], [ %call.3, %for.cond.2.err_set_firmware_active_crit_edge ], [ %call.4, %for.cond.3.err_set_firmware_active_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.lcssa)
  %cmp22 = icmp slt i32 %call.lcssa, 0
  br i1 %cmp22, label %err_set_firmware_active.if.then24_crit_edge, label %err_set_firmware_active.if.end25_crit_edge

err_set_firmware_active.if.end25_crit_edge:       ; preds = %err_set_firmware_active
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

err_set_firmware_active.if.then24_crit_edge:      ; preds = %err_set_firmware_active
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then24

if.then24:                                        ; preds = %err_set_firmware_active.if.then24_crit_edge, %if.end16.3.if.then24_crit_edge, %if.end16.2.if.then24_crit_edge, %if.end16.1.if.then24_crit_edge, %if.end16.if.then24_crit_edge, %for.cond.4.if.then24_crit_edge
  %ret.040 = phi i32 [ %call.lcssa, %err_set_firmware_active.if.then24_crit_edge ], [ %call12, %for.cond.4.if.then24_crit_edge ], [ %call12.1, %if.end16.if.then24_crit_edge ], [ %call12.2, %if.end16.1.if.then24_crit_edge ], [ %call12.3, %if.end16.2.if.then24_crit_edge ], [ %call12.4, %if.end16.3.if.then24_crit_edge ]
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %err_set_firmware_active.if.end25_crit_edge, %if.end16.3.if.end25_crit_edge
  %ret.039 = phi i32 [ %ret.040, %if.then24 ], [ %call.lcssa, %err_set_firmware_active.if.end25_crit_edge ], [ 0, %if.end16.3.if.end25_crit_edge ]
  ret i32 %ret.039
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdp_dp_mailbox_write(ptr nocapture noundef readonly %dp, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 5000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 97) #4
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr50 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not51 = icmp eq i32 %2, 0
  br i1 %tobool.not51, label %entry.do.body33_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.do.body33_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then16.do.body33_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16.do.body33_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then26.do.body33_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then26.do.body33_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body33

do.body33:                                        ; preds = %if.then26.do.body33_crit_edge, %if.then16.do.body33_crit_edge, %entry.do.body33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !72
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %val to i32
  %9 = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr37 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %9) #4, !srcloc !51
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body33 ], [ -110, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_mailbox_read(ptr nocapture noundef readonly %dp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #4
  %add.i = add i64 %call, 5000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 84) #4
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr52 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not53 = icmp eq i32 %2, 0
  br i1 %tobool.not53, label %entry.if.end32_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %if.then16, label %if.then26

if.then16:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then16.if.end32_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then16.if.end32_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !73
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then26.if.end32_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.end32:                                         ; preds = %if.then26.if.end32_crit_edge, %if.then16.if.end32_crit_edge, %entry.if.end32_crit_edge
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr36 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #4, !srcloc !63
  %12 = lshr i32 %11, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then16.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end32 ], [ -110, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_set_host_cap(ptr nocapture noundef readonly %dp, i8 noundef zeroext %lanes, i1 noundef zeroext %flip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i8 %lanes, 16
  %conv8 = select i1 %flip, i8 -28, i8 27
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.then14_crit_edge

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then14_crit_edge

for.cond.i.if.then14_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then14_crit_edge

for.cond.1.i.if.then14_crit_edge:                 ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.if.then14_crit_edge

for.cond.2.i.if.then14_crit_edge:                 ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.if.then14_crit_edge

for.body14.i.preheader.if.then14_crit_edge:       ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.if.then14_crit_edge

for.cond10.i.if.then14_crit_edge:                 ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.if.then14_crit_edge

for.cond10.i.1.if.then14_crit_edge:               ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.if.then14_crit_edge

for.cond10.i.2.if.then14_crit_edge:               ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.4, label %for.cond10.i.3.if.then14_crit_edge

for.cond10.i.3.if.then14_crit_edge:               ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.4:                                   ; preds = %for.cond10.i.3
  %call16.i.5 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.5)
  %tobool17.not.i.5 = icmp eq i32 %call16.i.5, 0
  br i1 %tobool17.not.i.5, label %for.cond10.i.5, label %for.cond10.i.4.if.then14_crit_edge

for.cond10.i.4.if.then14_crit_edge:               ; preds = %for.cond10.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.5:                                   ; preds = %for.cond10.i.4
  %call16.i.6 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.6)
  %tobool17.not.i.6 = icmp eq i32 %call16.i.6, 0
  br i1 %tobool17.not.i.6, label %for.cond10.i.6, label %for.cond10.i.5.if.then14_crit_edge

for.cond10.i.5.if.then14_crit_edge:               ; preds = %for.cond10.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.6:                                   ; preds = %for.cond10.i.5
  %call16.i.7 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.7)
  %tobool17.not.i.7 = icmp eq i32 %call16.i.7, 0
  br i1 %tobool17.not.i.7, label %for.cond10.i.7, label %for.cond10.i.6.if.then14_crit_edge

for.cond10.i.6.if.then14_crit_edge:               ; preds = %for.cond10.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.7:                                   ; preds = %for.cond10.i.6
  %call12 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 10252, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond10.i.7.if.end15_crit_edge, label %for.cond10.i.7.if.then14_crit_edge

for.cond10.i.7.if.then14_crit_edge:               ; preds = %for.cond10.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then14

for.cond10.i.7.if.end15_crit_edge:                ; preds = %for.cond10.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then14:                                        ; preds = %for.cond10.i.7.if.then14_crit_edge, %for.cond10.i.6.if.then14_crit_edge, %for.cond10.i.5.if.then14_crit_edge, %for.cond10.i.4.if.then14_crit_edge, %for.cond10.i.3.if.then14_crit_edge, %for.cond10.i.2.if.then14_crit_edge, %for.cond10.i.1.if.then14_crit_edge, %for.cond10.i.if.then14_crit_edge, %for.body14.i.preheader.if.then14_crit_edge, %for.cond.2.i.if.then14_crit_edge, %for.cond.1.i.if.then14_crit_edge, %for.cond.i.if.then14_crit_edge, %entry.if.then14_crit_edge
  %ret.025 = phi i32 [ %call12, %for.cond10.i.7.if.then14_crit_edge ], [ %call.3.i, %for.cond.2.i.if.then14_crit_edge ], [ %call.2.i, %for.cond.1.i.if.then14_crit_edge ], [ %call.1.i, %for.cond.i.if.then14_crit_edge ], [ %call.i, %entry.if.then14_crit_edge ], [ %call16.i, %for.body14.i.preheader.if.then14_crit_edge ], [ %call16.i.1, %for.cond10.i.if.then14_crit_edge ], [ %call16.i.2, %for.cond10.i.1.if.then14_crit_edge ], [ %call16.i.3, %for.cond10.i.2.if.then14_crit_edge ], [ %call16.i.4, %for.cond10.i.3.if.then14_crit_edge ], [ %call16.i.5, %for.cond10.i.4.if.then14_crit_edge ], [ %call16.i.6, %for.cond10.i.5.if.then14_crit_edge ], [ %call16.i.7, %for.cond10.i.6.if.then14_crit_edge ]
  %1 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %ret.025) #4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %for.cond10.i.7.if.end15_crit_edge
  %ret.026 = phi i32 [ %ret.025, %if.then14 ], [ 0, %for.cond10.i.7.if.end15_crit_edge ]
  ret i32 %ret.026
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_reg_write(ptr nocapture noundef readonly %dp, i16 noundef zeroext %addr, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %addr, 8
  %conv1 = trunc i16 %0 to i8
  %conv4 = trunc i16 %addr to i8
  %shr6 = lshr i32 %val, 24
  %conv8 = trunc i32 %shr6 to i8
  %shr10 = lshr i32 %val, 16
  %conv12 = trunc i32 %shr10 to i8
  %shr14 = lshr i32 %val, 8
  %conv16 = trunc i32 %shr14 to i8
  %conv19 = trunc i32 %val to i8
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cdn_dp_mailbox_send.exit_crit_edge

entry.cdn_dp_mailbox_send.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.i.cdn_dp_mailbox_send.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge

for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.4, label %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.4:                                   ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %call16.i.5 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv19) #4
  br label %cdn_dp_mailbox_send.exit

cdn_dp_mailbox_send.exit:                         ; preds = %for.cond10.i.4, %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge, %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge, %entry.cdn_dp_mailbox_send.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.1.i, %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.3.i, %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i, %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.1, %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.2, %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.3, %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.4, %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.5, %for.cond10.i.4 ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_event_config(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then_crit_edge

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then_crit_edge

for.cond.1.i.if.then_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.if.then_crit_edge

for.cond.2.i.if.then_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.if.then_crit_edge

for.body14.i.preheader.if.then_crit_edge:         ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.if.then_crit_edge

for.cond10.i.if.then_crit_edge:                   ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.if.then_crit_edge

for.cond10.i.1.if.then_crit_edge:                 ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.if.then_crit_edge

for.cond10.i.2.if.then_crit_edge:                 ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.3.if.end_crit_edge, label %for.cond10.i.3.if.then_crit_edge

for.cond10.i.3.if.then_crit_edge:                 ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i.3.if.end_crit_edge:                  ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.cond10.i.3.if.then_crit_edge, %for.cond10.i.2.if.then_crit_edge, %for.cond10.i.1.if.then_crit_edge, %for.cond10.i.if.then_crit_edge, %for.body14.i.preheader.if.then_crit_edge, %for.cond.2.i.if.then_crit_edge, %for.cond.1.i.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call.3.i, %for.cond.2.i.if.then_crit_edge ], [ %call.2.i, %for.cond.1.i.if.then_crit_edge ], [ %call.1.i, %for.cond.i.if.then_crit_edge ], [ %call.i, %entry.if.then_crit_edge ], [ %call16.i, %for.body14.i.preheader.if.then_crit_edge ], [ %call16.i.1, %for.cond10.i.if.then_crit_edge ], [ %call16.i.2, %for.cond10.i.1.if.then_crit_edge ], [ %call16.i.3, %for.cond10.i.2.if.then_crit_edge ], [ %call16.i.4, %for.cond10.i.3.if.then_crit_edge ]
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond10.i.3.if.end_crit_edge
  %retval.0.i8 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %for.cond10.i.3.if.end_crit_edge ]
  ret i32 %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_get_event(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !76
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_get_hpd_status(ptr nocapture noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.err_get_hpd_crit_edge

entry.err_get_hpd_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.err_get_hpd_crit_edge

for.cond.i.err_get_hpd_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.err_get_hpd_crit_edge

for.cond.1.i.err_get_hpd_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end, label %for.cond.2.i.err_get_hpd_crit_edge

for.cond.2.i.err_get_hpd_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

if.end:                                           ; preds = %for.cond.2.i
  %call1 = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %dp, i8 noundef zeroext 17, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.i.preheader, label %if.end.err_get_hpd_crit_edge

if.end.err_get_hpd_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

for.body.i.preheader:                             ; preds = %if.end
  %call.i1725 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1725)
  %cmp2.i26 = icmp slt i32 %call.i1725, 0
  br i1 %cmp2.i26, label %for.body.i.preheader.err_get_hpd_crit_edge, label %if.end8

for.body.i.preheader.err_get_hpd_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hpd

if.end8:                                          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %conv = and i32 %call.i1725, 255
  br label %cleanup

err_get_hpd:                                      ; preds = %for.body.i.preheader.err_get_hpd_crit_edge, %if.end.err_get_hpd_crit_edge, %for.cond.2.i.err_get_hpd_crit_edge, %for.cond.1.i.err_get_hpd_crit_edge, %for.cond.i.err_get_hpd_crit_edge, %entry.err_get_hpd_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_get_hpd_crit_edge ], [ %call.3.i, %for.cond.2.i.err_get_hpd_crit_edge ], [ %call.2.i, %for.cond.1.i.err_get_hpd_crit_edge ], [ %call.1.i, %for.cond.i.err_get_hpd_crit_edge ], [ %call.i, %entry.err_get_hpd_crit_edge ], [ %call.i1725, %for.body.i.preheader.err_get_hpd_crit_edge ]
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #4
  br label %cleanup

cleanup:                                          ; preds = %err_get_hpd, %if.end8
  %retval.0 = phi i32 [ %ret.0, %err_get_hpd ], [ %conv, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_get_edid_block(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %edid, i32 noundef %block, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div50 = lshr i32 %block, 1
  %conv2 = trunc i32 %div50 to i8
  %0 = trunc i32 %block to i8
  %conv3 = and i8 %0, 1
  %1 = trunc i32 %length to i16
  %conv5 = add i16 %1, 2
  %conv.i = and i32 %length, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not.i = icmp eq i16 %1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.080 = phi i8 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond.i:                                       ; preds = %for.body
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.for.inc_crit_edge

for.cond.i.for.inc_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.for.inc_crit_edge

for.cond.1.i.for.inc_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.for.inc_crit_edge

for.cond.2.i.for.inc_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext %conv2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.for.inc_crit_edge

for.body14.i.preheader.for.inc_crit_edge:         ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %data, i8 noundef zeroext %conv3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.for.inc_crit_edge

for.cond10.i.for.inc_crit_edge:                   ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call6 = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %data, i8 noundef zeroext 2, i16 noundef zeroext %conv5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.body.i.preheader, label %for.cond10.i.1.for.inc_crit_edge

for.cond10.i.1.for.inc_crit_edge:                 ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.body.i.preheader:                             ; preds = %for.cond10.i.1
  %call.i51 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp2.i = icmp slt i32 %call.i51, 0
  br i1 %cmp2.i, label %for.body.i.preheader.for.inc_crit_edge, label %if.end.i

for.body.i.preheader.for.inc_crit_edge:           ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i51.1 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.1)
  %cmp2.i.1 = icmp slt i32 %call.i51.1, 0
  br i1 %cmp2.i.1, label %if.end.i.for.inc_crit_edge, label %if.end.i.1

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.1:                                       ; preds = %if.end.i
  br i1 %cmp10.not.i, label %if.end.i.1.if.end19_crit_edge, label %if.end.i.1.for.body.i57_crit_edge

if.end.i.1.for.body.i57_crit_edge:                ; preds = %if.end.i.1
  br label %for.body.i57

if.end.i.1.if.end19_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

for.body.i57:                                     ; preds = %if.end.i62.for.body.i57_crit_edge, %if.end.i.1.for.body.i57_crit_edge
  %i.011.i54 = phi i32 [ %inc.i60, %if.end.i62.for.body.i57_crit_edge ], [ 0, %if.end.i.1.for.body.i57_crit_edge ]
  %call.i55 = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %cmp2.i56 = icmp slt i32 %call.i55, 0
  br i1 %cmp2.i56, label %for.body.i57.for.inc_crit_edge, label %if.end.i62

for.body.i57.for.inc_crit_edge:                   ; preds = %for.body.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i62:                                       ; preds = %for.body.i57
  %conv4.i58 = trunc i32 %call.i55 to i8
  %arrayidx.i59 = getelementptr i8, ptr %edid, i32 %i.011.i54
  %2 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv4.i58, ptr %arrayidx.i59, align 1
  %inc.i60 = add nuw nsw i32 %i.011.i54, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, %conv.i
  br i1 %exitcond.not.i61, label %if.end.i62.if.end19_crit_edge, label %if.end.i62.for.body.i57_crit_edge

if.end.i62.for.body.i57_crit_edge:                ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i57

if.end.i62.if.end19_crit_edge:                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.end19:                                         ; preds = %if.end.i62.if.end19_crit_edge, %if.end.i.1.if.end19_crit_edge
  %conv21 = and i32 %call.i51, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %length)
  %cmp22 = icmp eq i32 %conv21, %length
  %conv25 = and i32 %call.i51.1, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %div50, i32 %conv25)
  %cmp27 = icmp eq i32 %div50, %conv25
  %or.cond = select i1 %cmp22, i1 %cmp27, i1 false
  br i1 %or.cond, label %if.end19.if.end33_crit_edge, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.i57.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %for.body.i.preheader.for.inc_crit_edge, %for.cond10.i.1.for.inc_crit_edge, %for.cond10.i.for.inc_crit_edge, %for.body14.i.preheader.for.inc_crit_edge, %for.cond.2.i.for.inc_crit_edge, %for.cond.1.i.for.inc_crit_edge, %for.cond.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %call6, %for.cond10.i.1.for.inc_crit_edge ], [ 0, %if.end19.for.inc_crit_edge ], [ %call.3.i, %for.cond.2.i.for.inc_crit_edge ], [ %call.2.i, %for.cond.1.i.for.inc_crit_edge ], [ %call.1.i, %for.cond.i.for.inc_crit_edge ], [ %call.i, %for.body.for.inc_crit_edge ], [ %call.i51, %for.body.i.preheader.for.inc_crit_edge ], [ %call.i51.1, %if.end.i.for.inc_crit_edge ], [ %call16.i, %for.body14.i.preheader.for.inc_crit_edge ], [ %call16.i.1, %for.cond10.i.for.inc_crit_edge ], [ %call.i55, %for.body.i57.for.inc_crit_edge ]
  %inc = add nuw nsw i8 %i.080, 1
  %cmp = icmp ult i8 %i.080, 3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool31.not = icmp eq i32 %ret.1, 0
  br i1 %tobool31.not, label %for.end.if.end33_crit_edge, label %if.then32

for.end.if.end33_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

if.then32:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %block, i32 noundef %ret.1) #4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.end.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %ret.273 = phi i32 [ %ret.1, %if.then32 ], [ 0, %for.end.if.end33_crit_edge ], [ 0, %if.end19.if.end33_crit_edge ]
  ret i32 %ret.273
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_train_link(ptr noundef %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.i.i:                                     ; preds = %entry
  %call.1.i.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.then_crit_edge

for.cond.i.i.if.then_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.then_crit_edge

for.cond.1.i.i.if.then_crit_edge:                 ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.body14.i.preheader.i, label %for.cond.2.i.i.if.then_crit_edge

for.cond.2.i.i.if.then_crit_edge:                 ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body14.i.preheader.i:                         ; preds = %for.cond.2.i.i
  %call16.i.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %for.cond10.i.i, label %for.body14.i.preheader.i.if.then_crit_edge

for.body14.i.preheader.i.if.then_crit_edge:       ; preds = %for.body14.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond10.i.i:                                   ; preds = %for.body14.i.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -50, %0
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.1.i.while.cond.i_crit_edge, %for.cond10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.if.then_crit_edge

while.cond.i.if.then_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

while.body.i:                                     ; preds = %while.cond.i
  tail call void @msleep(i32 noundef 20) #4
  %call.i29.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29.i)
  %tobool.not.i30.i = icmp eq i32 %call.i29.i, 0
  br i1 %tobool.not.i30.i, label %for.cond.i33.i, label %while.body.i.if.then_crit_edge

while.body.i.if.then_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.i33.i:                                   ; preds = %while.body.i
  %call.1.i31.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i31.i)
  %tobool.not.1.i32.i = icmp eq i32 %call.1.i31.i, 0
  br i1 %tobool.not.1.i32.i, label %for.cond.1.i36.i, label %for.cond.i33.i.if.then_crit_edge

for.cond.i33.i.if.then_crit_edge:                 ; preds = %for.cond.i33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.1.i36.i:                                 ; preds = %for.cond.i33.i
  %call.2.i34.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i34.i)
  %tobool.not.2.i35.i = icmp eq i32 %call.2.i34.i, 0
  br i1 %tobool.not.2.i35.i, label %for.cond.2.i39.i, label %for.cond.1.i36.i.if.then_crit_edge

for.cond.1.i36.i.if.then_crit_edge:               ; preds = %for.cond.1.i36.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.2.i39.i:                                 ; preds = %for.cond.1.i36.i
  %call.3.i37.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i37.i)
  %tobool.not.3.i38.i = icmp eq i32 %call.3.i37.i, 0
  br i1 %tobool.not.3.i38.i, label %if.end5.i, label %for.cond.2.i39.i.if.then_crit_edge

for.cond.2.i39.i.if.then_crit_edge:               ; preds = %for.cond.2.i39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end5.i:                                        ; preds = %for.cond.2.i39.i
  %call6.i = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %dp, i8 noundef zeroext 10, i16 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %for.body.i.preheader.i, label %if.end5.i.if.then_crit_edge

if.end5.i.if.then_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body.i.preheader.i:                           ; preds = %if.end5.i
  %call.i43.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %cmp2.i.i = icmp slt i32 %call.i43.i, 0
  br i1 %cmp2.i.i, label %for.body.i.preheader.i.if.then_crit_edge, label %if.end.i.i

for.body.i.preheader.i.if.then_crit_edge:         ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i.i:                                       ; preds = %for.body.i.preheader.i
  %call.i43.1.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i43.1.i, 0
  br i1 %cmp2.i.1.i, label %if.end.i.i.if.then_crit_edge, label %if.end.i.1.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i.1.i:                                     ; preds = %if.end.i.i
  %2 = and i32 %call.i43.1.i, 8
  %tobool14.not.i = icmp eq i32 %2, 0
  br i1 %tobool14.not.i, label %if.end.i.1.i.while.cond.i_crit_edge, label %if.end

if.end.i.1.i.while.cond.i_crit_edge:              ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

if.then:                                          ; preds = %if.end.i.i.if.then_crit_edge, %for.body.i.preheader.i.if.then_crit_edge, %if.end5.i.if.then_crit_edge, %for.cond.2.i39.i.if.then_crit_edge, %for.cond.1.i36.i.if.then_crit_edge, %for.cond.i33.i.if.then_crit_edge, %while.body.i.if.then_crit_edge, %while.cond.i.if.then_crit_edge, %for.body14.i.preheader.i.if.then_crit_edge, %for.cond.2.i.i.if.then_crit_edge, %for.cond.1.i.i.if.then_crit_edge, %for.cond.i.i.if.then_crit_edge, %entry.if.then_crit_edge
  %ret.0.i = phi i32 [ %call.3.i.i, %for.cond.2.i.i.if.then_crit_edge ], [ %call.2.i.i, %for.cond.1.i.i.if.then_crit_edge ], [ %call.1.i.i, %for.cond.i.i.if.then_crit_edge ], [ %call.i.i, %entry.if.then_crit_edge ], [ %call16.i.i, %for.body14.i.preheader.i.if.then_crit_edge ], [ %call.i43.i, %for.body.i.preheader.i.if.then_crit_edge ], [ %call.i43.1.i, %if.end.i.i.if.then_crit_edge ], [ %call6.i, %if.end5.i.if.then_crit_edge ], [ -110, %while.cond.i.if.then_crit_edge ], [ %call.3.i37.i, %for.cond.2.i39.i.if.then_crit_edge ], [ %call.2.i34.i, %for.cond.1.i36.i.if.then_crit_edge ], [ %call.1.i31.i, %for.cond.i33.i.if.then_crit_edge ], [ %call.i29.i, %while.body.i.if.then_crit_edge ]
  %3 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef %ret.0.i) #4
  %5 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i) #4
  br label %cleanup

if.end:                                           ; preds = %if.end.i.1.i
  %call.i.i19 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i.i20, label %for.cond.i.i23, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.cond.i.i23:                                   ; preds = %if.end
  %call.1.i.i21 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i21)
  %tobool.not.1.i.i22 = icmp eq i32 %call.1.i.i21, 0
  br i1 %tobool.not.1.i.i22, label %for.cond.1.i.i26, label %for.cond.i.i23.if.then3_crit_edge

for.cond.i.i23.if.then3_crit_edge:                ; preds = %for.cond.i.i23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.cond.1.i.i26:                                 ; preds = %for.cond.i.i23
  %call.2.i.i24 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i24)
  %tobool.not.2.i.i25 = icmp eq i32 %call.2.i.i24, 0
  br i1 %tobool.not.2.i.i25, label %for.cond.2.i.i29, label %for.cond.1.i.i26.if.then3_crit_edge

for.cond.1.i.i26.if.then3_crit_edge:              ; preds = %for.cond.1.i.i26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.cond.2.i.i29:                                 ; preds = %for.cond.1.i.i26
  %call.3.i.i27 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i27)
  %tobool.not.3.i.i28 = icmp eq i32 %call.3.i.i27, 0
  br i1 %tobool.not.3.i.i28, label %if.end.i, label %for.cond.2.i.i29.if.then3_crit_edge

for.cond.2.i.i29.if.then3_crit_edge:              ; preds = %for.cond.2.i.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %for.cond.2.i.i29
  %call1.i = tail call fastcc i32 @cdn_dp_mailbox_validate_receive(ptr noundef %dp, i8 noundef zeroext 11, i16 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.body.i.preheader.i31, label %if.end.i.if.then3_crit_edge

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.body.i.preheader.i31:                         ; preds = %if.end.i
  %call.i24.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %cmp2.i.i30 = icmp slt i32 %call.i24.i, 0
  br i1 %cmp2.i.i30, label %for.body.i.preheader.i31.if.then3_crit_edge, label %if.end.i.i33

for.body.i.preheader.i31.if.then3_crit_edge:      ; preds = %for.body.i.preheader.i31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.i33:                                     ; preds = %for.body.i.preheader.i31
  %conv4.i.i = trunc i32 %call.i24.i to i8
  %call.i24.1.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.1.i)
  %cmp2.i.1.i32 = icmp slt i32 %call.i24.1.i, 0
  br i1 %cmp2.i.1.i32, label %if.end.i.i33.if.then3_crit_edge, label %if.end.i.1.i34

if.end.i.i33.if.then3_crit_edge:                  ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.1.i34:                                   ; preds = %if.end.i.i33
  %conv4.i.1.i = trunc i32 %call.i24.1.i to i8
  %call.i24.2.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.2.i)
  %cmp2.i.2.i = icmp slt i32 %call.i24.2.i, 0
  br i1 %cmp2.i.2.i, label %if.end.i.1.i34.if.then3_crit_edge, label %if.end.i.2.i

if.end.i.1.i34.if.then3_crit_edge:                ; preds = %if.end.i.1.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.2.i:                                     ; preds = %if.end.i.1.i34
  %call.i24.3.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.3.i)
  %cmp2.i.3.i = icmp slt i32 %call.i24.3.i, 0
  br i1 %cmp2.i.3.i, label %if.end.i.2.i.if.then3_crit_edge, label %if.end.i.3.i

if.end.i.2.i.if.then3_crit_edge:                  ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.3.i:                                     ; preds = %if.end.i.2.i
  %call.i24.4.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.4.i)
  %cmp2.i.4.i = icmp slt i32 %call.i24.4.i, 0
  br i1 %cmp2.i.4.i, label %if.end.i.3.i.if.then3_crit_edge, label %if.end.i.4.i

if.end.i.3.i.if.then3_crit_edge:                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.4.i:                                     ; preds = %if.end.i.3.i
  %call.i24.5.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.5.i)
  %cmp2.i.5.i = icmp slt i32 %call.i24.5.i, 0
  br i1 %cmp2.i.5.i, label %if.end.i.4.i.if.then3_crit_edge, label %if.end.i.5.i

if.end.i.4.i.if.then3_crit_edge:                  ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.5.i:                                     ; preds = %if.end.i.4.i
  %call.i24.6.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.6.i)
  %cmp2.i.6.i = icmp slt i32 %call.i24.6.i, 0
  br i1 %cmp2.i.6.i, label %if.end.i.5.i.if.then3_crit_edge, label %if.end.i.6.i

if.end.i.5.i.if.then3_crit_edge:                  ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.6.i:                                     ; preds = %if.end.i.5.i
  %call.i24.7.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.7.i)
  %cmp2.i.7.i = icmp slt i32 %call.i24.7.i, 0
  br i1 %cmp2.i.7.i, label %if.end.i.6.i.if.then3_crit_edge, label %if.end.i.7.i

if.end.i.6.i.if.then3_crit_edge:                  ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.7.i:                                     ; preds = %if.end.i.6.i
  %call.i24.8.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.8.i)
  %cmp2.i.8.i = icmp slt i32 %call.i24.8.i, 0
  br i1 %cmp2.i.8.i, label %if.end.i.7.i.if.then3_crit_edge, label %if.end.i.8.i

if.end.i.7.i.if.then3_crit_edge:                  ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i.8.i:                                     ; preds = %if.end.i.7.i
  %call.i24.9.i = tail call fastcc i32 @cdn_dp_mailbox_read(ptr noundef %dp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.9.i)
  %cmp2.i.9.i = icmp slt i32 %call.i24.9.i, 0
  br i1 %cmp2.i.9.i, label %if.end.i.8.i.if.then3_crit_edge, label %if.end5

if.end.i.8.i.if.then3_crit_edge:                  ; preds = %if.end.i.8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.end.i.8.i.if.then3_crit_edge, %if.end.i.7.i.if.then3_crit_edge, %if.end.i.6.i.if.then3_crit_edge, %if.end.i.5.i.if.then3_crit_edge, %if.end.i.4.i.if.then3_crit_edge, %if.end.i.3.i.if.then3_crit_edge, %if.end.i.2.i.if.then3_crit_edge, %if.end.i.1.i34.if.then3_crit_edge, %if.end.i.i33.if.then3_crit_edge, %for.body.i.preheader.i31.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %for.cond.2.i.i29.if.then3_crit_edge, %for.cond.1.i.i26.if.then3_crit_edge, %for.cond.i.i23.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %ret.0.ph.i = phi i32 [ %call1.i, %if.end.i.if.then3_crit_edge ], [ %call.3.i.i27, %for.cond.2.i.i29.if.then3_crit_edge ], [ %call.2.i.i24, %for.cond.1.i.i26.if.then3_crit_edge ], [ %call.1.i.i21, %for.cond.i.i23.if.then3_crit_edge ], [ %call.i.i19, %if.end.if.then3_crit_edge ], [ %call.i24.i, %for.body.i.preheader.i31.if.then3_crit_edge ], [ %call.i24.1.i, %if.end.i.i33.if.then3_crit_edge ], [ %call.i24.2.i, %if.end.i.1.i34.if.then3_crit_edge ], [ %call.i24.3.i, %if.end.i.2.i.if.then3_crit_edge ], [ %call.i24.4.i, %if.end.i.3.i.if.then3_crit_edge ], [ %call.i24.5.i, %if.end.i.4.i.if.then3_crit_edge ], [ %call.i24.6.i, %if.end.i.5.i.if.then3_crit_edge ], [ %call.i24.7.i, %if.end.i.6.i.if.then3_crit_edge ], [ %call.i24.8.i, %if.end.i.7.i.if.then3_crit_edge ], [ %call.i24.9.i, %if.end.i.8.i.if.then3_crit_edge ]
  %7 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %ret.0.ph.i) #4
  %9 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %ret.0.ph.i) #4
  br label %cleanup

if.end5:                                          ; preds = %if.end.i.8.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %conv4.i.i) #4
  %max_rate.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 30
  %11 = ptrtoint ptr %max_rate.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9.i, ptr %max_rate.i, align 8
  %max_lanes.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 29
  %12 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.i.1.i, ptr %max_lanes.i, align 1
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp, align 8
  %conv = and i32 %call.i24.1.i, 255
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %14, i32 noundef 4, ptr noundef nonnull @.str.12, i32 noundef %call9.i, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi i32 [ %ret.0.i, %if.then ], [ %ret.0.ph.i, %if.then3 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_set_video_status(ptr nocapture noundef readonly %dp, i32 noundef %active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active)
  %tobool = icmp ne i32 %active, 0
  %conv = zext i1 %tobool to i8
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.if.then_crit_edge

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.if.then_crit_edge

for.cond.1.i.if.then_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.if.then_crit_edge

for.cond.2.i.if.then_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.body14.i.preheader.if.end_crit_edge, label %for.body14.i.preheader.if.then_crit_edge

for.body14.i.preheader.if.then_crit_edge:         ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.body14.i.preheader.if.end_crit_edge:          ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.body14.i.preheader.if.then_crit_edge, %for.cond.2.i.if.then_crit_edge, %for.cond.1.i.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.ph = phi i32 [ %call.3.i, %for.cond.2.i.if.then_crit_edge ], [ %call.2.i, %for.cond.1.i.if.then_crit_edge ], [ %call.1.i, %for.cond.i.if.then_crit_edge ], [ %call.i, %entry.if.then_crit_edge ], [ %call16.i, %for.body14.i.preheader.if.then_crit_edge ]
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14.i.preheader.if.end_crit_edge
  %retval.0.i9 = phi i32 [ %retval.0.i.ph, %if.then ], [ 0, %for.body14.i.preheader.if.end_crit_edge ]
  ret i32 %retval.0.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_config_video(ptr noundef readonly %dp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %video_info = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 26
  %mode1 = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4
  %color_fmt = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 26, i32 4
  %0 = ptrtoint ptr %color_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %color_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %color_depth = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 26, i32 3
  %2 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %color_depth, align 4
  %mul = shl i32 %3, 1
  %mul3 = mul i32 %3, 3
  %cond = select i1 %cmp, i32 %mul, i32 %mul3
  %max_rate = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 30
  %4 = ptrtoint ptr %max_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_rate, align 8
  %div = udiv i32 %5, 1000
  %call = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 2816, i32 noundef 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then628_crit_edge

entry.if.then628_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 2832, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %do.body.preheader, label %if.end.if.then628_crit_edge

if.end.if.then628_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

do.body.preheader:                                ; preds = %if.end
  %6 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode1, align 4
  %conv11 = sext i32 %7 to i64
  %conv.mask = and i32 %cond, 255
  %conv13 = zext i32 %conv.mask to i64
  %mul12 = mul nsw i64 %conv11, %conv13
  %max_lanes = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 29
  %8 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_lanes, align 1
  %conv15 = zext i8 %9 to i32
  %mul16 = shl nuw nsw i32 %div, 3
  %mul17 = mul i32 %mul16, %conv15
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %do.body.preheader
  %tu_size_reg.0 = phi i32 [ %add, %do.cond.do.body_crit_edge ], [ 30, %do.body.preheader ]
  %conv8 = and i32 %tu_size_reg.0, 255
  %add = add nuw nsw i32 %conv8, 2
  %conv9.mask = and i32 %add, 255
  %conv10 = zext i32 %conv9.mask to i64
  %mul14 = mul nsw i64 %mul12, %conv10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul14)
  %cmp196 = icmp ult i64 %mul14, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !77

if.then200:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv201 = trunc i64 %mul14 to i32
  %div204 = udiv i32 %conv201, %mul17
  %conv205 = zext i32 %div204 to i64
  br label %if.end431

if.else206:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul17, i64 %mul14) #7, !srcloc !78
  %asmresult1.i = extractvalue { i64, i64 } %10, 1
  br label %if.end431

if.end431:                                        ; preds = %if.else206, %if.then200
  %symbol.0 = phi i64 [ %conv205, %if.then200 ], [ %asmresult1.i, %if.else206 ]
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %symbol.0, i32 0) #7, !srcloc !79
  %asmresult.i914 = extractvalue { i64, i32 } %11, 0
  %asmresult4.i915 = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %symbol.0, i64 %asmresult.i914, i32 %asmresult4.i915) #7, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv9.mask)
  %cmp434 = icmp ugt i32 %conv9.mask, 64
  br i1 %cmp434, label %if.then436, label %do.cond

if.then436:                                       ; preds = %if.end431
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %7, i32 noundef %conv15, i32 noundef %div) #4
  br label %if.then628

do.cond:                                          ; preds = %if.end431
  %asmresult10.i919 = extractvalue { i64, i32 } %12, 0
  %div407905 = lshr i64 %asmresult10.i919, 9
  %conv408 = trunc i64 %div407905 to i32
  %mul409.neg = mul i32 %conv408, -1000
  %conv245 = trunc i64 %symbol.0 to i32
  %sub410 = add i32 %mul409.neg, %conv245
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %asmresult10.i919)
  %cmp441 = icmp ult i64 %asmresult10.i919, 1024
  %sub444 = sub nsw i64 %conv10, %div407905
  call void @__sanitizer_cov_trace_const_cmp8(i64 4, i64 %sub444)
  %cmp445 = icmp ult i64 %sub444, 4
  %or.cond = select i1 %cmp441, i1 true, i1 %cmp445
  call void @__sanitizer_cov_trace_const_cmp4(i32 850, i32 %sub410)
  %cmp448 = icmp ugt i32 %sub410, 850
  %or.cond908 = select i1 %or.cond, i1 true, i1 %cmp448
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %sub410)
  %cmp450 = icmp ult i32 %sub410, 100
  %or.cond909 = select i1 %or.cond908, i1 true, i1 %cmp450
  br i1 %or.cond909, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %do.cond
  %conv408.le = trunc i64 %div407905 to i32
  %shl453 = shl nuw nsw i32 %conv9.mask, 8
  %conv456 = add i32 %shl453, %conv408.le
  %or457 = or i32 %conv456, 32768
  %call458 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8712, i32 noundef %or457)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call458)
  %tobool459.not = icmp eq i32 %call458, 0
  br i1 %tobool459.not, label %if.end461, label %do.end.if.then628_crit_edge

do.end.if.then628_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end461:                                        ; preds = %do.end
  %asmresult10.i919.le = extractvalue { i64, i32 } %12, 0
  %15 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode1, align 4
  %conv463 = sext i32 %16 to i64
  %add464 = add nuw nsw i64 %div407905, 1
  %mul465 = mul i64 %add464, %conv463
  %17 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul465, i32 0) #7, !srcloc !79
  %asmresult.i.i.i = extractvalue { i64, i32 } %17, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %17, 1
  %18 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul465, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #7, !srcloc !80
  %asmresult10.i.i.i = extractvalue { i64, i32 } %18, 0
  %div158.i.i958 = lshr i64 %asmresult10.i.i.i, 9
  %19 = trunc i64 %div158.i.i958 to i32
  %conv469 = add i32 %div, %19
  %20 = ptrtoint ptr %max_lanes to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_lanes, align 1
  %conv471 = zext i8 %21 to i32
  %mul472 = mul nuw nsw i32 %div, %conv471
  %div473 = udiv i32 %conv469, %mul472
  %add474 = shl nuw nsw i64 %div407905, 3
  %mul475 = add nuw nsw i64 %add474, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 274877906432, i64 %asmresult10.i919.le)
  %cmp164.i.i = icmp ult i64 %asmresult10.i919.le, 274877906432
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !77

if.then168.i.i:                                   ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #6
  %conv169.i.i = trunc i64 %mul475 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %conv.mask
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end461
  call void @__sanitizer_cov_trace_pc() #6
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.mask, i64 %mul475) #7, !srcloc !78
  %asmresult1.i.i.i = extractvalue { i64, i64 } %22, 1
  %extract.t960 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t960, %if.else174.i.i ]
  %conv480 = sub i32 %dividend.addr.0.i.i.off0, %div473
  %add481 = add i32 %conv480, 2
  %call482 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8788, i32 noundef %add481)
  %color_depth483 = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 26, i32 3
  %23 = ptrtoint ptr %color_depth483 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %color_depth483, align 4
  %switch.tableidx = add i32 %24, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %25 = icmp ult i32 %switch.tableidx, 11
  br i1 %25, label %switch.hole_check, label %div_u64.exit.sw.epilog_crit_edge

div_u64.exit.sw.epilog_crit_edge:                 ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.hole_check:                                ; preds = %div_u64.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 1109, %switch.maskindex
  %26 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %switch.lobit.not = icmp eq i16 %26, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.cdn_dp_config_video, i32 0, i32 %switch.tableidx
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %div_u64.exit.sw.epilog_crit_edge
  %val.0 = phi i32 [ %add481, %div_u64.exit.sw.epilog_crit_edge ], [ %add481, %switch.hole_check.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %28 = ptrtoint ptr %color_fmt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %color_fmt, align 4
  %shl489 = shl i32 %29, 8
  %add490 = add i32 %shl489, %val.0
  %call491 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8716, i32 noundef %add490)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call491)
  %tobool492.not = icmp eq i32 %call491, 0
  br i1 %tobool492.not, label %if.end494, label %sw.epilog.if.then628_crit_edge

sw.epilog.if.then628_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end494:                                        ; preds = %sw.epilog
  %30 = ptrtoint ptr %video_info to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %video_info, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool495.not = icmp eq i8 %31, 0
  %cond497 = select i1 %tobool495.not, i32 0, i32 2
  %v_sync_polarity = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 26, i32 1
  %32 = ptrtoint ptr %v_sync_polarity to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %v_sync_polarity, align 1, !range !81
  %34 = zext i8 %33 to i32
  %or501 = or i32 %cond497, %34
  %call502 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8720, i32 noundef %or501)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call502)
  %tobool503.not = icmp eq i32 %call502, 0
  br i1 %tobool503.not, label %if.end505, label %if.end494.if.then628_crit_edge

if.end494.if.then628_crit_edge:                   ; preds = %if.end494
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end505:                                        ; preds = %if.end494
  %hsync_start = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %hsync_start, align 2
  %conv506 = zext i16 %36 to i32
  %hdisplay = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hdisplay, align 4
  %conv507 = zext i16 %38 to i32
  %sub508 = sub nsw i32 %conv506, %conv507
  %shl509 = shl i32 %sub508, 16
  %htotal = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 4
  %39 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %htotal, align 2
  %conv510 = zext i16 %40 to i32
  %hsync_end = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %hsync_end, align 4
  %conv511 = zext i16 %42 to i32
  %sub512 = sub nsw i32 %conv510, %conv511
  %or513 = or i32 %sub512, %shl509
  %call514 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8824, i32 noundef %or513)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call514)
  %tobool515.not = icmp eq i32 %call514, 0
  br i1 %tobool515.not, label %if.end517, label %if.end505.if.then628_crit_edge

if.end505.if.then628_crit_edge:                   ; preds = %if.end505
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end517:                                        ; preds = %if.end505
  %43 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %hdisplay, align 4
  %conv519 = zext i16 %44 to i32
  %mul521 = mul nuw nsw i32 %conv.mask, %conv519
  %div522906 = lshr i32 %mul521, 3
  %call523 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8828, i32 noundef %div522906)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call523)
  %tobool524.not = icmp eq i32 %call523, 0
  br i1 %tobool524.not, label %if.end526, label %if.end517.if.then628_crit_edge

if.end517.if.then628_crit_edge:                   ; preds = %if.end517
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end526:                                        ; preds = %if.end517
  %45 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %htotal, align 2
  %conv528 = zext i16 %46 to i32
  %47 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_start, align 2
  %conv532 = zext i16 %48 to i32
  %sub533 = sub nsw i32 %conv528, %conv532
  %shl534 = shl i32 %sub533, 16
  %or535 = or i32 %shl534, %conv528
  %call536 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8832, i32 noundef %or535)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call536)
  %tobool537.not = icmp eq i32 %call536, 0
  br i1 %tobool537.not, label %if.end539, label %if.end526.if.then628_crit_edge

if.end526.if.then628_crit_edge:                   ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end539:                                        ; preds = %if.end526
  %49 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_end, align 4
  %conv541 = zext i16 %50 to i32
  %51 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hsync_start, align 2
  %conv543 = zext i16 %52 to i32
  %sub544 = sub nsw i32 %conv541, %conv543
  %53 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %hdisplay, align 4
  %conv546 = zext i16 %54 to i32
  %shl547 = shl nuw i32 %conv546, 16
  %55 = ptrtoint ptr %video_info to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %video_info, align 4, !range !81
  %57 = zext i8 %56 to i32
  %shl551 = shl nuw nsw i32 %57, 15
  %or552 = or i32 %shl547, %sub544
  %or553 = or i32 %or552, %shl551
  %call554 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8836, i32 noundef %or553)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call554)
  %tobool555.not = icmp eq i32 %call554, 0
  br i1 %tobool555.not, label %if.end557, label %if.end539.if.then628_crit_edge

if.end539.if.then628_crit_edge:                   ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end557:                                        ; preds = %if.end539
  %vtotal = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 9
  %58 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vtotal, align 4
  %conv558 = zext i16 %59 to i32
  %vsync_start = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 7
  %60 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vsync_start, align 4
  %conv561 = zext i16 %61 to i32
  %sub562 = sub nsw i32 %conv558, %conv561
  %shl563 = shl i32 %sub562, 16
  %or564 = or i32 %shl563, %conv558
  %call565 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8840, i32 noundef %or564)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call565)
  %tobool566.not = icmp eq i32 %call565, 0
  br i1 %tobool566.not, label %if.end568, label %if.end557.if.then628_crit_edge

if.end557.if.then628_crit_edge:                   ; preds = %if.end557
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end568:                                        ; preds = %if.end557
  %vsync_end = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 8
  %62 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vsync_end, align 2
  %conv569 = zext i16 %63 to i32
  %64 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vsync_start, align 4
  %conv571 = zext i16 %65 to i32
  %sub572 = sub nsw i32 %conv569, %conv571
  %vdisplay = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vdisplay, align 2
  %conv573 = zext i16 %67 to i32
  %shl574 = shl nuw i32 %conv573, 16
  %68 = ptrtoint ptr %v_sync_polarity to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %v_sync_polarity, align 1, !range !81
  %70 = zext i8 %69 to i32
  %shl578 = shl nuw nsw i32 %70, 15
  %or579 = or i32 %shl574, %sub572
  %or580 = or i32 %or579, %shl578
  %call581 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8844, i32 noundef %or580)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call581)
  %tobool582.not = icmp eq i32 %call581, 0
  br i1 %tobool582.not, label %if.end584, label %if.end568.if.then628_crit_edge

if.end568.if.then628_crit_edge:                   ; preds = %if.end568
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end584:                                        ; preds = %if.end568
  %call585 = tail call fastcc i32 @cdn_dp_get_msa_misc(ptr noundef %video_info)
  %call586 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8848, i32 noundef %call585)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call586)
  %tobool587.not = icmp eq i32 %call586, 0
  br i1 %tobool587.not, label %if.end589, label %if.end584.if.then628_crit_edge

if.end584.if.then628_crit_edge:                   ; preds = %if.end584
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end589:                                        ; preds = %if.end584
  %call590 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8852, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call590)
  %tobool591.not = icmp eq i32 %call590, 0
  br i1 %tobool591.not, label %if.end593, label %if.end589.if.then628_crit_edge

if.end589.if.then628_crit_edge:                   ; preds = %if.end589
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end593:                                        ; preds = %if.end589
  %71 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hsync_end, align 4
  %conv595 = zext i16 %72 to i32
  %73 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %hsync_start, align 2
  %conv597 = zext i16 %74 to i32
  %sub598 = sub nsw i32 %conv595, %conv597
  %75 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %hdisplay, align 4
  %conv600 = zext i16 %76 to i32
  %shl601 = shl nuw i32 %conv600, 16
  %or602 = or i32 %shl601, %sub598
  %call603 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8880, i32 noundef %or602)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call603)
  %tobool604.not = icmp eq i32 %call603, 0
  br i1 %tobool604.not, label %if.end606, label %if.end593.if.then628_crit_edge

if.end593.if.then628_crit_edge:                   ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end606:                                        ; preds = %if.end593
  %77 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vdisplay, align 2
  %conv608 = zext i16 %78 to i32
  %79 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vtotal, align 4
  %conv610 = zext i16 %80 to i32
  %81 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vsync_start, align 4
  %conv612 = zext i16 %82 to i32
  %sub613 = sub nsw i32 %conv610, %conv612
  %shl614 = shl i32 %sub613, 16
  %or615 = or i32 %shl614, %conv608
  %call616 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8884, i32 noundef %or615)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call616)
  %tobool617.not = icmp eq i32 %call616, 0
  br i1 %tobool617.not, label %if.end619, label %if.end606.if.then628_crit_edge

if.end606.if.then628_crit_edge:                   ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

if.end619:                                        ; preds = %if.end606
  %83 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %vtotal, align 4
  %conv621 = zext i16 %84 to i32
  %call622 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8888, i32 noundef %conv621)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call622)
  %tobool623.not = icmp eq i32 %call622, 0
  br i1 %tobool623.not, label %err_config_video, label %if.end619.if.then628_crit_edge

if.end619.if.then628_crit_edge:                   ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

err_config_video:                                 ; preds = %if.end619
  %call626 = tail call fastcc i32 @cdn_dp_reg_write_bit(ptr noundef %dp, i8 noundef zeroext 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call626)
  %tobool627.not = icmp eq i32 %call626, 0
  br i1 %tobool627.not, label %err_config_video.if.end630_crit_edge, label %err_config_video.if.then628_crit_edge

err_config_video.if.then628_crit_edge:            ; preds = %err_config_video
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then628

err_config_video.if.end630_crit_edge:             ; preds = %err_config_video
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end630

if.then628:                                       ; preds = %err_config_video.if.then628_crit_edge, %if.end619.if.then628_crit_edge, %if.end606.if.then628_crit_edge, %if.end593.if.then628_crit_edge, %if.end589.if.then628_crit_edge, %if.end584.if.then628_crit_edge, %if.end568.if.then628_crit_edge, %if.end557.if.then628_crit_edge, %if.end539.if.then628_crit_edge, %if.end526.if.then628_crit_edge, %if.end517.if.then628_crit_edge, %if.end505.if.then628_crit_edge, %if.end494.if.then628_crit_edge, %sw.epilog.if.then628_crit_edge, %do.end.if.then628_crit_edge, %if.then436, %if.end.if.then628_crit_edge, %entry.if.then628_crit_edge
  %ret.0955 = phi i32 [ %call626, %err_config_video.if.then628_crit_edge ], [ %call622, %if.end619.if.then628_crit_edge ], [ %call616, %if.end606.if.then628_crit_edge ], [ %call603, %if.end593.if.then628_crit_edge ], [ %call590, %if.end589.if.then628_crit_edge ], [ %call586, %if.end584.if.then628_crit_edge ], [ %call581, %if.end568.if.then628_crit_edge ], [ %call565, %if.end557.if.then628_crit_edge ], [ %call554, %if.end539.if.then628_crit_edge ], [ %call536, %if.end526.if.then628_crit_edge ], [ %call523, %if.end517.if.then628_crit_edge ], [ %call514, %if.end505.if.then628_crit_edge ], [ %call502, %if.end494.if.then628_crit_edge ], [ %call491, %sw.epilog.if.then628_crit_edge ], [ %call458, %do.end.if.then628_crit_edge ], [ -22, %if.then436 ], [ %call4, %if.end.if.then628_crit_edge ], [ %call, %entry.if.then628_crit_edge ]
  %85 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %ret.0955) #4
  br label %if.end630

if.end630:                                        ; preds = %if.then628, %err_config_video.if.end630_crit_edge
  %ret.0956 = phi i32 [ %ret.0955, %if.then628 ], [ 0, %err_config_video.if.end630_crit_edge ]
  ret i32 %ret.0956
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cdn_dp_get_msa_misc(ptr nocapture noundef readonly %video) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %color_fmt = getelementptr inbounds %struct.video_info, ptr %video, i32 0, i32 4
  %0 = ptrtoint ptr %color_fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %color_fmt, align 4
  %switch.tableidx = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.cdn_dp_get_msa_misc, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %val.sroa.0.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %color_depth = getelementptr inbounds %struct.video_info, ptr %video, i32 0, i32 3
  %4 = ptrtoint ptr %color_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %color_depth, align 4
  %switch.tableidx2 = add i32 %5, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx2)
  %6 = icmp ult i32 %switch.tableidx2, 9
  br i1 %6, label %switch.lookup1, label %sw.epilog.sw.epilog17_crit_edge

sw.epilog.sw.epilog17_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog17

switch.lookup1:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep3 = getelementptr inbounds [9 x i32], ptr @switch.table.cdn_dp_get_msa_misc.21, i32 0, i32 %switch.tableidx2
  %7 = ptrtoint ptr %switch.gep3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load4 = load i32, ptr %switch.gep3, align 4
  br label %sw.epilog17

sw.epilog17:                                      ; preds = %switch.lookup1, %sw.epilog.sw.epilog17_crit_edge
  %val.sroa.8.0 = phi i32 [ 0, %sw.epilog.sw.epilog17_crit_edge ], [ %switch.load4, %switch.lookup1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp eq i32 %1, 16
  %cond = select i1 %cmp, i32 16384, i32 0
  %add = or i32 %val.sroa.0.0, %cond
  %add24 = or i32 %add, %val.sroa.8.0
  ret i32 %add24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdn_dp_reg_write_bit(ptr nocapture noundef readonly %dp, i8 noundef zeroext %start_bit, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv21 = trunc i32 %val to i8
  %call.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cdn_dp_mailbox_send.exit_crit_edge

entry.cdn_dp_mailbox_send.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.i.cdn_dp_mailbox_send.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body14.i.preheader, label %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.body14.i.preheader:                           ; preds = %for.cond.2.i
  %call16.i = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond10.i, label %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge

for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.body14.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i:                                     ; preds = %for.body14.i.preheader
  %call16.i.1 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 88) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.1)
  %tobool17.not.i.1 = icmp eq i32 %call16.i.1, 0
  br i1 %tobool17.not.i.1, label %for.cond10.i.1, label %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge:  ; preds = %for.cond10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.1:                                   ; preds = %for.cond10.i
  %call16.i.2 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %start_bit) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.2)
  %tobool17.not.i.2 = icmp eq i32 %call16.i.2, 0
  br i1 %tobool17.not.i.2, label %for.cond10.i.2, label %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.2:                                   ; preds = %for.cond10.i.1
  %call16.i.3 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.3)
  %tobool17.not.i.3 = icmp eq i32 %call16.i.3, 0
  br i1 %tobool17.not.i.3, label %for.cond10.i.3, label %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.3:                                   ; preds = %for.cond10.i.2
  %call16.i.4 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.4)
  %tobool17.not.i.4 = icmp eq i32 %call16.i.4, 0
  br i1 %tobool17.not.i.4, label %for.cond10.i.4, label %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.4:                                   ; preds = %for.cond10.i.3
  %call16.i.5 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.5)
  %tobool17.not.i.5 = icmp eq i32 %call16.i.5, 0
  br i1 %tobool17.not.i.5, label %for.cond10.i.5, label %for.cond10.i.4.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.4.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.5:                                   ; preds = %for.cond10.i.4
  %call16.i.6 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.6)
  %tobool17.not.i.6 = icmp eq i32 %call16.i.6, 0
  br i1 %tobool17.not.i.6, label %for.cond10.i.6, label %for.cond10.i.5.cdn_dp_mailbox_send.exit_crit_edge

for.cond10.i.5.cdn_dp_mailbox_send.exit_crit_edge: ; preds = %for.cond10.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_mailbox_send.exit

for.cond10.i.6:                                   ; preds = %for.cond10.i.5
  call void @__sanitizer_cov_trace_pc() #6
  %call16.i.7 = tail call fastcc i32 @cdp_dp_mailbox_write(ptr noundef %dp, i8 noundef zeroext %conv21) #4
  br label %cdn_dp_mailbox_send.exit

cdn_dp_mailbox_send.exit:                         ; preds = %for.cond10.i.6, %for.cond10.i.5.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.4.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge, %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge, %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge, %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge, %entry.cdn_dp_mailbox_send.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.1.i, %for.cond.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call.3.i, %for.cond.2.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i, %for.body14.i.preheader.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.1, %for.cond10.i.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.2, %for.cond10.i.1.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.3, %for.cond10.i.2.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.4, %for.cond10.i.3.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.5, %for.cond10.i.4.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.6, %for.cond10.i.5.cdn_dp_mailbox_send.exit_crit_edge ], [ %call16.i.7, %for.cond10.i.6 ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_audio_stop(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %audio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8724, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %call) #4
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 196684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr5 = getelementptr i8, ptr %5, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %7, i32 196612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %9, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 16777216) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !86
  tail call void @arm_heavy_mb() #4
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !87
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr25 = getelementptr i8, ptr %13, i32 196736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !88
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %15, i32 196736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 16777216) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !89
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr35 = getelementptr i8, ptr %17, i32 196736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !90
  tail call void @arm_heavy_mb() #4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr40 = getelementptr i8, ptr %19, i32 196744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !91
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr45 = getelementptr i8, ptr %21, i32 196744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 0) #4, !srcloc !51
  %22 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then46, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %spdif_clk = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 19
  %24 = ptrtoint ptr %spdif_clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spdif_clk, align 8
  tail call void @clk_disable(ptr noundef %25) #4
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body.cleanup_crit_edge, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_audio_mute(ptr nocapture noundef readonly %dp, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %call = tail call fastcc i32 @cdn_dp_reg_write_bit(ptr noundef %dp, i8 noundef zeroext 4, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdn_dp_audio_config(ptr nocapture noundef readonly %dp, ptr nocapture noundef readonly %audio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %spdif_rst = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 21
  %2 = ptrtoint ptr %spdif_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spdif_rst, align 8
  %call = tail call i32 @reset_control_assert(ptr noundef %3) #4
  %4 = ptrtoint ptr %spdif_rst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spdif_rst, align 8
  %call2 = tail call i32 @reset_control_deassert(ptr noundef %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 2576, i32 noundef 32768)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.if.then20_crit_edge

if.end.if.then20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 2560, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.if.then20_crit_edge

if.end5.if.then20_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.end9:                                          ; preds = %if.end5
  %6 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audio, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end9.err_audio_config_crit_edge [
    i32 0, label %if.then12
    i32 1, label %if.then15
  ]

if.end9.err_audio_config_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_audio_config

if.then12:                                        ; preds = %if.end9
  %channels.i = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 2
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channels.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %10, label %if.then12.do.body.i_crit_edge [
    i32 2, label %if.then.i
    i32 4, label %if.then8.i
  ]

if.then12.do.body.i_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %max_lanes.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 29
  %12 = ptrtoint ptr %max_lanes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_lanes.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp1.i = icmp eq i8 %13, 1
  %phi.bo148.i = select i1 %cmp1.i, i32 2304, i32 6400
  br label %do.body.i

if.then8.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body.i:                                        ; preds = %if.then8.i, %if.then.i, %if.then12.do.body.i_crit_edge
  %sub_pckt_num.1.i = phi i32 [ %phi.bo148.i, %if.then.i ], [ 256, %if.then8.i ], [ 256, %if.then12.do.body.i_crit_edge ]
  %i2s_port_en_val.0.i = phi i32 [ 135168, %if.then.i ], [ 397312, %if.then8.i ], [ 1970176, %if.then12.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !92
  tail call void @arm_heavy_mb() #4
  %regs.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 196684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !93
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %17, i32 196744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 33554432) #4, !srcloc !51
  %18 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channels.i, align 4
  %and.i = and i32 %19, 31
  %sub.i = add nsw i32 %and.i, -1
  %div.i = sdiv i32 %19, 2
  %sub18.i = shl i32 %div.i, 5
  %and19.i = add i32 %sub18.i, 96
  %shl.i = and i32 %and19.i, 96
  %or20.i = or i32 %sub.i, %sub_pckt_num.1.i
  %or24.i = or i32 %or20.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !94
  tail call void @arm_heavy_mb() #4
  %20 = tail call i32 @llvm.bswap.i32(i32 %or24.i) #4
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %22, i32 196740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 %20) #4, !srcloc !51
  %sample_width.i = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 3
  %23 = ptrtoint ptr %sample_width.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sample_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %24)
  %switch.selectcmp.i = icmp eq i32 %24, 24
  %switch.select.i = select i1 %switch.selectcmp.i, i32 512, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %24)
  %switch.selectcmp140.i = icmp eq i32 %24, 16
  %switch.select141.i = select i1 %switch.selectcmp140.i, i32 0, i32 %switch.select.i
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channels.i, align 4
  %sub42.i = shl i32 %26, 2
  %and43.i = add i32 %sub42.i, 124
  %shl44.i = and i32 %and43.i, 124
  %or48.i = or i32 %switch.select141.i, %i2s_port_en_val.0.i
  %or49.i = or i32 %or48.i, %shl44.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !95
  tail call void @arm_heavy_mb() #4
  %27 = tail call i32 @llvm.bswap.i32(i32 %or49.i) #4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr54.i = getelementptr i8, ptr %29, i32 196612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %27) #4, !srcloc !51
  %30 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channels.i, align 4
  %add143.i = add i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add143.i)
  %cmp57145.i = icmp sgt i32 %add143.i, 1
  br i1 %cmp57145.i, label %do.body.i.for.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

do.body.i.for.body.i_crit_edge:                   ; preds = %do.body.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end69.i.for.body.i_crit_edge, %do.body.i.for.body.i_crit_edge
  %val.1147.i = phi i32 [ %or75.i, %if.end69.i.for.body.i_crit_edge ], [ %or49.i, %do.body.i.for.body.i_crit_edge ]
  %i.0146.i = phi i32 [ %inc.i, %if.end69.i.for.body.i_crit_edge ], [ 0, %do.body.i.for.body.i_crit_edge ]
  %32 = ptrtoint ptr %sample_width.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sample_width.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %33, label %if.end69.fold.split.i [
    i32 16, label %for.body.i.if.end69.i_crit_edge
    i32 24, label %if.then67.i
  ]

for.body.i.if.end69.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.then67.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.end69.fold.split.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end69.fold.split.i, %if.then67.i, %for.body.i.if.end69.i_crit_edge
  %val.2.i = phi i32 [ 11537152, %if.then67.i ], [ 2097664, %for.body.i.if.end69.i_crit_edge ], [ %val.1147.i, %if.end69.fold.split.i ]
  %mul.i = shl i32 %i.0146.i, 17
  %shl70.i = shl i32 %i.0146.i, 5
  %add72.i = or i32 %shl70.i, %mul.i
  %or74.i = or i32 %add72.i, %val.2.i
  %or75.i = or i32 %or74.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !96
  tail call void @arm_heavy_mb() #4
  %35 = tail call i32 @llvm.bswap.i32(i32 %or75.i) #4
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %shl80.i = shl i32 %i.0146.i, 2
  %add81.i = add i32 %shl80.i, 196620
  %add.ptr82.i = getelementptr i8, ptr %37, i32 %add81.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %35) #4, !srcloc !51
  %inc.i = add nuw nsw i32 %i.0146.i, 1
  %38 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channels.i, align 4
  %add.i = add i32 %39, 1
  %div56.i = sdiv i32 %add.i, 2
  %cmp57.i = icmp slt i32 %inc.i, %div56.i
  br i1 %cmp57.i, label %if.end69.i.for.body.i_crit_edge, label %if.end69.i.for.end.i_crit_edge

if.end69.i.for.end.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.end69.i.for.body.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %if.end69.i.for.end.i_crit_edge, %do.body.i.for.end.i_crit_edge
  %val.1.lcssa.i = phi i32 [ %or49.i, %do.body.i.for.end.i_crit_edge ], [ %or75.i, %if.end69.i.for.end.i_crit_edge ]
  %sample_rate.i = getelementptr inbounds %struct.audio_info, ptr %audio, i32 0, i32 1
  %40 = ptrtoint ptr %sample_rate.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sample_rate.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %41, label %for.end.i.cdn_dp_audio_config_i2s.exit_crit_edge [
    i32 32000, label %sw.bb.i
    i32 44100, label %sw.bb83.i
    i32 48000, label %sw.bb84.i
    i32 88200, label %sw.bb85.i
    i32 96000, label %sw.bb86.i
    i32 176400, label %sw.bb87.i
    i32 192000, label %sw.bb88.i
  ]

for.end.i.cdn_dp_audio_config_i2s.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb.i:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb83.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb84.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb85.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb86.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb87.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

sw.bb88.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_i2s.exit

cdn_dp_audio_config_i2s.exit:                     ; preds = %sw.bb88.i, %sw.bb87.i, %sw.bb86.i, %sw.bb85.i, %sw.bb84.i, %sw.bb83.i, %sw.bb.i, %for.end.i.cdn_dp_audio_config_i2s.exit_crit_edge
  %val.3.i = phi i32 [ %val.1.lcssa.i, %for.end.i.cdn_dp_audio_config_i2s.exit_crit_edge ], [ 17694720, %sw.bb88.i ], [ 51118080, %sw.bb87.i ], [ 84541440, %sw.bb86.i ], [ 117964800, %sw.bb85.i ], [ 218234880, %sw.bb84.i ], [ 251658240, %sw.bb83.i ], [ 201523200, %sw.bb.i ]
  %or89.i = or i32 %val.3.i, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !97
  tail call void @arm_heavy_mb() #4
  %43 = tail call i32 @llvm.bswap.i32(i32 %or89.i) #4
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 8
  %add.ptr94.i = getelementptr i8, ptr %45, i32 196616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 %43) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !98
  tail call void @arm_heavy_mb() #4
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 8
  %add.ptr99.i = getelementptr i8, ptr %47, i32 196736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 33554432) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !99
  tail call void @arm_heavy_mb() #4
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %add.ptr104.i = getelementptr i8, ptr %49, i32 196608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104.i, i32 33554432) #4, !srcloc !51
  br label %err_audio_config

if.then15:                                        ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !100
  tail call void @arm_heavy_mb() #4
  %regs.i36 = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 15
  %50 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i36, align 8
  %add.ptr.i37 = getelementptr i8, ptr %51, i32 196744
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 33554432) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !101
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i36, align 8
  %add.ptr5.i = getelementptr i8, ptr %53, i32 196740
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 18415616) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !102
  tail call void @arm_heavy_mb() #4
  %54 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i36, align 8
  %add.ptr10.i = getelementptr i8, ptr %55, i32 196736
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 33554432) #4, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  tail call void @arm_heavy_mb() #4
  %56 = ptrtoint ptr %regs.i36 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i36, align 8
  %add.ptr15.i38 = getelementptr i8, ptr %57, i32 196684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i38, i32 14336) #4, !srcloc !51
  %spdif_clk.i = getelementptr inbounds %struct.cdn_dp_device, ptr %dp, i32 0, i32 19
  %58 = ptrtoint ptr %spdif_clk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spdif_clk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then15.cdn_dp_audio_config_spdif.exit_crit_edge

if.then15.cdn_dp_audio_config_spdif.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_spdif.exit

if.end.i.i:                                       ; preds = %if.then15
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %59) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.cdn_dp_audio_config_spdif.exit_crit_edge, label %if.then3.i.i

if.end.i.i.cdn_dp_audio_config_spdif.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdn_dp_audio_config_spdif.exit

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %59) #4
  br label %cdn_dp_audio_config_spdif.exit

cdn_dp_audio_config_spdif.exit:                   ; preds = %if.then3.i.i, %if.end.i.i.cdn_dp_audio_config_spdif.exit_crit_edge, %if.then15.cdn_dp_audio_config_spdif.exit_crit_edge
  %60 = ptrtoint ptr %spdif_clk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spdif_clk.i, align 8
  %call17.i = tail call i32 @clk_set_rate(ptr noundef %61, i32 noundef 200000000) #4
  br label %err_audio_config

err_audio_config:                                 ; preds = %cdn_dp_audio_config_spdif.exit, %cdn_dp_audio_config_i2s.exit, %if.end9.err_audio_config_crit_edge
  %call18 = tail call fastcc i32 @cdn_dp_reg_write(ptr noundef %dp, i16 noundef zeroext 8724, i32 noundef 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %err_audio_config.if.end21_crit_edge, label %err_audio_config.if.then20_crit_edge

err_audio_config.if.then20_crit_edge:             ; preds = %err_audio_config
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

err_audio_config.if.end21_crit_edge:              ; preds = %err_audio_config
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.then20:                                        ; preds = %err_audio_config.if.then20_crit_edge, %if.end5.if.then20_crit_edge, %if.end.if.then20_crit_edge
  %ret.041 = phi i32 [ %call18, %err_audio_config.if.then20_crit_edge ], [ %call6, %if.end5.if.then20_crit_edge ], [ %call3, %if.end.if.then20_crit_edge ]
  %62 = ptrtoint ptr %dp to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dp, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %63, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef %ret.041) #4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %err_audio_config.if.end21_crit_edge
  %ret.042 = phi i32 [ %ret.041, %if.then20 ], [ 0, %err_audio_config.if.end21_crit_edge ]
  ret i32 %ret.042
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 277, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 301, i32 8}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 304, i32 3}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 318, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 353, i32 3}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 382, i32 3}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 398, i32 3}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 430, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 469, i32 3}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 553, i32 3}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 559, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 563, i32 2}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 578, i32 3}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 666, i32 4}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 780, i32 3}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 790, i32 3}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 823, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 958, i32 3}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 514, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rockchip/cdn-dp-reg.c", i32 543, i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 2156846738}
!51 = !{i64 4830031}
!52 = !{i64 2156848150}
!53 = !{i64 2156848710}
!54 = !{i64 2156849434}
!55 = !{i64 2156850322}
!56 = !{i64 2156851046}
!57 = !{i64 2156851606}
!58 = !{i64 2156851996}
!59 = !{i64 2156857628}
!60 = !{i64 2156858282}
!61 = !{i64 2156858709}
!62 = !{i64 2156859113}
!63 = !{i64 4830449}
!64 = !{i64 2156860718}
!65 = !{i64 2156861196}
!66 = !{i64 2156861816}
!67 = !{i64 2156862299}
!68 = !{i64 2156862782}
!69 = !{i64 2156863265}
!70 = !{i64 2156856030}
!71 = !{i64 2156856508}
!72 = !{i64 2156856729}
!73 = !{i64 2156853611}
!74 = !{i64 2156854089}
!75 = !{i64 2156854576}
!76 = !{i64 2156864535}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2148650565, i64 2148650845, i64 2148651179, i64 2148651513}
!79 = !{i64 1165021, i64 1165048, i64 1165070, i64 1165098}
!80 = !{i64 1165429, i64 1165456, i64 1165489, i64 1165510, i64 1165537, i64 1165563}
!81 = !{i8 0, i8 2}
!82 = !{i64 2156877489}
!83 = !{i64 2156877880}
!84 = !{i64 2156878271}
!85 = !{i64 2156878770}
!86 = !{i64 2156879239}
!87 = !{i64 2156879630}
!88 = !{i64 2156880129}
!89 = !{i64 2156880598}
!90 = !{i64 2156881097}
!91 = !{i64 2156881566}
!92 = !{i64 2156882085}
!93 = !{i64 2156882590}
!94 = !{i64 2156883189}
!95 = !{i64 2156883676}
!96 = !{i64 2156884109}
!97 = !{i64 2156884847}
!98 = !{i64 2156885352}
!99 = !{i64 2156885929}
!100 = !{i64 2156886506}
!101 = !{i64 2156887035}
!102 = !{i64 2156887540}
!103 = !{i64 2156888263}
