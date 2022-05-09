; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/atombios_dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/atombios_dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.amdgpu_connector = type { %struct.drm_connector, i32, i32, ptr, i8, i8, ptr, ptr, i8, i8, i16, %struct.amdgpu_hpd, %struct.amdgpu_router, ptr, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.amdgpu_hpd = type { i32, i8, %struct.amdgpu_gpio_rec }
%struct.amdgpu_gpio_rec = type { i8, i8, i32, i32, i32 }
%struct.amdgpu_router = type { i32, %struct.amdgpu_i2c_bus_rec, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.amdgpu_i2c_bus_rec = type { i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_i2c_chan = type { %struct.i2c_adapter, ptr, %struct.i2c_algo_bit_data, %struct.amdgpu_i2c_bus_rec, %struct.drm_dp_aux, i8, %struct.mutex }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct._DP_ENCODER_SERVICE_PARAMETERS = type { i16, %union.anon.115, i8, i8, i8, [2 x i8] }
%union.anon.115 = type { i8 }
%struct.amdgpu_connector_atom_dig = type { [15 x i8], [16 x i8], i8, i32, i32, i8 }
%struct.amdgpu_atombios_dp_link_train_info = type { ptr, ptr, ptr, i32, i32, i8, [15 x i8], [4 x i8], [6 x i8], i8, ptr }
%struct.amdgpu_encoder = type { %struct.drm_encoder, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, ptr, i32, i8, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.amdgpu_encoder_atom_dig = type { i8, i8, i32, i32, i16, i32, %struct.drm_display_mode, ptr, i32, i8, i32, ptr }
%union.aux_channel_transaction = type { %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS }
%struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS = type { i16, i16, i8, %union.anon.113, i8, i8 }
%union.anon.113 = type { i8 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DPCD: %*ph\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/amd/amdgpu/atombios_dp.c\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dp_aux_ch flags not zero\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dp_aux_ch error\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Sink OUI: %02hx%02hx%02hx\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Branch OUI: %02hx%02hx%02hx\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"displayport link status failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"clock recovery reached max voltage\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"clock recovery tried 5 times\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clock recovery failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"clock recovery at voltage %d pre-emphasis %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"requested signal parameters: lane %d voltage %s pre_emph %s\0A\00", [35 x i8] zeroinitializer }, align 32
@voltage_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@pre_emph_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"using signal parameters: voltage %s pre_emph %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.4V\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.6V\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.8V\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.2V\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0dB\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.5dB\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6dB\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9.5dB\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"channel eq failed: 5 tries\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"channel eq failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"channel eq at voltage %d pre-emphasis %d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 360, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 136, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 97, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 104, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 325, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 329, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 619, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 633, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 640, i32 5 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 655, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 658, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 214, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"voltage_names\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 43, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"pre_emph_names\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 46, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 231, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 10 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 44, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 47, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 695, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 708, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [44 x i8] c"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 711, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @voltage_names, ptr @pre_emph_names, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @voltage_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pre_emph_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_dp_aux_init(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 11
  %0 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hpd, align 4
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 3
  %2 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc_bus, align 8
  %hpd2 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %3, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %hpd2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %hpd2, align 4
  %5 = load ptr, ptr %ddc_bus, align 8
  %transfer = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %5, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @amdgpu_atombios_dp_aux_transfer, ptr %transfer, align 8
  %7 = ptrtoint ptr %amdgpu_connector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %amdgpu_connector, align 8
  %9 = load ptr, ptr %ddc_bus, align 8
  %drm_dev = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %9, i32 0, i32 4, i32 3
  %10 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %drm_dev, align 4
  %11 = load ptr, ptr %ddc_bus, align 8
  %aux7 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %11, i32 0, i32 4
  tail call void @drm_dp_aux_init(ptr noundef %aux7) #4
  %12 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddc_bus, align 8
  %has_aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %has_aux to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %has_aux, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amdgpu_atombios_dp_aux_transfer(ptr noundef %aux, ptr nocapture noundef %msg) #0 align 64 {
entry:
  %tx_buf = alloca [20 x i8], align 1
  %ack = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %aux, i32 -1480
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tx_buf) #4
  %0 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 3
  %1 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 4
  %2 = getelementptr inbounds i8, ptr %tx_buf, i32 3
  %3 = call ptr @memset(ptr %2, i32 255, i32 17)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ack) #4
  %4 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %ack, align 1, !annotation !63
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp = icmp ugt i32 %6, 16
  br i1 %cmp, label %do.end, label %if.end22, !prof !64

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 136, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end22:                                         ; preds = %entry
  %7 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 2
  %8 = getelementptr inbounds [20 x i8], ptr %tx_buf, i32 0, i32 1
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %tx_buf, align 1
  %shr = lshr i32 %10, 8
  %conv24 = trunc i32 %shr to i8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %8, align 1
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %13 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %request, align 4
  %conv26 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv26, 4
  %shr28 = lshr i32 %10, 16
  %and29 = and i32 %shr28, 15
  %or = or i32 %shl, %and29
  %conv30 = trunc i32 %or to i8
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv30, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not = icmp eq i32 %6, 0
  %16 = trunc i32 %6 to i8
  %phi.cast = add nsw i8 %16, -1
  %cond = select i1 %tobool33.not, i8 0, i8 %phi.cast
  %17 = and i8 %14, -5
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i8 %17, label %if.end22.cleanup_crit_edge [
    i8 8, label %if.end22.sw.bb_crit_edge
    i8 0, label %if.end22.sw.bb_crit_edge122
    i8 9, label %if.end22.sw.bb63_crit_edge
    i8 1, label %if.end22.sw.bb63_crit_edge123
  ]

if.end22.sw.bb63_crit_edge123:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb63

if.end22.sw.bb63_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb63

if.end22.sw.bb_crit_edge122:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge122
  %add = add nuw nsw i32 %6, 4
  %add.tr = trunc i32 %add to i8
  %19 = shl i8 %add.tr, 4
  %storemerge119.v = select i1 %tobool33.not, i8 48, i8 %19
  %storemerge119 = or i8 %storemerge119.v, %cond
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %storemerge119, ptr %0, align 1
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %23 = call ptr @memcpy(ptr %1, ptr %22, i32 %6)
  %call = call fastcc i32 @amdgpu_atombios_dp_process_aux_ch(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf, i32 noundef %add, ptr noundef null, i32 noundef 0, ptr noundef nonnull %ack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp58 = icmp sgt i32 %call, -1
  br i1 %cmp58, label %if.then60, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then60:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %if.end22.sw.bb63_crit_edge, %if.end22.sw.bb63_crit_edge123
  %storemerge.v = select i1 %tobool33.not, i8 48, i8 64
  %storemerge = or i8 %cond, %storemerge.v
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %storemerge, ptr %0, align 1
  %buffer80 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %27 = ptrtoint ptr %buffer80 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer80, align 4
  %call82 = call fastcc i32 @amdgpu_atombios_dp_process_aux_ch(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf, i32 noundef 4, ptr noundef %28, i32 noundef %6, ptr noundef nonnull %ack)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb63, %if.then60
  %ret.0 = phi i32 [ %call82, %sw.bb63 ], [ %25, %if.then60 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp83 = icmp sgt i32 %ret.0, -1
  br i1 %cmp83, label %if.then85, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then85:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %ack to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ack, align 1
  %31 = lshr i8 %30, 4
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %32 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %reply, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then85, %sw.epilog.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -7, %do.end ], [ %ret.0, %if.then85 ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ %call, %sw.bb.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ack) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tx_buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @amdgpu_atombios_dp_get_sinktype(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct._DP_ENCODER_SERVICE_PARAMETERS, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %amdgpu_connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %amdgpu_connector, align 8
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 3
  %2 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddc_bus, align 8
  %i2c_id = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_id, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args.i) #4
  %6 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct._DP_ENCODER_SERVICE_PARAMETERS, ptr %args.i, i32 0, i32 3
  %8 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 4294967296, ptr %args.i, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %5, ptr %6, align 2
  %mode_info.i = getelementptr i8, ptr %1, i32 21992
  %10 = ptrtoint ptr %mode_info.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode_info.i, align 8
  %call.i = call i32 @amdgpu_atom_execute_table(ptr noundef %11, i32 noundef 79, ptr noundef nonnull %args.i) #4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args.i) #4
  ret i8 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_dp_get_dpcd(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %msg = alloca [15 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %msg) #4
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 3
  %2 = call ptr @memset(ptr %msg, i32 255, i32 15)
  %3 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %4, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 0, ptr noundef nonnull %msg, i32 noundef 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call)
  %cmp = icmp eq i32 %call, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = call ptr @memcpy(ptr %1, ptr %msg, i32 15)
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef 15, ptr noundef %1) #4
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #4
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 1, !annotation !63
  %9 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !63
  %11 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !63
  %arrayidx.i = getelementptr [15 x i8], ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not.i = icmp sgt i8 %14, -1
  br i1 %tobool.not.i, label %if.then.amdgpu_atombios_dp_probe_oui.exit_crit_edge, label %if.end.i

if.then.amdgpu_atombios_dp_probe_oui.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_probe_oui.exit

if.end.i:                                         ; preds = %if.then
  %15 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ddc_bus, align 8
  %aux.i = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %16, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 1024, ptr noundef nonnull %buf.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 3
  br i1 %cmp.i, label %if.then2.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf.i, align 1
  %conv4.i = zext i8 %18 to i32
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %9, align 1
  %conv6.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %11, align 1
  %conv8.i = zext i8 %22 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %conv4.i, i32 noundef %conv6.i, i32 noundef %conv8.i) #4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then2.i, %if.end.i.if.end9.i_crit_edge
  %23 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddc_bus, align 8
  %aux11.i = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %24, i32 0, i32 4
  %call13.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux11.i, i32 noundef 1280, ptr noundef nonnull %buf.i, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 3
  br i1 %cmp14.i, label %if.then16.i, label %if.end9.i.amdgpu_atombios_dp_probe_oui.exit_crit_edge

if.end9.i.amdgpu_atombios_dp_probe_oui.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_probe_oui.exit

if.then16.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf.i, align 1
  %conv18.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %9, align 1
  %conv20.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %11, align 1
  %conv22.i = zext i8 %30 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %conv18.i, i32 noundef %conv20.i, i32 noundef %conv22.i) #4
  br label %amdgpu_atombios_dp_probe_oui.exit

amdgpu_atombios_dp_probe_oui.exit:                ; preds = %if.then16.i, %if.end9.i.amdgpu_atombios_dp_probe_oui.exit_crit_edge, %if.then.amdgpu_atombios_dp_probe_oui.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #4
  %31 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %con_priv, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %34)
  %cmp.i14 = icmp ugt i8 %34, 16
  br i1 %cmp.i14, label %if.then.i, label %amdgpu_atombios_dp_probe_oui.exit.cleanup_crit_edge

amdgpu_atombios_dp_probe_oui.exit.cleanup_crit_edge: ; preds = %amdgpu_atombios_dp_probe_oui.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %amdgpu_atombios_dp_probe_oui.exit
  %35 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ddc_bus, align 8
  %aux.i16 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %36, i32 0, i32 4
  %downstream_ports.i = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %32, i32 0, i32 1
  %call.i17 = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i16, i32 noundef 128, ptr noundef %downstream_ports.i, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17)
  %tobool.not.i18 = icmp eq i32 %call.i17, 0
  br i1 %tobool.not.i18, label %if.then.i.cleanup_crit_edge, label %if.then2.i19

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2.i19:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %37 = call ptr @memset(ptr %downstream_ports.i, i32 0, i32 16)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then2.i19, %if.then.i.cleanup_crit_edge, %amdgpu_atombios_dp_probe_oui.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end ], [ 0, %amdgpu_atombios_dp_probe_oui.exit.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.then2.i19 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %msg) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_dp_get_panel_mode(ptr nocapture noundef readnone %encoder, ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  %tmp1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i16 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(ptr noundef %connector) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp1) #4
  %0 = ptrtoint ptr %tmp1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp1, align 1, !annotation !63
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %1 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %cmp.not = icmp eq i16 %call, 0
  br i1 %cmp.not, label %if.else22, label %if.then3

if.then3:                                         ; preds = %if.end
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %3 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %4, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 13, ptr noundef nonnull %tmp1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp5 = icmp eq i32 %call.i, 1
  br i1 %cmp5, label %if.then7, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  %5 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tmp1, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  br i1 %tobool9.not, label %if.else, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %8 = and i16 %call, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %8)
  %switch = icmp eq i16 %8, 34
  %spec.select50 = select i1 %switch, i32 17, i32 0
  br label %cleanup

if.else22:                                        ; preds = %if.end
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %9 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %10)
  %cmp23 = icmp eq i32 %10, 14
  br i1 %cmp23, label %if.then25, label %if.else22.cleanup_crit_edge

if.else22.cleanup_crit_edge:                      ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then25:                                        ; preds = %if.else22
  %ddc_bus26 = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %11 = ptrtoint ptr %ddc_bus26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ddc_bus26, align 8
  %aux27 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %12, i32 0, i32 4
  %call.i51 = call i32 @drm_dp_dpcd_read(ptr noundef %aux27, i32 noundef 13, ptr noundef nonnull %tmp1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51)
  %cmp29 = icmp eq i32 %call.i51, 1
  br i1 %cmp29, label %if.then31, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then31:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %tmp1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tmp1, align 1
  %15 = and i8 %14, 1
  %16 = zext i8 %15 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then25.cleanup_crit_edge, %if.else22.cleanup_crit_edge, %if.else, %if.then7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.then25.cleanup_crit_edge ], [ 0, %if.else22.cleanup_crit_edge ], [ 1, %if.then7.cleanup_crit_edge ], [ %16, %if.then31 ], [ %spec.select50, %if.else ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp1) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_dp_set_link_config(ptr noundef %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %3, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %dp_lane_count = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %1, i32 0, i32 4
  %dp_clock = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %1, i32 0, i32 3
  %call = tail call fastcc i32 @amdgpu_atombios_dp_get_dp_link_config(ptr noundef %connector, ptr noundef nonnull %1, i32 noundef %5, ptr noundef %dp_lane_count, ptr noundef %dp_clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then7.cleanup_crit_edge, label %if.then9

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dp_clock to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dp_clock, align 4
  %7 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %dp_lane_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_atombios_dp_get_dp_link_config(ptr noundef %connector, ptr nocapture noundef readonly %dpcd, i32 noundef %pix_clock, ptr nocapture noundef writeonly %dp_lanes, ptr nocapture noundef writeonly %dp_rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amdgpu_connector_get_monitor_bpc(ptr noundef %connector) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.i = icmp eq i32 %call, 0
  %mul.i = mul i32 %call, 3
  %retval.0.i = select i1 %cmp.i, i32 24, i32 %mul.i
  %arrayidx.i = getelementptr i8, ptr %dpcd, i32 1
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %call.i = tail call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %1) #4
  %arrayidx.i62 = getelementptr i8, ptr %dpcd, i32 2
  %2 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i62, align 1
  %4 = and i8 %3, 31
  %conv = zext i8 %4 to i32
  %call4 = tail call zeroext i16 @amdgpu_connector_encoder_get_dp_bridge_encoder_id(ptr noundef %connector) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %call4)
  %cmp = icmp eq i16 %call4, 34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp7.not69 = icmp eq i8 %4, 0
  br i1 %cmp, label %for.cond.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 162000, i32 %call.i)
  %cmp16.not = icmp ult i32 %call.i, 162000
  %brmerge90 = select i1 %cmp16.not, i1 true, i1 %cmp7.not69
  br i1 %brmerge90, label %for.cond13.preheader.cleanup_crit_edge, label %for.cond13.preheader.for.body22_crit_edge

for.cond13.preheader.for.body22_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body22

for.cond13.preheader.cleanup_crit_edge:           ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  br i1 %cmp7.not69, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %lane_num.070 = phi i32 [ %shl, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %mul9 = mul i32 %lane_num.070, 2160000
  %div = udiv i32 %mul9, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %pix_clock)
  %cmp10.not = icmp ult i32 %div, %pix_clock
  br i1 %cmp10.not, label %for.inc, label %for.body.cleanup.sink.split_crit_edge

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body
  %shl = shl i32 %lane_num.070, 1
  %cmp7.not = icmp ugt i32 %shl, %conv
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body22:                                       ; preds = %for.inc32.for.body22_crit_edge, %for.cond13.preheader.for.body22_crit_edge
  %lane_num.167 = phi i32 [ %shl33, %for.inc32.for.body22_crit_edge ], [ 1, %for.cond13.preheader.for.body22_crit_edge ]
  %mul25 = mul i32 %lane_num.167, 1296000
  %div26 = udiv i32 %mul25, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26, i32 %pix_clock)
  %cmp27.not = icmp ult i32 %div26, %pix_clock
  br i1 %cmp27.not, label %for.inc32, label %for.body22.cleanup.sink.split_crit_edge

for.body22.cleanup.sink.split_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.inc32:                                        ; preds = %for.body22
  %shl33 = shl i32 %lane_num.167, 1
  %cmp20.not = icmp ugt i32 %shl33, %conv
  br i1 %cmp20.not, label %for.inc35, label %for.inc32.for.body22_crit_edge

for.inc32.for.body22_crit_edge:                   ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22

for.inc35:                                        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_const_cmp4(i32 270000, i32 %call.i)
  %cmp16.not.1 = icmp ult i32 %call.i, 270000
  br i1 %cmp16.not.1, label %for.inc35.cleanup_crit_edge, label %for.cond19.preheader.1

for.inc35.cleanup_crit_edge:                      ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond19.preheader.1:                           ; preds = %for.inc35
  br i1 %cmp7.not69, label %for.cond19.preheader.1.for.inc35.1_crit_edge, label %for.cond19.preheader.1.for.body22.1_crit_edge

for.cond19.preheader.1.for.body22.1_crit_edge:    ; preds = %for.cond19.preheader.1
  br label %for.body22.1

for.cond19.preheader.1.for.inc35.1_crit_edge:     ; preds = %for.cond19.preheader.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35.1

for.body22.1:                                     ; preds = %for.inc32.1.for.body22.1_crit_edge, %for.cond19.preheader.1.for.body22.1_crit_edge
  %lane_num.167.1 = phi i32 [ %shl33.1, %for.inc32.1.for.body22.1_crit_edge ], [ 1, %for.cond19.preheader.1.for.body22.1_crit_edge ]
  %mul25.1 = mul i32 %lane_num.167.1, 2160000
  %div26.1 = udiv i32 %mul25.1, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.1, i32 %pix_clock)
  %cmp27.not.1 = icmp ult i32 %div26.1, %pix_clock
  br i1 %cmp27.not.1, label %for.inc32.1, label %for.body22.1.cleanup.sink.split_crit_edge

for.body22.1.cleanup.sink.split_crit_edge:        ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.inc32.1:                                      ; preds = %for.body22.1
  %shl33.1 = shl i32 %lane_num.167.1, 1
  %cmp20.not.1 = icmp ugt i32 %shl33.1, %conv
  br i1 %cmp20.not.1, label %for.inc32.1.for.inc35.1_crit_edge, label %for.inc32.1.for.body22.1_crit_edge

for.inc32.1.for.body22.1_crit_edge:               ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22.1

for.inc32.1.for.inc35.1_crit_edge:                ; preds = %for.inc32.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc35.1

for.inc35.1:                                      ; preds = %for.inc32.1.for.inc35.1_crit_edge, %for.cond19.preheader.1.for.inc35.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %call.i)
  %cmp16.not.2.old = icmp ult i32 %call.i, 540000
  %brmerge = select i1 %cmp16.not.2.old, i1 true, i1 %cmp7.not69
  br i1 %brmerge, label %for.inc35.1.cleanup_crit_edge, label %for.inc35.1.for.body22.2_crit_edge

for.inc35.1.for.body22.2_crit_edge:               ; preds = %for.inc35.1
  br label %for.body22.2

for.inc35.1.cleanup_crit_edge:                    ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body22.2:                                     ; preds = %for.inc32.2.for.body22.2_crit_edge, %for.inc35.1.for.body22.2_crit_edge
  %lane_num.167.2 = phi i32 [ %shl33.2, %for.inc32.2.for.body22.2_crit_edge ], [ 1, %for.inc35.1.for.body22.2_crit_edge ]
  %mul25.2 = mul i32 %lane_num.167.2, 4320000
  %div26.2 = udiv i32 %mul25.2, %retval.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.2, i32 %pix_clock)
  %cmp27.not.2 = icmp ult i32 %div26.2, %pix_clock
  br i1 %cmp27.not.2, label %for.inc32.2, label %for.body22.2.cleanup.sink.split_crit_edge

for.body22.2.cleanup.sink.split_crit_edge:        ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

for.inc32.2:                                      ; preds = %for.body22.2
  %shl33.2 = shl i32 %lane_num.167.2, 1
  %cmp20.not.2 = icmp ugt i32 %shl33.2, %conv
  br i1 %cmp20.not.2, label %for.inc32.2.cleanup_crit_edge, label %for.inc32.2.for.body22.2_crit_edge

for.inc32.2.for.body22.2_crit_edge:               ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22.2

for.inc32.2.cleanup_crit_edge:                    ; preds = %for.inc32.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body22.2.cleanup.sink.split_crit_edge, %for.body22.1.cleanup.sink.split_crit_edge, %for.body22.cleanup.sink.split_crit_edge, %for.body.cleanup.sink.split_crit_edge
  %lane_num.167.lcssa.sink = phi i32 [ %lane_num.070, %for.body.cleanup.sink.split_crit_edge ], [ %lane_num.167.2, %for.body22.2.cleanup.sink.split_crit_edge ], [ %lane_num.167.1, %for.body22.1.cleanup.sink.split_crit_edge ], [ %lane_num.167, %for.body22.cleanup.sink.split_crit_edge ]
  %.lcssa74.sink = phi i32 [ 270000, %for.body.cleanup.sink.split_crit_edge ], [ 540000, %for.body22.2.cleanup.sink.split_crit_edge ], [ 270000, %for.body22.1.cleanup.sink.split_crit_edge ], [ 162000, %for.body22.cleanup.sink.split_crit_edge ]
  %5 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lane_num.167.lcssa.sink, ptr %dp_lanes, align 4
  %6 = ptrtoint ptr %dp_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.lcssa74.sink, ptr %dp_rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc32.2.cleanup_crit_edge, %for.inc35.1.cleanup_crit_edge, %for.inc35.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %for.cond13.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc35.1.cleanup_crit_edge ], [ -22, %for.inc35.cleanup_crit_edge ], [ -22, %for.cond13.preheader.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %for.inc32.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atombios_dp_mode_valid_helper(ptr noundef %connector, ptr nocapture noundef readonly %mode) local_unnamed_addr #0 align 64 {
entry:
  %dp_lanes = alloca i32, align 4
  %dp_clock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_lanes) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_clock) #4
  %0 = ptrtoint ptr %dp_clock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dp_clock, align 4, !annotation !63
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %1 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %call = call fastcc i32 @amdgpu_atombios_dp_get_dp_link_config(ptr noundef %connector, ptr noundef nonnull %2, i32 noundef %4, ptr noundef nonnull %dp_lanes, ptr noundef nonnull %dp_clock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %dp_clock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %6)
  %cmp = icmp eq i32 %6, 540000
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end4
  %call5 = tail call zeroext i1 @amdgpu_connector_is_dp12_capable(ptr noundef %connector) #4
  br i1 %call5, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end4.if.end7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 15, %entry.cleanup_crit_edge ], [ 15, %if.end.cleanup_crit_edge ], [ 15, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_clock) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_lanes) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @amdgpu_connector_is_dp12_capable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @amdgpu_atombios_dp_needs_link_train(ptr nocapture noundef readonly %amdgpu_connector) local_unnamed_addr #0 align 64 {
entry:
  %link_status = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %link_status) #4
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 7
  %0 = call ptr @memset(ptr %link_status, i32 255, i32 6)
  %1 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %con_priv, align 4
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %amdgpu_connector, i32 0, i32 3
  %3 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %4, i32 0, i32 4
  %call = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %aux, ptr noundef nonnull %link_status) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dp_lane_count = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dp_lane_count, align 4
  %call2 = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %link_status, i32 noundef %6) #4
  %not.call2 = xor i1 %call2, true
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %not.call2, %if.end ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %link_status) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read_link_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_channel_eq_ok(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_dp_set_rx_power_state(ptr nocapture noundef readonly %connector, i8 noundef zeroext %power_state) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con_priv, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp = icmp ugt i8 %3, 16
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %4 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %6 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %power_state, ptr %value.addr.i, align 1
  %call.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux, i32 noundef 1536, ptr noundef nonnull %value.addr.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atombios_dp_link_train(ptr noundef %encoder, ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  %value.addr.i.i97 = alloca i8, align 1
  %value.addr.i.i2.i = alloca i8, align 1
  %value.addr.i.i.i81 = alloca i8, align 1
  %value.addr.i.i.i71 = alloca i8, align 1
  %value.addr.i10.i = alloca i8, align 1
  %value.addr.i8.i = alloca i8, align 1
  %value.addr.i6.i = alloca i8, align 1
  %value.addr.i3.i = alloca i8, align 1
  %value.addr.i1.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  %value.addr.i.i.i = alloca i8, align 1
  %dp_info = alloca %struct.amdgpu_atombios_dp_link_train_info, align 4
  %tmp2 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -8
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %dp_info) #4
  %2 = call ptr @memset(ptr %dp_info, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp2) #4
  %3 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %tmp2, align 1, !annotation !63
  %enc_priv = getelementptr inbounds %struct.amdgpu_encoder, ptr %encoder, i32 0, i32 12
  %4 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enc_priv, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %con_priv = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 7
  %6 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %con_priv, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dp_sink_type = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dp_sink_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dp_sink_type, align 1
  %.off = add i8 %9, -19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %ddc_bus = getelementptr inbounds %struct.amdgpu_connector, ptr %connector, i32 0, i32 3
  %10 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ddc_bus, align 8
  %aux = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %11, i32 0, i32 4
  %call.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux, i32 noundef 2, ptr noundef nonnull %tmp2, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp18 = icmp eq i32 %call.i, 1
  br i1 %cmp18, label %if.then20, label %if.else26

if.then20:                                        ; preds = %if.end16
  %12 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tmp2, align 1
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool22.not = icmp eq i8 %14, 0
  %tp3_supported24 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 5
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %tp3_supported24 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %tp3_supported24, align 4
  br label %if.end28

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %tp3_supported24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %tp3_supported24, align 4
  br label %if.end28

if.else26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %tp3_supported27 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 5
  %17 = ptrtoint ptr %tp3_supported27 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tp3_supported27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.else26, %if.else, %if.then23
  %dpcd = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 6
  %18 = call ptr @memcpy(ptr %dpcd, ptr %7, i32 15)
  %19 = ptrtoint ptr %dp_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %dp_info, align 4
  %encoder32 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 1
  %20 = ptrtoint ptr %encoder32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %encoder, ptr %encoder32, align 4
  %connector33 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 2
  %21 = ptrtoint ptr %connector33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %connector, ptr %connector33, align 4
  %dp_lane_count = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %7, i32 0, i32 4
  %22 = ptrtoint ptr %dp_lane_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dp_lane_count, align 4
  %dp_lane_count34 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 4
  %24 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %dp_lane_count34, align 4
  %dp_clock = getelementptr inbounds %struct.amdgpu_connector_atom_dig, ptr %7, i32 0, i32 3
  %25 = ptrtoint ptr %dp_clock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dp_clock, align 4
  %dp_clock35 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 3
  %27 = ptrtoint ptr %dp_clock35 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %dp_clock35, align 4
  %28 = ptrtoint ptr %ddc_bus to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddc_bus, align 8
  %aux37 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %29, i32 0, i32 4
  %aux38 = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 10
  %30 = ptrtoint ptr %aux38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %aux37, ptr %aux38, align 4
  %31 = ptrtoint ptr %enc_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %enc_priv, align 4
  %33 = ptrtoint ptr %con_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %con_priv, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end28.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge, label %if.end.i.i

if.end28.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_set_rx_power_state.exit.i

if.end.i.i:                                       ; preds = %if.end28
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %36)
  %cmp.i.i = icmp ugt i8 %36, 16
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge

if.end.i.i.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_set_rx_power_state.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i) #4
  %37 = ptrtoint ptr %value.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %value.addr.i.i.i, align 1
  %call.i.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %aux37, i32 noundef 1536, ptr noundef nonnull %value.addr.i.i.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i) #4
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  br label %amdgpu_atombios_dp_set_rx_power_state.exit.i

amdgpu_atombios_dp_set_rx_power_state.exit.i:     ; preds = %if.then3.i.i, %if.end.i.i.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge, %if.end28.amdgpu_atombios_dp_set_rx_power_state.exit.i_crit_edge
  %arrayidx.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i, align 4
  %40 = and i8 %39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aux38, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %amdgpu_atombios_dp_set_rx_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #4
  %43 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %value.addr.i.i, align 1
  %call.i.i = call i32 @drm_dp_dpcd_write(ptr noundef %42, i32 noundef 263, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #4
  br label %if.end.i

if.else.i:                                        ; preds = %amdgpu_atombios_dp_set_rx_power_state.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i1.i) #4
  %44 = ptrtoint ptr %value.addr.i1.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %value.addr.i1.i, align 1
  %call.i2.i = call i32 @drm_dp_dpcd_write(ptr noundef %42, i32 noundef 263, ptr noundef nonnull %value.addr.i1.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i1.i) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %panel_mode.i = getelementptr inbounds %struct.amdgpu_encoder_atom_dig, ptr %32, i32 0, i32 10
  %45 = ptrtoint ptr %panel_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %panel_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.i = icmp eq i32 %46, 1
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i3.i) #4
  %49 = ptrtoint ptr %value.addr.i3.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %value.addr.i3.i, align 1
  %call.i4.i = call i32 @drm_dp_dpcd_write(ptr noundef %48, i32 noundef 266, ptr noundef nonnull %value.addr.i3.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i3.i) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %50 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dp_lane_count34, align 4
  %conv9.i = trunc i32 %51 to i8
  %52 = ptrtoint ptr %dpcd to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dpcd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %53)
  %cmp.i5.i = icmp ugt i8 %53, 16
  br i1 %cmp.i5.i, label %drm_dp_enhanced_frame_cap.exit.i, label %if.end8.i.amdgpu_atombios_dp_link_train_init.exit_crit_edge

if.end8.i.amdgpu_atombios_dp_link_train_init.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_init.exit

drm_dp_enhanced_frame_cap.exit.i:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx2.i.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.i.i = icmp slt i8 %55, 0
  %conv14.i = or i8 %conv9.i, -128
  %spec.select.i = select i1 %tobool.i.i, i8 %conv14.i, i8 %conv9.i
  br label %amdgpu_atombios_dp_link_train_init.exit

amdgpu_atombios_dp_link_train_init.exit:          ; preds = %drm_dp_enhanced_frame_cap.exit.i, %if.end8.i.amdgpu_atombios_dp_link_train_init.exit_crit_edge
  %56 = phi i8 [ %conv9.i, %if.end8.i.amdgpu_atombios_dp_link_train_init.exit_crit_edge ], [ %spec.select.i, %drm_dp_enhanced_frame_cap.exit.i ]
  %57 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i6.i) #4
  %59 = ptrtoint ptr %value.addr.i6.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %value.addr.i6.i, align 1
  %call.i7.i = call i32 @drm_dp_dpcd_write(ptr noundef %58, i32 noundef 257, ptr noundef nonnull %value.addr.i6.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i6.i) #4
  %60 = ptrtoint ptr %dp_clock35 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dp_clock35, align 4
  %call18.i = call zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef %61) #4
  %62 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i8.i) #4
  %64 = ptrtoint ptr %value.addr.i8.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %call18.i, ptr %value.addr.i8.i, align 1
  %call.i9.i = call i32 @drm_dp_dpcd_write(ptr noundef %63, i32 noundef 256, ptr noundef nonnull %value.addr.i8.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i8.i) #4
  %65 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %encoder32, align 4
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %66, i32 noundef 8, i32 noundef 0) #4
  %67 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i10.i) #4
  %69 = ptrtoint ptr %value.addr.i10.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %value.addr.i10.i, align 1
  %call.i11.i = call i32 @drm_dp_dpcd_write(ptr noundef %68, i32 noundef 258, ptr noundef nonnull %value.addr.i10.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i10.i) #4
  %70 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %encoder32, align 4
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %71, i32 noundef 9, i32 noundef 0) #4
  %72 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i71) #4
  %74 = ptrtoint ptr %value.addr.i.i.i71 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %value.addr.i.i.i71, align 1
  %call.i.i.i73 = call i32 @drm_dp_dpcd_write(ptr noundef %73, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i71, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i71) #4
  %train_set.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 7
  %75 = ptrtoint ptr %train_set.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %train_set.i, align 4
  %76 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %encoder32, align 4
  call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %77, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %78 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %aux38, align 4
  %80 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dp_lane_count34, align 4
  %call.i.i74 = call i32 @drm_dp_dpcd_write(ptr noundef %79, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %81) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %82(i32 noundef 85899200) #4
  %tries.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 9
  %83 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %tries.i, align 2
  %84 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %aux38, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %85, ptr noundef %dpcd) #4
  %86 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %aux38, align 4
  %link_status.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 8
  %call101.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %87, ptr noundef %link_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call101.i)
  %cmp102.i = icmp slt i32 %call101.i, 1
  br i1 %cmp102.i, label %amdgpu_atombios_dp_link_train_init.exit.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, label %amdgpu_atombios_dp_link_train_init.exit.if.end.i76_crit_edge

amdgpu_atombios_dp_link_train_init.exit.if.end.i76_crit_edge: ; preds = %amdgpu_atombios_dp_link_train_init.exit
  br label %if.end.i76

amdgpu_atombios_dp_link_train_init.exit.amdgpu_atombios_dp_link_train_cr.exit_crit_edge: ; preds = %amdgpu_atombios_dp_link_train_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_cr.exit

if.end.i76:                                       ; preds = %if.end38.i.if.end.i76_crit_edge, %amdgpu_atombios_dp_link_train_init.exit.if.end.i76_crit_edge
  %voltage.0103.i = phi i32 [ %and24.i, %if.end38.i.if.end.i76_crit_edge ], [ 255, %amdgpu_atombios_dp_link_train_init.exit.if.end.i76_crit_edge ]
  %88 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dp_lane_count34, align 4
  %call6.i = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef %link_status.i, i32 noundef %89) #4
  br i1 %call6.i, label %if.end46, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i76
  %90 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dp_lane_count34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp1096.i = icmp sgt i32 %91, 0
  br i1 %cmp1096.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.097.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i77 = getelementptr %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 7, i32 %i.097.i
  %92 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx.i77, align 1
  %94 = and i8 %93, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %cmp12.i = icmp eq i8 %94, 0
  br i1 %cmp12.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %91
  br i1 %exitcond.not.i, label %for.inc.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_cr.exit

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %i.097.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i, i32 %91)
  %cmp17.i = icmp eq i32 %i.0.lcssa.i, %91
  br i1 %cmp17.i, label %for.end.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, label %if.end20.i

for.end.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_cr.exit

if.end20.i:                                       ; preds = %for.end.i
  %95 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %train_set.i, align 4
  %97 = and i8 %96, 3
  %and24.i = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %voltage.0103.i, i32 %and24.i)
  %cmp26.i = icmp eq i32 %voltage.0103.i, %and24.i
  br i1 %cmp26.i, label %if.then28.i, label %if.else.i78

if.then28.i:                                      ; preds = %if.end20.i
  %98 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %tries.i, align 2
  %inc30.i = add i8 %99, 1
  store i8 %inc30.i, ptr %tries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %inc30.i)
  %cmp33.i = icmp eq i8 %inc30.i, 5
  br i1 %cmp33.i, label %if.then28.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, label %if.then28.i.if.end38.i_crit_edge

if.then28.i.if.end38.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38.i

if.then28.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_cr.exit

if.else.i78:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %100 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %tries.i, align 2
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i78, %if.then28.i.if.end38.i_crit_edge
  call fastcc void @amdgpu_atombios_dp_get_adjust_train(ptr noundef %link_status.i, i32 noundef %91, ptr noundef %train_set.i) #4
  %101 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %encoder32, align 4
  %103 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %train_set.i, align 4
  call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %102, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext %104) #4
  %105 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %aux38, align 4
  %107 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dp_lane_count34, align 4
  %call.i95.i = call i32 @drm_dp_dpcd_write(ptr noundef %106, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %108) #4
  %109 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %aux38, align 4
  call void @drm_dp_link_train_clock_recovery_delay(ptr noundef %110, ptr noundef %dpcd) #4
  %111 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %aux38, align 4
  %call.i79 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %112, ptr noundef %link_status.i) #4
  %cmp.i80 = icmp slt i32 %call.i79, 1
  br i1 %cmp.i80, label %if.end38.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, label %if.end38.i.if.end.i76_crit_edge

if.end38.i.if.end.i76_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i76

if.end38.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %amdgpu_atombios_dp_link_train_cr.exit

amdgpu_atombios_dp_link_train_cr.exit:            ; preds = %if.end38.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, %if.then28.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, %for.end.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, %for.inc.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge, %amdgpu_atombios_dp_link_train_init.exit.amdgpu_atombios_dp_link_train_cr.exit_crit_edge
  %.str.8.sink.i = phi ptr [ @.str.6, %amdgpu_atombios_dp_link_train_init.exit.amdgpu_atombios_dp_link_train_cr.exit_crit_edge ], [ @.str.7, %for.inc.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge ], [ @.str.8, %if.then28.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge ], [ @.str.7, %for.end.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge ], [ @.str.6, %if.end38.i.amdgpu_atombios_dp_link_train_cr.exit_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.8.sink.i) #4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #4
  br label %done

if.end46:                                         ; preds = %if.end.i76
  %113 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %train_set.i, align 4
  %conv53.i = zext i8 %114 to i32
  %and54.i = and i32 %conv53.i, 3
  %and58.i = lshr i32 %conv53.i, 3
  %115 = and i32 %and58.i, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %and54.i, i32 noundef %115) #4
  %tp3_supported.i = getelementptr inbounds %struct.amdgpu_atombios_dp_link_train_info, ptr %dp_info, i32 0, i32 5
  %116 = ptrtoint ptr %tp3_supported.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %tp3_supported.i, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i82 = icmp eq i8 %117, 0
  %118 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %encoder32, align 4
  br i1 %tobool.not.i82, label %if.else.i86, label %if.then.i85

if.then.i85:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %119, i32 noundef 19, i32 noundef 0) #4
  %120 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i.i81) #4
  %122 = ptrtoint ptr %value.addr.i.i.i81 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 3, ptr %value.addr.i.i.i81, align 1
  %call.i.i.i84 = call i32 @drm_dp_dpcd_write(ptr noundef %121, i32 noundef 258, ptr noundef nonnull %value.addr.i.i.i81, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i.i81) #4
  br label %if.end.i90

if.else.i86:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %119, i32 noundef 10, i32 noundef 0) #4
  %123 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i2.i) #4
  %125 = ptrtoint ptr %value.addr.i.i2.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 2, ptr %value.addr.i.i2.i, align 1
  %call.i.i5.i = call i32 @drm_dp_dpcd_write(ptr noundef %124, i32 noundef 258, ptr noundef nonnull %value.addr.i.i2.i, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i2.i) #4
  br label %if.end.i90

if.end.i90:                                       ; preds = %if.else.i86, %if.then.i85
  %126 = ptrtoint ptr %tries.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %tries.i, align 2
  %127 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %aux38, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %128, ptr noundef %dpcd) #4
  %129 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %aux38, align 4
  %call8.i = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %130, ptr noundef %link_status.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 1
  br i1 %cmp9.i, label %if.end.i90.if.then21.i_crit_edge, label %if.end.i90.if.end4.i_crit_edge

if.end.i90.if.end4.i_crit_edge:                   ; preds = %if.end.i90
  br label %if.end4.i

if.end.i90.if.then21.i_crit_edge:                 ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

if.end4.i:                                        ; preds = %if.end14.i.if.end4.i_crit_edge, %if.end.i90.if.end4.i_crit_edge
  %131 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %dp_lane_count34, align 4
  %call7.i = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef %link_status.i, i32 noundef %132) #4
  br i1 %call7.i, label %if.else22.i, label %if.end9.i

if.end9.i:                                        ; preds = %if.end4.i
  %133 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %tries.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %134)
  %cmp11.i = icmp ugt i8 %134, 5
  br i1 %cmp11.i, label %if.end9.i.if.then21.i_crit_edge, label %if.end14.i

if.end9.i.if.then21.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

if.end14.i:                                       ; preds = %if.end9.i
  %135 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %dp_lane_count34, align 4
  call fastcc void @amdgpu_atombios_dp_get_adjust_train(ptr noundef %link_status.i, i32 noundef %136, ptr noundef %train_set.i) #4
  %137 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %encoder32, align 4
  %139 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %train_set.i, align 4
  call void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef %138, i32 noundef 11, i8 noundef zeroext 0, i8 noundef zeroext %140) #4
  %141 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %aux38, align 4
  %143 = ptrtoint ptr %dp_lane_count34 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dp_lane_count34, align 4
  %call.i.i93 = call i32 @drm_dp_dpcd_write(ptr noundef %142, i32 noundef 259, ptr noundef %train_set.i, i32 noundef %144) #4
  %145 = ptrtoint ptr %tries.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %tries.i, align 2
  %inc.i94 = add i8 %146, 1
  store i8 %inc.i94, ptr %tries.i, align 2
  %147 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %aux38, align 4
  call void @drm_dp_link_train_channel_eq_delay(ptr noundef %148, ptr noundef %dpcd) #4
  %149 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %aux38, align 4
  %call.i95 = call i32 @drm_dp_dpcd_read_link_status(ptr noundef %150, ptr noundef %link_status.i) #4
  %cmp.i96 = icmp slt i32 %call.i95, 1
  br i1 %cmp.i96, label %if.end14.i.if.then21.i_crit_edge, label %if.end14.i.if.end4.i_crit_edge

if.end14.i.if.end4.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.end14.i.if.then21.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end14.i.if.then21.i_crit_edge, %if.end9.i.if.then21.i_crit_edge, %if.end.i90.if.then21.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.6, %if.end.i90.if.then21.i_crit_edge ], [ @.str.21, %if.end9.i.if.then21.i_crit_edge ], [ @.str.6, %if.end14.i.if.then21.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.21.sink.i) #4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #4
  br label %done

if.else22.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  %151 = ptrtoint ptr %train_set.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %train_set.i, align 4
  %conv24.i = zext i8 %152 to i32
  %and.i = and i32 %conv24.i, 3
  %and28.i = lshr i32 %conv24.i, 3
  %153 = and i32 %and28.i, 3
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.23, i32 noundef %and.i, i32 noundef %153) #4
  br label %done

done:                                             ; preds = %if.else22.i, %if.then21.i, %amdgpu_atombios_dp_link_train_cr.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 85899200) #4
  %155 = ptrtoint ptr %aux38 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %aux38, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i97) #4
  %157 = ptrtoint ptr %value.addr.i.i97 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %value.addr.i.i97, align 1
  %call.i.i99 = call i32 @drm_dp_dpcd_write(ptr noundef %156, i32 noundef 258, ptr noundef nonnull %value.addr.i.i97, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i97) #4
  %158 = ptrtoint ptr %encoder32 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %encoder32, align 4
  call void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef %159, i32 noundef 11, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp2) #4
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %dp_info) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_atombios_dp_process_aux_ch(ptr noundef %chan, ptr noundef %send, i32 noundef %send_bytes, ptr noundef %recv, i32 noundef %recv_size, ptr nocapture noundef writeonly %ack) unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.aux_channel_transaction, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #4
  %2 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 2
  %3 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 3
  %4 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 5
  %5 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 288252366384267264, ptr %args, align 8
  %mutex = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %chan, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %mode_info = getelementptr i8, ptr %1, i32 21992
  %6 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mode_info, align 8
  %scratch = getelementptr inbounds %struct.atom_context, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch, align 4
  %add.ptr = getelementptr i32, ptr %9, i32 1
  %conv = trunc i32 %send_bytes to i8
  tail call void @amdgpu_atombios_copy_swap(ptr noundef %add.ptr, ptr noundef %send, i8 noundef zeroext %conv, i1 noundef zeroext true) #4
  %i2c_id = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %chan, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %i2c_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %i2c_id, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %2, align 4
  %hpd = getelementptr inbounds %struct.amdgpu_i2c_chan, ptr %chan, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %hpd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hpd, align 4
  %conv5 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv5, ptr %4, align 1
  %16 = ptrtoint ptr %mode_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mode_info, align 8
  %call8 = call i32 @amdgpu_atom_execute_table(ptr noundef %17, i32 noundef 78, ptr noundef nonnull %args) #4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %20 = ptrtoint ptr %ack to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %ack, align 1
  %21 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %19, label %if.end20 [
    i8 1, label %entry.done_crit_edge
    i8 2, label %if.then14
    i8 3, label %if.then19
  ]

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #4
  br label %done

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3) #4
  br label %done

if.end20:                                         ; preds = %entry
  %22 = getelementptr inbounds %struct._PROCESS_AUX_CHANNEL_TRANSACTION_PARAMETERS, ptr %args, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 2
  %conv22 = zext i8 %24 to i32
  %25 = call i32 @llvm.smin.i32(i32 %conv22, i32 %recv_size)
  %tobool.not = icmp eq ptr %recv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recv_size)
  %tobool27.not = icmp eq i32 %recv_size, 0
  %or.cond = or i1 %tobool.not, %tobool27.not
  br i1 %or.cond, label %if.end20.done_crit_edge, label %if.then28

if.end20.done_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr29 = getelementptr i32, ptr %9, i32 5
  %conv30 = trunc i32 %25 to i8
  call void @amdgpu_atombios_copy_swap(ptr noundef nonnull %recv, ptr noundef %add.ptr29, i8 noundef zeroext %conv30, i1 noundef zeroext false) #4
  br label %done

done:                                             ; preds = %if.then28, %if.end20.done_crit_edge, %if.then19, %if.then14, %entry.done_crit_edge
  %r.0 = phi i32 [ -5, %if.then14 ], [ -5, %if.then19 ], [ -110, %entry.done_crit_edge ], [ %25, %if.then28 ], [ %25, %if.end20.done_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #4
  ret i32 %r.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_copy_swap(ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_atom_execute_table(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_connector_get_monitor_bpc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_link_rate_to_bw_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_setup_dig_encoder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_clock_recovery_delay(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @amdgpu_atombios_dp_get_adjust_train(ptr noundef %link_status, i32 noundef %lane_count, ptr nocapture noundef writeonly %train_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lane_count)
  %cmp71 = icmp sgt i32 %lane_count, 0
  br i1 %cmp71, label %entry.for.body_crit_edge, label %entry..thread_crit_edge

entry..thread_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %.thread

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %lane.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.073 = phi i8 [ %7, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %v.072 = phi i8 [ %6, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call = tail call zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef %link_status, i32 noundef %lane.074) #4
  %call1 = tail call zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef %link_status, i32 noundef %lane.074) #4
  %conv = zext i8 %call to i32
  %arrayidx = getelementptr [4 x ptr], ptr @voltage_names, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = lshr i8 %call1, 3
  %3 = zext i8 %2 to i32
  %arrayidx4 = getelementptr [4 x ptr], ptr @pre_emph_names, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %lane.074, ptr noundef %1, ptr noundef %5) #4
  %6 = tail call i8 @llvm.umax.i8(i8 %call, i8 %v.072)
  %7 = tail call i8 @llvm.umax.i8(i8 %call1, i8 %p.073)
  %inc = add nuw nsw i32 %lane.074, 1
  %exitcond.not = icmp eq i32 %inc, %lane_count
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp16 = icmp ugt i8 %6, 2
  %8 = or i8 %6, 4
  %spec.select = select i1 %cmp16, i8 %8, i8 %6
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %7)
  %cmp23 = icmp ugt i8 %7, 23
  %9 = or i8 %7, 32
  %spec.select85 = select i1 %cmp23, i8 %9, i8 %7
  br label %.thread

.thread:                                          ; preds = %for.end, %entry..thread_crit_edge
  %10 = phi i8 [ 0, %entry..thread_crit_edge ], [ %spec.select, %for.end ]
  %11 = phi i8 [ 0, %entry..thread_crit_edge ], [ %spec.select85, %for.end ]
  %12 = and i8 %10, 3
  %and = zext i8 %12 to i32
  %arrayidx32 = getelementptr [4 x ptr], ptr @voltage_names, i32 0, i32 %and
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx32, align 4
  %15 = lshr i8 %11, 3
  %16 = and i8 %15, 3
  %17 = zext i8 %16 to i32
  %arrayidx36 = getelementptr [4 x ptr], ptr @pre_emph_names, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %14, ptr noundef %19) #4
  %or4369 = or i8 %11, %10
  %20 = zext i8 %or4369 to i32
  %21 = call ptr @memset(ptr %train_set, i32 %20, i32 4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_atombios_encoder_setup_dig_transmitter(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_voltage(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_dp_get_adjust_request_pre_emphasis(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_link_train_channel_eq_delay(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 360, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 136, i32 6}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 97, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 104, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 325, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 329, i32 3}
!12 = distinct !{null, !13, !"link_rates", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 258, i32 24}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 619, i32 4}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 633, i32 4}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 640, i32 5}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 655, i32 3}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 658, i32 3}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 214, i32 3}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 231, i32 2}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 44, i32 2}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 44, i32 10}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 44, i32 18}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 44, i32 26}
!36 = !{ptr @voltage_names, !37, !"voltage_names", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 43, i32 14}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 47, i32 2}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 47, i32 9}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 47, i32 18}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 47, i32 25}
!46 = !{ptr @pre_emph_names, !47, !"pre_emph_names", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 46, i32 14}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 695, i32 4}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 708, i32 3}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/atombios_dp.c", i32 711, i32 3}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{i8 0, i8 2}
