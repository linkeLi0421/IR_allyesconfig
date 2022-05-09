; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/selftests/test-drm_framebuffer.c_pt.bc'
source_filename = "../drivers/gpu/drm/selftests/test-drm_framebuffer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_test = type { i32, %struct.drm_mode_fb_cmd2, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.64, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.70, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.64 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.70 = type { i32, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@createbuffer_tests = internal global { [47 x %struct.drm_framebuffer_test], [1432 x i8] } { [47 x %struct.drm_framebuffer_test] [%struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 2400, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.3 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.4 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16385, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.5 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16383, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.6 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4097, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16388, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.7 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] zeroinitializer, [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.8 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 0, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.9 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 0, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.10 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 0, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.11 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] [i32 -2, i32 0, i32 0, i32 0], [4 x i64] zeroinitializer }, ptr @.str.12 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 0, i32 0, i32 0], [4 x i64] zeroinitializer }, ptr @.str.13 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 0, i32 0, i32 0], [4 x i64] zeroinitializer }, ptr @.str.14 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 0, i32 0, i32 0], [4 x i64] [i64 16, i64 0, i64 0, i64 0] }, ptr @.str.15 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 0, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 0, i32 0, i32 0], [4 x i64] [i64 288230376151711745, i64 0, i64 0, i64 0] }, ptr @.str.16 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 16384, i32 0, i32 0], [4 x i32] [i32 2147483647, i32 0, i32 0, i32 0], [4 x i64] zeroinitializer }, ptr @.str.17 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 875708993, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 16384, i32 16384, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.18 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 600, i32 600, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.19 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.20 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4095, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.21 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 288230376151711745, i64 0, i64 0, i64 0] }, ptr @.str.22 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 2, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 288230376151711745, i64 0, i64 0, i64 0] }, ptr @.str.23 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 2, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 288230376151711745, i64 288230376151711745, i64 0, i64 0] }, ptr @.str.24 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 288230376151711745, i64 288230376151711745, i64 0, i64 0] }, ptr @.str.25 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 2, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 288230376151711745, i64 288230376151711745, i64 288230376151711745, i64 0] }, ptr @.str.26 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094158, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 4096, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.27 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 842094158, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 600, i32 600, i32 600, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.28 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 842094169, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 600, i32 300, i32 300, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.29 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 600, i32 300, i32 300, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.30 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.31 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2047, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.32 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2049, i32 2055, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.33 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2049, i32 2055, i32 0], [4 x i32] [i32 4096, i32 16781312, i32 33558528, i32 0], [4 x i64] zeroinitializer }, ptr @.str.34 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 0, i64 0, i64 0] }, ptr @.str.35 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 0, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 64, i64 0, i64 0] }, ptr @.str.36 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 64, i64 0, i64 0] }, ptr @.str.37 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 64, i64 64, i64 0] }, ptr @.str.38 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 80, i64 64, i64 0] }, ptr @.str.39 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 842094169, i32 2, [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] [i32 4096, i32 2048, i32 2048, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 64, i64 64, i64 64] }, ptr @.str.40 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 600, i32 600, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 1200, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.41 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8192, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.42 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8191, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.43 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.44 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 2, [4 x i32] [i32 1, i32 1, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] zeroinitializer }, ptr @.str.45 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] [i32 0, i32 0, i32 3, i32 0], [4 x i64] zeroinitializer }, ptr @.str.46 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 0, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 0, i64 0, i64 0] }, ptr @.str.47 }, %struct.drm_framebuffer_test { i32 1, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 0, i64 0, i64 0] }, ptr @.str.48 }, %struct.drm_framebuffer_test { i32 0, %struct.drm_mode_fb_cmd2 { i32 0, i32 4096, i32 4096, i32 843853912, i32 2, [4 x i32] [i32 1, i32 0, i32 0, i32 0], [4 x i32] [i32 8193, i32 0, i32 0, i32 0], [4 x i32] zeroinitializer, [4 x i64] [i64 64, i64 64, i64 0, i64 0] }, ptr @.str.49 }], [1432 x i8] zeroinitializer }, align 32
@igt_check_drm_framebuffer_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s/%u: Test %d: \22%s\22 failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"igt_check_drm_framebuffer_create\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/selftests/test-drm_framebuffer.c\00", [47 x i8] zeroinitializer }, align 32
@igt_check_drm_framebuffer_create._entry_ptr = internal global ptr @igt_check_drm_framebuffer_create._entry, section ".printk_index", align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ABGR8888 normal sizes\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ABGR8888 max sizes\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ABGR8888 pitch greater than min required\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ABGR8888 pitch less than min required\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ABGR8888 Invalid width\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ABGR8888 Invalid buffer handle\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"No pixel format\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ABGR8888 Width 0\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ABGR8888 Height 0\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ABGR8888 Out of bound height * pitch combination\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ABGR8888 Large buffer offset\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ABGR8888 Set DRM_MODE_FB_MODIFIERS without modifiers\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ABGR8888 Valid buffer modifier\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"ABGR8888 Invalid buffer modifier(DRM_FORMAT_MOD_SAMSUNG_64_32_TILE)\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"ABGR8888 Extra pitches without DRM_MODE_FB_MODIFIERS\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"ABGR8888 Extra pitches with DRM_MODE_FB_MODIFIERS\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NV12 Normal sizes\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NV12 Max sizes\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NV12 Invalid pitch\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"NV12 Invalid modifier/missing DRM_MODE_FB_MODIFIERS flag\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NV12 different  modifier per-plane\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"NV12 with DRM_FORMAT_MOD_SAMSUNG_64_32_TILE\00", [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"NV12 Valid modifiers without DRM_MODE_FB_MODIFIERS\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NV12 Modifier for inexistent plane\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NV12 Handle for inexistent plane\00", [63 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"NV12 Handle for inexistent plane without DRM_MODE_FB_MODIFIERS\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"YVU420 Normal sizes\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"YVU420 DRM_MODE_FB_MODIFIERS set without modifier\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"YVU420 Max sizes\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"YVU420 Invalid pitch\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"YVU420 Different pitches\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"YVU420 Different buffer offsets/pitches\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"YVU420 Modifier set just for plane 0, without DRM_MODE_FB_MODIFIERS\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"YVU420 Modifier set just for planes 0, 1, without DRM_MODE_FB_MODIFIERS\00", [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"YVU420 Modifier set just for plane 0, 1, with DRM_MODE_FB_MODIFIERS\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"YVU420 Valid modifier\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"YVU420 Different modifiers per plane\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"YVU420 Modifier for inexistent plane\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"X0L2 Normal sizes\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"X0L2 Max sizes\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"X0L2 Invalid pitch\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"X0L2 Pitch greater than minimum required\00", [55 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"X0L2 Handle for inexistent plane\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"X0L2 Offset for inexistent plane, without DRM_MODE_FB_MODIFIERS set\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"X0L2 Modifier without DRM_MODE_FB_MODIFIERS set\00", [48 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"X0L2 Valid modifier\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"X0L2 Modifier for inexistent plane\00", [61 x i8] zeroinitializer }, align 32
@mock_drm_device = internal global { %struct.drm_device, [580 x i8] } { %struct.drm_device { i32 0, %struct.kref zeroinitializer, ptr null, %struct.anon.64 zeroinitializer, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, i32 0, i8 0, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.atomic_t zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, i8 0, ptr null, %struct.spinlock zeroinitializer, %struct.spinlock zeroinitializer, i32 0, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i32 0, %struct.drm_mode_config { %struct.mutex zeroinitializer, %struct.drm_modeset_lock zeroinitializer, ptr null, %struct.mutex zeroinitializer, %struct.idr zeroinitializer, %struct.idr zeroinitializer, %struct.mutex zeroinitializer, i32 0, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, i32 0, %struct.ida zeroinitializer, %struct.list_head zeroinitializer, %struct.llist_head zeroinitializer, %struct.work_struct zeroinitializer, i32 0, %struct.list_head zeroinitializer, i32 0, %struct.list_head zeroinitializer, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 4, i32 4, i32 4096, i32 4096, ptr @mock_config_funcs, i32 0, i8 0, i8 0, i8 0, %struct.delayed_work zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr null, i32 0, i32 0, ptr null, ptr null }, %struct.mutex zeroinitializer, %struct.idr zeroinitializer, ptr null, ptr null, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.mutex zeroinitializer, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, %struct.drm_open_hash zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, i32 0, %struct.atomic_t zeroinitializer, %struct.anon.70 zeroinitializer, ptr null, i32 0, ptr null, i8 0, i32 0 }, [580 x i8] zeroinitializer }, align 32
@mock_config_funcs = internal global { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @fb_create_mock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"createbuffer_tests\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 28, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 345, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 29, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 34, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 39, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 44, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 49, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 54, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 59, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 64, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 69, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 74, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 79, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 84, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 90, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 96, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 103, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 109, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 115, i32 32 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 120, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 125, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 130, i32 32 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 136, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 143, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 150, i32 32 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 157, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 165, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 170, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 175, i32 32 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 181, i32 32 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 186, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 192, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 198, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 204, i32 32 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 211, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 217, i32 32 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 223, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 230, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 237, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 245, i32 32 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 253, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 258, i32 32 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 263, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 268, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 273, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 279, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 285, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 291, i32 32 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 297, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"mock_drm_device\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 320, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant [18 x i8] c"mock_config_funcs\00", align 1
@___asan_gen_.210 = private constant [52 x i8] c"../drivers/gpu/drm/selftests/test-drm_framebuffer.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 316, i32 37 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @igt_check_drm_framebuffer_create._entry, ptr @igt_check_drm_framebuffer_create._entry_ptr, ptr @createbuffer_tests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @mock_drm_device, ptr @mock_config_funcs], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @createbuffer_tests to i32), i32 5640, i32 7072, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @igt_check_drm_framebuffer_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_drm_device to i32), i32 2332, i32 2912, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mock_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @igt_check_drm_framebuffer_create(ptr nocapture noundef readnone %ignored) local_unnamed_addr #0 align 64 {
entry:
  %buffer_created.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.do.body_crit_edge ]
  %arrayidx = getelementptr [47 x %struct.drm_framebuffer_test], ptr @createbuffer_tests, i32 0, i32 %i.014
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 8
  %cmd = getelementptr [47 x %struct.drm_framebuffer_test], ptr @createbuffer_tests, i32 0, i32 %i.014, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer_created.i) #5
  %2 = ptrtoint ptr %buffer_created.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %buffer_created.i, align 4
  store ptr %buffer_created.i, ptr getelementptr inbounds (%struct.drm_device, ptr @mock_drm_device, i32 0, i32 5), align 4
  %call.i = call ptr @drm_internal_framebuffer_create(ptr noundef nonnull @mock_drm_device, ptr noundef %cmd, ptr noundef null) #5
  %3 = ptrtoint ptr %buffer_created.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buffer_created.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer_created.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp2.not = icmp eq i32 %1, %4
  br i1 %cmp2.not, label %for.inc, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr [47 x %struct.drm_framebuffer_test], ptr @createbuffer_tests, i32 0, i32 %i.014, i32 2
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 347, i32 noundef %i.014, ptr noundef %6) #8
  br label %cleanup

for.inc:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 47
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_internal_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @fb_create_mock(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %file_priv, ptr nocapture noundef readnone %mode_cmd) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %1, align 4
  ret ptr inttoptr (i32 -22 to ptr)
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 345, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @igt_check_drm_framebuffer_create._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @igt_check_drm_framebuffer_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 29, i32 32}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 34, i32 32}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 39, i32 32}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 44, i32 32}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 49, i32 32}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 54, i32 32}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 59, i32 32}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 64, i32 32}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 69, i32 32}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 74, i32 32}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 79, i32 32}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 84, i32 32}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 90, i32 32}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 96, i32 32}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 103, i32 32}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 109, i32 32}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 115, i32 32}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 120, i32 32}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 125, i32 32}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 130, i32 32}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 136, i32 32}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 143, i32 32}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 150, i32 32}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 157, i32 32}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 165, i32 32}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 170, i32 32}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 175, i32 32}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 181, i32 32}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 186, i32 32}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 192, i32 32}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 198, i32 32}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 204, i32 32}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 211, i32 32}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 217, i32 32}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 223, i32 32}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 230, i32 32}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 237, i32 32}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 245, i32 32}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 253, i32 32}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 258, i32 32}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 263, i32 32}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 268, i32 32}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 273, i32 32}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 279, i32 32}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 285, i32 32}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 291, i32 32}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 297, i32 32}
!100 = !{ptr @createbuffer_tests, !101, !"createbuffer_tests", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 28, i32 36}
!102 = !{ptr @mock_drm_device, !103, !"mock_drm_device", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 320, i32 26}
!104 = !{ptr @mock_config_funcs, !105, !"mock_config_funcs", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/selftests/test-drm_framebuffer.c", i32 316, i32 37}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
