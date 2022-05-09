; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-alsa-main.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-alsa-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.snd_ivtv_card = type { ptr, ptr, i32, i32, ptr, %struct.spinlock }
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
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.126, %struct.anon.127, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.118, %struct.anon.119, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125 }
%struct.anon.118 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.119 = type { ptr, ptr }
%struct.anon.120 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.anon.122 = type { ptr, ptr, ptr }
%struct.anon.123 = type { ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.117, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.117 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }

@__param_str_debug = internal constant [16 x i8] c"ivtv_alsa.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ivtv_alsa_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @ivtv_alsa_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [29 x i8] c"ivtv_alsa.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [99 x i8] c"ivtv_alsa.parm=debug:Debug level (bitmask). Default: 0\0A\09\09\09  1/0x0001: warning\0A\09\09\09  2/0x0002: info\0A\00", section ".modinfo", align 1
@__param_str_index = internal constant [16 x i8] c"ivtv_alsa.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype300 = internal constant [38 x i8] c"ivtv_alsa.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index301 = internal constant [70 x i8] c"ivtv_alsa.parm=index:Index value for IVTV ALSA capture interface(s).\0A\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [28 x i8] c"ivtv_alsa.author=Andy Walls\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [53 x i8] c"ivtv_alsa.description=CX23415/CX23416 ALSA Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [48 x i8] c"ivtv_alsa.file=drivers/media/pci/ivtv/ivtv-alsa\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [22 x i8] c"ivtv_alsa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [24 x i8] c"ivtv_alsa.version=1.4.3\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_alsa\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.4.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@ivtv_alsa_exit_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013ivtv_alsa: ivtv-alsa: %s: struct v4l2_device * is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ivtv_alsa_exit_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/ivtv/ivtv-alsa-main.c\00", [56 x i8] zeroinitializer }, align 32
@ivtv_alsa_exit_callback._entry_ptr = internal global ptr @ivtv_alsa_exit_callback._entry, section ".printk_index", align 4
@ivtv_alsa_exit_callback._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014ivtv_alsa: %s-alsa: %s: struct snd_ivtv_card * is NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@ivtv_alsa_exit_callback._entry_ptr.8 = internal global ptr @ivtv_alsa_exit_callback._entry.6, section ".printk_index", align 4
@ivtv_alsa_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016ivtv_alsa: ivtv-alsa: module unloading...\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_alsa_exit\00", [17 x i8] zeroinitializer }, align 32
@ivtv_alsa_exit._entry_ptr = internal global ptr @ivtv_alsa_exit._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ivtv\00", [27 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@ivtv_ext_init = external dso_local local_unnamed_addr global ptr, align 4
@ivtv_alsa_exit._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.5, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ivtv_alsa: ivtv-alsa: module unload complete\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_alsa_exit._entry_ptr.14 = internal global ptr @ivtv_alsa_exit._entry.12, section ".printk_index", align 4
@__initcall__kmod_ivtv_alsa__307_273_ivtv_alsa_init6 = internal global ptr @ivtv_alsa_init, section ".initcall6.init", align 4
@__exitcall_ivtv_alsa_exit = internal global ptr @ivtv_alsa_exit, section ".exitcall.exit", align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@ivtv_alsa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.5, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016ivtv_alsa: ivtv-alsa: module loading...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_alsa_init\00", [17 x i8] zeroinitializer }, align 32
@ivtv_alsa_init._entry_ptr = internal global ptr @ivtv_alsa_init._entry, section ".printk_index", align 4
@ivtv_alsa_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.5, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ivtv_alsa_load\00", [17 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr = internal global ptr @ivtv_alsa_load._entry, section ".printk_index", align 4
@ivtv_alsa_load._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013ivtv_alsa: ivtv-alsa itv is NULL\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr.20 = internal global ptr @ivtv_alsa_load._entry.18, section ".printk_index", align 4
@ivtv_alsa_load._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.5, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ivtv_alsa: %s: alsa:PCM stream for card is disabled - skipping\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr.23 = internal global ptr @ivtv_alsa_load._entry.21, section ".printk_index", align 4
@ivtv_alsa_load._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.5, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ivtv_alsa: %s-alsa: %s: struct snd_ivtv_card * already exists\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr.26 = internal global ptr @ivtv_alsa_load._entry.24, section ".printk_index", align 4
@ivtv_alsa_load._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.5, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013ivtv_alsa: %s-alsa: %s: failed to create struct snd_ivtv_card\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr.29 = internal global ptr @ivtv_alsa_load._entry.27, section ".printk_index", align 4
@ivtv_alsa_load._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.5, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016ivtv_alsa: %s: alsa:created ivtv ALSA interface instance\0A\00", [36 x i8] zeroinitializer }, align 32
@ivtv_alsa_load._entry_ptr.32 = internal global ptr @ivtv_alsa_load._entry.30, section ".printk_index", align 4
@snd_ivtv_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.5, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013ivtv_alsa: %s-alsa: %s: snd_card_new() failed with err %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd_ivtv_init\00", [18 x i8] zeroinitializer }, align 32
@snd_ivtv_init._entry_ptr = internal global ptr @snd_ivtv_init._entry, section ".printk_index", align 4
@snd_ivtv_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.5, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013ivtv_alsa: %s-alsa: %s: snd_ivtv_card_create() failed with err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_ivtv_init._entry_ptr.37 = internal global ptr @snd_ivtv_init._entry.35, section ".printk_index", align 4
@snd_ivtv_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.5, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013ivtv_alsa: %s-alsa: %s: snd_ivtv_pcm_create() failed with err %d\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_ivtv_init._entry_ptr.40 = internal global ptr @snd_ivtv_init._entry.38, section ".printk_index", align 4
@snd_ivtv_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.5, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013ivtv_alsa: %s-alsa: %s: snd_card_register() failed with err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_ivtv_init._entry_ptr.43 = internal global ptr @snd_ivtv_init._entry.41, section ".printk_index", align 4
@snd_ivtv_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.5, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016ivtv_alsa: %s-alsa: %s: Instance %d registered as ALSA card %d\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_ivtv_init._entry_ptr.46 = internal global ptr @snd_ivtv_init._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CX2341[56]\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IVTV-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CX2341[56] #%d %s TV/FM Radio/Line-In Capture\00", [50 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant [16 x i8] c"ivtv_alsa_debug\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 19, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 43, i32 1 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 242, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 249, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 263, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 265, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 270, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 20, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 221, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 187, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 194, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 200, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 205, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 211, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 214, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 130, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 138, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 149, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 163, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 168, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 96, i32 22 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 99, i32 50 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [43 x i8] c"../drivers/media/pci/ivtv/ivtv-alsa-main.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 104, i32 4 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_index301, ptr @__UNIQUE_ID_indextype300, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_version306, ptr @__exitcall_ivtv_alsa_exit, ptr @__initcall__kmod_ivtv_alsa__307_273_ivtv_alsa_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_index, ptr @ivtv_alsa_exit, ptr @ivtv_alsa_exit._entry, ptr @ivtv_alsa_exit._entry.12, ptr @ivtv_alsa_exit._entry_ptr, ptr @ivtv_alsa_exit._entry_ptr.14, ptr @ivtv_alsa_exit_callback, ptr @ivtv_alsa_exit_callback._entry, ptr @ivtv_alsa_exit_callback._entry.6, ptr @ivtv_alsa_exit_callback._entry_ptr, ptr @ivtv_alsa_exit_callback._entry_ptr.8, ptr @ivtv_alsa_init._entry, ptr @ivtv_alsa_init._entry_ptr, ptr @ivtv_alsa_load._entry, ptr @ivtv_alsa_load._entry.18, ptr @ivtv_alsa_load._entry.21, ptr @ivtv_alsa_load._entry.24, ptr @ivtv_alsa_load._entry.27, ptr @ivtv_alsa_load._entry.30, ptr @ivtv_alsa_load._entry_ptr, ptr @ivtv_alsa_load._entry_ptr.20, ptr @ivtv_alsa_load._entry_ptr.23, ptr @ivtv_alsa_load._entry_ptr.26, ptr @ivtv_alsa_load._entry_ptr.29, ptr @ivtv_alsa_load._entry_ptr.32, ptr @snd_ivtv_exit, ptr @snd_ivtv_init._entry, ptr @snd_ivtv_init._entry.35, ptr @snd_ivtv_init._entry.38, ptr @snd_ivtv_init._entry.41, ptr @snd_ivtv_init._entry.44, ptr @snd_ivtv_init._entry_ptr, ptr @snd_ivtv_init._entry_ptr.37, ptr @snd_ivtv_init._entry_ptr.40, ptr @snd_ivtv_init._entry_ptr.43, ptr @snd_ivtv_init._entry_ptr.46, ptr @ivtv_alsa_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @index, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_exit_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_exit_callback._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_exit._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_alsa_load._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ivtv_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ivtv_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ivtv_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ivtv_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ivtv_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_ivtv_exit(ptr nocapture noundef readonly %itvsc) #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %itvsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %itvsc, align 4
  %sc = getelementptr inbounds %struct.snd_ivtv_card, ptr %itvsc, i32 0, i32 1
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 4
  %call1 = tail call i32 @snd_card_free(ptr noundef %3) #7
  %alsa = getelementptr i8, ptr %1, i32 16060
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
define internal i32 @ivtv_alsa_exit_callback(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data) #1 section ".exit.text" align 64 {
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
  %alsa.i = getelementptr i8, ptr %1, i32 16060
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
  %sc.i = getelementptr inbounds %struct.snd_ivtv_card, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sc.i, align 4
  %call1.i = tail call i32 @snd_card_free(ptr noundef %7) #7
  %alsa.i15 = getelementptr i8, ptr %5, i32 16060
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
define internal void @ivtv_alsa_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  %call1 = tail call ptr @driver_find(ptr noundef nonnull @.str.11, ptr noundef nonnull @pci_bus_type) #7
  %call2 = tail call i32 @driver_for_each_device(ptr noundef %call1, ptr noundef null, ptr noundef null, ptr noundef nonnull @ivtv_alsa_exit_callback) #7
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ivtv_ext_init to i32))
  store ptr null, ptr @ivtv_ext_init, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @driver_find(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_alsa_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @ivtv_ext_init to i32))
  store ptr @ivtv_alsa_load, ptr @ivtv_ext_init, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_alsa_load(ptr noundef %itv) #4 align 64 {
entry:
  %sc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_dev1 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %cmp = icmp eq ptr %v4l2_dev1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp3 = icmp eq ptr %itv, null
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %v4l2_dev11 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 42, i32 3, i32 0, i32 7
  %0 = ptrtoint ptr %v4l2_dev11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_dev11, align 4
  %cmp12 = icmp eq ptr %1, null
  br i1 %cmp12, label %do.body14, label %if.end24

do.body14:                                        ; preds = %if.end10
  %2 = load i32, ptr @ivtv_alsa_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body14.cleanup_crit_edge, label %do.end18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end10
  %alsa = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 45
  %3 = ptrtoint ptr %alsa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %alsa, align 8
  %cmp25.not = icmp eq ptr %4, null
  br i1 %cmp25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, ptr noundef nonnull @.str.17) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sc.i) #7
  %5 = ptrtoint ptr %sc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sc.i, align 4
  %instance.i = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 25
  %6 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %instance.i, align 4
  %idxprom.i = zext i16 %7 to i32
  %arrayidx.i = getelementptr [32 x i32], ptr @index, i32 0, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %itv, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %call4.i = call i32 @snd_card_new(ptr noundef %dev.i, i32 noundef %9, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %sc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, ptr noundef nonnull @.str.34, i32 noundef %call4.i) #10
  br label %do.end38

if.end.i:                                         ; preds = %if.end32
  %12 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sc.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 64) #11
  %cmp.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %cmp.i.i, label %do.end11.i, label %if.end16.i

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %name13.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name13.i, ptr noundef nonnull @.str.34, i32 noundef -12) #10
  br label %err_exit_free.i

if.end16.i:                                       ; preds = %if.end.i
  %15 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %v4l2_dev1, ptr %call7.i.i.i.i, align 8
  %sc2.i.i = getelementptr inbounds %struct.snd_ivtv_card, ptr %call7.i.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %sc2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %sc2.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 9
  %17 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i.i, ptr %private_data.i.i, align 8
  %private_free.i.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %private_free.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_ivtv_card_private_free, ptr %private_free.i.i, align 4
  %19 = load ptr, ptr %call7.i.i.i.i, align 8
  %20 = load ptr, ptr %sc2.i.i, align 4
  %driver.i.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 2
  %call2.i.i = call i32 @strscpy(ptr noundef %driver.i.i, ptr noundef nonnull @.str.47, i32 noundef 16) #7
  %shortname.i.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 3
  %instance.i.i = getelementptr i8, ptr %19, i32 856
  %21 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %instance.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %call4.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %shortname.i.i, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %conv.i.i) #7
  %longname.i.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %instance.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %instance.i.i, align 4
  %conv7.i.i = zext i16 %24 to i32
  %card_name.i.i = getelementptr i8, ptr %19, i32 -116
  %25 = ptrtoint ptr %card_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card_name.i.i, align 8
  %call8.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i.i, i32 noundef 80, ptr noundef nonnull @.str.49, i32 noundef %conv7.i.i, ptr noundef %26) #7
  %call18.i = call i32 @snd_ivtv_pcm_create(ptr noundef nonnull %call7.i.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end28.i, label %do.end23.i

do.end23.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %name25.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name25.i, ptr noundef nonnull @.str.34, i32 noundef %call18.i) #10
  br label %err_exit_free.i

if.end28.i:                                       ; preds = %if.end16.i
  %27 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7.i.i.i.i, ptr %alsa, align 8
  %28 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sc.i, align 4
  %call29.i = call i32 @snd_card_register(ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.body43, label %if.then31.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %alsa to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %alsa, align 8
  %name37.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name37.i, ptr noundef nonnull @.str.34, i32 noundef %call29.i) #10
  br label %err_exit_free.i

err_exit_free.i:                                  ; preds = %if.then31.i, %do.end23.i, %do.end11.i
  %31 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sc.i, align 4
  %cmp49.not.i = icmp eq ptr %32, null
  br i1 %cmp49.not.i, label %err_exit_free.i.if.end53.i_crit_edge, label %if.then51.i

err_exit_free.i.if.end53.i_crit_edge:             ; preds = %err_exit_free.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then51.i:                                      ; preds = %err_exit_free.i
  call void @__sanitizer_cov_trace_pc() #9
  %call52.i = call i32 @snd_card_free(ptr noundef nonnull %32) #7
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %err_exit_free.i.if.end53.i_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i.i) #7
  br label %do.end38

do.end38:                                         ; preds = %if.end53.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc.i) #7
  %name40 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name40, ptr noundef nonnull @.str.17) #10
  br label %cleanup

do.body43:                                        ; preds = %if.end28.i
  %name45.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %33 = ptrtoint ptr %instance.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %instance.i, align 4
  %conv.i = zext i16 %34 to i32
  %35 = ptrtoint ptr %sc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sc.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name45.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i, i32 noundef %38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc.i) #7
  %39 = load i32, ptr @ivtv_alsa_debug, align 4
  %and44 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body43.cleanup_crit_edge, label %do.end49

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end49:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %do.body43.cleanup_crit_edge, %do.end38, %do.end29, %do.end18, %do.body14.cleanup_crit_edge, %do.end7, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ivtv_pcm_create(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ivtv_card_private_free(ptr noundef %sc) #4 align 64 {
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
  br i1 %cmp.i, label %if.end.snd_ivtv_card_free.exit_crit_edge, label %if.end.i

if.end.snd_ivtv_card_free.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %snd_ivtv_card_free.exit

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
  %alsa.i = getelementptr i8, ptr %3, i32 16060
  %4 = ptrtoint ptr %alsa.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %alsa.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %snd_ivtv_card_free.exit

snd_ivtv_card_free.exit:                          ; preds = %if.end4.i, %if.end.snd_ivtv_card_free.exit_crit_edge
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %sc, i32 0, i32 10
  %6 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_free, align 4
  br label %return

return:                                           ; preds = %snd_ivtv_card_free.exit, %entry.return_crit_edge
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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug299, !4, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 30, i32 1}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype300, !6, !"__UNIQUE_ID_indextype300", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index301, !9, !"__UNIQUE_ID_index301", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 36, i32 1}
!10 = !{ptr @__UNIQUE_ID_author302, !11, !"__UNIQUE_ID_author302", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_description303, !13, !"__UNIQUE_ID_description303", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 40, i32 1}
!14 = !{ptr @__UNIQUE_ID_file304, !15, !"__UNIQUE_ID_file304", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 41, i32 1}
!16 = !{ptr @__UNIQUE_ID_license305, !15, !"__UNIQUE_ID_license305", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_version306, !18, !"__UNIQUE_ID_version306", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 43, i32 1}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__modver_attr, !18, !"__modver_attr", i1 false, i1 false}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 242, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ivtv_alsa_exit_callback._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @ivtv_alsa_exit_callback._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 249, i32 3}
!31 = !{ptr @ivtv_alsa_exit_callback._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ivtv_alsa_exit_callback._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 263, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ivtv_alsa_exit._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ivtv_alsa_exit._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 265, i32 20}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 270, i32 2}
!42 = !{ptr @ivtv_alsa_exit._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ivtv_alsa_exit._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @__initcall__kmod_ivtv_alsa__307_273_ivtv_alsa_init6, !45, !"__initcall__kmod_ivtv_alsa__307_273_ivtv_alsa_init6", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 273, i32 1}
!46 = !{ptr @__exitcall_ivtv_alsa_exit, !47, !"__exitcall_ivtv_alsa_exit", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 274, i32 1}
!48 = !{ptr @ivtv_alsa_debug, !49, !"ivtv_alsa_debug", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 19, i32 5}
!50 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!51 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!52 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!53 = !{ptr @index, !54, !"index", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 20, i32 12}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 221, i32 2}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ivtv_alsa_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ivtv_alsa_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 187, i32 3}
!62 = !{ptr @ivtv_alsa_load._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ivtv_alsa_load._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 194, i32 3}
!66 = !{ptr @ivtv_alsa_load._entry.18, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ivtv_alsa_load._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 200, i32 3}
!70 = !{ptr @ivtv_alsa_load._entry.21, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ivtv_alsa_load._entry_ptr.23, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 205, i32 3}
!74 = !{ptr @ivtv_alsa_load._entry.24, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ivtv_alsa_load._entry_ptr.26, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 211, i32 3}
!78 = !{ptr @ivtv_alsa_load._entry.27, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ivtv_alsa_load._entry_ptr.29, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 214, i32 3}
!82 = !{ptr @ivtv_alsa_load._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ivtv_alsa_load._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 130, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @snd_ivtv_init._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @snd_ivtv_init._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 138, i32 3}
!91 = !{ptr @snd_ivtv_init._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @snd_ivtv_init._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 149, i32 3}
!95 = !{ptr @snd_ivtv_init._entry.38, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @snd_ivtv_init._entry_ptr.40, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 163, i32 3}
!99 = !{ptr @snd_ivtv_init._entry.41, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @snd_ivtv_init._entry_ptr.43, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 168, i32 2}
!103 = !{ptr @snd_ivtv_init._entry.44, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @snd_ivtv_init._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 96, i32 22}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 99, i32 50}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/ivtv/ivtv-alsa-main.c", i32 104, i32 4}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
