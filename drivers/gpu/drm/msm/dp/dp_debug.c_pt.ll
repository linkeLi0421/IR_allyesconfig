; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_debug.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_debug.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dp_debug_private = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dp_debug }
%struct.dp_debug = type { i8, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.85 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.dp_panel = type { [16 x i8], [16 x i8], i32, i32, %struct.dp_link_info, %struct.drm_dp_desc, ptr, ptr, %struct.dp_display_mode, i8, i32, i32, i32, i32 }
%struct.dp_link_info = type { i8, i32, i32, i32 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.dp_display_mode = type { %struct.drm_display_mode, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.dp_link = type { i32, i32, i8, i8, %struct.dp_link_test_video, %struct.dp_link_test_audio, %struct.dp_link_phy_params, %struct.dp_link_info }
%struct.dp_link_test_video = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_test_audio = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dp_link_phy_params = type { i32, i8, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.99 }
%union.anon.99 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dp_debug\00", [23 x i8] zeroinitializer }, align 32
@dp_debug_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_debug_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msm_dp_test_active\00", [45 x i8] zeroinitializer }, align 32
@test_active_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @dp_test_active_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_active_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msm_dp_test_data\00", [47 x i8] zeroinitializer }, align 32
@dp_test_data_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_data_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msm_dp_test_type\00", [47 x i8] zeroinitializer }, align 32
@dp_test_type_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dp_test_type_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09name = %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"msm_dp\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\09dp_panel\0A\09\09max_pclk_khz = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09drm_dp_link\0A\09\09rate = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09\09num_lanes = %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09capabilities = %lu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\09dp_panel_info:\0A\09\09active = %dx%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09back_porch = %dx%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09\09front_porch = %dx%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09sync_width = %dx%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09\09active_low = %dx%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09\09h_skew = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\09\09refresh rate = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\09\09pixel clock khz = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09\09bpp = %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\09dp_link:\0A\09\09test_requested = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09\09num_lanes = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09\09bw_code = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09\09lclk = %lld\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09\09v_level = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\09\09p_level = %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Copied %d bytes from user\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Got %d for test active\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdisplay: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdisplay: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpc: %u\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 32, i64 64]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 245, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 216, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"dp_debug_fops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 96, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 219, i32 22 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"test_active_fops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 201, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 223, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"dp_test_data_fops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 118, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 227, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"dp_test_type_fops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 132, i32 1 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 46, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 46, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 47, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 49, i32 18 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 51, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 53, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 55, i32 18 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 58, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 61, i32 18 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 64, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 67, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 70, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 72, i32 18 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 74, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 76, i32 18 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 80, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 82, i32 18 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 85, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 88, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 89, i32 18 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 91, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 154, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 162, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 184, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 186, i32 16 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 106, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 110, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private constant [37 x i8] c"../drivers/gpu/drm/msm/dp/dp_debug.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 126, i32 17 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @.str, ptr @.str.1, ptr @dp_debug_fops, ptr @.str.2, ptr @test_active_fops, ptr @.str.3, ptr @dp_test_data_fops, ptr @.str.4, ptr @dp_test_type_fops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_debug_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_active_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_test_data_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_test_type_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_debug_get(ptr noundef %dev, ptr noundef %panel, ptr noundef %usbpd, ptr noundef %link, ptr noundef %connector, ptr nocapture noundef readonly %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  %tobool1.not = icmp eq ptr %panel, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %usbpd, null
  %or.cond45 = or i1 %or.cond, %tobool3.not
  %tobool5.not = icmp eq ptr %link, null
  %or.cond46 = or i1 %or.cond45, %tobool5.not
  br i1 %or.cond46, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %dev, i32 noundef 48, i32 noundef 3520) #3
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dp_debug9 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 7
  %0 = ptrtoint ptr %dp_debug9 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %dp_debug9, align 4
  %usbpd10 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %usbpd10 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %usbpd, ptr %usbpd10, align 4
  %link11 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %link11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %link, ptr %link11, align 4
  %panel12 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %panel12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %panel, ptr %panel12, align 4
  %dev13 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev13, align 4
  %dev14 = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 3
  %5 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev14, align 4
  %drm_dev = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %drm_dev, align 4
  %connector15 = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %connector15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %connector, ptr %connector15, align 4
  %vdisplay = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %vdisplay, align 4
  %hdisplay = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %hdisplay, align 4
  %vrefresh = getelementptr inbounds %struct.dp_debug_private, ptr %call.i, i32 0, i32 7, i32 4
  %11 = ptrtoint ptr %vrefresh to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %vrefresh, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %12 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %debugfs_root.i, align 4
  %call.i47 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %13, ptr noundef nonnull %call.i, ptr noundef nonnull @dp_debug_fops) #3
  %14 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_root.i, align 4
  %call2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %15, ptr noundef nonnull %call.i, ptr noundef nonnull @test_active_fops) #3
  %16 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_root.i, align 4
  %call4.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 292, ptr noundef %17, ptr noundef nonnull %call.i, ptr noundef nonnull @dp_test_data_fops) #3
  %18 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %debugfs_root.i, align 4
  %call6.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 292, ptr noundef %19, ptr noundef nonnull %call.i, ptr noundef nonnull @dp_test_type_fops) #3
  %20 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_root.i, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_debug9, %if.end8 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_debug_put(ptr noundef %dp_debug) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_debug, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %dp_debug_deinit.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

dp_debug_deinit.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %dp_debug, i32 -28
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @debugfs_remove(ptr noundef %1) #3
  %dev = getelementptr i8, ptr %dp_debug, i32 -8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %add.ptr) #3
  br label %cleanup

cleanup:                                          ; preds = %dp_debug_deinit.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_debug_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_debug_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_debug_show(ptr noundef %seq, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %panel = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %dp_mode = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #3
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  %max_pclk_khz = getelementptr inbounds %struct.dp_panel, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %max_pclk_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pclk_khz, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.7, i32 noundef %7) #3
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  %rate = getelementptr inbounds %struct.dp_panel, ptr %9, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.8, i32 noundef %11) #3
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %num_lanes = getelementptr inbounds %struct.dp_panel, ptr %13, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %num_lanes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_lanes, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.9, i32 noundef %15) #3
  %16 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel, align 4
  %capabilities = getelementptr inbounds %struct.dp_panel, ptr %17, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %capabilities, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.10, i32 noundef %19) #3
  %hdisplay = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 1
  %20 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %21 to i32
  %vdisplay = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 6
  %22 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdisplay, align 2
  %conv8 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %conv8) #3
  %htotal = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 4
  %24 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %htotal, align 2
  %conv9 = zext i16 %25 to i32
  %hsync_end = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 3
  %26 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hsync_end, align 4
  %conv10 = zext i16 %27 to i32
  %sub = sub nsw i32 %conv9, %conv10
  %vtotal = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 9
  %28 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vtotal, align 4
  %conv11 = zext i16 %29 to i32
  %vsync_end = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 8
  %30 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vsync_end, align 2
  %conv12 = zext i16 %31 to i32
  %sub13 = sub nsw i32 %conv11, %conv12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, i32 noundef %sub, i32 noundef %sub13) #3
  %hsync_start = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 2
  %32 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %hsync_start, align 2
  %conv14 = zext i16 %33 to i32
  %34 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %hdisplay, align 4
  %conv16 = zext i16 %35 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %vsync_start = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 7
  %36 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vsync_start, align 4
  %conv18 = zext i16 %37 to i32
  %38 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay, align 2
  %conv20 = zext i16 %39 to i32
  %sub21 = sub nsw i32 %conv18, %conv20
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %sub17, i32 noundef %sub21) #3
  %40 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hsync_end, align 4
  %conv23 = zext i16 %41 to i32
  %42 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %hsync_start, align 2
  %conv25 = zext i16 %43 to i32
  %sub26 = sub nsw i32 %conv23, %conv25
  %44 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vsync_end, align 2
  %conv28 = zext i16 %45 to i32
  %46 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vsync_start, align 4
  %conv30 = zext i16 %47 to i32
  %sub31 = sub nsw i32 %conv28, %conv30
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.14, i32 noundef %sub26, i32 noundef %sub31) #3
  %48 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %panel, align 4
  %h_active_low = getelementptr inbounds %struct.dp_panel, ptr %49, i32 0, i32 8, i32 3
  %50 = ptrtoint ptr %h_active_low to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %h_active_low, align 4
  %v_active_low = getelementptr inbounds %struct.dp_panel, ptr %49, i32 0, i32 8, i32 4
  %52 = ptrtoint ptr %v_active_low to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %v_active_low, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.15, i32 noundef %51, i32 noundef %53) #3
  %hskew = getelementptr inbounds %struct.dp_panel, ptr %3, i32 0, i32 8, i32 0, i32 5
  %54 = ptrtoint ptr %hskew to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hskew, align 4
  %conv36 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.16, i32 noundef %conv36) #3
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %dp_mode) #3
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.17, i32 noundef %call) #3
  %56 = ptrtoint ptr %dp_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dp_mode, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.18, i32 noundef %57) #3
  %58 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %panel, align 4
  %bpp = getelementptr inbounds %struct.dp_panel, ptr %59, i32 0, i32 8, i32 2
  %60 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bpp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.19, i32 noundef %61) #3
  %link = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %link, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.20, i32 noundef %65) #3
  %66 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link, align 4
  %num_lanes40 = getelementptr inbounds %struct.dp_link, ptr %67, i32 0, i32 7, i32 2
  %68 = ptrtoint ptr %num_lanes40 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_lanes40, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.21, i32 noundef %69) #3
  %70 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %link, align 4
  %rate43 = getelementptr inbounds %struct.dp_link, ptr %71, i32 0, i32 7, i32 1
  %72 = ptrtoint ptr %rate43 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rate43, align 4
  %call44 = tail call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %73) #3
  %conv45 = zext i8 %call44 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.22, i32 noundef %conv45) #3
  %74 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %link, align 4
  %rate48 = getelementptr inbounds %struct.dp_link, ptr %75, i32 0, i32 7, i32 1
  %76 = ptrtoint ptr %rate48 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rate48, align 4
  %mul = mul i32 %77, 1000
  %conv49 = zext i32 %mul to i64
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.23, i64 noundef %conv49) #3
  %78 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %link, align 4
  %v_level = getelementptr inbounds %struct.dp_link, ptr %79, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %v_level to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %v_level, align 4
  %conv51 = zext i8 %81 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.24, i32 noundef %conv51) #3
  %82 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %link, align 4
  %p_level = getelementptr inbounds %struct.dp_link, ptr %83, i32 0, i32 6, i32 2
  %84 = ptrtoint ptr %p_level to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %p_level, align 1
  %conv54 = zext i8 %85 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.25, i32 noundef %conv54) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_active_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef %offp) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 8
  %connector1 = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connector1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @memdup_user_nul(ptr noundef %ubuf, i32 noundef %len) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %len) #3
  %status6 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 18
  %8 = ptrtoint ptr %status6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp7 = icmp eq i32 %9, 1
  br i1 %cmp7, label %if.then8, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @kstrtoint(ptr noundef %call, i32 noundef 10, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  call void @kfree(ptr noundef %call) #3
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %11) #3
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp13 = icmp eq i32 %13, 1
  %panel = getelementptr inbounds %struct.dp_debug_private, ptr %4, i32 0, i32 3
  %14 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel, align 4
  %video_test = getelementptr inbounds %struct.dp_panel, ptr %15, i32 0, i32 9
  %. = zext i1 %cmp13 to i8
  %16 = ptrtoint ptr %video_test to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %video_test, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end12, %if.end5.if.end18_crit_edge
  call void @kfree(ptr noundef %call) #3
  %conv = zext i32 %len to i64
  %17 = ptrtoint ptr %offp to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offp, align 8
  %add = add i64 %18, %conv
  store i64 %add, ptr %offp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then11, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then3 ], [ %call9, %if.then11 ], [ %len, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_active_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_test_active_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user_nul(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_active_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %connector1 = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector1, align 4
  %status = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %panel = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %video_test = getelementptr inbounds %struct.dp_panel, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %video_test to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %video_test, align 4, !range !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %.str.29..str.28 = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %.str.28.sink = phi ptr [ %.str.29..str.28, %if.then ], [ @.str.29, %entry.if.end4_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.28.sink) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_data_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_test_data_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_data_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %connector1 = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector1, align 4
  %status = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %link = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %test_bit_depth = getelementptr inbounds %struct.dp_link, ptr %7, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %test_bit_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %test_bit_depth, align 4
  %test_h_width = getelementptr inbounds %struct.dp_link, ptr %7, i32 0, i32 4, i32 11
  %10 = ptrtoint ptr %test_h_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %test_h_width, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.30, i32 noundef %11) #3
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 4
  %test_v_height = getelementptr inbounds %struct.dp_link, ptr %13, i32 0, i32 4, i32 12
  %14 = ptrtoint ptr %test_v_height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %test_v_height, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.31, i32 noundef %15) #3
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default.i [
    i32 0, label %if.then.dp_link_bit_depth_to_bpc.exit_crit_edge
    i32 32, label %sw.bb1.i
    i32 64, label %sw.bb2.i
  ]

if.then.dp_link_bit_depth_to_bpc.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_link_bit_depth_to_bpc.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_link_bit_depth_to_bpc.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_link_bit_depth_to_bpc.exit

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %dp_link_bit_depth_to_bpc.exit

dp_link_bit_depth_to_bpc.exit:                    ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.then.dp_link_bit_depth_to_bpc.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ 10, %sw.bb2.i ], [ 8, %sw.bb1.i ], [ 6, %if.then.dp_link_bit_depth_to_bpc.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %dp_link_bit_depth_to_bpc.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_type_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @dp_test_type_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dp_test_type_show(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %connector1 = getelementptr inbounds %struct.dp_debug_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %connector1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector1, align 4
  %status = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.33, i32 noundef 2) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.29) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 245, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 216, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 219, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 223, i32 22}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 227, i32 22}
!10 = !{ptr @dp_debug_fops, !11, !"dp_debug_fops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 96, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 46, i32 18}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 46, i32 35}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 47, i32 18}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 49, i32 18}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 51, i32 18}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 53, i32 18}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 55, i32 18}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 58, i32 18}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 61, i32 18}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 64, i32 18}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 67, i32 18}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 70, i32 18}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 72, i32 18}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 74, i32 18}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 76, i32 18}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 80, i32 18}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 82, i32 18}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 85, i32 18}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 88, i32 18}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 89, i32 18}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 91, i32 18}
!54 = !{ptr @test_active_fops, !55, !"test_active_fops", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 201, i32 37}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 154, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 162, i32 3}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 184, i32 16}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 186, i32 16}
!64 = !{ptr @dp_test_data_fops, !65, !"dp_test_data_fops", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 118, i32 1}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 106, i32 17}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 108, i32 17}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 110, i32 17}
!72 = !{ptr @dp_test_type_fops, !73, !"dp_test_type_fops", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 132, i32 1}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/dp/dp_debug.c", i32 126, i32 17}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i8 0, i8 2}
