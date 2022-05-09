; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/udl/udl_main.c_pt.bc'
source_filename = "../drivers/gpu/drm/udl/udl_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.urb_node = type { %struct.list_head, ptr, %struct.delayed_work, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.udl_device = type { %struct.drm_device, ptr, ptr, %struct.drm_simple_display_pipe, %struct.mutex, i32, %struct.urb_list, [1024 x i8], i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.87 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.urb_list = type { %struct.list_head, %struct.spinlock, %struct.semaphore, i32, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - nonzero write bulk status received: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.udl_urb_completion = private unnamed_addr constant [19 x i8] c"udl_urb_completion\00", align 1
@udl_get_urb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016[drm] wait for urb interrupted: %x available: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"udl_get_urb\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/udl/udl_main.c\00", [33 x i8] zeroinitializer }, align 32
@udl_get_urb._entry_ptr = internal global ptr @udl_get_urb._entry, section ".printk_index", align 4
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb_submit_urb error %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@udl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 320, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[drm] buffer sharing not supported\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"udl_init\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@udl_init._entry_ptr = internal global ptr @udl_init._entry, section ".printk_index", align 4
@udl_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&udl->gem_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"firmware not recognized. Assume incompatible device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Selecting channel failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"udl_alloc_urb_list failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@udl_parse_vendor_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016[drm] vendor descriptor length:%x data:%11ph\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"udl_parse_vendor_descriptor\00", [36 x i8] zeroinitializer }, align 32
@udl_parse_vendor_descriptor._entry_ptr = internal global ptr @udl_parse_vendor_descriptor._entry, section ".printk_index", align 4
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DL chip limited to %d pixel modes\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unrecognized vendor firmware descriptor\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@udl_select_std_channel.set_def_chn = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"W\CD\DC\A7\1C\88^\15`\FE\C6\97\16=G\F2", [16 x i8] zeroinitializer }, align 32
@udl_alloc_urb_list.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&udl->urbs.lock\00", [16 x i8] zeroinitializer }, align 32
@udl_alloc_urb_list.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&unode->release_urb_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@udl_alloc_urb_list.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&unode->release_urb_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"allocated %d %d byte urbs\0A\00", [37 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Waiting for completes and freeing all render urbs\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 141, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 274, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 306, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 316, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 320, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 322, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 326, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 331, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 334, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 351, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 46, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 72, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 88, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"set_def_chn\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 100, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 207, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 223, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 258, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 33, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 34, i32 28 }
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 35, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [34 x i8] c"../drivers/gpu/drm/udl/udl_main.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 173, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @udl_get_urb._entry, ptr @udl_get_urb._entry_ptr, ptr @udl_init._entry, ptr @udl_init._entry_ptr, ptr @udl_parse_vendor_descriptor._entry, ptr @udl_parse_vendor_descriptor._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @udl_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @udl_select_std_channel.set_def_chn, ptr @udl_alloc_urb_list.__key, ptr @.str.19, ptr @udl_alloc_urb_list.__key.20, ptr @.str.21, ptr @udl_alloc_urb_list.__key.22, ptr @.str.23, ptr @.str.24, ptr @sema_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_get_urb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_parse_vendor_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_select_std_channel.set_def_chn to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_alloc_urb_list.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_alloc_urb_list.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @udl_alloc_urb_list.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @udl_urb_completion(ptr nocapture noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %dev = getelementptr inbounds %struct.urb_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %status = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then7 [
    i32 0, label %entry.if.end9_crit_edge
    i32 -2, label %entry.if.end9_crit_edge34
    i32 -104, label %entry.if.end9_crit_edge35
    i32 -108, label %entry.if.end9_crit_edge36
  ]

entry.if.end9_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

entry.if.end9_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

entry.if.end9_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.udl_urb_completion, i32 noundef %5) #5
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %entry.if.end9_crit_edge, %entry.if.end9_crit_edge34, %entry.if.end9_crit_edge35, %entry.if.end9_crit_edge36
  %urbs = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6
  %size = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %9 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %transfer_buffer_length, align 4
  %lock = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6, i32 1
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %prev.i = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %urbs) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end9.list_add_tail.exit_crit_edge

if.end9.list_add_tail.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %urbs, ptr %1, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end9.list_add_tail.exit_crit_edge
  %available = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %available, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %available, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #5
  %limit_sem = getelementptr inbounds %struct.udl_device, ptr %3, i32 0, i32 6, i32 2
  tail call void @up(ptr noundef %limit_sem) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @udl_get_urb(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %limit_sem = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 2
  %call = tail call i32 @down_timeout(ptr noundef %limit_sem, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %available = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %available to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %available, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call, i32 noundef %1) #8
  br label %error

if.end:                                           ; preds = %entry
  %urbs = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6
  %lock = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %2 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %urbs, align 4
  %cmp.i.not = icmp eq ptr %3, %urbs
  br i1 %cmp.i.not, label %do.body13, label %do.end21, !prof !69

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/udl/udl_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #5, !srcloc !70
  unreachable

do.end21:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end21.list_del_init.exit_crit_edge

do.end21.list_del_init.exit_crit_edge:            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end21.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  %available25 = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %available25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %available25, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %available25, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %urb31 = getelementptr inbounds %struct.urb_node, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %urb31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %urb31, align 4
  br label %error

error:                                            ; preds = %list_del_init.exit, %do.end
  %urb.0 = phi ptr [ null, %do.end ], [ %15, %list_del_init.exit ]
  ret ptr %urb.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udl_submit_urb(ptr nocapture noundef readonly %dev, ptr noundef %urb, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp = icmp ult i32 %1, %len
  br i1 %cmp, label %do.body2, label %do.end7, !prof !69

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/udl/udl_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #5, !srcloc !71
  unreachable

do.end7:                                          ; preds = %entry
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %2 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %transfer_buffer_length, align 4
  %call = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %do.end7.if.end10_crit_edge, label %if.then9

do.end7.if.end10_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @udl_urb_completion(ptr noundef %urb)
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %call) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.end7.if.end10_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udl_init(ptr noundef %udl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #5
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %udl, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %call = tail call ptr @usb_intf_get_dma_device(ptr noundef %add.ptr) #5
  %dmadev = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 2
  %2 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dmadev, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.do.body4_crit_edge

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.6) #8
  br label %do.body4

do.body4:                                         ; preds = %do.end, %entry.do.body4_crit_edge
  %gem_lock = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %gem_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @udl_init.__key) #5
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 8
  %parent.i.i.i = getelementptr i8, ptr %6, i32 136
  %7 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 256) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body4.err.sink.split_crit_edge, label %if.end.i

do.body4.err.sink.split_crit_edge:                ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

if.end.i:                                         ; preds = %do.body4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 -128
  %call2.i = tail call i32 @usb_get_descriptor(ptr noundef %add.ptr.i.i.i, i8 noundef zeroext 95, i8 noundef zeroext 0, ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #5
  %conv3.i = and i32 %call2.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv3.i)
  %cmp.i = icmp ugt i32 %conv3.i, 5
  br i1 %cmp.i, label %do.end.i, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end.i:                                         ; preds = %if.end.i
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv3.i, ptr noundef nonnull %call7.i.i.i) #8
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i.i, align 8
  %12 = trunc i32 %call2.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %12)
  %cmp10.not.i = icmp eq i8 %11, %12
  br i1 %cmp10.not.i, label %lor.lhs.false.i, label %do.end.i.unrecognized.i_crit_edge

do.end.i.unrecognized.i_crit_edge:                ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unrecognized.i

lor.lhs.false.i:                                  ; preds = %do.end.i
  %arrayidx12.i = getelementptr i8, ptr %call7.i.i.i, i32 1
  %13 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %14)
  %cmp14.not.i = icmp eq i8 %14, 95
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false.i.unrecognized.i_crit_edge

lor.lhs.false.i.unrecognized.i_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unrecognized.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false.i
  %arrayidx17.i = getelementptr i8, ptr %call7.i.i.i, i32 2
  %15 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp19.not.i = icmp eq i8 %16, 1
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false16.i.unrecognized.i_crit_edge

lor.lhs.false16.i.unrecognized.i_crit_edge:       ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unrecognized.i

lor.lhs.false21.i:                                ; preds = %lor.lhs.false16.i
  %arrayidx22.i = getelementptr i8, ptr %call7.i.i.i, i32 3
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp24.not.i = icmp eq i8 %18, 0
  br i1 %cmp24.not.i, label %lor.lhs.false26.i, label %lor.lhs.false21.i.unrecognized.i_crit_edge

lor.lhs.false21.i.unrecognized.i_crit_edge:       ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unrecognized.i

lor.lhs.false26.i:                                ; preds = %lor.lhs.false21.i
  %arrayidx27.i = getelementptr i8, ptr %call7.i.i.i, i32 4
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27.i, align 4
  %conv28.i = zext i8 %20 to i32
  %sub.i = add nsw i32 %conv3.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv28.i)
  %cmp30.not.i = icmp eq i32 %sub.i, %conv28.i
  br i1 %cmp30.not.i, label %if.end33.i, label %lor.lhs.false26.i.unrecognized.i_crit_edge

lor.lhs.false26.i.unrecognized.i_crit_edge:       ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %unrecognized.i

if.end33.i:                                       ; preds = %lor.lhs.false26.i
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 %conv3.i
  %add.ptr35.i = getelementptr i8, ptr %call7.i.i.i, i32 5
  %cmp3670.i = icmp ult ptr %add.ptr35.i, %add.ptr.i
  br i1 %cmp3670.i, label %while.body.lr.ph.i, label %if.end33.i.if.end10_crit_edge

if.end33.i.if.end10_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

while.body.lr.ph.i:                               ; preds = %if.end33.i
  %sku_pixel_limit.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 5
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %desc.071.i = phi ptr [ %add.ptr35.i, %while.body.lr.ph.i ], [ %add.ptr41.i, %sw.epilog.i.while.body.i_crit_edge ]
  %21 = ptrtoint ptr %desc.071.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %desc.071.i, align 2
  %add.ptr38.i = getelementptr i8, ptr %desc.071.i, i32 2
  %23 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr38.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %desc.071.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cond.i = icmp eq i16 %22, 2
  br i1 %cond.i, label %sw.bb.i, label %while.body.i.sw.epilog.i_crit_edge

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %incdec.ptr.i, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.17, i32 noundef %27) #5
  %28 = ptrtoint ptr %sku_pixel_limit.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sku_pixel_limit.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %conv40.i = zext i8 %24 to i32
  %add.ptr41.i = getelementptr i8, ptr %incdec.ptr.i, i32 %conv40.i
  %cmp36.i = icmp ult ptr %add.ptr41.i, %add.ptr.i
  br i1 %cmp36.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.if.end10_crit_edge

sw.epilog.i.if.end10_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

unrecognized.i:                                   ; preds = %lor.lhs.false26.i.unrecognized.i_crit_edge, %lor.lhs.false21.i.unrecognized.i_crit_edge, %lor.lhs.false16.i.unrecognized.i_crit_edge, %lor.lhs.false.i.unrecognized.i_crit_edge, %do.end.i.unrecognized.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #5
  br label %if.end10

if.end10:                                         ; preds = %unrecognized.i, %sw.epilog.i.if.end10_crit_edge, %if.end33.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 8
  %parent.i.i.i43 = getelementptr i8, ptr %30, i32 136
  %31 = ptrtoint ptr %parent.i.i.i43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i.i.i43, align 8
  %call1.i = tail call ptr @kmemdup(ptr noundef nonnull @udl_select_std_channel.set_def_chn, i32 noundef 16, i32 noundef 3264) #5
  %tobool.not.i44 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i44, label %if.end10.if.then13_crit_edge, label %udl_select_std_channel.exit

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

udl_select_std_channel.exit:                      ; preds = %if.end10
  %add.ptr.i.i.i45 = getelementptr i8, ptr %32, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i.i45, align 8
  %shl.i.i = shl i32 %34, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call3.i = tail call i32 @usb_control_msg(ptr noundef %add.ptr.i.i.i45, i32 noundef %or.i, i8 noundef zeroext 18, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %call1.i, i16 noundef zeroext 16, i32 noundef 5000) #5
  tail call void @kfree(ptr noundef nonnull %call1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %tobool12.not = icmp sgt i32 %call3.i, -1
  br i1 %tobool12.not, label %udl_select_std_channel.exit.if.end14_crit_edge, label %udl_select_std_channel.exit.if.then13_crit_edge

udl_select_std_channel.exit.if.then13_crit_edge:  ; preds = %udl_select_std_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

udl_select_std_channel.exit.if.end14_crit_edge:   ; preds = %udl_select_std_channel.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %udl_select_std_channel.exit.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %udl_select_std_channel.exit.if.end14_crit_edge
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 8
  %parent.i.i.i49 = getelementptr i8, ptr %36, i32 136
  %37 = ptrtoint ptr %parent.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent.i.i.i49, align 8
  %add.ptr.i.i.i50 = getelementptr i8, ptr %38, i32 -128
  %urbs.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @udl_alloc_urb_list.__key, i16 noundef signext 3) #5
  %size3.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 5
  %prev.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 0, i32 1
  %limit_sem.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2
  %wait_list1.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 2
  %.compoundliteral.sroa.2.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 1
  %.compoundliteral.sroa.3.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 2
  %.compoundliteral.sroa.4.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 3
  %.compoundliteral.sroa.5.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 4
  %.compoundliteral.sroa.6.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 4, i32 2
  %.compoundliteral.sroa.7.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 4, i32 3
  %.compoundliteral.sroa.75.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 4, i32 4
  %.compoundliteral.sroa.8.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 0, i32 4, i32 5
  %.compoundliteral.sroa.10.0..sroa_idx.i.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 2, i32 2, i32 1
  %count7.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 4
  %available.i = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 3
  br label %while.body.preheader.i

while.body.preheader.i:                           ; preds = %if.then42.i, %if.end14
  %size.addr.0.i = phi i32 [ 65024, %if.end14 ], [ %div1.i, %if.then42.i ]
  %39 = ptrtoint ptr %size3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %size.addr.0.i, ptr %size3.i, align 4
  %40 = ptrtoint ptr %urbs.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %urbs.i, ptr %urbs.i, align 4
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %urbs.i, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %limit_sem.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %limit_sem.i, align 4
  %43 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i.i, align 4
  %44 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i.i, align 4
  %45 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i.i, align 4
  %46 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i.i, i32 0, i32 12)
  %47 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.25, ptr %.compoundliteral.sroa.6.0..sroa_idx.i.i, align 4
  %48 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i.i, align 4
  %49 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i.i, align 1
  %50 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i.i, i32 0, i32 14)
  %51 = ptrtoint ptr %wait_list1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %wait_list1.i.i, ptr %wait_list1.i.i, align 4
  %52 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %wait_list1.i.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %53 = ptrtoint ptr %count7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %count7.i, align 8
  %54 = ptrtoint ptr %available.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %available.i, align 4
  br label %while.body.i53

while.body.i53:                                   ; preds = %list_add_tail.exit.i.while.body.i53_crit_edge, %while.body.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 116) #9
  %tobool.not.i52 = icmp eq ptr %call7.i.i.i51, null
  br i1 %tobool.not.i52, label %while.body.i53.udl_alloc_urb_list.exit_crit_edge, label %if.end.i54

while.body.i53.udl_alloc_urb_list.exit_crit_edge: ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_alloc_urb_list.exit

if.end.i54:                                       ; preds = %while.body.i53
  %dev13.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 1
  %56 = ptrtoint ptr %dev13.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %udl, ptr %dev13.i, align 8
  %release_urb_work.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2
  tail call void @__init_work(ptr noundef %release_urb_work.i, i32 noundef 0) #5
  %57 = ptrtoint ptr %release_urb_work.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %release_urb_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @udl_alloc_urb_list.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry22.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2, i32 0, i32 1
  %58 = ptrtoint ptr %entry22.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry22.i, ptr %entry22.i, align 8
  %prev.i2.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry22.i, ptr %prev.i2.i, align 4
  %func.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2, i32 0, i32 2
  %60 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @udl_release_urb_work, ptr %func.i, align 8
  %timer.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @udl_alloc_urb_list.__key.22) #5
  %call33.i = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #5
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.then35.i, label %if.end36.i

if.then35.i:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i51) #5
  br label %udl_alloc_urb_list.exit

if.end36.i:                                       ; preds = %if.end.i54
  %urb37.i = getelementptr inbounds %struct.urb_node, ptr %call7.i.i.i51, i32 0, i32 3
  %61 = ptrtoint ptr %urb37.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call33.i, ptr %urb37.i, align 8
  %transfer_dma.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 15
  %call38.i = tail call ptr @usb_alloc_coherent(ptr noundef %add.ptr.i.i.i50, i32 noundef %size.addr.0.i, i32 noundef 3264, ptr noundef %transfer_dma.i) #5
  %tobool39.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool39.not.i, label %if.then40.i, label %if.end44.i

if.then40.i:                                      ; preds = %if.end36.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i51) #5
  tail call void @usb_free_urb(ptr noundef nonnull %call33.i) #5
  %cmp41.i = icmp ugt i32 %size.addr.0.i, 4096
  br i1 %cmp41.i, label %if.then42.i, label %if.then40.i.udl_alloc_urb_list.exit_crit_edge

if.then40.i.udl_alloc_urb_list.exit_crit_edge:    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_alloc_urb_list.exit

if.then42.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  %div1.i = lshr i32 %size.addr.0.i, 1
  tail call fastcc void @udl_free_urb_list(ptr noundef %udl) #5
  br label %while.body.preheader.i

if.end44.i:                                       ; preds = %if.end36.i
  %62 = ptrtoint ptr %add.ptr.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i50, align 8
  %shl.i.i55 = shl i32 %63, 8
  %or.i56 = or i32 %shl.i.i55, -1073709056
  %dev1.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 8
  %64 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr.i.i.i50, ptr %dev1.i.i, align 4
  %pipe2.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 10
  %65 = ptrtoint ptr %pipe2.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i56, ptr %pipe2.i.i, align 4
  %transfer_buffer3.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 14
  %66 = ptrtoint ptr %transfer_buffer3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call38.i, ptr %transfer_buffer3.i.i, align 4
  %transfer_buffer_length.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 19
  %67 = ptrtoint ptr %transfer_buffer_length.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %size.addr.0.i, ptr %transfer_buffer_length.i.i, align 4
  %complete.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 28
  %68 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @udl_urb_completion, ptr %complete.i.i, align 4
  %context4.i.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 27
  %69 = ptrtoint ptr %context4.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i51, ptr %context4.i.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %call33.i, i32 0, i32 13
  %70 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %transfer_flags.i, align 4
  %or46.i = or i32 %71, 4
  store i32 %or46.i, ptr %transfer_flags.i, align 4
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i51, ptr noundef %73, ptr noundef %urbs.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end44.i.list_add_tail.exit.i_crit_edge

if.end44.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call7.i.i.i51, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %call7.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %urbs.i, ptr %call7.i.i.i51, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i51, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev3.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %call7.i.i.i51, ptr %73, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end44.i.list_add_tail.exit.i_crit_edge
  tail call void @up(ptr noundef %limit_sem.i) #5
  %78 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count7.i, align 8
  %inc.i = add i32 %79, 1
  store i32 %inc.i, ptr %count7.i, align 8
  %80 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %available.i, align 4
  %inc56.i = add i32 %81, 1
  store i32 %inc56.i, ptr %available.i, align 4
  %mul11.i = mul i32 %inc.i, %size.addr.0.i
  %cmp.i57 = icmp ult i32 %mul11.i, 260096
  br i1 %cmp.i57, label %list_add_tail.exit.i.while.body.i53_crit_edge, label %list_add_tail.exit.i.udl_alloc_urb_list.exit_crit_edge

list_add_tail.exit.i.udl_alloc_urb_list.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %udl_alloc_urb_list.exit

list_add_tail.exit.i.while.body.i53_crit_edge:    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i53

udl_alloc_urb_list.exit:                          ; preds = %list_add_tail.exit.i.udl_alloc_urb_list.exit_crit_edge, %if.then40.i.udl_alloc_urb_list.exit_crit_edge, %if.then35.i, %while.body.i53.udl_alloc_urb_list.exit_crit_edge
  %82 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %count7.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.24, i32 noundef %83, i32 noundef %size.addr.0.i) #5
  %84 = ptrtoint ptr %count7.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %count7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool16.not = icmp eq i32 %85, 0
  br i1 %tobool16.not, label %udl_alloc_urb_list.exit.err.sink.split_crit_edge, label %if.end18

udl_alloc_urb_list.exit.err.sink.split_crit_edge: ; preds = %udl_alloc_urb_list.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.sink.split

if.end18:                                         ; preds = %udl_alloc_urb_list.exit
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.5) #5
  %call19 = tail call i32 @udl_modeset_init(ptr noundef %udl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_kms_helper_poll_init(ptr noundef %udl) #5
  br label %cleanup

err.sink.split:                                   ; preds = %udl_alloc_urb_list.exit.err.sink.split_crit_edge, %do.body4.err.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.11, %do.body4.err.sink.split_crit_edge ], [ @.str.13, %udl_alloc_urb_list.exit.err.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -19, %do.body4.err.sink.split_crit_edge ], [ -12, %udl_alloc_urb_list.exit.err.sink.split_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.13.sink) #5
  br label %err

err:                                              ; preds = %err.sink.split, %if.end18.err_crit_edge
  %ret.0 = phi i32 [ %call19, %if.end18.err_crit_edge ], [ %ret.0.ph, %err.sink.split ]
  %count = getelementptr inbounds %struct.udl_device, ptr %udl, i32 0, i32 6, i32 4
  %86 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool23.not = icmp eq i32 %87, 0
  br i1 %tobool23.not, label %err.if.end25_crit_edge, label %if.then24

err.if.end25_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then24:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @udl_free_urb_list(ptr noundef %udl)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %err.if.end25_crit_edge
  %88 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dmadev, align 8
  tail call void @put_device(ptr noundef %89) #5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %ret.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end22
  %retval.0 = phi i32 [ %ret.0, %if.end25 ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_intf_get_dma_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @udl_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @udl_free_urb_list(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %urbs = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6
  %count1 = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not26 = icmp eq i32 %1, 0
  br i1 %tobool.not26, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %limit_sem = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 2
  %lock = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 1
  %size = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 6, i32 5
  br label %while.body

while.body:                                       ; preds = %list_del_init.exit.while.body_crit_edge, %while.body.lr.ph
  %count.027 = phi i32 [ %1, %while.body.lr.ph ], [ %dec, %list_del_init.exit.while.body_crit_edge ]
  %dec = add i32 %count.027, -1
  tail call void @down(ptr noundef %limit_sem) #5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #5
  %2 = ptrtoint ptr %urbs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %urbs, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #5
  %urb10 = getelementptr inbounds %struct.urb_node, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %urb10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %urb10, align 4
  %dev11 = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 14
  %18 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer, align 4
  %transfer_dma = getelementptr inbounds %struct.urb, ptr %13, i32 0, i32 15
  %20 = ptrtoint ptr %transfer_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_dma, align 4
  tail call void @usb_free_coherent(ptr noundef %15, i32 noundef %17, ptr noundef %19, i32 noundef %21) #5
  tail call void @usb_free_urb(ptr noundef %13) #5
  tail call void @kfree(ptr noundef %3) #5
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %list_del_init.exit.while.end_crit_edge, label %list_del_init.exit.while.body_crit_edge

list_del_init.exit.while.body_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del_init.exit.while.end_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del_init.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %22 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %count1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @udl_drop_usb(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @udl_free_urb_list(ptr noundef %dev)
  %dmadev = getelementptr inbounds %struct.udl_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dmadev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmadev, align 8
  tail call void @put_device(ptr noundef %1) #5
  %2 = ptrtoint ptr %dmadev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dmadev, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_descriptor(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @udl_release_urb_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %limit_sem = getelementptr inbounds %struct.udl_device, ptr %1, i32 0, i32 6, i32 2
  tail call void @up(ptr noundef %limit_sem) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 141, i32 4}
!2 = !{ptr @__func__.udl_urb_completion, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 274, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @udl_get_urb._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @udl_get_urb._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 306, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 316, i32 2}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 320, i32 3}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @udl_init._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @udl_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @udl_init.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 322, i32 2}
!22 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 326, i32 3}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 331, i32 3}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 334, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 351, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 46, i32 3}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @udl_parse_vendor_descriptor._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @udl_parse_vendor_descriptor._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 72, i32 5}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 88, i32 2}
!40 = !{ptr @udl_select_std_channel.set_def_chn, !41, !"set_def_chn", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 100, i32 18}
!42 = !{ptr @udl_alloc_urb_list.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 207, i32 2}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @udl_alloc_urb_list.__key.20, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 223, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @udl_alloc_urb_list.__key.22, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 258, i32 2}
!52 = !{ptr @sema_init.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/udl/udl_main.c", i32 173, i32 2}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{i64 2156717189, i64 2156717684, i64 2156717226, i64 2156717282, i64 2156717316, i64 2156717340, i64 2156717381, i64 2156717402, i64 2156717430, i64 2156717464}
!71 = !{i64 2156721218, i64 2156725774, i64 2156721255, i64 2156721311, i64 2156721345, i64 2156721369, i64 2156721410, i64 2156721431, i64 2156721459, i64 2156721493}
