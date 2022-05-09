; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, i32, [64 x i8] }
%struct.nv17_tv_norm_params = type { i32, %union.anon }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.drm_display_mode, [38 x i32] }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.filter_params = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.94, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.94 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.122, %struct.anon.123, %struct.anon.125, ptr, %struct.anon.126, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.127, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.133 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.122 = type { ptr, i32, i32, i8 }
%struct.anon.123 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.124] }
%struct.anon.124 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.125 = type { i64, i64 }
%struct.anon.126 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.112 }
%struct.anon.112 = type { ptr, i64 }
%struct.anon.127 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.131 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.97, i8 }
%union.anon.97 = type { %struct.anon.101 }
%struct.anon.101 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.128 = type { i32 }
%struct.anon.129 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.130 = type { i16, i16 }
%struct.anon.131 = type { i16, i16, i16, %struct.anon.132, i16 }
%struct.anon.132 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.133 = type { ptr, %struct.mutex, i8 }
%struct.nv17_tv_state = type { [64 x i8], [4 x [7 x i32]], [4 x [7 x i32]], [4 x [7 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nv17_tv_encoder = type { %struct.nouveau_encoder, %struct.nv17_tv_state, %struct.nv17_tv_state, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.103, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.104, %struct.anon.111, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.anon.103 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.111 = type { i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.113, %struct.anon.114, %struct.anon.115, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.113 = type { i32, i8, i32, i32 }
%struct.anon.114 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.116, i32, i32 }
%union.anon.116 = type { %struct.anon.118 }
%struct.anon.118 = type { i16, i16 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PAL\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-J\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hd480i\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hd480p\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hd576i\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hd576p\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hd720p\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hd1080i\00", [24 x i8] zeroinitializer }, align 32
@nv17_tv_norm_names = dso_local constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [48 x i8] zeroinitializer }, align 32
@nv17_tv_norms = dso_local global { <{ { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params }>, [816 x i8] } { <{ { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, { i32, { %struct.anon, [188 x i8] } }, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params }> <{ { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\E6\EF\E3\00\00\0B\18~Dv2%\00<\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\18\FF\03 \0Fx\00\00\B4\00\15@\10\00\9C\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A2%\00<\00<\00\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"!\F6\94F\00\00\0B\18~D\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\00<\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\C5\04\C5\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\9C\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\002\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\CF\04\CF\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\A4\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 480, i32 59940, [64 x i8] c"!\F0|\1F\00\00\0B\18~DvH\00\002\00<\00\17!\1B\1B$\83\01\00\0F\0F`\05\D3\01\CF\04\CF\01\02\00\0A\05\00\16\FF\03 \0Fx\00\00\B4\00\15\04\10\00\A4\C8\15\05\15<\00\00\00" }, [188 x i8] undef } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 27000, i16 720, i16 735, i16 743, i16 858, i16 0, i16 480, i16 490, i16 494, i16 525, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 55836672, i32 0, i32 0, i32 788, i32 55836730, i32 262144, i32 7275332, i32 403701760, i32 269877252, i32 268828677, i32 268828684, i32 268828704, i32 268828705, i32 336461858, i32 268829186, i32 402784778, i32 403702283, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 112, i32 67043328, i32 87, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2137653223, i32 19661568, i32 8217, i32 1536, i32 839254041, i32 0, i32 0, i32 1024] } } }, { i32, { %struct.anon, [188 x i8] } } { i32 0, { %struct.anon, [188 x i8] } { %struct.anon { i32 720, i32 576, i32 50000, [64 x i8] c"*\09\8A\CB\00\00\0B\18~@\8A5'\004\03>\03\17!\1B\1B$\9C\01\00\0F\0F`\05\D3\03\D3\04\D4\01\02\00\0A\05\00\1A\FF\03\18\0Fx\00\00\B4\00\15I\10\00\9B\BD\15\05\15>\03\00\00" }, [188 x i8] undef } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 27000, i16 720, i16 730, i16 738, i16 864, i16 0, i16 576, i16 581, i16 585, i16 625, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 55836672, i32 0, i32 0, i32 788, i32 55836730, i32 262144, i32 7275332, i32 403701760, i32 268828673, i32 268828681, i32 268828710, i32 268828711, i32 336461864, i32 268829288, i32 403702381, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 268439551, i32 105, i32 67043328, i32 87, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2137653223, i32 19661568, i32 8217, i32 1536, i32 839254041, i32 0, i32 0, i32 1024] } } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 74250, i16 1280, i16 1349, i16 1357, i16 1650, i16 0, i16 720, i16 725, i16 730, i16 750, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1280x720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 19268500, i32 0, i32 0, i32 1570, i32 107675681, i32 393290, i32 18941478, i32 135725056, i32 458756, i32 458774, i32 458775, i32 68091928, i32 459496, i32 135725805, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 4095, i32 0, i32 48496641, i32 88, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2129919943, i32 19661568, i32 -1073733575, i32 1536, i32 839254073, i32 0, i32 0, i32 0] } } }, %struct.nv17_tv_norm_params { i32 1, %union.anon { %struct.anon.0 { %struct.drm_display_mode { i32 74250, i16 1920, i16 1961, i16 2049, i16 2200, i16 0, i16 1080, i16 1084, i16 1088, i16 1125, i16 0, i32 21, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1920x1080\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, [38 x i32] [i32 11273248, i32 72090744, i32 1188, i32 83626088, i32 143917096, i32 393300, i32 15206512, i32 200736768, i32 197591044, i32 458757, i32 458770, i32 458771, i32 68091924, i32 459312, i32 200737330, i32 200737331, i32 29819447, i32 459320, i32 459332, i32 459333, i32 68092486, i32 459874, i32 32965732, i32 0, i32 48496641, i32 88, i32 3014686, i32 39321900, i32 -1599470356, i32 48, i32 -2124480436, i32 19661568, i32 -1073733556, i32 1536, i32 839254092, i32 0, i32 0, i32 0] } } } }>, [816 x i8] zeroinitializer }, align 32
@nv17_tv_modes = dso_local constant { [9 x %struct.drm_display_mode], [240 x i8] } { [9 x %struct.drm_display_mode] [%struct.drm_display_mode { i32 0, i16 320, i16 344, i16 392, i16 560, i16 0, i16 200, i16 200, i16 202, i16 220, i16 0, i32 8234, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"320x200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 320, i16 344, i16 392, i16 560, i16 0, i16 240, i16 240, i16 246, i16 263, i16 0, i32 8234, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"320x240\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 400, i16 432, i16 496, i16 640, i16 0, i16 300, i16 300, i16 303, i16 314, i16 0, i32 8229, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"400x300\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 640, i16 672, i16 768, i16 880, i16 0, i16 480, i16 480, i16 492, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"640x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 720, i16 752, i16 872, i16 960, i16 0, i16 480, i16 480, i16 493, i16 525, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x480\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 720, i16 776, i16 856, i16 960, i16 0, i16 576, i16 576, i16 588, i16 597, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"720x576\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 800, i16 840, i16 920, i16 1040, i16 0, i16 600, i16 600, i16 604, i16 618, i16 0, i32 5, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"800x600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode { i32 0, i16 1024, i16 1064, i16 1200, i16 1344, i16 0, i16 768, i16 768, i16 777, i16 806, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 64, i8 0, %struct.list_head zeroinitializer, [32 x i8] c"1024x768\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0 }, %struct.drm_display_mode zeroinitializer], [240 x i8] zeroinitializer }, align 32
@fparams = internal constant { [2 x [4 x %struct.filter_params]], [256 x i8] } { [2 x [4 x %struct.filter_params]] [[4 x %struct.filter_params] [%struct.filter_params { i64 18102131444972928, i64 -11123025262576764, i64 1853834447538050, i64 562949953, i64 220267397, i64 112393908247, i64 -18732280818, i64 -4294, i64 156165161, i64 1311658936, i64 -218609775, i64 -16, i64 -2253, i64 -11922, i64 1987, i64 0 }, %struct.filter_params { i64 -12544092496372134, i64 -19163167132282440, i64 11206102601952914, i64 -1128522127725660, i64 128128353432, i64 214951611242, i64 -109006342986, i64 10936799211, i64 1754991115, i64 2380831922, i64 -1246921599, i64 125565986, i64 -9492, i64 -23141, i64 10952, i64 -1098 }, %struct.filter_params { i64 -15985877032222604, i64 8768954330853465, i64 -1461487603400973, i64 -844424930, i64 144058060715, i64 -146670135271, i64 24444965278, i64 8589, i64 1462916360, i64 -1493091173, i64 248847318, i64 201, i64 4425, i64 18397, i64 -3066, i64 0 }, %struct.filter_params { i64 14576968672996204, i64 5970582748216768, i64 -5346259709398488, i64 521660389087625, i64 -178115411911, i64 -76346578444, i64 56082914152, i64 -4974559971, i64 -2587645200, i64 -752938653, i64 682095785, i64 -62001795, i64 28723, i64 10237, i64 -6439, i64 541 }], [4 x %struct.filter_params] [%struct.filter_params { i64 19028265464619256, i64 120561080549731, i64 -20074232389050, i64 -3377699720, i64 -14612934734, i64 897648, i64 -395136, i64 42949, i64 -154031552, i64 102530096, i64 -17187536, i64 17498, i64 1551, i64 -4, i64 2, i64 0 }, %struct.filter_params { i64 1901545581990413, i64 1644193292258837, i64 413693343420859, i64 -42124419114609, i64 35618679181, i64 -5123414947, i64 -4070134347, i64 405904474, i64 629592796, i64 172098584, i64 -181584422, i64 18144508, i64 -604, i64 -527, i64 471, i64 -43 }, %struct.filter_params { i64 -4160310212499389, i64 -4515463234688897, i64 752577393431467, i64 0, i64 169831502329, i64 24395641874, i64 -4065942459, i64 0, i64 2566821538, i64 211819717, i64 -35560634, i64 45432, i64 -9760, i64 -219, i64 39, i64 0 }, %struct.filter_params { i64 -7733860784772489, i64 -409539335714563, i64 362133601611931, i64 7134264759708, i64 88851276942, i64 12945044315, i64 -2395672628, i64 -56307021, i64 1006779542, i64 -12386165, i64 90734824, i64 -13368052, i64 -4427, i64 1136, i64 -719, i64 98 }]], [256 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 8, i64 9]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 35, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 36, i32 20 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 37, i32 20 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 38, i32 21 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 39, i32 21 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 40, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 42, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 43, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 44, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 45, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 46, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"nv17_tv_norm_names\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 34, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"nv17_tv_norms\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 51, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"nv17_tv_modes\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 440, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant [8 x i8] c"fparams\00", align 1
@___asan_gen_.58 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 273, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nv17_tv_norm_names, ptr @nv17_tv_norms, ptr @nv17_tv_modes, ptr @fparams], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_norm_names to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_norms to i32), i32 3216, i32 4032, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv17_tv_modes to i32), i32 1008, i32 1248, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fparams to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_tv_state_save(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %nv_read_tv_enc.exit.for.body_crit_edge, %entry
  %i.0184 = phi i32 [ 0, %entry ], [ %inc, %nv_read_tv_enc.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i, !prof !41

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %i.0184) #4, !srcloc !43
  br label %nv_write_ptv.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef 53792, i32 noundef %i.0184) #4
  br label %nv_write_ptv.exit.i

nv_write_ptv.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %6 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i4.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = ptrtoint ptr %map.i4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i4.i, align 8
  %tobool.not.i5.i = icmp eq ptr %9, null
  br i1 %tobool.not.i5.i, label %if.else.i8.i, label %if.then.i.i, !prof !41

if.then.i.i:                                      ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 53796
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_tv_enc.exit

if.else.i8.i:                                     ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i7.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %call8.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i7.i, i32 noundef 4, i64 noundef 53796) #4
  br label %nv_read_tv_enc.exit

nv_read_tv_enc.exit:                              ; preds = %if.else.i8.i, %if.then.i.i
  %_data.0.i.i = phi i32 [ %10, %if.then.i.i ], [ %call8.i.i, %if.else.i8.i ]
  %conv1.i = trunc i32 %_data.0.i.i to i8
  %arrayidx = getelementptr [64 x i8], ptr %state, i32 0, i32 %i.0184
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv1.i, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %nv_read_tv_enc.exit.for.body_crit_edge

nv_read_tv_enc.exit.for.body_crit_edge:           ; preds = %nv_read_tv_enc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %nv_read_tv_enc.exit
  %hfilter = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 1
  tail call fastcc void @tv_save_filter(ptr noundef %dev, i32 noundef 54032, ptr noundef %hfilter)
  %hfilter2 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 2
  tail call fastcc void @tv_save_filter(ptr noundef %dev, i32 noundef 54160, ptr noundef %hfilter2)
  %vfilter = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 3
  tail call fastcc void @tv_save_filter(ptr noundef %dev, i32 noundef 54544, ptr noundef %vfilter)
  %12 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3, i32 0, i32 6
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !41

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %15, i32 53760
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3
  %call8.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef 53760) #4
  br label %nv_read_ptv.exit

nv_read_ptv.exit:                                 ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %16, %if.then.i ], [ %call8.i, %if.else.i ]
  %ptv_200 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 4
  %17 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %_data.0.i, ptr %ptv_200, align 4
  %18 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i55 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = ptrtoint ptr %map.i55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i55, align 8
  %tobool.not.i56 = icmp eq ptr %21, null
  br i1 %tobool.not.i56, label %if.else.i61, label %if.then.i58, !prof !41

if.then.i58:                                      ; preds = %nv_read_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i57 = getelementptr i8, ptr %21, i32 53764
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit63

if.else.i61:                                      ; preds = %nv_read_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i59 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %call8.i60 = tail call i32 @nvif_object_rd(ptr noundef %device1.i59, i32 noundef 4, i64 noundef 53764) #4
  br label %nv_read_ptv.exit63

nv_read_ptv.exit63:                               ; preds = %if.else.i61, %if.then.i58
  %_data.0.i62 = phi i32 [ %22, %if.then.i58 ], [ %call8.i60, %if.else.i61 ]
  %ptv_204 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 5
  %23 = ptrtoint ptr %ptv_204 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %_data.0.i62, ptr %ptv_204, align 4
  %24 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i65 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %map.i65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i65, align 8
  %tobool.not.i66 = icmp eq ptr %27, null
  br i1 %tobool.not.i66, label %if.else.i71, label %if.then.i68, !prof !41

if.then.i68:                                      ; preds = %nv_read_ptv.exit63
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i67 = getelementptr i8, ptr %27, i32 53768
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit73

if.else.i71:                                      ; preds = %nv_read_ptv.exit63
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i69 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %call8.i70 = tail call i32 @nvif_object_rd(ptr noundef %device1.i69, i32 noundef 4, i64 noundef 53768) #4
  br label %nv_read_ptv.exit73

nv_read_ptv.exit73:                               ; preds = %if.else.i71, %if.then.i68
  %_data.0.i72 = phi i32 [ %28, %if.then.i68 ], [ %call8.i70, %if.else.i71 ]
  %ptv_208 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 6
  %29 = ptrtoint ptr %ptv_208 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %_data.0.i72, ptr %ptv_208, align 4
  %30 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i75 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3, i32 0, i32 6
  %32 = ptrtoint ptr %map.i75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map.i75, align 8
  %tobool.not.i76 = icmp eq ptr %33, null
  br i1 %tobool.not.i76, label %if.else.i81, label %if.then.i78, !prof !41

if.then.i78:                                      ; preds = %nv_read_ptv.exit73
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i77 = getelementptr i8, ptr %33, i32 53772
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit83

if.else.i81:                                      ; preds = %nv_read_ptv.exit73
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i79 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 2, i32 3
  %call8.i80 = tail call i32 @nvif_object_rd(ptr noundef %device1.i79, i32 noundef 4, i64 noundef 53772) #4
  br label %nv_read_ptv.exit83

nv_read_ptv.exit83:                               ; preds = %if.else.i81, %if.then.i78
  %_data.0.i82 = phi i32 [ %34, %if.then.i78 ], [ %call8.i80, %if.else.i81 ]
  %ptv_20c = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 7
  %35 = ptrtoint ptr %ptv_20c to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %_data.0.i82, ptr %ptv_20c, align 4
  %36 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i85 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 2, i32 3, i32 0, i32 6
  %38 = ptrtoint ptr %map.i85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map.i85, align 8
  %tobool.not.i86 = icmp eq ptr %39, null
  br i1 %tobool.not.i86, label %if.else.i91, label %if.then.i88, !prof !41

if.then.i88:                                      ; preds = %nv_read_ptv.exit83
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i87 = getelementptr i8, ptr %39, i32 54020
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit93

if.else.i91:                                      ; preds = %nv_read_ptv.exit83
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i89 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 2, i32 3
  %call8.i90 = tail call i32 @nvif_object_rd(ptr noundef %device1.i89, i32 noundef 4, i64 noundef 54020) #4
  br label %nv_read_ptv.exit93

nv_read_ptv.exit93:                               ; preds = %if.else.i91, %if.then.i88
  %_data.0.i92 = phi i32 [ %40, %if.then.i88 ], [ %call8.i90, %if.else.i91 ]
  %ptv_304 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 8
  %41 = ptrtoint ptr %ptv_304 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %_data.0.i92, ptr %ptv_304, align 4
  %42 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i95 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 0, i32 6
  %44 = ptrtoint ptr %map.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i95, align 8
  %tobool.not.i96 = icmp eq ptr %45, null
  br i1 %tobool.not.i96, label %if.else.i101, label %if.then.i98, !prof !41

if.then.i98:                                      ; preds = %nv_read_ptv.exit93
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i97 = getelementptr i8, ptr %45, i32 54528
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit103

if.else.i101:                                     ; preds = %nv_read_ptv.exit93
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i99 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3
  %call8.i100 = tail call i32 @nvif_object_rd(ptr noundef %device1.i99, i32 noundef 4, i64 noundef 54528) #4
  br label %nv_read_ptv.exit103

nv_read_ptv.exit103:                              ; preds = %if.else.i101, %if.then.i98
  %_data.0.i102 = phi i32 [ %46, %if.then.i98 ], [ %call8.i100, %if.else.i101 ]
  %ptv_500 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 9
  %47 = ptrtoint ptr %ptv_500 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %_data.0.i102, ptr %ptv_500, align 4
  %48 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i105 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3, i32 0, i32 6
  %50 = ptrtoint ptr %map.i105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i105, align 8
  %tobool.not.i106 = icmp eq ptr %51, null
  br i1 %tobool.not.i106, label %if.else.i111, label %if.then.i108, !prof !41

if.then.i108:                                     ; preds = %nv_read_ptv.exit103
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i107 = getelementptr i8, ptr %51, i32 54532
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit113

if.else.i111:                                     ; preds = %nv_read_ptv.exit103
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i109 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3
  %call8.i110 = tail call i32 @nvif_object_rd(ptr noundef %device1.i109, i32 noundef 4, i64 noundef 54532) #4
  br label %nv_read_ptv.exit113

nv_read_ptv.exit113:                              ; preds = %if.else.i111, %if.then.i108
  %_data.0.i112 = phi i32 [ %52, %if.then.i108 ], [ %call8.i110, %if.else.i111 ]
  %ptv_504 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 10
  %53 = ptrtoint ptr %ptv_504 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %_data.0.i112, ptr %ptv_504, align 4
  %54 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i115 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 2, i32 3, i32 0, i32 6
  %56 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map.i115, align 8
  %tobool.not.i116 = icmp eq ptr %57, null
  br i1 %tobool.not.i116, label %if.else.i121, label %if.then.i118, !prof !41

if.then.i118:                                     ; preds = %nv_read_ptv.exit113
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i117 = getelementptr i8, ptr %57, i32 54536
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit123

if.else.i121:                                     ; preds = %nv_read_ptv.exit113
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i119 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 2, i32 3
  %call8.i120 = tail call i32 @nvif_object_rd(ptr noundef %device1.i119, i32 noundef 4, i64 noundef 54536) #4
  br label %nv_read_ptv.exit123

nv_read_ptv.exit123:                              ; preds = %if.else.i121, %if.then.i118
  %_data.0.i122 = phi i32 [ %58, %if.then.i118 ], [ %call8.i120, %if.else.i121 ]
  %ptv_508 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 11
  %59 = ptrtoint ptr %ptv_508 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %_data.0.i122, ptr %ptv_508, align 4
  %60 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i125 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3, i32 0, i32 6
  %62 = ptrtoint ptr %map.i125 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map.i125, align 8
  %tobool.not.i126 = icmp eq ptr %63, null
  br i1 %tobool.not.i126, label %if.else.i131, label %if.then.i128, !prof !41

if.then.i128:                                     ; preds = %nv_read_ptv.exit123
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i127 = getelementptr i8, ptr %63, i32 54784
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit133

if.else.i131:                                     ; preds = %nv_read_ptv.exit123
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i129 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3
  %call8.i130 = tail call i32 @nvif_object_rd(ptr noundef %device1.i129, i32 noundef 4, i64 noundef 54784) #4
  br label %nv_read_ptv.exit133

nv_read_ptv.exit133:                              ; preds = %if.else.i131, %if.then.i128
  %_data.0.i132 = phi i32 [ %64, %if.then.i128 ], [ %call8.i130, %if.else.i131 ]
  %ptv_600 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 12
  %65 = ptrtoint ptr %ptv_600 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %_data.0.i132, ptr %ptv_600, align 4
  %66 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i135 = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 2, i32 3, i32 0, i32 6
  %68 = ptrtoint ptr %map.i135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i135, align 8
  %tobool.not.i136 = icmp eq ptr %69, null
  br i1 %tobool.not.i136, label %if.else.i141, label %if.then.i138, !prof !41

if.then.i138:                                     ; preds = %nv_read_ptv.exit133
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i137 = getelementptr i8, ptr %69, i32 54788
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit143

if.else.i141:                                     ; preds = %nv_read_ptv.exit133
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i139 = getelementptr inbounds %struct.nouveau_drm, ptr %67, i32 0, i32 2, i32 3
  %call8.i140 = tail call i32 @nvif_object_rd(ptr noundef %device1.i139, i32 noundef 4, i64 noundef 54788) #4
  br label %nv_read_ptv.exit143

nv_read_ptv.exit143:                              ; preds = %if.else.i141, %if.then.i138
  %_data.0.i142 = phi i32 [ %70, %if.then.i138 ], [ %call8.i140, %if.else.i141 ]
  %ptv_604 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 13
  %71 = ptrtoint ptr %ptv_604 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %_data.0.i142, ptr %ptv_604, align 4
  %72 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i145 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 2, i32 3, i32 0, i32 6
  %74 = ptrtoint ptr %map.i145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i145, align 8
  %tobool.not.i146 = icmp eq ptr %75, null
  br i1 %tobool.not.i146, label %if.else.i151, label %if.then.i148, !prof !41

if.then.i148:                                     ; preds = %nv_read_ptv.exit143
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i147 = getelementptr i8, ptr %75, i32 54792
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit153

if.else.i151:                                     ; preds = %nv_read_ptv.exit143
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i149 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 2, i32 3
  %call8.i150 = tail call i32 @nvif_object_rd(ptr noundef %device1.i149, i32 noundef 4, i64 noundef 54792) #4
  br label %nv_read_ptv.exit153

nv_read_ptv.exit153:                              ; preds = %if.else.i151, %if.then.i148
  %_data.0.i152 = phi i32 [ %76, %if.then.i148 ], [ %call8.i150, %if.else.i151 ]
  %ptv_608 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 14
  %77 = ptrtoint ptr %ptv_608 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %_data.0.i152, ptr %ptv_608, align 4
  %78 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i155 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3, i32 0, i32 6
  %80 = ptrtoint ptr %map.i155 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map.i155, align 8
  %tobool.not.i156 = icmp eq ptr %81, null
  br i1 %tobool.not.i156, label %if.else.i161, label %if.then.i158, !prof !41

if.then.i158:                                     ; preds = %nv_read_ptv.exit153
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i157 = getelementptr i8, ptr %81, i32 54796
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit163

if.else.i161:                                     ; preds = %nv_read_ptv.exit153
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i159 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3
  %call8.i160 = tail call i32 @nvif_object_rd(ptr noundef %device1.i159, i32 noundef 4, i64 noundef 54796) #4
  br label %nv_read_ptv.exit163

nv_read_ptv.exit163:                              ; preds = %if.else.i161, %if.then.i158
  %_data.0.i162 = phi i32 [ %82, %if.then.i158 ], [ %call8.i160, %if.else.i161 ]
  %ptv_60c = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 15
  %83 = ptrtoint ptr %ptv_60c to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %_data.0.i162, ptr %ptv_60c, align 4
  %84 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i165 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 3, i32 0, i32 6
  %86 = ptrtoint ptr %map.i165 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %map.i165, align 8
  %tobool.not.i166 = icmp eq ptr %87, null
  br i1 %tobool.not.i166, label %if.else.i171, label %if.then.i168, !prof !41

if.then.i168:                                     ; preds = %nv_read_ptv.exit163
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i167 = getelementptr i8, ptr %87, i32 54800
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i167) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit173

if.else.i171:                                     ; preds = %nv_read_ptv.exit163
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i169 = getelementptr inbounds %struct.nouveau_drm, ptr %85, i32 0, i32 2, i32 3
  %call8.i170 = tail call i32 @nvif_object_rd(ptr noundef %device1.i169, i32 noundef 4, i64 noundef 54800) #4
  br label %nv_read_ptv.exit173

nv_read_ptv.exit173:                              ; preds = %if.else.i171, %if.then.i168
  %_data.0.i172 = phi i32 [ %88, %if.then.i168 ], [ %call8.i170, %if.else.i171 ]
  %ptv_610 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 16
  %89 = ptrtoint ptr %ptv_610 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %_data.0.i172, ptr %ptv_610, align 4
  %90 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i175 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3, i32 0, i32 6
  %92 = ptrtoint ptr %map.i175 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map.i175, align 8
  %tobool.not.i176 = icmp eq ptr %93, null
  br i1 %tobool.not.i176, label %if.else.i181, label %if.then.i178, !prof !41

if.then.i178:                                     ; preds = %nv_read_ptv.exit173
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i177 = getelementptr i8, ptr %93, i32 54804
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit183

if.else.i181:                                     ; preds = %nv_read_ptv.exit173
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i179 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 2, i32 3
  %call8.i180 = tail call i32 @nvif_object_rd(ptr noundef %device1.i179, i32 noundef 4, i64 noundef 54804) #4
  br label %nv_read_ptv.exit183

nv_read_ptv.exit183:                              ; preds = %if.else.i181, %if.then.i178
  %_data.0.i182 = phi i32 [ %94, %if.then.i178 ], [ %call8.i180, %if.else.i181 ]
  %ptv_614 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 17
  %95 = ptrtoint ptr %ptv_614 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %_data.0.i182, ptr %ptv_614, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tv_save_filter(ptr nocapture noundef readonly %dev, i32 noundef %base, ptr nocapture noundef writeonly %regs) unnamed_addr #0 align 64 {
entry:
  %offsets = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %offsets) #4
  %0 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %offsets, i32 0, i32 3
  %3 = ptrtoint ptr %offsets to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %base, ptr %offsets, align 4
  %add = add i32 %base, 28
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %0, align 4
  %add2 = add i32 %base, 64
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add2, ptr %1, align 4
  %add4 = add i32 %base, 92
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add4, ptr %2, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  br label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %nv_read_ptv.exit.6.for.cond5.preheader_crit_edge, %entry
  %i.024 = phi i32 [ 0, %entry ], [ %inc12, %nv_read_ptv.exit.6.for.cond5.preheader_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr %offsets, i32 0, i32 %i.024
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !41

if.then.i:                                        ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i = getelementptr i8, ptr %12, i32 %8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit

if.else.i:                                        ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %conv.i = zext i32 %8 to i64
  %call8.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i) #4
  br label %nv_read_ptv.exit

nv_read_ptv.exit:                                 ; preds = %if.else.i, %if.then.i
  %_data.0.i = phi i32 [ %13, %if.then.i ], [ %call8.i, %if.else.i ]
  %arrayidx10 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 0
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %_data.0.i, ptr %arrayidx10, align 4
  %add8.1 = add i32 %8, 4
  %15 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.1 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %18, null
  br i1 %tobool.not.i.1, label %if.else.i.1, label %if.then.i.1, !prof !41

if.then.i.1:                                      ; preds = %nv_read_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.1 = getelementptr i8, ptr %18, i32 %add8.1
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.1

if.else.i.1:                                      ; preds = %nv_read_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.1 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 2, i32 3
  %conv.i.1 = zext i32 %add8.1 to i64
  %call8.i.1 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.1, i32 noundef 4, i64 noundef %conv.i.1) #4
  br label %nv_read_ptv.exit.1

nv_read_ptv.exit.1:                               ; preds = %if.else.i.1, %if.then.i.1
  %_data.0.i.1 = phi i32 [ %19, %if.then.i.1 ], [ %call8.i.1, %if.else.i.1 ]
  %arrayidx10.1 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 1
  %20 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %_data.0.i.1, ptr %arrayidx10.1, align 4
  %add8.2 = add i32 %8, 8
  %21 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.2 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 0, i32 6
  %23 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i.2, align 8
  %tobool.not.i.2 = icmp eq ptr %24, null
  br i1 %tobool.not.i.2, label %if.else.i.2, label %if.then.i.2, !prof !41

if.then.i.2:                                      ; preds = %nv_read_ptv.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.2 = getelementptr i8, ptr %24, i32 %add8.2
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.2

if.else.i.2:                                      ; preds = %nv_read_ptv.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.2 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3
  %conv.i.2 = zext i32 %add8.2 to i64
  %call8.i.2 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.2, i32 noundef 4, i64 noundef %conv.i.2) #4
  br label %nv_read_ptv.exit.2

nv_read_ptv.exit.2:                               ; preds = %if.else.i.2, %if.then.i.2
  %_data.0.i.2 = phi i32 [ %25, %if.then.i.2 ], [ %call8.i.2, %if.else.i.2 ]
  %arrayidx10.2 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 2
  %26 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %_data.0.i.2, ptr %arrayidx10.2, align 4
  %add8.3 = add i32 %8, 12
  %27 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.3 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3, i32 0, i32 6
  %29 = ptrtoint ptr %map.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i.3, align 8
  %tobool.not.i.3 = icmp eq ptr %30, null
  br i1 %tobool.not.i.3, label %if.else.i.3, label %if.then.i.3, !prof !41

if.then.i.3:                                      ; preds = %nv_read_ptv.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.3 = getelementptr i8, ptr %30, i32 %add8.3
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.3

if.else.i.3:                                      ; preds = %nv_read_ptv.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.3 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 2, i32 3
  %conv.i.3 = zext i32 %add8.3 to i64
  %call8.i.3 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.3, i32 noundef 4, i64 noundef %conv.i.3) #4
  br label %nv_read_ptv.exit.3

nv_read_ptv.exit.3:                               ; preds = %if.else.i.3, %if.then.i.3
  %_data.0.i.3 = phi i32 [ %31, %if.then.i.3 ], [ %call8.i.3, %if.else.i.3 ]
  %arrayidx10.3 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 3
  %32 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %_data.0.i.3, ptr %arrayidx10.3, align 4
  %add8.4 = add i32 %8, 16
  %33 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.4 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = ptrtoint ptr %map.i.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i.4, align 8
  %tobool.not.i.4 = icmp eq ptr %36, null
  br i1 %tobool.not.i.4, label %if.else.i.4, label %if.then.i.4, !prof !41

if.then.i.4:                                      ; preds = %nv_read_ptv.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.4 = getelementptr i8, ptr %36, i32 %add8.4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.4

if.else.i.4:                                      ; preds = %nv_read_ptv.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.4 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 3
  %conv.i.4 = zext i32 %add8.4 to i64
  %call8.i.4 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.4, i32 noundef 4, i64 noundef %conv.i.4) #4
  br label %nv_read_ptv.exit.4

nv_read_ptv.exit.4:                               ; preds = %if.else.i.4, %if.then.i.4
  %_data.0.i.4 = phi i32 [ %37, %if.then.i.4 ], [ %call8.i.4, %if.else.i.4 ]
  %arrayidx10.4 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 4
  %38 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %_data.0.i.4, ptr %arrayidx10.4, align 4
  %add8.5 = add i32 %8, 20
  %39 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.5 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3, i32 0, i32 6
  %41 = ptrtoint ptr %map.i.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i.5, align 8
  %tobool.not.i.5 = icmp eq ptr %42, null
  br i1 %tobool.not.i.5, label %if.else.i.5, label %if.then.i.5, !prof !41

if.then.i.5:                                      ; preds = %nv_read_ptv.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.5 = getelementptr i8, ptr %42, i32 %add8.5
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.5) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.5

if.else.i.5:                                      ; preds = %nv_read_ptv.exit.4
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.5 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3
  %conv.i.5 = zext i32 %add8.5 to i64
  %call8.i.5 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.5, i32 noundef 4, i64 noundef %conv.i.5) #4
  br label %nv_read_ptv.exit.5

nv_read_ptv.exit.5:                               ; preds = %if.else.i.5, %if.then.i.5
  %_data.0.i.5 = phi i32 [ %43, %if.then.i.5 ], [ %call8.i.5, %if.else.i.5 ]
  %arrayidx10.5 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 5
  %44 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %_data.0.i.5, ptr %arrayidx10.5, align 4
  %add8.6 = add i32 %8, 24
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.6 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %map.i.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i.6, align 8
  %tobool.not.i.6 = icmp eq ptr %48, null
  br i1 %tobool.not.i.6, label %if.else.i.6, label %if.then.i.6, !prof !41

if.then.i.6:                                      ; preds = %nv_read_ptv.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i.6 = getelementptr i8, ptr %48, i32 %add8.6
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.6) #4, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !45
  br label %nv_read_ptv.exit.6

if.else.i.6:                                      ; preds = %nv_read_ptv.exit.5
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.6 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  %conv.i.6 = zext i32 %add8.6 to i64
  %call8.i.6 = tail call i32 @nvif_object_rd(ptr noundef %device1.i.6, i32 noundef 4, i64 noundef %conv.i.6) #4
  br label %nv_read_ptv.exit.6

nv_read_ptv.exit.6:                               ; preds = %if.else.i.6, %if.then.i.6
  %_data.0.i.6 = phi i32 [ %49, %if.then.i.6 ], [ %call8.i.6, %if.else.i.6 ]
  %arrayidx10.6 = getelementptr [7 x i32], ptr %regs, i32 %i.024, i32 6
  %50 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %_data.0.i.6, ptr %arrayidx10.6, align 4
  %inc12 = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc12, 4
  br i1 %exitcond.not, label %for.end13, label %nv_read_ptv.exit.6.for.cond5.preheader_crit_edge

nv_read_ptv.exit.6.for.cond5.preheader_crit_edge: ; preds = %nv_read_ptv.exit.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond5.preheader

for.end13:                                        ; preds = %nv_read_ptv.exit.6
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %offsets) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_tv_state_load(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %nv_write_tv_enc.exit.for.body_crit_edge, %entry
  %i.0176 = phi i32 [ 0, %entry ], [ %inc, %nv_write_tv_enc.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x i8], ptr %state, i32 0, i32 %i.0176
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i, !prof !41

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %i.0176) #4, !srcloc !43
  br label %nv_write_ptv.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef 53792, i32 noundef %i.0176) #4
  br label %nv_write_ptv.exit.i

nv_write_ptv.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %conv1.i = zext i8 %1 to i32
  %8 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i4.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i4.i, align 8
  %tobool.not.i5.i = icmp eq ptr %11, null
  br i1 %tobool.not.i5.i, label %if.else.i9.i, label %do.body.i7.i, !prof !41

do.body.i7.i:                                     ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %12 = ptrtoint ptr %map.i4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i4.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %13, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %conv1.i) #4, !srcloc !43
  br label %nv_write_tv_enc.exit

if.else.i9.i:                                     ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i, i32 noundef 4, i64 noundef 53796, i32 noundef %conv1.i) #4
  br label %nv_write_tv_enc.exit

nv_write_tv_enc.exit:                             ; preds = %if.else.i9.i, %do.body.i7.i
  %inc = add nuw nsw i32 %i.0176, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %nv_write_tv_enc.exit.for.body_crit_edge

nv_write_tv_enc.exit.for.body_crit_edge:          ; preds = %nv_write_tv_enc.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %nv_write_tv_enc.exit
  %hfilter = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 1
  tail call fastcc void @tv_load_filter(ptr noundef %dev, i32 noundef 54032, ptr noundef %hfilter)
  %hfilter2 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 2
  tail call fastcc void @tv_load_filter(ptr noundef %dev, i32 noundef 54160, ptr noundef %hfilter2)
  %vfilter = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 3
  tail call fastcc void @tv_load_filter(ptr noundef %dev, i32 noundef 54544, ptr noundef %vfilter)
  %ptv_200 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 4
  %14 = ptrtoint ptr %ptv_200 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptv_200, align 4
  %16 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 0, i32 6
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i, !prof !41

do.body.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %20 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 53760
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #4, !srcloc !43
  br label %nv_write_ptv.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 53760, i32 noundef %15) #4
  br label %nv_write_ptv.exit

nv_write_ptv.exit:                                ; preds = %if.else.i, %do.body.i
  %ptv_204 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 5
  %22 = ptrtoint ptr %ptv_204 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptv_204, align 4
  %24 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i43 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %26 = ptrtoint ptr %map.i43 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map.i43, align 8
  %tobool.not.i44 = icmp eq ptr %27, null
  br i1 %tobool.not.i44, label %if.else.i48, label %do.body.i46, !prof !41

do.body.i46:                                      ; preds = %nv_write_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %map.i43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i43, align 8
  %add.ptr.i45 = getelementptr i8, ptr %29, i32 53764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %23) #4, !srcloc !43
  br label %nv_write_ptv.exit49

if.else.i48:                                      ; preds = %nv_write_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i47 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i47, i32 noundef 4, i64 noundef 53764, i32 noundef %23) #4
  br label %nv_write_ptv.exit49

nv_write_ptv.exit49:                              ; preds = %if.else.i48, %do.body.i46
  %ptv_208 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 6
  %30 = ptrtoint ptr %ptv_208 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ptv_208, align 4
  %32 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i51 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 6
  %34 = ptrtoint ptr %map.i51 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i51, align 8
  %tobool.not.i52 = icmp eq ptr %35, null
  br i1 %tobool.not.i52, label %if.else.i56, label %do.body.i54, !prof !41

do.body.i54:                                      ; preds = %nv_write_ptv.exit49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %36 = ptrtoint ptr %map.i51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %map.i51, align 8
  %add.ptr.i53 = getelementptr i8, ptr %37, i32 53768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %31) #4, !srcloc !43
  br label %nv_write_ptv.exit57

if.else.i56:                                      ; preds = %nv_write_ptv.exit49
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i55 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i55, i32 noundef 4, i64 noundef 53768, i32 noundef %31) #4
  br label %nv_write_ptv.exit57

nv_write_ptv.exit57:                              ; preds = %if.else.i56, %do.body.i54
  %ptv_20c = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 7
  %38 = ptrtoint ptr %ptv_20c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptv_20c, align 4
  %40 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i59 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3, i32 0, i32 6
  %42 = ptrtoint ptr %map.i59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map.i59, align 8
  %tobool.not.i60 = icmp eq ptr %43, null
  br i1 %tobool.not.i60, label %if.else.i64, label %do.body.i62, !prof !41

do.body.i62:                                      ; preds = %nv_write_ptv.exit57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %44 = ptrtoint ptr %map.i59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %map.i59, align 8
  %add.ptr.i61 = getelementptr i8, ptr %45, i32 53772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %39) #4, !srcloc !43
  br label %nv_write_ptv.exit65

if.else.i64:                                      ; preds = %nv_write_ptv.exit57
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i63 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i63, i32 noundef 4, i64 noundef 53772, i32 noundef %39) #4
  br label %nv_write_ptv.exit65

nv_write_ptv.exit65:                              ; preds = %if.else.i64, %do.body.i62
  %ptv_304 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 8
  %46 = ptrtoint ptr %ptv_304 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptv_304, align 4
  %48 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i67 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3, i32 0, i32 6
  %50 = ptrtoint ptr %map.i67 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map.i67, align 8
  %tobool.not.i68 = icmp eq ptr %51, null
  br i1 %tobool.not.i68, label %if.else.i72, label %do.body.i70, !prof !41

do.body.i70:                                      ; preds = %nv_write_ptv.exit65
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %52 = ptrtoint ptr %map.i67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i67, align 8
  %add.ptr.i69 = getelementptr i8, ptr %53, i32 54020
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %47) #4, !srcloc !43
  br label %nv_write_ptv.exit73

if.else.i72:                                      ; preds = %nv_write_ptv.exit65
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i71 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i71, i32 noundef 4, i64 noundef 54020, i32 noundef %47) #4
  br label %nv_write_ptv.exit73

nv_write_ptv.exit73:                              ; preds = %if.else.i72, %do.body.i70
  %ptv_500 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 9
  %54 = ptrtoint ptr %ptv_500 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ptv_500, align 4
  %56 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i75 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3, i32 0, i32 6
  %58 = ptrtoint ptr %map.i75 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i75, align 8
  %tobool.not.i76 = icmp eq ptr %59, null
  br i1 %tobool.not.i76, label %if.else.i80, label %do.body.i78, !prof !41

do.body.i78:                                      ; preds = %nv_write_ptv.exit73
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %60 = ptrtoint ptr %map.i75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i75, align 8
  %add.ptr.i77 = getelementptr i8, ptr %61, i32 54528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77, i32 %55) #4, !srcloc !43
  br label %nv_write_ptv.exit81

if.else.i80:                                      ; preds = %nv_write_ptv.exit73
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i79 = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i79, i32 noundef 4, i64 noundef 54528, i32 noundef %55) #4
  br label %nv_write_ptv.exit81

nv_write_ptv.exit81:                              ; preds = %if.else.i80, %do.body.i78
  %ptv_504 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 10
  %62 = ptrtoint ptr %ptv_504 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ptv_504, align 4
  %64 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i83 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3, i32 0, i32 6
  %66 = ptrtoint ptr %map.i83 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map.i83, align 8
  %tobool.not.i84 = icmp eq ptr %67, null
  br i1 %tobool.not.i84, label %if.else.i88, label %do.body.i86, !prof !41

do.body.i86:                                      ; preds = %nv_write_ptv.exit81
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %68 = ptrtoint ptr %map.i83 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %map.i83, align 8
  %add.ptr.i85 = getelementptr i8, ptr %69, i32 54532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %63) #4, !srcloc !43
  br label %nv_write_ptv.exit89

if.else.i88:                                      ; preds = %nv_write_ptv.exit81
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i87 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i87, i32 noundef 4, i64 noundef 54532, i32 noundef %63) #4
  br label %nv_write_ptv.exit89

nv_write_ptv.exit89:                              ; preds = %if.else.i88, %do.body.i86
  %ptv_508 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 11
  %70 = ptrtoint ptr %ptv_508 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptv_508, align 4
  %72 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i91 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 2, i32 3, i32 0, i32 6
  %74 = ptrtoint ptr %map.i91 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i91, align 8
  %tobool.not.i92 = icmp eq ptr %75, null
  br i1 %tobool.not.i92, label %if.else.i96, label %do.body.i94, !prof !41

do.body.i94:                                      ; preds = %nv_write_ptv.exit89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %76 = ptrtoint ptr %map.i91 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map.i91, align 8
  %add.ptr.i93 = getelementptr i8, ptr %77, i32 54536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %71) #4, !srcloc !43
  br label %nv_write_ptv.exit97

if.else.i96:                                      ; preds = %nv_write_ptv.exit89
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i95 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i95, i32 noundef 4, i64 noundef 54536, i32 noundef %71) #4
  br label %nv_write_ptv.exit97

nv_write_ptv.exit97:                              ; preds = %if.else.i96, %do.body.i94
  %ptv_600 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 12
  %78 = ptrtoint ptr %ptv_600 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ptv_600, align 4
  %80 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i99 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3, i32 0, i32 6
  %82 = ptrtoint ptr %map.i99 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i99, align 8
  %tobool.not.i100 = icmp eq ptr %83, null
  br i1 %tobool.not.i100, label %if.else.i104, label %do.body.i102, !prof !41

do.body.i102:                                     ; preds = %nv_write_ptv.exit97
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %84 = ptrtoint ptr %map.i99 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map.i99, align 8
  %add.ptr.i101 = getelementptr i8, ptr %85, i32 54784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %79) #4, !srcloc !43
  br label %nv_write_ptv.exit105

if.else.i104:                                     ; preds = %nv_write_ptv.exit97
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i103 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i103, i32 noundef 4, i64 noundef 54784, i32 noundef %79) #4
  br label %nv_write_ptv.exit105

nv_write_ptv.exit105:                             ; preds = %if.else.i104, %do.body.i102
  %ptv_604 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 13
  %86 = ptrtoint ptr %ptv_604 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ptv_604, align 4
  %88 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i107 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3, i32 0, i32 6
  %90 = ptrtoint ptr %map.i107 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map.i107, align 8
  %tobool.not.i108 = icmp eq ptr %91, null
  br i1 %tobool.not.i108, label %if.else.i112, label %do.body.i110, !prof !41

do.body.i110:                                     ; preds = %nv_write_ptv.exit105
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %92 = ptrtoint ptr %map.i107 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %map.i107, align 8
  %add.ptr.i109 = getelementptr i8, ptr %93, i32 54788
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %87) #4, !srcloc !43
  br label %nv_write_ptv.exit113

if.else.i112:                                     ; preds = %nv_write_ptv.exit105
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i111 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i111, i32 noundef 4, i64 noundef 54788, i32 noundef %87) #4
  br label %nv_write_ptv.exit113

nv_write_ptv.exit113:                             ; preds = %if.else.i112, %do.body.i110
  %ptv_608 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 14
  %94 = ptrtoint ptr %ptv_608 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ptv_608, align 4
  %96 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i115 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3, i32 0, i32 6
  %98 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i115, align 8
  %tobool.not.i116 = icmp eq ptr %99, null
  br i1 %tobool.not.i116, label %if.else.i120, label %do.body.i118, !prof !41

do.body.i118:                                     ; preds = %nv_write_ptv.exit113
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %100 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map.i115, align 8
  %add.ptr.i117 = getelementptr i8, ptr %101, i32 54792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %95) #4, !srcloc !43
  br label %nv_write_ptv.exit121

if.else.i120:                                     ; preds = %nv_write_ptv.exit113
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i119 = getelementptr inbounds %struct.nouveau_drm, ptr %97, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i119, i32 noundef 4, i64 noundef 54792, i32 noundef %95) #4
  br label %nv_write_ptv.exit121

nv_write_ptv.exit121:                             ; preds = %if.else.i120, %do.body.i118
  %ptv_60c = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 15
  %102 = ptrtoint ptr %ptv_60c to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ptv_60c, align 4
  %104 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i123 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3, i32 0, i32 6
  %106 = ptrtoint ptr %map.i123 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map.i123, align 8
  %tobool.not.i124 = icmp eq ptr %107, null
  br i1 %tobool.not.i124, label %if.else.i128, label %do.body.i126, !prof !41

do.body.i126:                                     ; preds = %nv_write_ptv.exit121
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %108 = ptrtoint ptr %map.i123 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map.i123, align 8
  %add.ptr.i125 = getelementptr i8, ptr %109, i32 54796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %103) #4, !srcloc !43
  br label %nv_write_ptv.exit129

if.else.i128:                                     ; preds = %nv_write_ptv.exit121
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i127 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i127, i32 noundef 4, i64 noundef 54796, i32 noundef %103) #4
  br label %nv_write_ptv.exit129

nv_write_ptv.exit129:                             ; preds = %if.else.i128, %do.body.i126
  %ptv_610 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 16
  %110 = ptrtoint ptr %ptv_610 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ptv_610, align 4
  %112 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i131 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = ptrtoint ptr %map.i131 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i131, align 8
  %tobool.not.i132 = icmp eq ptr %115, null
  br i1 %tobool.not.i132, label %if.else.i136, label %do.body.i134, !prof !41

do.body.i134:                                     ; preds = %nv_write_ptv.exit129
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %116 = ptrtoint ptr %map.i131 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %map.i131, align 8
  %add.ptr.i133 = getelementptr i8, ptr %117, i32 54800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i133, i32 %111) #4, !srcloc !43
  br label %nv_write_ptv.exit137

if.else.i136:                                     ; preds = %nv_write_ptv.exit129
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i135 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i135, i32 noundef 4, i64 noundef 54800, i32 noundef %111) #4
  br label %nv_write_ptv.exit137

nv_write_ptv.exit137:                             ; preds = %if.else.i136, %do.body.i134
  %ptv_614 = getelementptr inbounds %struct.nv17_tv_state, ptr %state, i32 0, i32 17
  %118 = ptrtoint ptr %ptv_614 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ptv_614, align 4
  %120 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i139 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3, i32 0, i32 6
  %122 = ptrtoint ptr %map.i139 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map.i139, align 8
  %tobool.not.i140 = icmp eq ptr %123, null
  br i1 %tobool.not.i140, label %if.else.i144, label %do.body.i142, !prof !41

do.body.i142:                                     ; preds = %nv_write_ptv.exit137
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %124 = ptrtoint ptr %map.i139 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %map.i139, align 8
  %add.ptr.i141 = getelementptr i8, ptr %125, i32 54804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141, i32 %119) #4, !srcloc !43
  br label %nv_write_ptv.exit145

if.else.i144:                                     ; preds = %nv_write_ptv.exit137
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i143 = getelementptr inbounds %struct.nouveau_drm, ptr %121, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i143, i32 noundef 4, i64 noundef 54804, i32 noundef %119) #4
  br label %nv_write_ptv.exit145

nv_write_ptv.exit145:                             ; preds = %if.else.i144, %do.body.i142
  %126 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i.i147 = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3, i32 0, i32 6
  %128 = ptrtoint ptr %map.i.i147 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map.i.i147, align 8
  %tobool.not.i.i148 = icmp eq ptr %129, null
  br i1 %tobool.not.i.i148, label %if.else.i.i152, label %do.body.i.i150, !prof !41

do.body.i.i150:                                   ; preds = %nv_write_ptv.exit145
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %130 = ptrtoint ptr %map.i.i147 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map.i.i147, align 8
  %add.ptr.i.i149 = getelementptr i8, ptr %131, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149, i32 62) #4, !srcloc !43
  br label %nv_write_ptv.exit.i155

if.else.i.i152:                                   ; preds = %nv_write_ptv.exit145
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i151 = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i151, i32 noundef 4, i64 noundef 53792, i32 noundef 62) #4
  br label %nv_write_ptv.exit.i155

nv_write_ptv.exit.i155:                           ; preds = %if.else.i.i152, %do.body.i.i150
  %132 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i4.i153 = getelementptr inbounds %struct.nouveau_drm, ptr %133, i32 0, i32 2, i32 3, i32 0, i32 6
  %134 = ptrtoint ptr %map.i4.i153 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map.i4.i153, align 8
  %tobool.not.i5.i154 = icmp eq ptr %135, null
  br i1 %tobool.not.i5.i154, label %if.else.i9.i159, label %do.body.i7.i157, !prof !41

do.body.i7.i157:                                  ; preds = %nv_write_ptv.exit.i155
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %136 = ptrtoint ptr %map.i4.i153 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map.i4.i153, align 8
  %add.ptr.i6.i156 = getelementptr i8, ptr %137, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i156, i32 1) #4, !srcloc !43
  br label %nv_write_tv_enc.exit160

if.else.i9.i159:                                  ; preds = %nv_write_ptv.exit.i155
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i158 = getelementptr inbounds %struct.nouveau_drm, ptr %133, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i158, i32 noundef 4, i64 noundef 53796, i32 noundef 1) #4
  br label %nv_write_tv_enc.exit160

nv_write_tv_enc.exit160:                          ; preds = %if.else.i9.i159, %do.body.i7.i157
  %138 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i.i162 = getelementptr inbounds %struct.nouveau_drm, ptr %139, i32 0, i32 2, i32 3, i32 0, i32 6
  %140 = ptrtoint ptr %map.i.i162 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %map.i.i162, align 8
  %tobool.not.i.i163 = icmp eq ptr %141, null
  br i1 %tobool.not.i.i163, label %if.else.i.i167, label %do.body.i.i165, !prof !41

do.body.i.i165:                                   ; preds = %nv_write_tv_enc.exit160
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %142 = ptrtoint ptr %map.i.i162 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %map.i.i162, align 8
  %add.ptr.i.i164 = getelementptr i8, ptr %143, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i164, i32 62) #4, !srcloc !43
  br label %nv_write_ptv.exit.i170

if.else.i.i167:                                   ; preds = %nv_write_tv_enc.exit160
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i166 = getelementptr inbounds %struct.nouveau_drm, ptr %139, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i166, i32 noundef 4, i64 noundef 53792, i32 noundef 62) #4
  br label %nv_write_ptv.exit.i170

nv_write_ptv.exit.i170:                           ; preds = %if.else.i.i167, %do.body.i.i165
  %144 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev_private.i.i.i, align 4
  %map.i4.i168 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3, i32 0, i32 6
  %146 = ptrtoint ptr %map.i4.i168 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %map.i4.i168, align 8
  %tobool.not.i5.i169 = icmp eq ptr %147, null
  br i1 %tobool.not.i5.i169, label %if.else.i9.i174, label %do.body.i7.i172, !prof !41

do.body.i7.i172:                                  ; preds = %nv_write_ptv.exit.i170
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %148 = ptrtoint ptr %map.i4.i168 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %map.i4.i168, align 8
  %add.ptr.i6.i171 = getelementptr i8, ptr %149, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i171, i32 0) #4, !srcloc !43
  br label %nv_write_tv_enc.exit175

if.else.i9.i174:                                  ; preds = %nv_write_ptv.exit.i170
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i173 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i173, i32 noundef 4, i64 noundef 53796, i32 noundef 0) #4
  br label %nv_write_tv_enc.exit175

nv_write_tv_enc.exit175:                          ; preds = %if.else.i9.i174, %do.body.i7.i172
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tv_load_filter(ptr nocapture noundef readonly %dev, i32 noundef %base, ptr nocapture noundef readonly %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %base, 28
  %add2 = add i32 %base, 64
  %add4 = add i32 %base, 92
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  br label %for.body7

for.body7:                                        ; preds = %nv_write_ptv.exit.for.body7_crit_edge, %entry
  %j.023 = phi i32 [ 0, %entry ], [ %inc, %nv_write_ptv.exit.for.body7_crit_edge ]
  %mul = shl i32 %j.023, 2
  %add8 = add i32 %mul, %base
  %arrayidx10 = getelementptr [7 x i32], ptr %regs, i32 0, i32 %j.023
  %0 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx10, align 4
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i, !prof !41

do.body.i:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 %add8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #4, !srcloc !43
  br label %nv_write_ptv.exit

if.else.i:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %conv.i = zext i32 %add8 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %1) #4
  br label %nv_write_ptv.exit

nv_write_ptv.exit:                                ; preds = %if.else.i, %do.body.i
  %inc = add nuw nsw i32 %j.023, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %nv_write_ptv.exit.for.body7.1_crit_edge, label %nv_write_ptv.exit.for.body7_crit_edge

nv_write_ptv.exit.for.body7_crit_edge:            ; preds = %nv_write_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

nv_write_ptv.exit.for.body7.1_crit_edge:          ; preds = %nv_write_ptv.exit
  br label %for.body7.1

for.body7.1:                                      ; preds = %nv_write_ptv.exit.1.for.body7.1_crit_edge, %nv_write_ptv.exit.for.body7.1_crit_edge
  %j.023.1 = phi i32 [ %inc.1, %nv_write_ptv.exit.1.for.body7.1_crit_edge ], [ 0, %nv_write_ptv.exit.for.body7.1_crit_edge ]
  %mul.1 = shl i32 %j.023.1, 2
  %add8.1 = add i32 %add, %mul.1
  %arrayidx10.1 = getelementptr [7 x i32], ptr %regs, i32 1, i32 %j.023.1
  %8 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10.1, align 4
  %10 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.1 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i.1, align 8
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %if.else.i.1, label %do.body.i.1, !prof !41

do.body.i.1:                                      ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %14 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i.1, align 8
  %add.ptr.i.1 = getelementptr i8, ptr %15, i32 %add8.1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %9) #4, !srcloc !43
  br label %nv_write_ptv.exit.1

if.else.i.1:                                      ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.1 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3
  %conv.i.1 = zext i32 %add8.1 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.1, i32 noundef 4, i64 noundef %conv.i.1, i32 noundef %9) #4
  br label %nv_write_ptv.exit.1

nv_write_ptv.exit.1:                              ; preds = %if.else.i.1, %do.body.i.1
  %inc.1 = add nuw nsw i32 %j.023.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 7
  br i1 %exitcond.1.not, label %nv_write_ptv.exit.1.for.body7.2_crit_edge, label %nv_write_ptv.exit.1.for.body7.1_crit_edge

nv_write_ptv.exit.1.for.body7.1_crit_edge:        ; preds = %nv_write_ptv.exit.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.1

nv_write_ptv.exit.1.for.body7.2_crit_edge:        ; preds = %nv_write_ptv.exit.1
  br label %for.body7.2

for.body7.2:                                      ; preds = %nv_write_ptv.exit.2.for.body7.2_crit_edge, %nv_write_ptv.exit.1.for.body7.2_crit_edge
  %j.023.2 = phi i32 [ %inc.2, %nv_write_ptv.exit.2.for.body7.2_crit_edge ], [ 0, %nv_write_ptv.exit.1.for.body7.2_crit_edge ]
  %mul.2 = shl i32 %j.023.2, 2
  %add8.2 = add i32 %add2, %mul.2
  %arrayidx10.2 = getelementptr [7 x i32], ptr %regs, i32 2, i32 %j.023.2
  %16 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx10.2, align 4
  %18 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.2 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map.i.2, align 8
  %tobool.not.i.2 = icmp eq ptr %21, null
  br i1 %tobool.not.i.2, label %if.else.i.2, label %do.body.i.2, !prof !41

do.body.i.2:                                      ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %22 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i.2, align 8
  %add.ptr.i.2 = getelementptr i8, ptr %23, i32 %add8.2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %17) #4, !srcloc !43
  br label %nv_write_ptv.exit.2

if.else.i.2:                                      ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.2 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %conv.i.2 = zext i32 %add8.2 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.2, i32 noundef 4, i64 noundef %conv.i.2, i32 noundef %17) #4
  br label %nv_write_ptv.exit.2

nv_write_ptv.exit.2:                              ; preds = %if.else.i.2, %do.body.i.2
  %inc.2 = add nuw nsw i32 %j.023.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 7
  br i1 %exitcond.2.not, label %nv_write_ptv.exit.2.for.body7.3_crit_edge, label %nv_write_ptv.exit.2.for.body7.2_crit_edge

nv_write_ptv.exit.2.for.body7.2_crit_edge:        ; preds = %nv_write_ptv.exit.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.2

nv_write_ptv.exit.2.for.body7.3_crit_edge:        ; preds = %nv_write_ptv.exit.2
  br label %for.body7.3

for.body7.3:                                      ; preds = %nv_write_ptv.exit.3.for.body7.3_crit_edge, %nv_write_ptv.exit.2.for.body7.3_crit_edge
  %j.023.3 = phi i32 [ %inc.3, %nv_write_ptv.exit.3.for.body7.3_crit_edge ], [ 0, %nv_write_ptv.exit.2.for.body7.3_crit_edge ]
  %mul.3 = shl i32 %j.023.3, 2
  %add8.3 = add i32 %add4, %mul.3
  %arrayidx10.3 = getelementptr [7 x i32], ptr %regs, i32 3, i32 %j.023.3
  %24 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.3, align 4
  %26 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.3 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 0, i32 6
  %28 = ptrtoint ptr %map.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i.3, align 8
  %tobool.not.i.3 = icmp eq ptr %29, null
  br i1 %tobool.not.i.3, label %if.else.i.3, label %do.body.i.3, !prof !41

do.body.i.3:                                      ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %map.i.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i.3, align 8
  %add.ptr.i.3 = getelementptr i8, ptr %31, i32 %add8.3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3, i32 %25) #4, !srcloc !43
  br label %nv_write_ptv.exit.3

if.else.i.3:                                      ; preds = %for.body7.3
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.3 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3
  %conv.i.3 = zext i32 %add8.3 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.3, i32 noundef 4, i64 noundef %conv.i.3, i32 noundef %25) #4
  br label %nv_write_ptv.exit.3

nv_write_ptv.exit.3:                              ; preds = %if.else.i.3, %do.body.i.3
  %inc.3 = add nuw nsw i32 %j.023.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 7
  br i1 %exitcond.3.not, label %for.inc11.3, label %nv_write_ptv.exit.3.for.body7.3_crit_edge

nv_write_ptv.exit.3.for.body7.3_crit_edge:        ; preds = %nv_write_ptv.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.3

for.inc11.3:                                      ; preds = %nv_write_ptv.exit.3
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_tv_update_properties(ptr nocapture noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %tv_norm6 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %2 = ptrtoint ptr %tv_norm6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tv_norm6, align 4
  %select_subconnector = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 9
  %4 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %select_subconnector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %subconnector8 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %subconnector8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %subconnector8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.false ], [ %5, %entry.cond.end_crit_edge ]
  %8 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond, label %cond.end.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb23
    i32 8, label %sw.bb27
    i32 9, label %sw.bb31
  ]

cond.end.sw.epilog_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %ptv_204 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 5
  %pin_mask = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 10
  %9 = ptrtoint ptr %pin_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pin_mask, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %and12 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %. = select i1 %tobool13.not, i32 1114114, i32 1048578
  %.sink = select i1 %tobool9.not, i32 %., i32 65538
  %11 = ptrtoint ptr %ptv_204 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %ptv_204, align 4
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %ptv_20424 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 5
  %12 = ptrtoint ptr %ptv_20424 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 69650, ptr %ptv_20424, align 4
  br label %sw.epilog.sink.split

sw.bb27:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %ptv_20428 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 5
  %13 = ptrtoint ptr %ptv_20428 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1119027, ptr %ptv_20428, align 4
  br label %sw.epilog.sink.split

sw.bb31:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %ptv_20432 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %ptv_20432 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1118226, ptr %ptv_20432, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb
  %.sink149 = phi i8 [ 24, %sw.bb31 ], [ 20, %sw.bb27 ], [ 24, %sw.bb23 ], [ 16, %sw.bb ]
  %arrayidx34 = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %.sink149, ptr %arrayidx34, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end.sw.epilog_crit_edge
  %tv_enc35 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %3, i32 1, i32 0, i32 0, i32 5
  %arrayidx36 = getelementptr [64 x i8], ptr %tv_enc35, i32 0, i32 32
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx36, align 4
  %conv = zext i8 %17 to i32
  %saturation = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 5
  %18 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saturation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %19)
  %cmp.i = icmp slt i32 %19, 50
  %sub1.i = xor i32 %conv, 255
  %cond.i = select i1 %cmp.i, i32 %conv, i32 %sub1.i
  %sub2.i = add i32 %19, -50
  %mul.i = mul i32 %cond.i, %sub2.i
  %div.i = sdiv i32 %mul.i, 50
  %20 = trunc i32 %div.i to i8
  %conv38 = add i8 %17, %20
  %arrayidx40 = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 0, i32 32
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv38, ptr %arrayidx40, align 4
  %arrayidx42 = getelementptr [64 x i8], ptr %tv_enc35, i32 0, i32 34
  %22 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx42, align 2
  %conv43 = zext i8 %23 to i32
  %sub1.i95 = xor i32 %conv43, 255
  %cond.i96 = select i1 %cmp.i, i32 %conv43, i32 %sub1.i95
  %mul.i98 = mul i32 %cond.i96, %sub2.i
  %div.i99 = sdiv i32 %mul.i98, 50
  %24 = trunc i32 %div.i99 to i8
  %conv46 = add i8 %23, %24
  %arrayidx48 = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 0, i32 34
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv46, ptr %arrayidx48, align 2
  %hue = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 6
  %26 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hue, align 4
  %mul = mul i32 %27, 255
  %div = sdiv i32 %mul, 100
  %conv49 = trunc i32 %div to i8
  %arrayidx51 = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 0, i32 37
  %28 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv49, ptr %arrayidx51, align 1
  %ptv_20452 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %ptv_20452 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ptv_20452, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i, !prof !41

do.body.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %35 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %36, i32 53764
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %30) #4, !srcloc !43
  br label %nv_write_ptv.exit

if.else.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 53764, i32 noundef %30) #4
  br label %nv_write_ptv.exit

nv_write_ptv.exit:                                ; preds = %if.else.i, %do.body.i
  %arrayidx54 = getelementptr %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 0, i32 7
  %37 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx54, align 1
  %39 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3, i32 0, i32 6
  %41 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i, !prof !41

do.body.i.i:                                      ; preds = %nv_write_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %43 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 7) #4, !srcloc !43
  br label %nv_write_ptv.exit.i

if.else.i.i:                                      ; preds = %nv_write_ptv.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef 53792, i32 noundef 7) #4
  br label %nv_write_ptv.exit.i

nv_write_ptv.exit.i:                              ; preds = %if.else.i.i, %do.body.i.i
  %conv1.i = zext i8 %38 to i32
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %map.i4.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %map.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i4.i, align 8
  %tobool.not.i5.i = icmp eq ptr %48, null
  br i1 %tobool.not.i5.i, label %if.else.i9.i, label %do.body.i7.i, !prof !41

do.body.i7.i:                                     ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %49 = ptrtoint ptr %map.i4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i4.i, align 8
  %add.ptr.i6.i = getelementptr i8, ptr %50, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %conv1.i) #4, !srcloc !43
  br label %nv_write_tv_enc.exit

if.else.i9.i:                                     ; preds = %nv_write_ptv.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i, i32 noundef 4, i64 noundef 53796, i32 noundef %conv1.i) #4
  br label %nv_write_tv_enc.exit

nv_write_tv_enc.exit:                             ; preds = %if.else.i9.i, %do.body.i7.i
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx40, align 4
  %53 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.i102 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3, i32 0, i32 6
  %55 = ptrtoint ptr %map.i.i102 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map.i.i102, align 8
  %tobool.not.i.i103 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i103, label %if.else.i.i107, label %do.body.i.i105, !prof !41

do.body.i.i105:                                   ; preds = %nv_write_tv_enc.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %57 = ptrtoint ptr %map.i.i102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map.i.i102, align 8
  %add.ptr.i.i104 = getelementptr i8, ptr %58, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i104, i32 32) #4, !srcloc !43
  br label %nv_write_ptv.exit.i111

if.else.i.i107:                                   ; preds = %nv_write_tv_enc.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i106 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i106, i32 noundef 4, i64 noundef 53792, i32 noundef 32) #4
  br label %nv_write_ptv.exit.i111

nv_write_ptv.exit.i111:                           ; preds = %if.else.i.i107, %do.body.i.i105
  %conv1.i108 = zext i8 %52 to i32
  %59 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_private.i.i, align 4
  %map.i4.i109 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %61 = ptrtoint ptr %map.i4.i109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i4.i109, align 8
  %tobool.not.i5.i110 = icmp eq ptr %62, null
  br i1 %tobool.not.i5.i110, label %if.else.i9.i115, label %do.body.i7.i113, !prof !41

do.body.i7.i113:                                  ; preds = %nv_write_ptv.exit.i111
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %63 = ptrtoint ptr %map.i4.i109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i4.i109, align 8
  %add.ptr.i6.i112 = getelementptr i8, ptr %64, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i112, i32 %conv1.i108) #4, !srcloc !43
  br label %nv_write_tv_enc.exit116

if.else.i9.i115:                                  ; preds = %nv_write_ptv.exit.i111
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i114 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i114, i32 noundef 4, i64 noundef 53796, i32 noundef %conv1.i108) #4
  br label %nv_write_tv_enc.exit116

nv_write_tv_enc.exit116:                          ; preds = %if.else.i9.i115, %do.body.i7.i113
  %65 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx48, align 2
  %67 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.i118 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3, i32 0, i32 6
  %69 = ptrtoint ptr %map.i.i118 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map.i.i118, align 8
  %tobool.not.i.i119 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i119, label %if.else.i.i123, label %do.body.i.i121, !prof !41

do.body.i.i121:                                   ; preds = %nv_write_tv_enc.exit116
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %71 = ptrtoint ptr %map.i.i118 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %map.i.i118, align 8
  %add.ptr.i.i120 = getelementptr i8, ptr %72, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i120, i32 34) #4, !srcloc !43
  br label %nv_write_ptv.exit.i127

if.else.i.i123:                                   ; preds = %nv_write_tv_enc.exit116
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i122 = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i122, i32 noundef 4, i64 noundef 53792, i32 noundef 34) #4
  br label %nv_write_ptv.exit.i127

nv_write_ptv.exit.i127:                           ; preds = %if.else.i.i123, %do.body.i.i121
  %conv1.i124 = zext i8 %66 to i32
  %73 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_private.i.i, align 4
  %map.i4.i125 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3, i32 0, i32 6
  %75 = ptrtoint ptr %map.i4.i125 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map.i4.i125, align 8
  %tobool.not.i5.i126 = icmp eq ptr %76, null
  br i1 %tobool.not.i5.i126, label %if.else.i9.i131, label %do.body.i7.i129, !prof !41

do.body.i7.i129:                                  ; preds = %nv_write_ptv.exit.i127
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %77 = ptrtoint ptr %map.i4.i125 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i4.i125, align 8
  %add.ptr.i6.i128 = getelementptr i8, ptr %78, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i128, i32 %conv1.i124) #4, !srcloc !43
  br label %nv_write_tv_enc.exit132

if.else.i9.i131:                                  ; preds = %nv_write_ptv.exit.i127
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i130 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i130, i32 noundef 4, i64 noundef 53796, i32 noundef %conv1.i124) #4
  br label %nv_write_tv_enc.exit132

nv_write_tv_enc.exit132:                          ; preds = %if.else.i9.i131, %do.body.i7.i129
  %79 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx51, align 1
  %81 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev_private.i.i, align 4
  %map.i.i134 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3, i32 0, i32 6
  %83 = ptrtoint ptr %map.i.i134 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %map.i.i134, align 8
  %tobool.not.i.i135 = icmp eq ptr %84, null
  br i1 %tobool.not.i.i135, label %if.else.i.i139, label %do.body.i.i137, !prof !41

do.body.i.i137:                                   ; preds = %nv_write_tv_enc.exit132
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %85 = ptrtoint ptr %map.i.i134 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map.i.i134, align 8
  %add.ptr.i.i136 = getelementptr i8, ptr %86, i32 53792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i136, i32 37) #4, !srcloc !43
  br label %nv_write_ptv.exit.i143

if.else.i.i139:                                   ; preds = %nv_write_tv_enc.exit132
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i.i138 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i138, i32 noundef 4, i64 noundef 53792, i32 noundef 37) #4
  br label %nv_write_ptv.exit.i143

nv_write_ptv.exit.i143:                           ; preds = %if.else.i.i139, %do.body.i.i137
  %conv1.i140 = zext i8 %80 to i32
  %87 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev_private.i.i, align 4
  %map.i4.i141 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 2, i32 3, i32 0, i32 6
  %89 = ptrtoint ptr %map.i4.i141 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %map.i4.i141, align 8
  %tobool.not.i5.i142 = icmp eq ptr %90, null
  br i1 %tobool.not.i5.i142, label %if.else.i9.i147, label %do.body.i7.i145, !prof !41

do.body.i7.i145:                                  ; preds = %nv_write_ptv.exit.i143
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %91 = ptrtoint ptr %map.i4.i141 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %map.i4.i141, align 8
  %add.ptr.i6.i144 = getelementptr i8, ptr %92, i32 53796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i144, i32 %conv1.i140) #4, !srcloc !43
  br label %nv_write_tv_enc.exit148

if.else.i9.i147:                                  ; preds = %nv_write_ptv.exit.i143
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i8.i146 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i8.i146, i32 noundef 4, i64 noundef 53796, i32 noundef %conv1.i140) #4
  br label %nv_write_tv_enc.exit148

nv_write_tv_enc.exit148:                          ; preds = %if.else.i9.i147, %do.body.i7.i145
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_tv_update_rescaler(ptr noundef %encoder) local_unnamed_addr #0 align 64 {
entry:
  %filters.i = alloca [2 x ptr], align 4
  %rs.i = alloca [2 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %overscan = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %overscan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %overscan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %3)
  %cmp.i = icmp slt i32 %3, 50
  %cond.i = select i1 %cmp.i, i32 -31, i32 -32
  %sub2.i = add i32 %3, -50
  %mul.i = mul i32 %cond.i, %sub2.i
  %div.i = sdiv i32 %mul.i, 50
  %add.i = add nsw i32 %div.i, 225
  %shl = shl i32 %add.i, 8
  %or = or i32 %shl, 64
  %ptv_208 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %ptv_208 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %ptv_208, align 4
  %tv_norm5.i = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %5 = ptrtoint ptr %tv_norm5.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tv_norm5.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %7 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %filters.i) #4
  %9 = getelementptr inbounds [2 x ptr], ptr %filters.i, i32 0, i32 1
  %hfilter.i = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %filters.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hfilter.i, ptr %filters.i, align 4
  %vfilter.i = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vfilter.i, ptr %9, align 4
  %flicker10.i = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %flicker10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flicker10.i, align 4
  %sub.i = add i32 %13, -50
  %conv.i = sext i32 %sub.i to i64
  %mul.i16 = mul nsw i64 %conv.i, 167772
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rs.i) #4
  %14 = getelementptr inbounds [2 x i64], ptr %rs.i, i32 0, i32 1
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %hdisplay.i, align 4
  %conv12.i = zext i16 %16 to i64
  %mul13.i = shl nuw nsw i64 %conv12.i, 24
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %8, i32 0, i32 12, i32 6
  %17 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdisplay.i, align 2
  %conv15.i = zext i16 %18 to i64
  %mul16.i = shl nuw nsw i64 %conv15.i, 24
  %19 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %6, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %mul18.i = mul i32 %21, %add.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %16)
  %cmp195.i = icmp ult i16 %16, 256
  br i1 %cmp195.i, label %if.then199.i, label %if.else208.i, !prof !46

if.then199.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv201.i = trunc i64 %mul13.i to i32
  %div205.i = udiv i32 %conv201.i, %mul18.i
  %conv206.i = zext i32 %div205.i to i64
  br label %if.end213.i

if.else208.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul18.i, i64 %mul13.i) #7, !srcloc !47
  %asmresult1.i.i = extractvalue { i64, i64 } %22, 1
  br label %if.end213.i

if.end213.i:                                      ; preds = %if.else208.i, %if.then199.i
  %storemerge = phi i64 [ %asmresult1.i.i, %if.else208.i ], [ %conv206.i, %if.then199.i ]
  %23 = ptrtoint ptr %rs.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %storemerge, ptr %rs.i, align 8
  %vdisplay216.i = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %vdisplay216.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vdisplay216.i, align 4
  %mul217.i = mul i32 %25, %add.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp425.i = icmp ult i16 %18, 256
  br i1 %cmp425.i, label %if.then433.i, label %if.else442.i, !prof !46

if.then433.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv435.i = trunc i64 %mul16.i to i32
  %div439.i = udiv i32 %conv435.i, %mul217.i
  %conv440.i = zext i32 %div439.i to i64
  br label %if.end447.i

if.else442.i:                                     ; preds = %if.end213.i
  call void @__sanitizer_cov_trace_pc() #6
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul217.i, i64 %mul16.i) #7, !srcloc !47
  %asmresult1.i799.i = extractvalue { i64, i64 } %26, 1
  br label %if.end447.i

if.end447.i:                                      ; preds = %if.else442.i, %if.then433.i
  %div416.sink.i = phi i64 [ %asmresult1.i799.i, %if.else442.i ], [ %conv440.i, %if.then433.i ]
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %div416.sink.i, ptr %14, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc549.i.for.body.i_crit_edge, %if.end447.i
  %k.0860.i = phi i32 [ 0, %if.end447.i ], [ %inc550.i, %for.inc549.i.for.body.i_crit_edge ]
  %arrayidx451.i = getelementptr [2 x i64], ptr %rs.i, i32 0, i32 %k.0860.i
  %28 = ptrtoint ptr %arrayidx451.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx451.i, align 8
  %30 = tail call i64 @llvm.smax.i64(i64 %29, i64 65536) #4
  %31 = ptrtoint ptr %arrayidx451.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx451.i, align 8
  %arrayidx543.i = getelementptr [2 x ptr], ptr %filters.i, i32 0, i32 %k.0860.i
  %32 = ptrtoint ptr %arrayidx543.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx543.i, align 4
  br label %for.body463.i

for.body463.i:                                    ; preds = %for.end.i.for.body463.i_crit_edge, %for.body.i
  %j.0859.i = phi i32 [ 0, %for.body.i ], [ %inc547.i, %for.end.i.for.body463.i_crit_edge ]
  %arrayidx465.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i
  %34 = ptrtoint ptr %arrayidx465.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx465.i, align 8
  %ki.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 1
  %36 = ptrtoint ptr %ki.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %ki.i, align 8
  %ki2.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 2
  %38 = ptrtoint ptr %ki2.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %ki2.i, align 8
  %ki3.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 3
  %40 = ptrtoint ptr %ki3.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %ki3.i, align 8
  %kr.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 4
  %42 = ptrtoint ptr %kr.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %kr.i, align 8
  %kir.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 5
  %44 = ptrtoint ptr %kir.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %kir.i, align 8
  %ki2r.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 6
  %46 = ptrtoint ptr %ki2r.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ki2r.i, align 8
  %ki3r.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 7
  %48 = ptrtoint ptr %ki3r.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %ki3r.i, align 8
  %kf.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 8
  %50 = ptrtoint ptr %kf.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %kf.i, align 8
  %kif.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 9
  %52 = ptrtoint ptr %kif.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %kif.i, align 8
  %ki2f.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 10
  %54 = ptrtoint ptr %ki2f.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %ki2f.i, align 8
  %ki3f.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 11
  %56 = ptrtoint ptr %ki3f.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %ki3f.i, align 8
  %krf.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 12
  %58 = ptrtoint ptr %krf.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %krf.i, align 8
  %kirf.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 13
  %60 = ptrtoint ptr %kirf.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %kirf.i, align 8
  %ki2rf.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 14
  %62 = ptrtoint ptr %ki2rf.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %ki2rf.i, align 8
  %ki3rf.i = getelementptr [2 x [4 x %struct.filter_params]], ptr @fparams, i32 0, i32 %k.0860.i, i32 %j.0859.i, i32 15
  %64 = ptrtoint ptr %ki3rf.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ki3rf.i, align 8
  %add502.i = add i64 %35, 140737488355328
  br label %for.body469.i

for.body469.i:                                    ; preds = %for.body469.i.for.body469.i_crit_edge, %for.body463.i
  %i.0858.i = phi i32 [ 0, %for.body463.i ], [ %inc.i, %for.body469.i.for.body469.i_crit_edge ]
  %conv470.i = zext i32 %i.0858.i to i64
  %mul483.i = mul i64 %41, %conv470.i
  %mul498.i = mul i64 %49, %conv470.i
  %reass.add850.i = add i64 %mul498.i, %47
  %reass.mul851.i = mul i64 %reass.add850.i, %conv470.i
  %reass.add838.i = add i64 %reass.mul851.i, %45
  %reass.mul.i = mul i64 %reass.add838.i, %conv470.i
  %add499.i = add i64 %reass.mul.i, %43
  %mul501.i = mul i64 %add499.i, %30
  %mul516.i = mul i64 %57, %conv470.i
  %reass.add852.i = add i64 %mul516.i, %55
  %reass.mul853.i = mul i64 %reass.add852.i, %conv470.i
  %reass.add840.i = add i64 %reass.mul853.i, %53
  %reass.mul841.i = mul i64 %reass.add840.i, %conv470.i
  %add517.i = add i64 %reass.mul841.i, %51
  %mul533.i = mul i64 %65, %conv470.i
  %reass.add854.i = add i64 %mul533.i, %63
  %reass.mul855.i = mul i64 %reass.add854.i, %conv470.i
  %reass.add843.i = add i64 %reass.mul855.i, %61
  %reass.mul844.i = mul i64 %reass.add843.i, %conv470.i
  %add534.i = add i64 %reass.mul844.i, %59
  %mul537.i = mul i64 %add534.i, %30
  %reass.add856.i = add i64 %mul483.i, %39
  %reass.mul857.i = mul i64 %reass.add856.i, %conv470.i
  %reass.add846.i = add i64 %reass.mul857.i, %37
  %reass.mul847.i = mul i64 %reass.add846.i, %conv470.i
  %reass.add848.i = add i64 %add517.i, %mul537.i
  %reass.mul849.i = mul i64 %mul.i16, %reass.add848.i
  %add519.i = add i64 %add502.i, %reass.mul847.i
  %add538.i = add i64 %add519.i, %mul501.i
  %add539.i = add i64 %add538.i, %reass.mul849.i
  %shr540.i = ashr i64 %add539.i, 39
  %66 = trunc i64 %shr540.i to i32
  %conv542.i = and i32 %66, -2147418624
  %arrayidx545.i = getelementptr [4 x [7 x i32]], ptr %33, i32 0, i32 %j.0859.i, i32 %i.0858.i
  %67 = ptrtoint ptr %arrayidx545.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv542.i, ptr %arrayidx545.i, align 4
  %inc.i = add nuw nsw i32 %i.0858.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %for.body469.i.for.body469.i_crit_edge

for.body469.i.for.body469.i_crit_edge:            ; preds = %for.body469.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body469.i

for.end.i:                                        ; preds = %for.body469.i
  %inc547.i = add nuw nsw i32 %j.0859.i, 1
  %exitcond861.not.i = icmp eq i32 %inc547.i, 4
  br i1 %exitcond861.not.i, label %for.inc549.i, label %for.end.i.for.body463.i_crit_edge

for.end.i.for.body463.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body463.i

for.inc549.i:                                     ; preds = %for.end.i
  %inc550.i = add nuw nsw i32 %k.0860.i, 1
  %exitcond862.not.i = icmp eq i32 %inc550.i, 2
  br i1 %exitcond862.not.i, label %tv_setup_filter.exit, label %for.inc549.i.for.body.i_crit_edge

for.inc549.i.for.body.i_crit_edge:                ; preds = %for.inc549.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

tv_setup_filter.exit:                             ; preds = %for.inc549.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rs.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %filters.i) #4
  %68 = ptrtoint ptr %ptv_208 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ptv_208, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %70 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_private.i.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3, i32 0, i32 6
  %72 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i, align 8
  %tobool.not.i20 = icmp eq ptr %73, null
  br i1 %tobool.not.i20, label %if.else.i, label %do.body.i, !prof !41

do.body.i:                                        ; preds = %tv_setup_filter.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %74 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %75, i32 53768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %69) #4, !srcloc !43
  br label %nv_write_ptv.exit

if.else.i:                                        ; preds = %tv_setup_filter.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef 53768, i32 noundef %69) #4
  br label %nv_write_ptv.exit

nv_write_ptv.exit:                                ; preds = %if.else.i, %do.body.i
  tail call fastcc void @tv_load_filter(ptr noundef %1, i32 noundef 54032, ptr noundef %hfilter.i)
  %hfilter2 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 1, i32 2
  tail call fastcc void @tv_load_filter(ptr noundef %1, i32 noundef 54160, ptr noundef %hfilter2)
  tail call fastcc void @tv_load_filter(ptr noundef %1, i32 noundef 54544, ptr noundef %vfilter.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv17_ctv_update_rescaler(ptr nocapture noundef readonly %encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %tv_norm = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 7
  %12 = ptrtoint ptr %tv_norm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tv_norm, align 4
  %14 = getelementptr [12 x %struct.nv17_tv_norm_params], ptr @nv17_tv_norms, i32 0, i32 %13, i32 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %and = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %overscan11 = getelementptr inbounds %struct.nv17_tv_encoder, ptr %encoder, i32 0, i32 3
  %17 = ptrtoint ptr %overscan11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %overscan11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %overscan.0 = phi i32 [ %18, %if.else ], [ 100, %entry.if.end_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %20 to i32
  %hdisplay12 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12, i32 1
  %21 = ptrtoint ptr %hdisplay12 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hdisplay12, align 4
  %conv13 = zext i16 %22 to i32
  %sub = sub nsw i32 %conv, %conv13
  %div = sdiv i32 %sub, 2
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %14, i32 0, i32 6
  %23 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vdisplay, align 2
  %conv14 = zext i16 %24 to i32
  %vdisplay15 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12, i32 6
  %25 = ptrtoint ptr %vdisplay15 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay15, align 2
  %conv16 = zext i16 %26 to i32
  %sub17 = sub nsw i32 %conv14, %conv16
  %div18 = sdiv i32 %sub17, 2
  %div21179 = udiv i16 %20, 20
  %div21.zext = zext i16 %div21179 to i32
  %27 = tail call i32 @llvm.smin.i32(i32 %div, i32 %div21.zext)
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %overscan.0)
  %cmp.i = icmp slt i32 %overscan.0, 50
  %sub1.i = sub nsw i32 %div, %27
  %cond.i = select i1 %cmp.i, i32 %27, i32 %sub1.i
  %sub2.i = add i32 %overscan.0, -50
  %mul.i = mul i32 %cond.i, %sub2.i
  %div.i = sdiv i32 %mul.i, 50
  %add.i = add nsw i32 %div.i, %27
  %28 = udiv i16 %24, 20
  %div27 = zext i16 %28 to i32
  %29 = tail call i32 @llvm.smin.i32(i32 %div18, i32 %div27)
  %sub1.i129 = sub nsw i32 %div18, %29
  %cond.i130 = select i1 %cmp.i, i32 %29, i32 %sub1.i129
  %mul.i132 = mul i32 %cond.i130, %sub2.i
  %div.i133 = sdiv i32 %mul.i132, 50
  %add.i134 = add nsw i32 %div.i133, %29
  %mul = shl nuw nsw i32 %conv13, 11
  %mul40.neg = mul nsw i32 %add.i, -2
  %sub41 = add nsw i32 %mul40.neg, %conv
  %div42 = sdiv i32 %mul, %sub41
  %mul45 = shl nuw nsw i32 %conv16, 11
  %mul48.neg = mul nsw i32 %add.i134, -2
  %sub49 = add nsw i32 %mul48.neg, %conv14
  %div50 = sdiv i32 %mul45, %sub49
  %arrayidx52 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %5, i32 28, i32 5
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add.i, ptr %arrayidx52, align 4
  %31 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hdisplay, align 4
  %conv54 = zext i16 %32 to i32
  %33 = xor i32 %add.i, -1
  %sub56 = add i32 %33, %conv54
  %arrayidx58 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %5, i32 28, i32 6
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub56, ptr %arrayidx58, align 4
  %arrayidx59 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %5, i32 29, i32 5
  %35 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add.i134, ptr %arrayidx59, align 4
  %36 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay, align 2
  %conv61 = zext i16 %37 to i32
  %38 = xor i32 %add.i134, -1
  %sub63 = add i32 %38, %conv61
  %arrayidx65 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %5, i32 29, i32 6
  %39 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub63, ptr %arrayidx65, align 4
  %and51 = shl i32 %div50, 16
  %and66 = and i32 %and51, 268173312
  %and70 = and i32 %div42, 4095
  %or67 = or i32 %and70, %and66
  %or71 = or i32 %or67, 268439552
  %fp_debug_1 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %5, i32 34
  %40 = ptrtoint ptr %fp_debug_1 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or71, ptr %fp_debug_1, align 4
  %41 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_private.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %spec.select.i = select i1 %tobool.not.i, i32 6817844, i32 6826036
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i, label %if.else.i, label %do.body.i, !prof !41

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %45 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 %spec.select.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %add.i) #4, !srcloc !43
  br label %NVWriteRAMDAC.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3
  %conv.i = zext i32 %spec.select.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 4, i64 noundef %conv.i, i32 noundef %add.i) #4
  br label %NVWriteRAMDAC.exit

NVWriteRAMDAC.exit:                               ; preds = %if.else.i, %do.body.i
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx58, align 4
  %49 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i137 = select i1 %tobool.not.i, i32 6817848, i32 6826040
  %map.i138 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 6
  %51 = ptrtoint ptr %map.i138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map.i138, align 8
  %tobool2.not.i139 = icmp eq ptr %52, null
  br i1 %tobool2.not.i139, label %if.else.i144, label %do.body.i141, !prof !41

do.body.i141:                                     ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %53 = ptrtoint ptr %map.i138 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %map.i138, align 8
  %add.ptr.i140 = getelementptr i8, ptr %54, i32 %spec.select.i137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %48) #4, !srcloc !43
  br label %NVWriteRAMDAC.exit145

if.else.i144:                                     ; preds = %NVWriteRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i142 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3
  %conv.i143 = zext i32 %spec.select.i137 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i142, i32 noundef 4, i64 noundef %conv.i143, i32 noundef %48) #4
  br label %NVWriteRAMDAC.exit145

NVWriteRAMDAC.exit145:                            ; preds = %if.else.i144, %do.body.i141
  %55 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx59, align 4
  %57 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i148 = select i1 %tobool.not.i, i32 6817812, i32 6826004
  %map.i149 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 2, i32 3, i32 0, i32 6
  %59 = ptrtoint ptr %map.i149 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %map.i149, align 8
  %tobool2.not.i150 = icmp eq ptr %60, null
  br i1 %tobool2.not.i150, label %if.else.i155, label %do.body.i152, !prof !41

do.body.i152:                                     ; preds = %NVWriteRAMDAC.exit145
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %61 = ptrtoint ptr %map.i149 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %map.i149, align 8
  %add.ptr.i151 = getelementptr i8, ptr %62, i32 %spec.select.i148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %56) #4, !srcloc !43
  br label %NVWriteRAMDAC.exit156

if.else.i155:                                     ; preds = %NVWriteRAMDAC.exit145
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i153 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 2, i32 3
  %conv.i154 = zext i32 %spec.select.i148 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i153, i32 noundef 4, i64 noundef %conv.i154, i32 noundef %56) #4
  br label %NVWriteRAMDAC.exit156

NVWriteRAMDAC.exit156:                            ; preds = %if.else.i155, %do.body.i152
  %63 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx65, align 4
  %65 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i159 = select i1 %tobool.not.i, i32 6817816, i32 6826008
  %map.i160 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 3, i32 0, i32 6
  %67 = ptrtoint ptr %map.i160 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map.i160, align 8
  %tobool2.not.i161 = icmp eq ptr %68, null
  br i1 %tobool2.not.i161, label %if.else.i166, label %do.body.i163, !prof !41

do.body.i163:                                     ; preds = %NVWriteRAMDAC.exit156
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %69 = ptrtoint ptr %map.i160 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map.i160, align 8
  %add.ptr.i162 = getelementptr i8, ptr %70, i32 %spec.select.i159
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %64) #4, !srcloc !43
  br label %NVWriteRAMDAC.exit167

if.else.i166:                                     ; preds = %NVWriteRAMDAC.exit156
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i164 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 3
  %conv.i165 = zext i32 %spec.select.i159 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i164, i32 noundef 4, i64 noundef %conv.i165, i32 noundef %64) #4
  br label %NVWriteRAMDAC.exit167

NVWriteRAMDAC.exit167:                            ; preds = %if.else.i166, %do.body.i163
  %71 = ptrtoint ptr %fp_debug_1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %fp_debug_1, align 4
  %73 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_private.i.i.i, align 4
  %spec.select.i170 = select i1 %tobool.not.i, i32 6817924, i32 6826116
  %map.i171 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3, i32 0, i32 6
  %75 = ptrtoint ptr %map.i171 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map.i171, align 8
  %tobool2.not.i172 = icmp eq ptr %76, null
  br i1 %tobool2.not.i172, label %if.else.i177, label %do.body.i174, !prof !41

do.body.i174:                                     ; preds = %NVWriteRAMDAC.exit167
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  tail call void @arm_heavy_mb() #4
  %77 = ptrtoint ptr %map.i171 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map.i171, align 8
  %add.ptr.i173 = getelementptr i8, ptr %78, i32 %spec.select.i170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i173, i32 %72) #4, !srcloc !43
  br label %NVWriteRAMDAC.exit178

if.else.i177:                                     ; preds = %NVWriteRAMDAC.exit167
  call void @__sanitizer_cov_trace_pc() #6
  %device1.i175 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 2, i32 3
  %conv.i176 = zext i32 %spec.select.i170 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i175, i32 noundef 4, i64 noundef %conv.i176, i32 noundef %72) #4
  br label %NVWriteRAMDAC.exit178

NVWriteRAMDAC.exit178:                            ; preds = %if.else.i177, %do.body.i174
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 35, i32 18}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 36, i32 20}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 37, i32 20}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 38, i32 21}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 39, i32 21}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 40, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 41, i32 21}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 42, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 43, i32 21}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 44, i32 21}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 45, i32 21}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 46, i32 22}
!24 = !{ptr @nv17_tv_norm_names, !25, !"nv17_tv_norm_names", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 34, i32 20}
!26 = !{ptr @nv17_tv_norms, !27, !"nv17_tv_norms", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 51, i32 28}
!28 = !{ptr @nv17_tv_modes, !29, !"nv17_tv_modes", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 440, i32 31}
!30 = !{ptr @fparams, !31, !"fparams", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv04/tvmodesnv17.c", i32 273, i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2157815886}
!43 = !{i64 4506715}
!44 = !{i64 4507133}
!45 = !{i64 2157817221}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2148349504, i64 2148349784, i64 2148350118, i64 2148350452}
!48 = !{i64 2157792966}
