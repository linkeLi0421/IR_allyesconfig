; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/i2c/sil164_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/i2c/sil164_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_i2c_encoder_driver = type { %struct.i2c_driver, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.sil164_priv = type { %struct.sil164_encoder_params, ptr, [16 x i8], [16 x i8] }
%struct.sil164_encoder_params = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@sil164_driver = internal global { %struct.drm_i2c_encoder_driver, [60 x i8] } { %struct.drm_i2c_encoder_driver { %struct.i2c_driver { i32 0, ptr @sil164_probe, ptr @sil164_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sil164_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, ptr @sil164_encoder_init }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author306 = internal constant [54 x i8] c"sil164.author=Francisco Jerez <currojerez@riseup.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [64 x i8] c"sil164.description=Silicon Image sil164 TMDS transmitter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [39 x i8] c"sil164.file=drivers/gpu/drm/i2c/sil164\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [41 x i8] c"sil164.license=GPL and additional rights\00", section ".modinfo", align 1
@__initcall__kmod_sil164__310_457_sil164_init6 = internal global ptr @sil164_init, section ".initcall6.init", align 4
@__exitcall_sil164_exit = internal global ptr @sil164_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sil164\00", [25 x i8] zeroinitializer }, align 32
@sil164_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sil164\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sil164_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Unknown device %x:%x.%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sil164_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/i2c/sil164_drv.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sil164_probe._entry_ptr = internal global ptr @sil164_probe._entry, section ".printk_index", align 4
@sil164_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 368, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Detected device %x:%x.%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sil164_probe._entry_ptr.9 = internal global ptr @sil164_probe._entry.6, section ".printk_index", align 4
@sil164_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 135, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error %d reading from subaddress 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sil164_read\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sil164_read._entry_ptr = internal global ptr @sil164_read._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@sil164_encoder_funcs = internal constant { %struct.drm_encoder_slave_funcs, [48 x i8] } { %struct.drm_encoder_slave_funcs { ptr @sil164_encoder_set_config, ptr @sil164_encoder_destroy, ptr @sil164_encoder_dpms, ptr @sil164_encoder_save, ptr @sil164_encoder_restore, ptr null, ptr @sil164_encoder_mode_valid, ptr @sil164_encoder_mode_set, ptr @sil164_encoder_detect, ptr @sil164_encoder_get_modes, ptr @sil164_encoder_create_resources, ptr @sil164_encoder_set_property }, [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sil164_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 114, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error %d writing to subaddress 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sil164_write\00", [19 x i8] zeroinitializer }, align 32
@sil164_write._entry_ptr = internal global ptr @sil164_write._entry, section ".printk_index", align 4
@__const.sil164_detect_slave.msg = private unnamed_addr constant { i16, i16, i16, [2 x i8], ptr } { i16 57, i16 0, i16 0, [2 x i8] zeroinitializer, ptr null }, align 4
@__const.sil164_detect_slave.info = private unnamed_addr constant %struct.i2c_board_info { [20 x i8] c"sil164\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 57, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, align 4
@sil164_detect_slave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: No dual-link slave found.\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sil164_detect_slave\00", [44 x i8] zeroinitializer }, align 32
@sil164_detect_slave._entry_ptr = internal global ptr @sil164_detect_slave._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"sil164_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 427, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 432, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"sil164_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 421, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 362, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 367, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 134, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [21 x i8] c"sil164_encoder_funcs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 336, i32 45 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 113, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [36 x i8] c"../drivers/gpu/drm/i2c/sil164_drv.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 392, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_sil164_exit, ptr @__initcall__kmod_sil164__310_457_sil164_init6, ptr @sil164_detect_slave._entry, ptr @sil164_detect_slave._entry_ptr, ptr @sil164_exit, ptr @sil164_probe._entry, ptr @sil164_probe._entry.6, ptr @sil164_probe._entry_ptr, ptr @sil164_probe._entry_ptr.9, ptr @sil164_read._entry, ptr @sil164_read._entry_ptr, ptr @sil164_write._entry, ptr @sil164_write._entry_ptr, ptr @sil164_driver, ptr @.str, ptr @sil164_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @sil164_encoder_funcs, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_driver to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_encoder_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sil164_detect_slave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sil164_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @sil164_driver) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sil164_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sil164_driver) #9
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil164_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr.addr.i79 = alloca i8, align 1
  %val.i80 = alloca i8, align 1
  %addr.addr.i65 = alloca i8, align 1
  %val.i66 = alloca i8, align 1
  %addr.addr.i51 = alloca i8, align 1
  %val.i52 = alloca i8, align 1
  %addr.addr.i37 = alloca i8, align 1
  %val.i38 = alloca i8, align 1
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !57
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp2.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %if.end4.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  %phi.cast = zext i8 %3 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast, 8
  br label %sil164_read.exit

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %entry.do.end.i_crit_edge ], [ %call.i10.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.addr.i, align 1
  %conv.i = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i, i32 noundef %conv.i) #12
  br label %sil164_read.exit

sil164_read.exit:                                 ; preds = %do.end.i, %if.end4.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %phi.bo, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i37)
  %6 = ptrtoint ptr %addr.addr.i37 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %addr.addr.i37, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i38) #9
  %7 = ptrtoint ptr %val.i38 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %val.i38, align 1, !annotation !57
  %call.i.i39 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i37, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i39)
  %cmp.i40 = icmp slt i32 %call.i.i39, 0
  br i1 %cmp.i40, label %sil164_read.exit.do.end.i48_crit_edge, label %if.end.i43

sil164_read.exit.do.end.i48_crit_edge:            ; preds = %sil164_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i48

if.end.i43:                                       ; preds = %sil164_read.exit
  %call.i10.i41 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i38, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i41)
  %cmp2.i42 = icmp slt i32 %call.i10.i41, 0
  br i1 %cmp2.i42, label %if.end.i43.do.end.i48_crit_edge, label %if.end4.i44

if.end.i43.do.end.i48_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i48

if.end4.i44:                                      ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %val.i38 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i38, align 1
  %phi.cast93 = zext i8 %9 to i32
  br label %sil164_read.exit50

do.end.i48:                                       ; preds = %if.end.i43.do.end.i48_crit_edge, %sil164_read.exit.do.end.i48_crit_edge
  %ret.0.i45 = phi i32 [ %call.i.i39, %sil164_read.exit.do.end.i48_crit_edge ], [ %call.i10.i41, %if.end.i43.do.end.i48_crit_edge ]
  %dev.i46 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %10 = ptrtoint ptr %addr.addr.i37 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr.addr.i37, align 1
  %conv.i47 = zext i8 %11 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i46, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i45, i32 noundef %conv.i47) #12
  br label %sil164_read.exit50

sil164_read.exit50:                               ; preds = %do.end.i48, %if.end4.i44
  %retval.0.i49 = phi i32 [ 0, %do.end.i48 ], [ %phi.cast93, %if.end4.i44 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i38) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i37)
  %or = or i32 %retval.0.i49, %retval.0.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i51)
  %12 = ptrtoint ptr %addr.addr.i51 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %addr.addr.i51, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i52) #9
  %13 = ptrtoint ptr %val.i52 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %val.i52, align 1, !annotation !57
  %call.i.i53 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i51, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i53)
  %cmp.i54 = icmp slt i32 %call.i.i53, 0
  br i1 %cmp.i54, label %sil164_read.exit50.do.end.i62_crit_edge, label %if.end.i57

sil164_read.exit50.do.end.i62_crit_edge:          ; preds = %sil164_read.exit50
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i62

if.end.i57:                                       ; preds = %sil164_read.exit50
  %call.i10.i55 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i52, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i55)
  %cmp2.i56 = icmp slt i32 %call.i10.i55, 0
  br i1 %cmp2.i56, label %if.end.i57.do.end.i62_crit_edge, label %if.end4.i58

if.end.i57.do.end.i62_crit_edge:                  ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i62

if.end4.i58:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %val.i52 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val.i52, align 1
  %phi.cast94 = zext i8 %15 to i32
  %phi.bo95 = shl nuw nsw i32 %phi.cast94, 8
  br label %sil164_read.exit64

do.end.i62:                                       ; preds = %if.end.i57.do.end.i62_crit_edge, %sil164_read.exit50.do.end.i62_crit_edge
  %ret.0.i59 = phi i32 [ %call.i.i53, %sil164_read.exit50.do.end.i62_crit_edge ], [ %call.i10.i55, %if.end.i57.do.end.i62_crit_edge ]
  %dev.i60 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %16 = ptrtoint ptr %addr.addr.i51 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.addr.i51, align 1
  %conv.i61 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i60, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i59, i32 noundef %conv.i61) #12
  br label %sil164_read.exit64

sil164_read.exit64:                               ; preds = %do.end.i62, %if.end4.i58
  %retval.0.i63 = phi i32 [ 0, %do.end.i62 ], [ %phi.bo95, %if.end4.i58 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i52) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i51)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i65)
  %18 = ptrtoint ptr %addr.addr.i65 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 2, ptr %addr.addr.i65, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i66) #9
  %19 = ptrtoint ptr %val.i66 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %val.i66, align 1, !annotation !57
  %call.i.i67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i65, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %cmp.i68 = icmp slt i32 %call.i.i67, 0
  br i1 %cmp.i68, label %sil164_read.exit64.do.end.i76_crit_edge, label %if.end.i71

sil164_read.exit64.do.end.i76_crit_edge:          ; preds = %sil164_read.exit64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i76

if.end.i71:                                       ; preds = %sil164_read.exit64
  %call.i10.i69 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i66, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i69)
  %cmp2.i70 = icmp slt i32 %call.i10.i69, 0
  br i1 %cmp2.i70, label %if.end.i71.do.end.i76_crit_edge, label %if.end4.i72

if.end.i71.do.end.i76_crit_edge:                  ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i76

if.end4.i72:                                      ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %val.i66 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %val.i66, align 1
  %phi.cast96 = zext i8 %21 to i32
  br label %sil164_read.exit78

do.end.i76:                                       ; preds = %if.end.i71.do.end.i76_crit_edge, %sil164_read.exit64.do.end.i76_crit_edge
  %ret.0.i73 = phi i32 [ %call.i.i67, %sil164_read.exit64.do.end.i76_crit_edge ], [ %call.i10.i69, %if.end.i71.do.end.i76_crit_edge ]
  %dev.i74 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %22 = ptrtoint ptr %addr.addr.i65 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %addr.addr.i65, align 1
  %conv.i75 = zext i8 %23 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i74, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i73, i32 noundef %conv.i75) #12
  br label %sil164_read.exit78

sil164_read.exit78:                               ; preds = %do.end.i76, %if.end4.i72
  %retval.0.i77 = phi i32 [ 0, %do.end.i76 ], [ %phi.cast96, %if.end4.i72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i66) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i65)
  %or8 = or i32 %retval.0.i77, %retval.0.i63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i79)
  %24 = ptrtoint ptr %addr.addr.i79 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 4, ptr %addr.addr.i79, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i80) #9
  %25 = ptrtoint ptr %val.i80 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %val.i80, align 1, !annotation !57
  %call.i.i81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i79, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %cmp.i82 = icmp slt i32 %call.i.i81, 0
  br i1 %cmp.i82, label %sil164_read.exit78.do.end.i90_crit_edge, label %if.end.i85

sil164_read.exit78.do.end.i90_crit_edge:          ; preds = %sil164_read.exit78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i90

if.end.i85:                                       ; preds = %sil164_read.exit78
  %call.i10.i83 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i80, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i83)
  %cmp2.i84 = icmp slt i32 %call.i10.i83, 0
  br i1 %cmp2.i84, label %if.end.i85.do.end.i90_crit_edge, label %if.end4.i86

if.end.i85.do.end.i90_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i90

if.end4.i86:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val.i80 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val.i80, align 1
  %phi.cast97 = zext i8 %27 to i32
  br label %sil164_read.exit92

do.end.i90:                                       ; preds = %if.end.i85.do.end.i90_crit_edge, %sil164_read.exit78.do.end.i90_crit_edge
  %ret.0.i87 = phi i32 [ %call.i.i81, %sil164_read.exit78.do.end.i90_crit_edge ], [ %call.i10.i83, %if.end.i85.do.end.i90_crit_edge ]
  %dev.i88 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %28 = ptrtoint ptr %addr.addr.i79 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %addr.addr.i79, align 1
  %conv.i89 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i88, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i87, i32 noundef %conv.i89) #12
  br label %sil164_read.exit92

sil164_read.exit92:                               ; preds = %do.end.i90, %if.end4.i86
  %retval.0.i91 = phi i32 [ 0, %do.end.i90 ], [ %phi.cast97, %if.end4.i86 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i80) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %or)
  %cmp.not = icmp eq i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or8)
  %cmp12.not = icmp eq i32 %or8, 6
  %or.cond = select i1 %cmp.not, i1 %cmp12.not, i1 false
  br i1 %or.cond, label %do.end22, label %do.body

do.body:                                          ; preds = %sil164_read.exit92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %30 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %or, i32 noundef %or8, i32 noundef %retval.0.i91) #12
  br label %cleanup

do.end22:                                         ; preds = %sil164_read.exit92
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev23, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 6, i32 noundef %retval.0.i91) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end22 ], [ -19, %do.end ], [ -19, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sil164_remove(ptr nocapture noundef readnone %client) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil164_encoder_init(ptr nocapture noundef readonly %client, ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %encoder) #2 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %info.i = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 60) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %1 = ptrtoint ptr %slave_priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %slave_priv, align 4
  %slave_funcs = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %2 = ptrtoint ptr %slave_funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @sil164_encoder_funcs, ptr %slave_funcs, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter.i, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = call ptr @memcpy(ptr %msg.i, ptr @__const.sil164_detect_slave.msg, i32 12)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #9
  %6 = call ptr @memcpy(ptr %info.i, ptr @__const.sil164_detect_slave.info, i32 56)
  %call.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %sil164_detect_slave.exit, label %do.body.i

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %7 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body.i.sil164_detect_slave.exit.thread_crit_edge, label %do.end.i

do.body.i.sil164_detect_slave.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_detect_slave.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 9
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #12
  br label %sil164_detect_slave.exit.thread

sil164_detect_slave.exit.thread:                  ; preds = %do.end.i, %do.body.i.sil164_detect_slave.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  br label %if.then3

sil164_detect_slave.exit:                         ; preds = %if.end
  %call7.i = call ptr @i2c_new_client_device(ptr noundef %4, ptr noundef nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  %cmp.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %sil164_detect_slave.exit.cleanup_crit_edge, label %sil164_detect_slave.exit.if.then3_crit_edge

sil164_detect_slave.exit.if.then3_crit_edge:      ; preds = %sil164_detect_slave.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

sil164_detect_slave.exit.cleanup_crit_edge:       ; preds = %sil164_detect_slave.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %sil164_detect_slave.exit.if.then3_crit_edge, %sil164_detect_slave.exit.thread
  %retval.0.i12 = phi ptr [ null, %sil164_detect_slave.exit.thread ], [ %call7.i, %sil164_detect_slave.exit.if.then3_crit_edge ]
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i12, ptr %duallink_slave, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %sil164_detect_slave.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %sil164_detect_slave.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sil164_encoder_set_config(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %params, i32 24)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil164_encoder_destroy(ptr noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %duallink_slave, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #9
  tail call void @kfree(ptr noundef %1) #9
  tail call void @drm_i2c_encoder_destroy(ptr noundef %encoder) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil164_encoder_dpms(ptr nocapture noundef readonly %encoder, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %mode1 = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %5)
  %cmp2 = icmp sgt i32 %5, 165000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %cmp2, %land.rhs ]
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %7 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus_priv.i, align 4
  tail call fastcc void @sil164_set_power_state(ptr noundef %8, i1 noundef zeroext %cmp)
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %duallink_slave, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %land.end.if.end_crit_edge, label %if.then

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sil164_set_power_state(ptr noundef nonnull %10, i1 noundef zeroext %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil164_encoder_save(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  %addr.addr.i.i7 = alloca i8, align 1
  %val.i.i8 = alloca i8, align 1
  %addr.addr.i.i = alloca i8, align 1
  %val.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_priv.i, align 4
  %saved_state = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 2
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %sil164_read.exit.i.for.body.i_crit_edge, %entry
  %i.04.i = phi i32 [ 8, %entry ], [ %inc.i, %sil164_read.exit.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.04.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i.i) #9
  %4 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %addr.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i) #9
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %val.i.i, align 1, !annotation !57
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %addr.addr.i.i, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.do.end.i.i_crit_edge, label %if.end.i.i

for.body.i.do.end.i.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end.i.i:                                       ; preds = %for.body.i
  %call.i10.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %val.i.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i)
  %cmp2.i.i = icmp slt i32 %call.i10.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.do.end.i.i_crit_edge, label %if.end4.i.i

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %val.i.i, align 1
  br label %sil164_read.exit.i

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %for.body.i.do.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i.i, %for.body.i.do.end.i.i_crit_edge ], [ %call.i10.i.i, %if.end.i.i.do.end.i.i_crit_edge ]
  %8 = ptrtoint ptr %addr.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr.addr.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i.i, i32 noundef %conv.i.i) #12
  br label %sil164_read.exit.i

sil164_read.exit.i:                               ; preds = %do.end.i.i, %if.end4.i.i
  %retval.0.i.i = phi i8 [ 0, %do.end.i.i ], [ %7, %if.end4.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i.i) #9
  %arrayidx.i = getelementptr i8, ptr %saved_state, i32 %i.04.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %sil164_save_state.exit, label %sil164_read.exit.i.for.body.i_crit_edge

sil164_read.exit.i.for.body.i_crit_edge:          ; preds = %sil164_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sil164_save_state.exit:                           ; preds = %sil164_read.exit.i
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %duallink_slave, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %sil164_save_state.exit.if.end_crit_edge, label %if.then

sil164_save_state.exit.if.end_crit_edge:          ; preds = %sil164_save_state.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sil164_save_state.exit
  %saved_slave_state = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 3
  %dev.i.i9 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  br label %for.body.i14

for.body.i14:                                     ; preds = %sil164_read.exit.i26.for.body.i14_crit_edge, %if.then
  %i.04.i10 = phi i32 [ 8, %if.then ], [ %inc.i24, %sil164_read.exit.i26.for.body.i14_crit_edge ]
  %conv.i11 = trunc i32 %i.04.i10 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i.i7) #9
  %13 = ptrtoint ptr %addr.addr.i.i7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i11, ptr %addr.addr.i.i7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i8) #9
  %14 = ptrtoint ptr %val.i.i8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %val.i.i8, align 1, !annotation !57
  %call.i.i.i12 = call i32 @i2c_transfer_buffer_flags(ptr noundef nonnull %12, ptr noundef nonnull %addr.addr.i.i7, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i12)
  %cmp.i.i13 = icmp slt i32 %call.i.i.i12, 0
  br i1 %cmp.i.i13, label %for.body.i14.do.end.i.i21_crit_edge, label %if.end.i.i17

for.body.i14.do.end.i.i21_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i21

if.end.i.i17:                                     ; preds = %for.body.i14
  %call.i10.i.i15 = call i32 @i2c_transfer_buffer_flags(ptr noundef nonnull %12, ptr noundef nonnull %val.i.i8, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i.i15)
  %cmp2.i.i16 = icmp slt i32 %call.i10.i.i15, 0
  br i1 %cmp2.i.i16, label %if.end.i.i17.do.end.i.i21_crit_edge, label %if.end4.i.i18

if.end.i.i17.do.end.i.i21_crit_edge:              ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i21

if.end4.i.i18:                                    ; preds = %if.end.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %val.i.i8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val.i.i8, align 1
  br label %sil164_read.exit.i26

do.end.i.i21:                                     ; preds = %if.end.i.i17.do.end.i.i21_crit_edge, %for.body.i14.do.end.i.i21_crit_edge
  %ret.0.i.i19 = phi i32 [ %call.i.i.i12, %for.body.i14.do.end.i.i21_crit_edge ], [ %call.i10.i.i15, %if.end.i.i17.do.end.i.i21_crit_edge ]
  %17 = ptrtoint ptr %addr.addr.i.i7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %addr.addr.i.i7, align 1
  %conv.i.i20 = zext i8 %18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i9, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i.i19, i32 noundef %conv.i.i20) #12
  br label %sil164_read.exit.i26

sil164_read.exit.i26:                             ; preds = %do.end.i.i21, %if.end4.i.i18
  %retval.0.i.i22 = phi i8 [ 0, %do.end.i.i21 ], [ %16, %if.end4.i.i18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i8) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i.i7) #9
  %arrayidx.i23 = getelementptr i8, ptr %saved_slave_state, i32 %i.04.i10
  %19 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %retval.0.i.i22, ptr %arrayidx.i23, align 1
  %inc.i24 = add nuw nsw i32 %i.04.i10, 1
  %exitcond.not.i25 = icmp eq i32 %inc.i24, 15
  br i1 %exitcond.not.i25, label %sil164_read.exit.i26.if.end_crit_edge, label %sil164_read.exit.i26.for.body.i14_crit_edge

sil164_read.exit.i26.for.body.i14_crit_edge:      ; preds = %sil164_read.exit.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i14

sil164_read.exit.i26.if.end_crit_edge:            ; preds = %sil164_read.exit.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %sil164_read.exit.i26.if.end_crit_edge, %sil164_save_state.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil164_encoder_restore(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %2 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_priv.i, align 4
  %saved_state = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 2
  tail call fastcc void @sil164_restore_state(ptr noundef %3, ptr noundef %saved_state)
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %duallink_slave, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %saved_slave_state = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 3
  tail call fastcc void @sil164_restore_state(ptr noundef nonnull %5, ptr noundef %saved_slave_state)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sil164_encoder_mode_valid(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %mode) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %3)
  %cmp = icmp slt i32 %3, 32000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 330000, i32 %3)
  %cmp2 = icmp ugt i32 %3, 330000
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %3)
  %cmp4 = icmp ugt i32 %3, 165000
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.if.end6_crit_edge

lor.lhs.false.if.end6_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %lor.lhs.false
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %duallink_slave, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %lor.lhs.false.if.end6_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 16, %entry.cleanup_crit_edge ], [ 15, %land.lhs.true.cleanup_crit_edge ], [ 15, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sil164_encoder_mode_set(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %3)
  %cmp = icmp sgt i32 %3, 165000
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %4 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_priv.i, align 4
  tail call fastcc void @sil164_init_state(ptr noundef %5, ptr noundef %1, i1 noundef zeroext %cmp)
  %duallink_slave = getelementptr inbounds %struct.sil164_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %duallink_slave to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %duallink_slave, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sil164_init_state(ptr noundef nonnull %7, ptr noundef %1, i1 noundef zeroext %cmp)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave_priv, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %10 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc.i, align 4
  %mode1.i = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %mode1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode1.i, align 4
  %14 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus_priv.i, align 4
  tail call fastcc void @sil164_set_power_state(ptr noundef %15, i1 noundef zeroext true) #9
  %duallink_slave.i = getelementptr inbounds %struct.sil164_priv, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %duallink_slave.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %duallink_slave.i, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.end.sil164_encoder_dpms.exit_crit_edge, label %if.then.i

if.end.sil164_encoder_dpms.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_encoder_dpms.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 165000, i32 %13)
  %cmp2.i = icmp sgt i32 %13, 165000
  tail call fastcc void @sil164_set_power_state(ptr noundef nonnull %17, i1 noundef zeroext %cmp2.i) #9
  br label %sil164_encoder_dpms.exit

sil164_encoder_dpms.exit:                         ; preds = %if.then.i, %if.end.sil164_encoder_dpms.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sil164_encoder_detect(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readnone %connector) #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %2 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 9, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %val.i, align 1, !annotation !57
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %addr.addr.i, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %val.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp2.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %if.end4.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val.i, align 1
  %phi.bo = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %phi.bo)
  %phi.cmp = icmp eq i8 %phi.bo, 0
  %phi.sel = select i1 %phi.cmp, i32 2, i32 1
  br label %sil164_read.exit

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %entry.do.end.i_crit_edge ], [ %call.i10.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr.addr.i, align 1
  %conv.i = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i, i32 noundef %conv.i) #12
  br label %sil164_read.exit

sil164_read.exit:                                 ; preds = %do.end.i, %if.end4.i
  %retval.0.i = phi i32 [ 2, %do.end.i ], [ %phi.sel, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sil164_encoder_get_modes(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sil164_encoder_create_resources(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sil164_encoder_set_property(ptr nocapture noundef readnone %encoder, ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %property, i64 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil164_set_power_state(ptr noundef %client, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %addr.addr.i = alloca i8, align 1
  %val.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %0 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %addr.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i) #9
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val.i, align 1, !annotation !57
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr.addr.i, i32 noundef 1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.end.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.i:                                         ; preds = %entry
  %call.i10.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val.i, i32 noundef 1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %cmp2.i = icmp slt i32 %call.i10.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %if.end4.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 1
  %phi.bo = and i8 %3, -2
  br label %sil164_read.exit

do.end.i:                                         ; preds = %if.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %entry.do.end.i_crit_edge ], [ %call.i10.i, %if.end.i.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %4 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr.addr.i, align 1
  %conv.i = zext i8 %5 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.10, i32 noundef %ret.0.i, i32 noundef %conv.i) #12
  br label %sil164_read.exit

sil164_read.exit:                                 ; preds = %do.end.i, %if.end4.i
  %retval.0.i = phi i8 [ 0, %do.end.i ], [ %phi.bo, %if.end4.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  %masksel = zext i1 %on to i8
  %control0.0 = or i8 %retval.0.i, %masksel
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %control0.0, ptr %6, align 1
  %call.i.i7 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.i8 = icmp slt i32 %call.i.i7, 0
  br i1 %cmp.i8, label %do.end.i10, label %sil164_read.exit.sil164_write.exit_crit_edge

sil164_read.exit.sil164_write.exit_crit_edge:     ; preds = %sil164_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit

do.end.i10:                                       ; preds = %sil164_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i9, ptr noundef nonnull @.str.13, i32 noundef %call.i.i7, i32 noundef 8) #12
  br label %sil164_write.exit

sil164_write.exit:                                ; preds = %do.end.i10, %sil164_read.exit.sil164_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil164_restore_state(ptr noundef %client, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %arrayidx = getelementptr i8, ptr %state, i32 8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %buf.i, align 1
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %2, ptr %0, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.sil164_write.exit_crit_edge

entry.sil164_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, i32 noundef 8) #12
  br label %sil164_write.exit

sil164_write.exit:                                ; preds = %do.end.i, %entry.sil164_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.1 = getelementptr i8, ptr %state, i32 9
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 9, ptr %buf.i, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %6, ptr %0, align 1
  %call.i.i.1 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.1, 0
  br i1 %cmp.i.1, label %do.end.i.1, label %sil164_write.exit.sil164_write.exit.1_crit_edge

sil164_write.exit.sil164_write.exit.1_crit_edge:  ; preds = %sil164_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.1

do.end.i.1:                                       ; preds = %sil164_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.1, i32 noundef 9) #12
  br label %sil164_write.exit.1

sil164_write.exit.1:                              ; preds = %do.end.i.1, %sil164_write.exit.sil164_write.exit.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.2 = getelementptr i8, ptr %state, i32 10
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %buf.i, align 1
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %10, ptr %0, align 1
  %call.i.i.2 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.i.2, 0
  br i1 %cmp.i.2, label %do.end.i.2, label %sil164_write.exit.1.sil164_write.exit.2_crit_edge

sil164_write.exit.1.sil164_write.exit.2_crit_edge: ; preds = %sil164_write.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.2

do.end.i.2:                                       ; preds = %sil164_write.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.2, i32 noundef 10) #12
  br label %sil164_write.exit.2

sil164_write.exit.2:                              ; preds = %do.end.i.2, %sil164_write.exit.1.sil164_write.exit.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.3 = getelementptr i8, ptr %state, i32 11
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %15 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 11, ptr %buf.i, align 1
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %14, ptr %0, align 1
  %call.i.i.3 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.i.3, 0
  br i1 %cmp.i.3, label %do.end.i.3, label %sil164_write.exit.2.sil164_write.exit.3_crit_edge

sil164_write.exit.2.sil164_write.exit.3_crit_edge: ; preds = %sil164_write.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.3

do.end.i.3:                                       ; preds = %sil164_write.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.3, i32 noundef 11) #12
  br label %sil164_write.exit.3

sil164_write.exit.3:                              ; preds = %do.end.i.3, %sil164_write.exit.2.sil164_write.exit.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.4 = getelementptr i8, ptr %state, i32 12
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 12, ptr %buf.i, align 1
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %18, ptr %0, align 1
  %call.i.i.4 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.4)
  %cmp.i.4 = icmp slt i32 %call.i.i.4, 0
  br i1 %cmp.i.4, label %do.end.i.4, label %sil164_write.exit.3.sil164_write.exit.4_crit_edge

sil164_write.exit.3.sil164_write.exit.4_crit_edge: ; preds = %sil164_write.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.4

do.end.i.4:                                       ; preds = %sil164_write.exit.3
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.4, i32 noundef 12) #12
  br label %sil164_write.exit.4

sil164_write.exit.4:                              ; preds = %do.end.i.4, %sil164_write.exit.3.sil164_write.exit.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.5 = getelementptr i8, ptr %state, i32 13
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 13, ptr %buf.i, align 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %22, ptr %0, align 1
  %call.i.i.5 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.5)
  %cmp.i.5 = icmp slt i32 %call.i.i.5, 0
  br i1 %cmp.i.5, label %do.end.i.5, label %sil164_write.exit.4.sil164_write.exit.5_crit_edge

sil164_write.exit.4.sil164_write.exit.5_crit_edge: ; preds = %sil164_write.exit.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.5

do.end.i.5:                                       ; preds = %sil164_write.exit.4
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.5, i32 noundef 13) #12
  br label %sil164_write.exit.5

sil164_write.exit.5:                              ; preds = %do.end.i.5, %sil164_write.exit.4.sil164_write.exit.5_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %arrayidx.6 = getelementptr i8, ptr %state, i32 14
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 14, ptr %buf.i, align 1
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %26, ptr %0, align 1
  %call.i.i.6 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.6)
  %cmp.i.6 = icmp slt i32 %call.i.i.6, 0
  br i1 %cmp.i.6, label %do.end.i.6, label %sil164_write.exit.5.sil164_write.exit.6_crit_edge

sil164_write.exit.5.sil164_write.exit.6_crit_edge: ; preds = %sil164_write.exit.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit.6

do.end.i.6:                                       ; preds = %sil164_write.exit.5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i.6, i32 noundef 14) #12
  br label %sil164_write.exit.6

sil164_write.exit.6:                              ; preds = %do.end.i.6, %sil164_write.exit.5.sil164_write.exit.6_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sil164_init_state(ptr noundef %client, ptr nocapture noundef readonly %config, i1 noundef zeroext %duallink) unnamed_addr #2 align 64 {
entry:
  %buf.i65 = alloca [2 x i8], align 1
  %buf.i59 = alloca [2 x i8], align 1
  %buf.i53 = alloca [2 x i8], align 1
  %buf.i47 = alloca [2 x i8], align 1
  %buf.i41 = alloca [2 x i8], align 1
  %buf.i35 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %or = select i1 %tobool.not, i8 48, i8 50
  %input_width = getelementptr inbounds %struct.sil164_encoder_params, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %input_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  %cond2 = select i1 %tobool1.not, i8 0, i8 4
  %or3 = or i8 %cond2, %or
  %input_dual = getelementptr inbounds %struct.sil164_encoder_params, ptr %config, i32 0, i32 2
  %4 = ptrtoint ptr %input_dual to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input_dual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %cond5 = select i1 %tobool4.not, i8 0, i8 8
  %or6 = or i8 %or3, %cond5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or6, ptr %6, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.sil164_write.exit_crit_edge

entry.sil164_write.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %call.i.i, i32 noundef 8) #12
  br label %sil164_write.exit

sil164_write.exit:                                ; preds = %do.end.i, %entry.sil164_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 9, ptr %buf.i35, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 33, ptr %9, align 1
  %call.i.i36 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i35, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i37 = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i37, label %do.end.i39, label %sil164_write.exit.sil164_write.exit40_crit_edge

sil164_write.exit.sil164_write.exit40_crit_edge:  ; preds = %sil164_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit40

do.end.i39:                                       ; preds = %sil164_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.13, i32 noundef %call.i.i36, i32 noundef 9) #12
  br label %sil164_write.exit40

sil164_write.exit40:                              ; preds = %do.end.i39, %sil164_write.exit.sil164_write.exit40_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #9
  %input_skew = getelementptr inbounds %struct.sil164_encoder_params, ptr %config, i32 0, i32 4
  %12 = ptrtoint ptr %input_skew to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_skew, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp eq i32 %13, 0
  %cond8 = select i1 %tobool7.not, i32 0, i32 16
  %add = shl i32 %13, 5
  %and = add i32 %add, 128
  %or10 = or i32 %cond8, %and
  %conv11 = trunc i32 %or10 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %15 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 10, ptr %buf.i41, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11, ptr %14, align 1
  %call.i.i42 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i41, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %cmp.i43 = icmp slt i32 %call.i.i42, 0
  br i1 %cmp.i43, label %do.end.i45, label %sil164_write.exit40.sil164_write.exit46_crit_edge

sil164_write.exit40.sil164_write.exit46_crit_edge: ; preds = %sil164_write.exit40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit46

do.end.i45:                                       ; preds = %sil164_write.exit40
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i44 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i44, ptr noundef nonnull @.str.13, i32 noundef %call.i.i42, i32 noundef 10) #12
  br label %sil164_write.exit46

sil164_write.exit46:                              ; preds = %do.end.i45, %sil164_write.exit40.sil164_write.exit46_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  %pll_filter = getelementptr inbounds %struct.sil164_encoder_params, ptr %config, i32 0, i32 3
  %17 = ptrtoint ptr %pll_filter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pll_filter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool12.not = icmp eq i32 %18, 0
  %cond13 = zext i1 %tobool12.not to i8
  %or15 = or i8 %cond13, -120
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i47) #9
  %19 = getelementptr inbounds [2 x i8], ptr %buf.i47, i32 0, i32 1
  %20 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %buf.i47, align 1
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %or15, ptr %19, align 1
  %call.i.i48 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i47, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i48)
  %cmp.i49 = icmp slt i32 %call.i.i48, 0
  br i1 %cmp.i49, label %do.end.i51, label %sil164_write.exit46.sil164_write.exit52_crit_edge

sil164_write.exit46.sil164_write.exit52_crit_edge: ; preds = %sil164_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit52

do.end.i51:                                       ; preds = %sil164_write.exit46
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i50 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i50, ptr noundef nonnull @.str.13, i32 noundef %call.i.i48, i32 noundef 12) #12
  br label %sil164_write.exit52

sil164_write.exit52:                              ; preds = %do.end.i51, %sil164_write.exit46.sil164_write.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i47) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 14, ptr %buf.i53, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %22, align 1
  %call.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i53, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp.i55 = icmp slt i32 %call.i.i54, 0
  br i1 %cmp.i55, label %do.end.i57, label %sil164_write.exit52.sil164_write.exit58_crit_edge

sil164_write.exit52.sil164_write.exit58_crit_edge: ; preds = %sil164_write.exit52
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit58

do.end.i57:                                       ; preds = %sil164_write.exit52
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i56 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i56, ptr noundef nonnull @.str.13, i32 noundef %call.i.i54, i32 noundef 14) #12
  br label %sil164_write.exit58

sil164_write.exit58:                              ; preds = %do.end.i57, %sil164_write.exit52.sil164_write.exit58_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  br i1 %duallink, label %if.then, label %if.else

if.then:                                          ; preds = %sil164_write.exit58
  %duallink_skew = getelementptr inbounds %struct.sil164_encoder_params, ptr %config, i32 0, i32 5
  %25 = ptrtoint ptr %duallink_skew to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %duallink_skew, align 4
  %.tr = trunc i32 %26 to i8
  %27 = shl i8 %.tr, 5
  %conv22 = xor i8 %27, -112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i59) #9
  %28 = getelementptr inbounds [2 x i8], ptr %buf.i59, i32 0, i32 1
  %29 = ptrtoint ptr %buf.i59 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 13, ptr %buf.i59, align 1
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv22, ptr %28, align 1
  %call.i.i60 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i59, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp.i61 = icmp slt i32 %call.i.i60, 0
  br i1 %cmp.i61, label %do.end.i63, label %if.then.sil164_write.exit64_crit_edge

if.then.sil164_write.exit64_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit64

do.end.i63:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i62 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i62, ptr noundef nonnull @.str.13, i32 noundef %call.i.i60, i32 noundef 13) #12
  br label %sil164_write.exit64

sil164_write.exit64:                              ; preds = %do.end.i63, %if.then.sil164_write.exit64_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i59) #9
  br label %if.end

if.else:                                          ; preds = %sil164_write.exit58
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65) #9
  %31 = getelementptr inbounds [2 x i8], ptr %buf.i65, i32 0, i32 1
  %32 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 13, ptr %buf.i65, align 1
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %31, align 1
  %call.i.i66 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buf.i65, i32 noundef 2, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i66)
  %cmp.i67 = icmp slt i32 %call.i.i66, 0
  br i1 %cmp.i67, label %do.end.i69, label %if.else.sil164_write.exit70_crit_edge

if.else.sil164_write.exit70_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sil164_write.exit70

do.end.i69:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i68 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i68, ptr noundef nonnull @.str.13, i32 noundef %call.i.i66, i32 noundef 13) #12
  br label %sil164_write.exit70

sil164_write.exit70:                              ; preds = %do.end.i69, %if.else.sil164_write.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65) #9
  br label %if.end

if.end:                                           ; preds = %sil164_write.exit70, %sil164_write.exit64
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_author306, !1, !"__UNIQUE_ID_author306", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 453, i32 1}
!2 = !{ptr @__UNIQUE_ID_description307, !3, !"__UNIQUE_ID_description307", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 454, i32 1}
!4 = !{ptr @__UNIQUE_ID_file308, !5, !"__UNIQUE_ID_file308", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 455, i32 1}
!6 = !{ptr @__UNIQUE_ID_license309, !5, !"__UNIQUE_ID_license309", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sil164__310_457_sil164_init6, !8, !"__initcall__kmod_sil164__310_457_sil164_init6", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 457, i32 1}
!9 = !{ptr @__exitcall_sil164_exit, !10, !"__exitcall_sil164_exit", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 458, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 432, i32 12}
!13 = !{ptr @sil164_driver, !14, !"sil164_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 427, i32 38}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 362, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sil164_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @sil164_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 367, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sil164_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @sil164_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 134, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sil164_read._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @sil164_read._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sil164_ids, !35, !"sil164_ids", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 421, i32 35}
!36 = !{ptr @sil164_encoder_funcs, !37, !"sil164_encoder_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 336, i32 45}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 113, i32 3}
!40 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sil164_write._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @sil164_write._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/i2c/sil164_drv.c", i32 392, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sil164_detect_slave._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @sil164_detect_slave._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
