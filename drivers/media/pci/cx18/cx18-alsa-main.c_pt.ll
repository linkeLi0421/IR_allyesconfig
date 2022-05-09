; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-alsa-main.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-alsa-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.snd_cx18_card = type { ptr, ptr, i32, i32, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.161, %struct.anon.162, %struct.anon.163, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168 }
%struct.anon.161 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.162 = type { ptr, ptr }
%struct.anon.163 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.164 = type { ptr, ptr }
%struct.anon.165 = type { ptr, ptr, ptr }
%struct.anon.166 = type { ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.136 }
%union.anon.136 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.138, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.138 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__param_str_debug = internal constant [16 x i8] c"cx18_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cx18_alsa_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @cx18_alsa_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype387 = internal constant [29 x i8] c"cx18_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug388 = internal constant [99 x i8] c"cx18_alsa.parm=debug:Debug level (bitmask). Default: 0\0A\09\09\09  1/0x0001: warning\0A\09\09\09  2/0x0002: info\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_author389 = internal constant [28 x i8] c"cx18_alsa.author=Andy Walls\00", section ".modinfo", align 1
@__UNIQUE_ID_description390 = internal constant [45 x i8] c"cx18_alsa.description=CX23418 ALSA Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file391 = internal constant [48 x i8] c"cx18_alsa.file=drivers/media/pci/cx18/cx18-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license392 = internal constant [22 x i8] c"cx18_alsa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version393 = internal constant [24 x i8] c"cx18_alsa.version=1.5.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx18_alsa\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.5.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@cx18_alsa_exit_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cx18-alsa: %s: struct v4l2_device * is NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx18_alsa_exit_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx18/cx18-alsa-main.c\00", [56 x i8] zeroinitializer }, align 32
@cx18_alsa_exit_callback._entry_ptr = internal global ptr @cx18_alsa_exit_callback._entry, section ".printk_index", align 4
@cx18_alsa_exit_callback._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s-alsa: %s: struct snd_cx18_card * is NULL\0A\00", [49 x i8] zeroinitializer }, align 32
@cx18_alsa_exit_callback._entry_ptr.8 = internal global ptr @cx18_alsa_exit_callback._entry.6, section ".printk_index", align 4
@cx18_alsa_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016cx18-alsa: module unloading...\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_alsa_exit\00", [17 x i8] zeroinitializer }, align 32
@cx18_alsa_exit._entry_ptr = internal global ptr @cx18_alsa_exit._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cx18\00", [27 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@cx18_ext_init = external dso_local local_unnamed_addr global ptr, align 4
@cx18_alsa_exit._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.5, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cx18-alsa: module unload complete\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_alsa_exit._entry_ptr.14 = internal global ptr @cx18_alsa_exit._entry.12, section ".printk_index", align 4
@__initcall__kmod_cx18_alsa__394_273_cx18_alsa_init6 = internal global ptr @cx18_alsa_init, section ".initcall6.init", align 4
@__exitcall_cx18_alsa_exit = internal global ptr @cx18_alsa_exit, section ".exitcall.exit", align 4
@cx18_alsa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx18-alsa: module loading...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_alsa_init\00", [17 x i8] zeroinitializer }, align 32
@cx18_alsa_init._entry_ptr = internal global ptr @cx18_alsa_init._entry, section ".printk_index", align 4
@cx18_alsa_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.5, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_alsa_load\00", [17 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr = internal global ptr @cx18_alsa_load._entry, section ".printk_index", align 4
@cx18_alsa_load._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013cx18-alsa cx is NULL\0A\00", [40 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr.20 = internal global ptr @cx18_alsa_load._entry.18, section ".printk_index", align 4
@cx18_alsa_load._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016%s: %s: PCM stream for card is disabled - skipping\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr.23 = internal global ptr @cx18_alsa_load._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx18-alsa\00", [22 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.5, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s-alsa: %s: struct snd_cx18_card * already exists\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr.27 = internal global ptr @cx18_alsa_load._entry.25, section ".printk_index", align 4
@cx18_alsa_load._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.5, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s-alsa: %s: failed to create struct snd_cx18_card\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr.30 = internal global ptr @cx18_alsa_load._entry.28, section ".printk_index", align 4
@cx18_alsa_load._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.5, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: %s: created cx18 ALSA interface instance\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_alsa_load._entry_ptr.33 = internal global ptr @cx18_alsa_load._entry.31, section ".printk_index", align 4
@snd_cx18_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s-alsa: %s: snd_card_new() failed with err %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_cx18_init\00", [18 x i8] zeroinitializer }, align 32
@snd_cx18_init._entry_ptr = internal global ptr @snd_cx18_init._entry, section ".printk_index", align 4
@snd_cx18_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s-alsa: %s: snd_cx18_card_create() failed with err %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_cx18_init._entry_ptr.38 = internal global ptr @snd_cx18_init._entry.36, section ".printk_index", align 4
@snd_cx18_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.5, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s-alsa: %s: snd_cx18_pcm_create() failed with err %d\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_cx18_init._entry_ptr.41 = internal global ptr @snd_cx18_init._entry.39, section ".printk_index", align 4
@snd_cx18_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.5, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s-alsa: %s: snd_card_register() failed with err %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_cx18_init._entry_ptr.44 = internal global ptr @snd_cx18_init._entry.42, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX23418\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CX18-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"CX23418 #%d %s TV/FM Radio/Line-In Capture\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"cx18_alsa_debug\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 28, i32 5 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 46, i32 1 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 242, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 249, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 263, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 265, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 270, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 221, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 185, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 192, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 198, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 204, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 210, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 213, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 131, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 139, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 150, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 164, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 99, i32 22 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 102, i32 50 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [43 x i8] c"../drivers/media/pci/cx18/cx18-alsa-main.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 107, i32 4 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_debug388, ptr @__UNIQUE_ID_debugtype387, ptr @__UNIQUE_ID_description390, ptr @__UNIQUE_ID_file391, ptr @__UNIQUE_ID_license392, ptr @__UNIQUE_ID_version393, ptr @__exitcall_cx18_alsa_exit, ptr @__initcall__kmod_cx18_alsa__394_273_cx18_alsa_init6, ptr @__modver_attr, ptr @__param_debug, ptr @cx18_alsa_exit, ptr @cx18_alsa_exit._entry, ptr @cx18_alsa_exit._entry.12, ptr @cx18_alsa_exit._entry_ptr, ptr @cx18_alsa_exit._entry_ptr.14, ptr @cx18_alsa_exit_callback, ptr @cx18_alsa_exit_callback._entry, ptr @cx18_alsa_exit_callback._entry.6, ptr @cx18_alsa_exit_callback._entry_ptr, ptr @cx18_alsa_exit_callback._entry_ptr.8, ptr @cx18_alsa_init._entry, ptr @cx18_alsa_init._entry_ptr, ptr @cx18_alsa_load._entry, ptr @cx18_alsa_load._entry.18, ptr @cx18_alsa_load._entry.21, ptr @cx18_alsa_load._entry.25, ptr @cx18_alsa_load._entry.28, ptr @cx18_alsa_load._entry.31, ptr @cx18_alsa_load._entry_ptr, ptr @cx18_alsa_load._entry_ptr.20, ptr @cx18_alsa_load._entry_ptr.23, ptr @cx18_alsa_load._entry_ptr.27, ptr @cx18_alsa_load._entry_ptr.30, ptr @cx18_alsa_load._entry_ptr.33, ptr @snd_cx18_exit, ptr @snd_cx18_init._entry, ptr @snd_cx18_init._entry.36, ptr @snd_cx18_init._entry.39, ptr @snd_cx18_init._entry.42, ptr @snd_cx18_init._entry_ptr, ptr @snd_cx18_init._entry_ptr.38, ptr @snd_cx18_init._entry_ptr.41, ptr @snd_cx18_init._entry_ptr.44, ptr @cx18_alsa_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_exit_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_exit_callback._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_exit._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_alsa_load._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cx18_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_cx18_exit(ptr nocapture noundef readonly %cxsc) #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %cxsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cxsc, align 4
  %sc = getelementptr inbounds %struct.snd_cx18_card, ptr %cxsc, i32 0, i32 1
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #7
  %alsa = getelementptr i8, ptr %1, i32 17064
  %4 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %alsa, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_alsa_exit_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %alsa.i = getelementptr i8, ptr %1, i32 17064
  %2 = ptrtoint ptr %alsa.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alsa.i, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sc.i = getelementptr inbounds %struct.snd_cx18_card, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc.i, align 4
  %call1.i = tail call i32 @snd_card_free(ptr noundef %7) #7
  %alsa.i15 = getelementptr i8, ptr %5, i32 17064
  %8 = ptrtoint ptr %alsa.i15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %alsa.i15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end7, %do.end
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx18_alsa_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %call1 = tail call ptr @driver_find(ptr noundef nonnull @.str.11, ptr noundef nonnull @pci_bus_type) #7
  %call2 = tail call i32 @driver_for_each_device(ptr noundef %call1, ptr noundef null, ptr noundef null, ptr noundef nonnull @cx18_alsa_exit_callback) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cx18_ext_init to i32))
  store ptr null, ptr @cx18_ext_init, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_alsa_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cx18_ext_init to i32))
  store ptr @cx18_alsa_load, ptr @cx18_ext_init, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_alsa_load(ptr noundef %cx) #4 align 64 {
entry:
  %sc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %cmp = icmp eq ptr %v4l2_dev1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %cx, null
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %v4l2_dev11 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 29, i32 4, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev11, align 4
  %cmp12 = icmp eq ptr %1, null
  br i1 %cmp12, label %do.body14, label %if.end24

do.body14:                                        ; preds = %if.end10
  %2 = load i32, ptr @cx18_alsa_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body14.cleanup_crit_edge, label %do.end18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %alsa = getelementptr %struct.cx18, ptr %cx, i32 0, i32 30
  %3 = ptrtoint ptr %alsa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alsa, align 8
  %cmp25.not = icmp eq ptr %4, null
  br i1 %cmp25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sc.i) #7
  %5 = ptrtoint ptr %sc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sc.i, align 4
  %pci_dev.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 1
  %6 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call1.i = call i32 @snd_card_new(ptr noundef %dev.i, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %sc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, ptr noundef nonnull @.str.35, i32 noundef %call1.i) #10
  br label %do.end38

if.end.i:                                         ; preds = %if.end32
  %8 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sc.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 64) #11
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %do.end8.i, label %if.end13.i

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name10.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name10.i, ptr noundef nonnull @.str.35, i32 noundef -12) #10
  br label %err_exit_free.i

if.end13.i:                                       ; preds = %if.end.i
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %v4l2_dev1, ptr %call7.i.i.i.i, align 8
  %sc2.i.i = getelementptr inbounds %struct.snd_cx18_card, ptr %call7.i.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %sc2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %sc2.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %13 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i.i, ptr %private_data.i.i, align 8
  %private_free.i.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @snd_cx18_card_private_free, ptr %private_free.i.i, align 4
  %15 = load ptr, ptr %call7.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -8
  %16 = load ptr, ptr %sc2.i.i, align 4
  %driver.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 2
  %call2.i.i = call i32 @strscpy(ptr noundef %driver.i.i, ptr noundef nonnull @.str.45, i32 noundef 16) #7
  %shortname.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i.i, align 8
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %shortname.i.i, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %18) #7
  %longname.i.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i, align 8
  %card_name.i.i = getelementptr i8, ptr %15, i32 140
  %21 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card_name.i.i, align 4
  %call7.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i.i, i32 noundef 80, ptr noundef nonnull @.str.47, i32 noundef %20, ptr noundef %22) #7
  %call15.i = call i32 @snd_cx18_pcm_create(ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end25.i, label %do.end20.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %name22.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name22.i, ptr noundef nonnull @.str.35, i32 noundef %call15.i) #10
  br label %err_exit_free.i

if.end25.i:                                       ; preds = %if.end13.i
  %23 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i.i.i, ptr %alsa, align 8
  %24 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sc.i, align 4
  %call26.i = call i32 @snd_card_register(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %do.body43, label %if.then28.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %alsa, align 8
  %name34.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name34.i, ptr noundef nonnull @.str.35, i32 noundef %call26.i) #10
  br label %err_exit_free.i

err_exit_free.i:                                  ; preds = %if.then28.i, %do.end20.i, %do.end8.i
  %27 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sc.i, align 4
  %cmp.not.i = icmp eq ptr %28, null
  br i1 %cmp.not.i, label %err_exit_free.i.if.end40.i_crit_edge, label %if.then38.i

err_exit_free.i.if.end40.i_crit_edge:             ; preds = %err_exit_free.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then38.i:                                      ; preds = %err_exit_free.i
  call void @__sanitizer_cov_trace_pc() #9
  %call39.i = call i32 @snd_card_free(ptr noundef nonnull %28) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %err_exit_free.i.if.end40.i_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i.i) #7
  br label %do.end38

do.end38:                                         ; preds = %if.end40.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc.i) #7
  %name40 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name40, ptr noundef nonnull @.str.17) #10
  br label %cleanup

do.body43:                                        ; preds = %if.end25.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc.i) #7
  %29 = load i32, ptr @cx18_alsa_debug, align 4
  %and44 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.end49

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body43.cleanup_crit_edge, %do.end38, %do.end29, %do.end18, %do.body14.cleanup_crit_edge, %do.end7, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cx18_pcm_create(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cx18_card_private_free(ptr noundef %sc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sc, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_card, ptr %sc, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.end.snd_cx18_card_free.exit_crit_edge, label %if.end.i

if.end.snd_cx18_card_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_cx18_card_free.exit

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp1.not.i = icmp eq ptr %3, null
  br i1 %cmp1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %alsa.i = getelementptr i8, ptr %3, i32 17064
  %4 = ptrtoint ptr %alsa.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %alsa.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %snd_cx18_card_free.exit

snd_cx18_card_free.exit:                          ; preds = %if.end4.i, %if.end.snd_cx18_card_free.exit_crit_edge
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %sc, i32 0, i32 10
  %6 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_free, align 4
  br label %return

return:                                           ; preds = %snd_cx18_card_free.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype387, !1, !"__UNIQUE_ID_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug388, !4, !"__UNIQUE_ID_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 37, i32 1}
!5 = !{ptr @__UNIQUE_ID_author389, !6, !"__UNIQUE_ID_author389", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_description390, !8, !"__UNIQUE_ID_description390", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 43, i32 1}
!9 = !{ptr @__UNIQUE_ID_file391, !10, !"__UNIQUE_ID_file391", i1 false, i1 false}
!10 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 44, i32 1}
!11 = !{ptr @__UNIQUE_ID_license392, !10, !"__UNIQUE_ID_license392", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_version393, !13, !"__UNIQUE_ID_version393", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 46, i32 1}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__modver_attr, !13, !"__modver_attr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 242, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cx18_alsa_exit_callback._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx18_alsa_exit_callback._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 249, i32 3}
!26 = !{ptr @cx18_alsa_exit_callback._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx18_alsa_exit_callback._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 263, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cx18_alsa_exit._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @cx18_alsa_exit._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 265, i32 20}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 270, i32 2}
!37 = !{ptr @cx18_alsa_exit._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx18_alsa_exit._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__initcall__kmod_cx18_alsa__394_273_cx18_alsa_init6, !40, !"__initcall__kmod_cx18_alsa__394_273_cx18_alsa_init6", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 273, i32 1}
!41 = !{ptr @__exitcall_cx18_alsa_exit, !42, !"__exitcall_cx18_alsa_exit", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 274, i32 1}
!43 = !{ptr @cx18_alsa_debug, !44, !"cx18_alsa_debug", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 28, i32 5}
!45 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 221, i32 2}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cx18_alsa_init._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cx18_alsa_init._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 185, i32 3}
!53 = !{ptr @cx18_alsa_load._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cx18_alsa_load._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 192, i32 3}
!57 = !{ptr @cx18_alsa_load._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cx18_alsa_load._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 198, i32 3}
!61 = !{ptr @cx18_alsa_load._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @cx18_alsa_load._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 204, i32 3}
!66 = !{ptr @cx18_alsa_load._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @cx18_alsa_load._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 210, i32 3}
!70 = !{ptr @cx18_alsa_load._entry.28, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cx18_alsa_load._entry_ptr.30, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 213, i32 3}
!74 = !{ptr @cx18_alsa_load._entry.31, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cx18_alsa_load._entry_ptr.33, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 131, i32 3}
!78 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @snd_cx18_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @snd_cx18_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 139, i32 3}
!83 = !{ptr @snd_cx18_init._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @snd_cx18_init._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 150, i32 3}
!87 = !{ptr @snd_cx18_init._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @snd_cx18_init._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 164, i32 3}
!91 = !{ptr @snd_cx18_init._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_cx18_init._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 99, i32 22}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 102, i32 50}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx18/cx18-alsa-main.c", i32 107, i32 4}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
