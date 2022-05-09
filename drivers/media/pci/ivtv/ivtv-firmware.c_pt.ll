; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-firmware.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ivtv_card = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [6 x %struct.ivtv_card_video_input], [3 x %struct.ivtv_card_audio_input], %struct.ivtv_card_audio_input, i32, ptr, i8, i8, %struct.ivtv_gpio_init, %struct.ivtv_gpio_video_input, %struct.ivtv_gpio_audio_input, %struct.ivtv_gpio_audio_mute, %struct.ivtv_gpio_audio_mode, %struct.ivtv_gpio_audio_freq, %struct.ivtv_gpio_audio_detect, [3 x %struct.ivtv_card_tuner], ptr, ptr }
%struct.ivtv_card_video_input = type { i8, i8, i16 }
%struct.ivtv_card_audio_input = type { i8, i32, i16 }
%struct.ivtv_gpio_init = type { i16, i16 }
%struct.ivtv_gpio_video_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_input = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_mute = type { i16, i16 }
%struct.ivtv_gpio_audio_mode = type { i16, i16, i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_freq = type { i16, i16, i16, i16 }
%struct.ivtv_gpio_audio_detect = type { i16, i16 }
%struct.ivtv_card_tuner = type { i64, i32 }
%struct.ivtv_card_output = type { [32 x i8], i16 }

@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_halt_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: Preparing for firmware halt.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_halt_firmware\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/pci/ivtv/ivtv-firmware.c\00", [57 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr = internal global ptr @ivtv_halt_firmware._entry, section ".printk_index", align 4
@ivtv_halt_firmware._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  info: Stopping VDM\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.5 = internal global ptr @ivtv_halt_firmware._entry.3, section ".printk_index", align 4
@ivtv_halt_firmware._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s:  info: Stopping AO\0A\00", [38 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.8 = internal global ptr @ivtv_halt_firmware._entry.6, section ".printk_index", align 4
@ivtv_halt_firmware._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s:  info: pinging (?) APU\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.11 = internal global ptr @ivtv_halt_firmware._entry.9, section ".printk_index", align 4
@ivtv_halt_firmware._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  info: Stopping VPU\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.14 = internal global ptr @ivtv_halt_firmware._entry.12, section ".printk_index", align 4
@ivtv_halt_firmware._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  info: Resetting Hw Blocks\0A\00", [62 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.17 = internal global ptr @ivtv_halt_firmware._entry.15, section ".printk_index", align 4
@ivtv_halt_firmware._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  info: Stopping SPU\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.20 = internal global ptr @ivtv_halt_firmware._entry.18, section ".printk_index", align 4
@ivtv_halt_firmware._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  info: init Encoder SDRAM pre-charge\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.23 = internal global ptr @ivtv_halt_firmware._entry.21, section ".printk_index", align 4
@ivtv_halt_firmware._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  info: init Encoder SDRAM refresh to 1us\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.26 = internal global ptr @ivtv_halt_firmware._entry.24, section ".printk_index", align 4
@ivtv_halt_firmware._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s:  info: init Decoder SDRAM pre-charge\0A\00", [52 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.29 = internal global ptr @ivtv_halt_firmware._entry.27, section ".printk_index", align 4
@ivtv_halt_firmware._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  info: init Decoder SDRAM refresh to 1us\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.32 = internal global ptr @ivtv_halt_firmware._entry.30, section ".printk_index", align 4
@ivtv_halt_firmware._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.1, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s:  info: Sleeping for %dms\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_halt_firmware._entry_ptr.35 = internal global ptr @ivtv_halt_firmware._entry.33, section ".printk_index", align 4
@ivtv_firmware_versions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Encoder revision: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ivtv_firmware_versions\00", [41 x i8] zeroinitializer }, align 32
@ivtv_firmware_versions._entry_ptr = internal global ptr @ivtv_firmware_versions._entry, section ".printk_index", align 4
@ivtv_firmware_versions._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014%s: Recommended firmware version is 0x02060039.\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_firmware_versions._entry_ptr.40 = internal global ptr @ivtv_firmware_versions._entry.38, section ".printk_index", align 4
@ivtv_firmware_versions._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: Decoder revision: 0x%08x\0A\00", [32 x i8] zeroinitializer }, align 32
@ivtv_firmware_versions._entry_ptr.43 = internal global ptr @ivtv_firmware_versions._entry.41, section ".printk_index", align 4
@ivtv_firmware_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:  warn: Error %d loading firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_firmware_init\00", [45 x i8] zeroinitializer }, align 32
@ivtv_firmware_init._entry_ptr = internal global ptr @ivtv_firmware_init._entry, section ".printk_index", align 4
@ivtv_firmware_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Encoder mailbox not found\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_firmware_init._entry_ptr.48 = internal global ptr @ivtv_firmware_init._entry.46, section ".printk_index", align 4
@ivtv_firmware_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Encoder firmware dead!\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_firmware_init._entry_ptr.51 = internal global ptr @ivtv_firmware_init._entry.49, section ".printk_index", align 4
@ivtv_firmware_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Decoder mailbox not found\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_firmware_init._entry_ptr.54 = internal global ptr @ivtv_firmware_init._entry.52, section ".printk_index", align 4
@ivtv_firmware_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.45, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: Decoder firmware dead!\0A\00", [34 x i8] zeroinitializer }, align 32
@ivtv_firmware_init._entry_ptr.57 = internal global ptr @ivtv_firmware_init._entry.55, section ".printk_index", align 4
@ivtv_init_mpeg_decoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: ivtv_init_mpeg_decoder failed to set decoder source\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ivtv_init_mpeg_decoder\00", [41 x i8] zeroinitializer }, align 32
@ivtv_init_mpeg_decoder._entry_ptr = internal global ptr @ivtv_init_mpeg_decoder._entry, section ".printk_index", align 4
@ivtv_init_mpeg_decoder._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s: ivtv_init_mpeg_decoder failed to start playback\0A\00", [41 x i8] zeroinitializer }, align 32
@ivtv_init_mpeg_decoder._entry_ptr.62 = internal global ptr @ivtv_init_mpeg_decoder._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"v4l-cx2341x-init.mpg\00", [43 x i8] zeroinitializer }, align 32
@ivtv_init_mpeg_decoder._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s:  warn: failed to read mpeg decoder initialisation file %s\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_init_mpeg_decoder._entry_ptr.66 = internal global ptr @ivtv_init_mpeg_decoder._entry.64, section ".printk_index", align 4
@ivtv_firmware_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Encoder has died : %s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ivtv_firmware_check\00", [44 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr = internal global ptr @ivtv_firmware_check._entry, section ".printk_index", align 4
@ivtv_firmware_check._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: Audio has died (Encoder OK) : %s\0A\00", [56 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.71 = internal global ptr @ivtv_firmware_check._entry.69, section ".printk_index", align 4
@ivtv_firmware_check._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.68, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: Audio has died (Decoder) : %s\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.74 = internal global ptr @ivtv_firmware_check._entry.72, section ".printk_index", align 4
@ivtv_firmware_check._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.68, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Decoder has died : %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.77 = internal global ptr @ivtv_firmware_check._entry.75, section ".printk_index", align 4
@ivtv_firmware_check._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.68, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: Detected in %s that firmware had failed - Reloading\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.80 = internal global ptr @ivtv_firmware_check._entry.78, section ".printk_index", align 4
@ivtv_firmware_check._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.68, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Firmware restart okay\0A\00", [35 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.83 = internal global ptr @ivtv_firmware_check._entry.81, section ".printk_index", align 4
@ivtv_firmware_check._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.68, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Firmware restart failed\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtv_firmware_check._entry_ptr.86 = internal global ptr @ivtv_firmware_check._entry.84, section ".printk_index", align 4
@__UNIQUE_ID_firmware296 = internal constant [33 x i8] c"ivtv.firmware=v4l-cx2341x-enc.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware297 = internal constant [33 x i8] c"ivtv.firmware=v4l-cx2341x-dec.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [35 x i8] c"ivtv.firmware=v4l-cx2341x-init.mpg\00", section ".modinfo", align 1
@ivtv_firmware_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: Loading encoder image\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ivtv_firmware_copy\00", [45 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry_ptr = internal global ptr @ivtv_firmware_copy._entry, section ".printk_index", align 4
@.str.89 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx2341x-enc.fw\00", [45 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.88, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:  warn: failed loading encoder firmware\0A\00", [50 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry_ptr.92 = internal global ptr @ivtv_firmware_copy._entry.90, section ".printk_index", align 4
@ivtv_firmware_copy._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.88, ptr @.str.2, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  info: Loading decoder image\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry_ptr.95 = internal global ptr @ivtv_firmware_copy._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx2341x-dec.fw\00", [45 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.88, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s:  warn: failed loading decoder firmware\0A\00", [50 x i8] zeroinitializer }, align 32
@ivtv_firmware_copy._entry_ptr.99 = internal global ptr @ivtv_firmware_copy._entry.97, section ".printk_index", align 4
@load_fw_direct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\016%s: Retry: file loaded was not %s (expected size %ld, got %zu)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"load_fw_direct\00", [17 x i8] zeroinitializer }, align 32
@load_fw_direct._entry_ptr = internal global ptr @load_fw_direct._entry, section ".printk_index", align 4
@load_fw_direct._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Loaded %s firmware (%zu bytes)\0A\00", [58 x i8] zeroinitializer }, align 32
@load_fw_direct._entry_ptr.104 = internal global ptr @load_fw_direct._entry.102, section ".printk_index", align 4
@load_fw_direct._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: Unable to open firmware %s (must be %ld bytes)\0A\00", [42 x i8] zeroinitializer }, align 32
@load_fw_direct._entry_ptr.107 = internal global ptr @load_fw_direct._entry.105, section ".printk_index", align 4
@load_fw_direct._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: Did you put the firmware in the hotplug firmware directory?\0A\00", [61 x i8] zeroinitializer }, align 32
@load_fw_direct._entry_ptr.110 = internal global ptr @load_fw_direct._entry.108, section ".printk_index", align 4
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 78, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 90, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 93, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 96, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 102, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 105, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 110, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 113, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 117, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 120, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 124, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 134, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 137, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 142, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 192, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 208, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 210, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 221, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 223, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 244, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 249, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 255, i32 34 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 257, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 329, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 340, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 351, i32 5 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 359, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 367, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 376, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 379, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 148, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 149, i32 21 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 151, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 157, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 158, i32 21 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 160, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 56, i32 4 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 67, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 71, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.370 = private constant [42 x i8] c"../drivers/media/pci/ivtv/ivtv-firmware.c\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.370, i32 72, i32 2 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_firmware296, ptr @__UNIQUE_ID_firmware297, ptr @__UNIQUE_ID_firmware298, ptr @ivtv_firmware_check._entry, ptr @ivtv_firmware_check._entry.69, ptr @ivtv_firmware_check._entry.72, ptr @ivtv_firmware_check._entry.75, ptr @ivtv_firmware_check._entry.78, ptr @ivtv_firmware_check._entry.81, ptr @ivtv_firmware_check._entry.84, ptr @ivtv_firmware_check._entry_ptr, ptr @ivtv_firmware_check._entry_ptr.71, ptr @ivtv_firmware_check._entry_ptr.74, ptr @ivtv_firmware_check._entry_ptr.77, ptr @ivtv_firmware_check._entry_ptr.80, ptr @ivtv_firmware_check._entry_ptr.83, ptr @ivtv_firmware_check._entry_ptr.86, ptr @ivtv_firmware_copy._entry, ptr @ivtv_firmware_copy._entry.90, ptr @ivtv_firmware_copy._entry.93, ptr @ivtv_firmware_copy._entry.97, ptr @ivtv_firmware_copy._entry_ptr, ptr @ivtv_firmware_copy._entry_ptr.92, ptr @ivtv_firmware_copy._entry_ptr.95, ptr @ivtv_firmware_copy._entry_ptr.99, ptr @ivtv_firmware_init._entry, ptr @ivtv_firmware_init._entry.46, ptr @ivtv_firmware_init._entry.49, ptr @ivtv_firmware_init._entry.52, ptr @ivtv_firmware_init._entry.55, ptr @ivtv_firmware_init._entry_ptr, ptr @ivtv_firmware_init._entry_ptr.48, ptr @ivtv_firmware_init._entry_ptr.51, ptr @ivtv_firmware_init._entry_ptr.54, ptr @ivtv_firmware_init._entry_ptr.57, ptr @ivtv_firmware_versions._entry, ptr @ivtv_firmware_versions._entry.38, ptr @ivtv_firmware_versions._entry.41, ptr @ivtv_firmware_versions._entry_ptr, ptr @ivtv_firmware_versions._entry_ptr.40, ptr @ivtv_firmware_versions._entry_ptr.43, ptr @ivtv_halt_firmware._entry, ptr @ivtv_halt_firmware._entry.12, ptr @ivtv_halt_firmware._entry.15, ptr @ivtv_halt_firmware._entry.18, ptr @ivtv_halt_firmware._entry.21, ptr @ivtv_halt_firmware._entry.24, ptr @ivtv_halt_firmware._entry.27, ptr @ivtv_halt_firmware._entry.3, ptr @ivtv_halt_firmware._entry.30, ptr @ivtv_halt_firmware._entry.33, ptr @ivtv_halt_firmware._entry.6, ptr @ivtv_halt_firmware._entry.9, ptr @ivtv_halt_firmware._entry_ptr, ptr @ivtv_halt_firmware._entry_ptr.11, ptr @ivtv_halt_firmware._entry_ptr.14, ptr @ivtv_halt_firmware._entry_ptr.17, ptr @ivtv_halt_firmware._entry_ptr.20, ptr @ivtv_halt_firmware._entry_ptr.23, ptr @ivtv_halt_firmware._entry_ptr.26, ptr @ivtv_halt_firmware._entry_ptr.29, ptr @ivtv_halt_firmware._entry_ptr.32, ptr @ivtv_halt_firmware._entry_ptr.35, ptr @ivtv_halt_firmware._entry_ptr.5, ptr @ivtv_halt_firmware._entry_ptr.8, ptr @ivtv_init_mpeg_decoder._entry, ptr @ivtv_init_mpeg_decoder._entry.60, ptr @ivtv_init_mpeg_decoder._entry.64, ptr @ivtv_init_mpeg_decoder._entry_ptr, ptr @ivtv_init_mpeg_decoder._entry_ptr.62, ptr @ivtv_init_mpeg_decoder._entry_ptr.66, ptr @load_fw_direct._entry, ptr @load_fw_direct._entry.102, ptr @load_fw_direct._entry.105, ptr @load_fw_direct._entry.108, ptr @load_fw_direct._entry_ptr, ptr @load_fw_direct._entry_ptr.104, ptr @load_fw_direct._entry_ptr.107, ptr @load_fw_direct._entry_ptr.110, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_halt_firmware._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_versions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_versions._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_versions._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_init_mpeg_decoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_init_mpeg_decoder._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_init_mpeg_decoder._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_check._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_copy._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_copy._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_firmware_copy._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_fw_direct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_fw_direct._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_fw_direct._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_fw_direct._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_halt_firmware(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %has_cx23415 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 4
  %1 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool3.not = icmp eq i8 %2, 0
  br i1 %tobool3.not, label %do.end2.if.end7_crit_edge, label %land.lhs.true

do.end2.if.end7_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

land.lhs.true:                                    ; preds = %do.end2
  %dec_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  %3 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dec_mbox, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 14, i32 noundef 0) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %do.end2.if.end7_crit_edge
  %enc_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 66
  %5 = ptrtoint ptr %enc_mbox to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enc_mbox, align 8
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %if.end7.if.end12_crit_edge, label %if.then10

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 195, i32 noundef 0) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7.if.end12_crit_edge
  %call13 = tail call i32 @ivtv_msleep_timeout(i32 noundef 10, i32 noundef 0) #4
  %dec_mbox14 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  %7 = ptrtoint ptr %dec_mbox14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %dec_mbox14, align 4
  %8 = ptrtoint ptr %enc_mbox to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %enc_mbox, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %9 = load i32, ptr @ivtv_debug, align 4
  %and19 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end12.do.body31_crit_edge, label %do.end23

if.end12.do.body31_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

do.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %name26 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name26) #7
  br label %do.body31

do.body31:                                        ; preds = %do.end23, %if.end12.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !181
  tail call void @arm_heavy_mb() #4
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %10 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %12 = load i32, ptr @ivtv_debug, align 4
  %and34 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body31.do.body46_crit_edge, label %do.end38

do.body31.do.body46_crit_edge:                    ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body46

do.end38:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #6
  %name41 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name41) #7
  br label %do.body46

do.body46:                                        ; preds = %do.end38, %do.body31.do.body46_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  %13 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_mem, align 8
  %add.ptr49 = getelementptr i8, ptr %14, i32 11520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 83886080) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %15 = load i32, ptr @ivtv_debug, align 4
  %and51 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body46.do.body63_crit_edge, label %do.end55

do.body46.do.body63_crit_edge:                    ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body63

do.end55:                                         ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %name58 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name58) #7
  br label %do.body63

do.body63:                                        ; preds = %do.end55, %do.body46.do.body63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem, align 8
  %add.ptr66 = getelementptr i8, ptr %17, i32 41060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %18 = load i32, ptr @ivtv_debug, align 4
  %and68 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %do.body63.do.end79_crit_edge, label %do.end72

do.body63.do.end79_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end79

do.end72:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  %name75 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name75) #7
  br label %do.end79

do.end79:                                         ; preds = %do.end72, %do.body63.do.end79_crit_edge
  %19 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool81.not = icmp eq i8 %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %21 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_mem, align 8
  %add.ptr86 = getelementptr i8, ptr %22, i32 36952
  br i1 %tobool81.not, label %do.body83, label %do.body87

do.body83:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -285212673) #4, !srcloc !182
  br label %do.body92

do.body87:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -16777217) #4, !srcloc !182
  br label %do.body92

do.body92:                                        ; preds = %do.body87, %do.body83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %23 = load i32, ptr @ivtv_debug, align 4
  %and93 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %do.body92.do.body105_crit_edge, label %do.end97

do.body92.do.body105_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body105

do.end97:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #6
  %name100 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name100) #7
  br label %do.body105

do.body105:                                       ; preds = %do.end97, %do.body92.do.body105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !185
  tail call void @arm_heavy_mb() #4
  %24 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mem, align 8
  %add.ptr108 = getelementptr i8, ptr %25, i32 36948
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 -1) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %26 = load i32, ptr @ivtv_debug, align 4
  %and110 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %do.body105.do.body122_crit_edge, label %do.end114

do.body105.do.body122_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body122

do.end114:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #6
  %name117 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name117) #7
  br label %do.body122

do.body122:                                       ; preds = %do.end114, %do.body105.do.body122_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !186
  tail call void @arm_heavy_mb() #4
  %27 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem, align 8
  %add.ptr125 = getelementptr i8, ptr %28, i32 36944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 16777216) #4, !srcloc !182
  %call126 = tail call i32 @ivtv_msleep_timeout(i32 noundef 10, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %29 = load i32, ptr @ivtv_debug, align 4
  %and128 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %do.body122.do.body140_crit_edge, label %do.end132

do.body122.do.body140_crit_edge:                  ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body140

do.end132:                                        ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #6
  %name135 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name135) #7
  br label %do.body140

do.body140:                                       ; preds = %do.end132, %do.body122.do.body140_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !187
  tail call void @arm_heavy_mb() #4
  %30 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem, align 8
  %add.ptr143 = getelementptr i8, ptr %31, i32 2044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 436207616) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %32 = load i32, ptr @ivtv_debug, align 4
  %and145 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %do.body140.do.body157_crit_edge, label %do.end149

do.body140.do.body157_crit_edge:                  ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body157

do.end149:                                        ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #6
  %name152 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name152) #7
  br label %do.body157

do.body157:                                       ; preds = %do.end149, %do.body140.do.body157_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %33 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem, align 8
  %add.ptr160 = getelementptr i8, ptr %34, i32 2040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160, i32 1074135168) #4, !srcloc !182
  %35 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool162.not = icmp eq i8 %36, 0
  br i1 %tobool162.not, label %do.body157.do.body199_crit_edge, label %do.body164

do.body157.do.body199_crit_edge:                  ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body199

do.body164:                                       ; preds = %do.body157
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %37 = load i32, ptr @ivtv_debug, align 4
  %and165 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %do.body164.do.body177_crit_edge, label %do.end169

do.body164.do.body177_crit_edge:                  ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body177

do.end169:                                        ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #6
  %name172 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name172) #7
  br label %do.body177

do.body177:                                       ; preds = %do.end169, %do.body164.do.body177_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !189
  tail call void @arm_heavy_mb() #4
  %38 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem, align 8
  %add.ptr180 = getelementptr i8, ptr %39, i32 2300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr180, i32 436207616) #4, !srcloc !182
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %40 = load i32, ptr @ivtv_debug, align 4
  %and182 = and i32 %40, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182)
  %tobool183.not = icmp eq i32 %and182, 0
  br i1 %tobool183.not, label %do.body177.do.body194_crit_edge, label %do.end186

do.body177.do.body194_crit_edge:                  ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body194

do.end186:                                        ; preds = %do.body177
  call void @__sanitizer_cov_trace_pc() #6
  %name189 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name189) #7
  br label %do.body194

do.body194:                                       ; preds = %do.end186, %do.body177.do.body194_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !190
  tail call void @arm_heavy_mb() #4
  %41 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_mem, align 8
  %add.ptr197 = getelementptr i8, ptr %42, i32 2296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197, i32 1074135168) #4, !srcloc !182
  br label %do.body199

do.body199:                                       ; preds = %do.body194, %do.body157.do.body199_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %43 = load i32, ptr @ivtv_debug, align 4
  %and200 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %do.body199.do.end211_crit_edge, label %do.end204

do.body199.do.end211_crit_edge:                   ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end211

do.end204:                                        ; preds = %do.body199
  call void @__sanitizer_cov_trace_pc() #6
  %name207 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call209 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name207, i32 noundef 600) #7
  br label %do.end211

do.end211:                                        ; preds = %do.end204, %do.body199.do.end211_crit_edge
  %call212 = tail call i32 @ivtv_msleep_timeout(i32 noundef 600, i32 noundef 0) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_firmware_versions(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #4
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  %call = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %itv, ptr noundef nonnull %data, i32 noundef 196, i32 noundef 0) #4
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name, i32 noundef %2) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33947705, i32 %4)
  %cmp.not = icmp eq i32 %4, 33947705
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end6

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name) #7
  br label %if.end

if.end:                                           ; preds = %do.end6, %entry.if.end_crit_edge
  %has_cx23415 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 4
  %5 = ptrtoint ptr %has_cx23415 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_cx23415, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end24_crit_edge, label %if.then12

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = call i32 (ptr, ptr, i32, i32, ...) @ivtv_vapi_result(ptr noundef %itv, ptr noundef nonnull %data, i32 noundef 17, i32 noundef 0) #4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %8) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then12, %if.end.if.end24_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_vapi_result(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_firmware_init(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ivtv_halt_firmware(ptr noundef %itv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end2.i_crit_edge, label %do.end.i

entry.do.end2.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name.i) #7
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %entry.do.end2.i_crit_edge
  %enc_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 15
  %1 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %enc_mem.i, align 8
  %call3.i = tail call fastcc i32 @load_fw_direct(ptr noundef nonnull @.str.89, ptr noundef %2, ptr noundef %itv, i32 noundef 376836) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 376836, i32 %call3.i)
  %cmp.not.i = icmp eq i32 %call3.i, 376836
  br i1 %cmp.not.i, label %if.end18.i, label %do.body5.i

do.body5.i:                                       ; preds = %do.end2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %3 = load i32, ptr @ivtv_debug, align 4
  %and6.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %do.body5.i.do.body_crit_edge, label %do.body5.i.return.sink.split.i_crit_edge

do.body5.i.return.sink.split.i_crit_edge:         ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split.i

do.body5.i.do.body_crit_edge:                     ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end18.i:                                       ; preds = %do.end2.i
  %has_cx23415.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 4
  %4 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool19.not.i = icmp eq i8 %5, 0
  br i1 %tobool19.not.i, label %if.end18.i.do.body8_crit_edge, label %do.body22.i

if.end18.i.do.body8_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body8

do.body22.i:                                      ; preds = %if.end18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %6 = load i32, ptr @ivtv_debug, align 4
  %and23.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %do.body22.i.do.end34.i_crit_edge, label %do.end27.i

do.body22.i.do.end34.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end34.i

do.end27.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  %name30.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name30.i) #7
  br label %do.end34.i

do.end34.i:                                       ; preds = %do.end27.i, %do.body22.i.do.end34.i_crit_edge
  %dec_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %7 = ptrtoint ptr %dec_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dec_mem.i, align 4
  %call35.i = tail call fastcc i32 @load_fw_direct(ptr noundef nonnull @.str.96, ptr noundef %8, ptr noundef %itv, i32 noundef 262144) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 262144
  br i1 %cmp36.not.i, label %do.end34.i.do.body8_crit_edge, label %do.body38.i

do.end34.i.do.body8_crit_edge:                    ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body8

do.body38.i:                                      ; preds = %do.end34.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %9 = load i32, ptr @ivtv_debug, align 4
  %and39.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i)
  %tobool40.not.i = icmp eq i32 %and39.i, 0
  br i1 %tobool40.not.i, label %do.body38.i.do.body_crit_edge, label %do.body38.i.return.sink.split.i_crit_edge

do.body38.i.return.sink.split.i_crit_edge:        ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split.i

do.body38.i.do.body_crit_edge:                    ; preds = %do.body38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

return.sink.split.i:                              ; preds = %do.body38.i.return.sink.split.i_crit_edge, %do.body5.i.return.sink.split.i_crit_edge
  %.str.98.sink.i = phi ptr [ @.str.91, %do.body5.i.return.sink.split.i_crit_edge ], [ @.str.98, %do.body38.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -3, %do.body5.i.return.sink.split.i_crit_edge ], [ -1, %do.body38.i.return.sink.split.i_crit_edge ]
  %name46.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.98.sink.i, ptr noundef %name46.i) #7
  br label %do.body

do.body:                                          ; preds = %return.sink.split.i, %do.body38.i.do.body_crit_edge, %do.body5.i.do.body_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %return.sink.split.i ], [ -1, %do.body38.i.do.body_crit_edge ], [ -3, %do.body5.i.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %10 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name, i32 noundef %retval.0.i.ph) #7
  br label %cleanup

do.body8:                                         ; preds = %do.end34.i.do.body8_crit_edge, %if.end18.i.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !191
  tail call void @arm_heavy_mb() #4
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %11 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %12, i32 36944
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !193
  %14 = and i32 %13, -16777217
  %15 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mem, align 8
  %add.ptr16 = getelementptr i8, ptr %16, i32 36944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %14) #4, !srcloc !182
  %call17 = tail call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #4
  %17 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool18.not = icmp eq i8 %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %19 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem, align 8
  %add.ptr39 = getelementptr i8, ptr %20, i32 36952
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  br i1 %tobool18.not, label %do.body33, label %do.body20

do.body20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %22 = and i32 %21, -150994945
  %23 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem, align 8
  %add.ptr32 = getelementptr i8, ptr %24, i32 36952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %22) #4, !srcloc !182
  br label %if.end46

do.body33:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #6
  %25 = and i32 %21, -67108865
  %26 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_mem, align 8
  %add.ptr45 = getelementptr i8, ptr %27, i32 36952
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %25) #4, !srcloc !182
  br label %if.end46

if.end46:                                         ; preds = %do.body33, %do.body20
  %call47 = tail call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #4
  %28 = ptrtoint ptr %enc_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %enc_mem.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end46
  %i.01.i = phi i32 [ 0, %if.end46 ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %29, i32 %i.01.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %30)
  %cmp2.i = icmp eq i32 %30, 2018915346
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 309876276, i32 %31)
  %cmp10.i = icmp eq i32 %31, 309876276
  br i1 %cmp10.i, label %land.lhs.true11.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %add.ptr15.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 873625686, i32 %32)
  %cmp19.i = icmp eq i32 %32, 873625686
  br i1 %cmp19.i, label %land.lhs.true20.i, label %land.lhs.true11.i.for.inc.i_crit_edge

land.lhs.true11.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true20.i:                                ; preds = %land.lhs.true11.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1446253176, i32 %33)
  %cmp28.i = icmp eq i32 %33, 1446253176
  br i1 %cmp28.i, label %ivtv_search_mailbox.exit, label %land.lhs.true20.i.for.inc.i_crit_edge

land.lhs.true20.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true20.i.for.inc.i_crit_edge, %land.lhs.true11.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %i.01.i, 256
  %cmp.i = icmp ult i32 %i.01.i, 8388352
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %ivtv_search_mailbox.exit.thread

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

ivtv_search_mailbox.exit.thread:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  %enc_mbox177 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 66
  %34 = ptrtoint ptr %enc_mbox177 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %enc_mbox177, align 8
  br label %do.end54

ivtv_search_mailbox.exit:                         ; preds = %land.lhs.true20.i
  %add.ptr30.i = getelementptr i8, ptr %add.ptr.i, i32 16
  %enc_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 66
  %35 = ptrtoint ptr %enc_mbox to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr30.i, ptr %enc_mbox, align 8
  %cmp = icmp eq ptr %add.ptr30.i, null
  br i1 %cmp, label %ivtv_search_mailbox.exit.do.end54_crit_edge, label %if.else60

ivtv_search_mailbox.exit.do.end54_crit_edge:      ; preds = %ivtv_search_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end54

do.end54:                                         ; preds = %ivtv_search_mailbox.exit.do.end54_crit_edge, %ivtv_search_mailbox.exit.thread
  %enc_mbox180 = phi ptr [ %enc_mbox177, %ivtv_search_mailbox.exit.thread ], [ %enc_mbox, %ivtv_search_mailbox.exit.do.end54_crit_edge ]
  %name57 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name57) #7
  br label %if.end75

if.else60:                                        ; preds = %ivtv_search_mailbox.exit
  %call61 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 128, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else60.if.end75_crit_edge, label %if.end75.thread

if.else60.if.end75_crit_edge:                     ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end75

if.end75.thread:                                  ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #6
  %name69 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name69) #7
  %36 = ptrtoint ptr %enc_mbox to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %enc_mbox, align 8
  br label %cleanup

if.end75:                                         ; preds = %if.else60.if.end75_crit_edge, %do.end54
  %enc_mbox179.ph = phi ptr [ %enc_mbox180, %do.end54 ], [ %enc_mbox, %if.else60.if.end75_crit_edge ]
  %37 = ptrtoint ptr %enc_mbox179.ph to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load ptr, ptr %enc_mbox179.ph, align 8
  %cmp78 = icmp eq ptr %.pr, null
  br i1 %cmp78, label %if.end75.cleanup_crit_edge, label %if.end80

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end80:                                         ; preds = %if.end75
  %38 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool82.not = icmp eq i8 %39, 0
  br i1 %tobool82.not, label %if.end80.cleanup_crit_edge, label %if.end84

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end84:                                         ; preds = %if.end80
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %40 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dec_mem, align 4
  br label %for.body.i156

for.body.i156:                                    ; preds = %for.inc.i170.for.body.i156_crit_edge, %if.end84
  %i.01.i153 = phi i32 [ 0, %if.end84 ], [ %add.i168, %for.inc.i170.for.body.i156_crit_edge ]
  %add.ptr.i154 = getelementptr i8, ptr %41, i32 %i.01.i153
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !194
  call void @__sanitizer_cov_trace_const_cmp4(i32 2018915346, i32 %42)
  %cmp2.i155 = icmp eq i32 %42, 2018915346
  br i1 %cmp2.i155, label %land.lhs.true.i159, label %for.body.i156.for.inc.i170_crit_edge

for.body.i156.for.inc.i170_crit_edge:             ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i170

land.lhs.true.i159:                               ; preds = %for.body.i156
  %add.ptr6.i157 = getelementptr i8, ptr %add.ptr.i154, i32 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i157) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 309876276, i32 %43)
  %cmp10.i158 = icmp eq i32 %43, 309876276
  br i1 %cmp10.i158, label %land.lhs.true11.i162, label %land.lhs.true.i159.for.inc.i170_crit_edge

land.lhs.true.i159.for.inc.i170_crit_edge:        ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i170

land.lhs.true11.i162:                             ; preds = %land.lhs.true.i159
  %add.ptr15.i160 = getelementptr i8, ptr %add.ptr.i154, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i160) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 873625686, i32 %44)
  %cmp19.i161 = icmp eq i32 %44, 873625686
  br i1 %cmp19.i161, label %land.lhs.true20.i165, label %land.lhs.true11.i162.for.inc.i170_crit_edge

land.lhs.true11.i162.for.inc.i170_crit_edge:      ; preds = %land.lhs.true11.i162
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i170

land.lhs.true20.i165:                             ; preds = %land.lhs.true11.i162
  %add.ptr24.i163 = getelementptr i8, ptr %add.ptr.i154, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i163) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 1446253176, i32 %45)
  %cmp28.i164 = icmp eq i32 %45, 1446253176
  br i1 %cmp28.i164, label %ivtv_search_mailbox.exit172, label %land.lhs.true20.i165.for.inc.i170_crit_edge

land.lhs.true20.i165.for.inc.i170_crit_edge:      ; preds = %land.lhs.true20.i165
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i170

for.inc.i170:                                     ; preds = %land.lhs.true20.i165.for.inc.i170_crit_edge, %land.lhs.true11.i162.for.inc.i170_crit_edge, %land.lhs.true.i159.for.inc.i170_crit_edge, %for.body.i156.for.inc.i170_crit_edge
  %add.i168 = add nuw nsw i32 %i.01.i153, 256
  %cmp.i169 = icmp ult i32 %i.01.i153, 8388352
  br i1 %cmp.i169, label %for.inc.i170.for.body.i156_crit_edge, label %ivtv_search_mailbox.exit172.thread

for.inc.i170.for.body.i156_crit_edge:             ; preds = %for.inc.i170
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i156

ivtv_search_mailbox.exit172.thread:               ; preds = %for.inc.i170
  call void @__sanitizer_cov_trace_pc() #6
  %dec_mbox184 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  %46 = ptrtoint ptr %dec_mbox184 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %dec_mbox184, align 4
  br label %do.end93

ivtv_search_mailbox.exit172:                      ; preds = %land.lhs.true20.i165
  %add.ptr30.i166 = getelementptr i8, ptr %add.ptr.i154, i32 16
  %dec_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  %47 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr30.i166, ptr %dec_mbox, align 4
  %cmp89 = icmp eq ptr %add.ptr30.i166, null
  br i1 %cmp89, label %ivtv_search_mailbox.exit172.do.end93_crit_edge, label %if.else99

ivtv_search_mailbox.exit172.do.end93_crit_edge:   ; preds = %ivtv_search_mailbox.exit172
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end93

do.end93:                                         ; preds = %ivtv_search_mailbox.exit172.do.end93_crit_edge, %ivtv_search_mailbox.exit172.thread
  %dec_mbox187 = phi ptr [ %dec_mbox184, %ivtv_search_mailbox.exit172.thread ], [ %dec_mbox, %ivtv_search_mailbox.exit172.do.end93_crit_edge ]
  %name96 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name96) #7
  br label %if.end118

if.else99:                                        ; preds = %ivtv_search_mailbox.exit172
  %48 = ptrtoint ptr %has_cx23415.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %has_cx23415.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool101.not = icmp eq i8 %49, 0
  br i1 %tobool101.not, label %if.else99.if.else115_crit_edge, label %land.lhs.true

if.else99.if.else115_crit_edge:                   ; preds = %if.else99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else115

land.lhs.true:                                    ; preds = %if.else99
  %call102 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true.if.else115_crit_edge, label %do.end107

land.lhs.true.if.else115_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else115

do.end107:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %name110 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %name110) #7
  %50 = ptrtoint ptr %dec_mbox to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %dec_mbox, align 4
  br label %if.end118

if.else115:                                       ; preds = %land.lhs.true.if.else115_crit_edge, %if.else99.if.else115_crit_edge
  %call116 = tail call i32 @ivtv_yuv_filter_check(ptr noundef %itv) #4
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %do.end107, %do.end93
  %dec_mbox186 = phi ptr [ %dec_mbox, %do.end107 ], [ %dec_mbox, %if.else115 ], [ %dec_mbox187, %do.end93 ]
  %51 = ptrtoint ptr %dec_mbox186 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dec_mbox186, align 4
  %tobool121.not = icmp eq ptr %52, null
  %cond = select i1 %tobool121.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end118, %if.end80.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.end75.thread, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end118 ], [ %retval.0.i.ph, %do.end ], [ %retval.0.i.ph, %do.body.cleanup_crit_edge ], [ -19, %if.end75.cleanup_crit_edge ], [ 0, %if.end80.cleanup_crit_edge ], [ -19, %if.end75.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_yuv_filter_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_init_mpeg_decoder(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #4
  %0 = getelementptr inbounds i8, ptr %data, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %width = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width, align 4
  %conv = zext i16 %4 to i32
  %arrayidx1 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx1, align 4
  %height = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %height, align 2
  %conv3 = zext i16 %7 to i32
  %arrayidx4 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv3, ptr %arrayidx4, align 4
  %audio_properties = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 20, i32 5
  %9 = ptrtoint ptr %audio_properties to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audio_properties, align 4
  %arrayidx6 = getelementptr inbounds [16 x i32], ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx6, align 4
  %call = call i32 @ivtv_api(ptr noundef %itv, i32 noundef 26, i32 noundef 4, ptr noundef nonnull %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call9 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 1, i32 noundef 2, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp.not = icmp eq i32 %call9, 0
  br i1 %cmp.not, label %if.end20, label %do.end14

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %name17 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name17) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %dec_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  call void @ivtv_api_get_data(ptr noundef %dec_mbox, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %data) #4
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %12 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dec_mem, align 4
  %14 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 %15
  %call23 = call fastcc i32 @load_fw_direct(ptr noundef nonnull @.str.63, ptr noundef %add.ptr, ptr noundef %itv, i32 noundef 155648)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 1
  br i1 %cmp24, label %do.body27, label %if.else

do.body27:                                        ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %16 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body27.if.end43_crit_edge, label %do.end32

do.body27.if.end43_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %name35 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name35, ptr noundef nonnull @.str.63) #7
  br label %if.end43

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call41 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 11, i32 noundef 3, i32 noundef 0, i32 noundef %call23, i32 noundef 0) #4
  %call42 = call i32 @ivtv_msleep_timeout(i32 noundef 100, i32 noundef 0) #4
  br label %if.end43

if.end43:                                         ; preds = %if.else, %do.end32, %do.body27.if.end43_crit_edge
  %call44 = call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_api(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_api_get_data(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_fw_direct(ptr noundef %fn, ptr noundef %mem, ptr noundef %itv, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #4
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  br label %retry

retry:                                            ; preds = %cleanup.retry_crit_edge, %entry
  %retries.0 = phi i32 [ 3, %entry ], [ %retries.1, %cleanup.retry_crit_edge ]
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %cleanup.retry_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retries.0)
  %tobool.not = icmp eq i32 %retries.0, 0
  br i1 %tobool.not, label %retry.do.end23_crit_edge, label %land.lhs.true

retry.do.end23_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

land.lhs.true:                                    ; preds = %retry
  %1 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fn, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.do.end23_crit_edge

land.lhs.true.do.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end23

if.then:                                          ; preds = %land.lhs.true
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %size)
  %cmp2.not = icmp eq i32 %6, %size
  br i1 %cmp2.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name, ptr noundef %fn, i32 noundef %size, i32 noundef %6) #7
  %7 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %8) #4
  %dec = add i32 %retries.0, -1
  br label %cleanup

if.end:                                           ; preds = %if.then
  %9 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fw, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp754.not = icmp eq i32 %12, 0
  br i1 %cmp754.not, label %if.end.do.end11_crit_edge, label %for.body.preheader

if.end.do.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

for.body.preheader:                               ; preds = %if.end
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.057 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %dst.056 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %mem, %for.body.preheader ]
  %src.055 = phi ptr [ %incdec.ptr8, %for.body.for.body_crit_edge ], [ %14, %for.body.preheader ]
  %15 = ptrtoint ptr %src.055 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src.055, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.056, i32 %16) #4, !srcloc !182
  %incdec.ptr = getelementptr i32, ptr %dst.056, i32 1
  %incdec.ptr8 = getelementptr i32, ptr %src.055, i32 1
  %add = add i32 %i.057, 4
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %cmp7 = icmp ult i32 %add, %20
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.do.end11_crit_edge

for.body.do.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end11

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end11:                                         ; preds = %for.body.do.end11_crit_edge, %if.end.do.end11_crit_edge
  %.lcssa = phi i32 [ 0, %if.end.do.end11_crit_edge ], [ %20, %for.body.do.end11_crit_edge ]
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name, ptr noundef %fn, i32 noundef %.lcssa) #7
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %22) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end
  %retries.1 = phi i32 [ %dec, %do.end ], [ %retries.0, %do.end11 ]
  %retval.1 = phi i32 [ %retval.0, %do.end ], [ %size, %do.end11 ]
  br i1 %cmp2.not, label %cleanup.cleanup37_crit_edge, label %cleanup.retry_crit_edge

cleanup.retry_crit_edge:                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %retry

cleanup.cleanup37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

do.end23:                                         ; preds = %land.lhs.true.do.end23_crit_edge, %retry.do.end23_crit_edge
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name, ptr noundef %fn, i32 noundef %size) #7
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %name) #7
  br label %cleanup37

cleanup37:                                        ; preds = %do.end23, %cleanup.cleanup37_crit_edge
  %retval.2 = phi i32 [ -12, %do.end23 ], [ %retval.1, %cleanup.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #4
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_firmware_check(ptr noundef %itv, ptr noundef %where) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 128, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %land.lhs.true.critedge

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef %where) #7
  br label %if.end26

land.lhs.true.critedge:                           ; preds = %entry
  %capturing = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #4
  %0 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.critedge.if.end26_crit_edge

land.lhs.true.critedge.if.end26_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true4:                                   ; preds = %land.lhs.true.critedge
  %decoding = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i156 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #4
  %2 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %land.lhs.true4.if.then13_crit_edge, label %lor.lhs.false

land.lhs.true4.if.then13_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true4
  %call.i.i157 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding, i32 noundef 4) #4
  %4 = ptrtoint ptr %decoding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %decoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp9 = icmp slt i32 %5, 2
  br i1 %cmp9, label %land.lhs.true10, label %lor.lhs.false.if.end26_crit_edge

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %i_flags = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 26
  %6 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_flags, align 4
  %8 = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool12.not = icmp eq i32 %8, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.end26_crit_edge, label %land.lhs.true10.if.then13_crit_edge

land.lhs.true10.if.then13_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13

land.lhs.true10.if.end26_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then13:                                        ; preds = %land.lhs.true10.if.then13_crit_edge, %land.lhs.true4.if.then13_crit_edge
  %call14 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 220, i32 noundef 1, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end26.thread, label %if.then13.if.end26_crit_edge

if.then13.if.end26_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %if.then13.if.end26_crit_edge, %land.lhs.true10.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge, %land.lhs.true.critedge.if.end26_crit_edge, %do.end
  %res.1 = phi i32 [ 0, %if.then13.if.end26_crit_edge ], [ 0, %land.lhs.true10.if.end26_crit_edge ], [ 0, %lor.lhs.false.if.end26_crit_edge ], [ 0, %land.lhs.true.critedge.if.end26_crit_edge ], [ -1, %do.end ]
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %9 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end26.if.end82_crit_edge, label %land.lhs.true30

if.end26.if.end82_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

if.end26.thread:                                  ; preds = %if.then13
  %name22 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %name22, ptr noundef %where) #7
  %v4l2_cap162 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %11 = ptrtoint ptr %v4l2_cap162 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v4l2_cap162, align 4
  %and163 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool27.not164 = icmp eq i32 %and163, 0
  br i1 %tobool27.not164, label %if.end26.thread.land.lhs.true84_crit_edge, label %if.end26.thread.if.end69_crit_edge

if.end26.thread.if.end69_crit_edge:               ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.end26.thread.land.lhs.true84_crit_edge:        ; preds = %if.end26.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true84

land.lhs.true30:                                  ; preds = %if.end26
  %dec_mem = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 16
  %13 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dec_mem, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 256
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !198
  %16 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dec_mem, align 4
  %add.ptr37 = getelementptr i8, ptr %17, i32 260
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !199
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp41.not = icmp eq i32 %15, %18
  br i1 %cmp41.not, label %land.lhs.true30.if.end69_crit_edge, label %if.then42

land.lhs.true30.if.end69_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then42:                                        ; preds = %land.lhs.true30
  %call43 = tail call i32 @ivtv_msleep_timeout(i32 noundef 14, i32 noundef 0) #4
  %19 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dec_mem, align 4
  %add.ptr47 = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !200
  %22 = ptrtoint ptr %dec_mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dec_mem, align 4
  %add.ptr54 = getelementptr i8, ptr %23, i32 260
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #4, !srcloc !192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !201
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %24)
  %cmp58.not = icmp eq i32 %21, %24
  br i1 %cmp58.not, label %if.then42.if.end69_crit_edge, label %do.end62

if.then42.if.end69_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

do.end62:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #6
  %name65 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name65, ptr noundef %where) #7
  br label %if.end69

if.end69:                                         ; preds = %do.end62, %if.then42.if.end69_crit_edge, %land.lhs.true30.if.end69_crit_edge, %if.end26.thread.if.end69_crit_edge
  %res.2 = phi i32 [ -1, %do.end62 ], [ %res.1, %if.then42.if.end69_crit_edge ], [ %res.1, %land.lhs.true30.if.end69_crit_edge ], [ -2, %if.end26.thread.if.end69_crit_edge ]
  %call70 = tail call i32 (ptr, i32, i32, ...) @ivtv_vapi(ptr noundef %itv, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end69.if.end82_crit_edge

if.end69.if.end82_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end82

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  %name78 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %name78, ptr noundef %where) #7
  br label %land.lhs.true84

if.end82:                                         ; preds = %if.end69.if.end82_crit_edge, %if.end26.if.end82_crit_edge
  %res.3 = phi i32 [ %res.2, %if.end69.if.end82_crit_edge ], [ %res.1, %if.end26.if.end82_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.3)
  %tobool83.not = icmp eq i32 %res.3, 0
  br i1 %tobool83.not, label %if.end82.if.end125_crit_edge, label %if.end82.land.lhs.true84_crit_edge

if.end82.land.lhs.true84_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true84

if.end82.if.end125_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

land.lhs.true84:                                  ; preds = %if.end82.land.lhs.true84_crit_edge, %do.end75, %if.end26.thread.land.lhs.true84_crit_edge
  %capturing85 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 43
  %call.i.i158 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing85, i32 noundef 4) #4
  %25 = ptrtoint ptr %capturing85 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %capturing85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool87.not = icmp eq i32 %26, 0
  br i1 %tobool87.not, label %land.lhs.true88, label %land.lhs.true84.if.end125_crit_edge

land.lhs.true84.if.end125_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

land.lhs.true88:                                  ; preds = %land.lhs.true84
  %decoding89 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 44
  %call.i.i159 = tail call zeroext i1 @__kasan_check_read(ptr noundef %decoding89, i32 noundef 4) #4
  %27 = ptrtoint ptr %decoding89 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %decoding89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool91.not = icmp eq i32 %28, 0
  br i1 %tobool91.not, label %do.end95, label %land.lhs.true88.if.end125_crit_edge

land.lhs.true88.if.end125_crit_edge:              ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end125

do.end95:                                         ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #6
  %name98 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name98, ptr noundef %where) #7
  %call101 = tail call fastcc i32 @ivtv_firmware_restart(ptr noundef %itv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  %.str.82..str.85 = select i1 %tobool102.not, ptr @.str.82, ptr @.str.85
  %.call101 = select i1 %tobool102.not, i32 -11, i32 %call101
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.82..str.85, ptr noundef %name98) #7
  br label %if.end125

if.end125:                                        ; preds = %do.end95, %land.lhs.true88.if.end125_crit_edge, %land.lhs.true84.if.end125_crit_edge, %if.end82.if.end125_crit_edge
  %res.4 = phi i32 [ -5, %land.lhs.true88.if.end125_crit_edge ], [ -5, %land.lhs.true84.if.end125_crit_edge ], [ 0, %if.end82.if.end125_crit_edge ], [ %.call101, %do.end95 ]
  ret i32 %res.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_firmware_restart(ptr noundef %itv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %v4l2_cap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 8
  %0 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v4l2_cap, align 4
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %do.body

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

do.body:                                          ; preds = %entry
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn140141 = load ptr, ptr %subdevs, align 4
  %cmp.not143 = icmp eq ptr %.pn140141, %subdevs
  br i1 %cmp.not143, label %do.body.if.end22_crit_edge, label %for.body.lr.ph

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

for.body.lr.ph:                                   ; preds = %do.body
  %card = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %active_output = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn140144 = phi ptr [ %.pn140141, %for.body.lr.ph ], [ %.pn140, %for.inc.for.body_crit_edge ]
  %__sd.0145 = getelementptr i8, ptr %.pn140144, i32 -80
  %grp_id = getelementptr i8, ptr %.pn140144, i32 68
  %3 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %grp_id, align 4
  %and4 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ops = getelementptr i8, ptr %.pn140144, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %video, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true7

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true7.for.inc_crit_edge, label %if.then11

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %video_outputs = getelementptr inbounds %struct.ivtv_card, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %video_outputs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %video_outputs, align 8
  %15 = ptrtoint ptr %active_output to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %active_output, align 4
  %video_output = getelementptr %struct.ivtv_card_output, ptr %14, i32 %16, i32 1
  %17 = ptrtoint ptr %video_output to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %video_output, align 2
  %conv = zext i16 %18 to i32
  %call = tail call i32 %10(ptr noundef %__sd.0145, i32 noundef 1, i32 noundef %conv, i32 noundef 0) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn140144 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn140 = load ptr, ptr %.pn140144, align 4
  %cmp.not = icmp eq ptr %.pn140, %subdevs
  br i1 %cmp.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %for.inc.if.end22_crit_edge, %do.body.if.end22_crit_edge, %entry.if.end22_crit_edge
  %udma = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 59
  tail call void @mutex_lock_nested(ptr noundef %udma, i32 noundef 0) #4
  %call23 = tail call i32 @ivtv_firmware_init(ptr noundef %itv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  tail call void @ivtv_mailbox_cache_invalidate(ptr noundef %itv) #4
  %std29 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 35
  %20 = ptrtoint ptr %std29 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %std29, align 8
  store i64 0, ptr %std29, align 8
  tail call void @ivtv_s_std_enc(ptr noundef %itv, i64 noundef %21) #4
  %22 = ptrtoint ptr %v4l2_cap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v4l2_cap, align 4
  %and32 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end28.cleanup_crit_edge, label %if.then34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then34:                                        ; preds = %if.end28
  tail call void @ivtv_init_mpeg_decoder(ptr noundef %itv)
  %std_out = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 36
  %24 = ptrtoint ptr %std_out to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %std_out, align 8
  store i64 0, ptr %std_out, align 8
  tail call void @ivtv_s_std_dec(ptr noundef %itv, i64 noundef %25) #4
  %ivtvfb_restore = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 100
  %26 = ptrtoint ptr %ivtvfb_restore to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ivtvfb_restore, align 4
  %tobool36.not = icmp eq ptr %27, null
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then37

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then37:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %27(ptr noundef %itv) #4
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.then34.if.end39_crit_edge
  tail call void @ivtv_set_osd_alpha(ptr noundef %itv) #4
  %subdevs45 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  %28 = ptrtoint ptr %subdevs45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn146 = load ptr, ptr %subdevs45, align 4
  %cmp53.not148 = icmp eq ptr %.pn146, %subdevs45
  br i1 %cmp53.not148, label %if.end39.cleanup_crit_edge, label %for.body56.lr.ph

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body56.lr.ph:                                 ; preds = %if.end39
  %card73 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 1
  %active_output75 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 34
  br label %for.body56

for.body56:                                       ; preds = %for.inc81.for.body56_crit_edge, %for.body56.lr.ph
  %.pn149 = phi ptr [ %.pn146, %for.body56.lr.ph ], [ %.pn, %for.inc81.for.body56_crit_edge ]
  %__sd41.0150 = getelementptr i8, ptr %.pn149, i32 -80
  %grp_id57 = getelementptr i8, ptr %.pn149, i32 68
  %29 = ptrtoint ptr %grp_id57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %grp_id57, align 4
  %and58 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %for.body56.for.inc81_crit_edge, label %land.lhs.true60

for.body56.for.inc81_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc81

land.lhs.true60:                                  ; preds = %for.body56
  %ops61 = getelementptr i8, ptr %.pn149, i32 24
  %31 = ptrtoint ptr %ops61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops61, align 4
  %video62 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %video62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %video62, align 4
  %tobool63.not = icmp eq ptr %34, null
  br i1 %tobool63.not, label %land.lhs.true60.for.inc81_crit_edge, label %land.lhs.true64

land.lhs.true60.for.inc81_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc81

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool68.not = icmp eq ptr %36, null
  br i1 %tobool68.not, label %land.lhs.true64.for.inc81_crit_edge, label %if.then69

land.lhs.true64.for.inc81_crit_edge:              ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc81

if.then69:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %card73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card73, align 4
  %video_outputs74 = getelementptr inbounds %struct.ivtv_card, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %video_outputs74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video_outputs74, align 8
  %41 = ptrtoint ptr %active_output75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %active_output75, align 4
  %video_output77 = getelementptr %struct.ivtv_card_output, ptr %40, i32 %42, i32 1
  %43 = ptrtoint ptr %video_output77 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %video_output77, align 2
  %conv78 = zext i16 %44 to i32
  %call79 = tail call i32 %36(ptr noundef %__sd41.0150, i32 noundef 0, i32 noundef %conv78, i32 noundef 0) #4
  br label %for.inc81

for.inc81:                                        ; preds = %if.then69, %land.lhs.true64.for.inc81_crit_edge, %land.lhs.true60.for.inc81_crit_edge, %for.body56.for.inc81_crit_edge
  %45 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn149, align 4
  %cmp53.not = icmp eq ptr %.pn, %subdevs45
  br i1 %cmp53.not, label %for.inc81.cleanup_crit_edge, label %for.inc81.for.body56_crit_edge

for.inc81.for.body56_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body56

for.inc81.cleanup_crit_edge:                      ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc81.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %udma) #4
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_mailbox_cache_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_s_std_enc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_s_std_dec(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ivtv_set_osd_alpha(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !132, !134, !136, !137, !138, !139, !141, !143, !144, !145, !147, !148, !149, !151, !153, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 78, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_halt_firmware._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_halt_firmware._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 87, i32 2}
!8 = !{ptr @ivtv_halt_firmware._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ivtv_halt_firmware._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 90, i32 2}
!12 = !{ptr @ivtv_halt_firmware._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ivtv_halt_firmware._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 93, i32 2}
!16 = !{ptr @ivtv_halt_firmware._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @ivtv_halt_firmware._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 96, i32 2}
!20 = !{ptr @ivtv_halt_firmware._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @ivtv_halt_firmware._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 102, i32 2}
!24 = !{ptr @ivtv_halt_firmware._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ivtv_halt_firmware._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 105, i32 2}
!28 = !{ptr @ivtv_halt_firmware._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ivtv_halt_firmware._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 110, i32 2}
!32 = !{ptr @ivtv_halt_firmware._entry.21, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ivtv_halt_firmware._entry_ptr.23, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.25, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 113, i32 2}
!36 = !{ptr @ivtv_halt_firmware._entry.24, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ivtv_halt_firmware._entry_ptr.26, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.28, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 117, i32 3}
!40 = !{ptr @ivtv_halt_firmware._entry.27, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ivtv_halt_firmware._entry_ptr.29, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.31, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 120, i32 3}
!44 = !{ptr @ivtv_halt_firmware._entry.30, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ivtv_halt_firmware._entry_ptr.32, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.34, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 124, i32 2}
!48 = !{ptr @ivtv_halt_firmware._entry.33, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ivtv_halt_firmware._entry_ptr.35, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.36, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 134, i32 2}
!52 = !{ptr @.str.37, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ivtv_firmware_versions._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ivtv_firmware_versions._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.39, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 137, i32 3}
!57 = !{ptr @ivtv_firmware_versions._entry.38, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @ivtv_firmware_versions._entry_ptr.40, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.42, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 142, i32 3}
!61 = !{ptr @ivtv_firmware_versions._entry.41, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @ivtv_firmware_versions._entry_ptr.43, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.44, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 192, i32 3}
!65 = !{ptr @.str.45, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ivtv_firmware_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ivtv_firmware_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.47, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 208, i32 3}
!70 = !{ptr @ivtv_firmware_init._entry.46, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ivtv_firmware_init._entry_ptr.48, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.50, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 210, i32 3}
!74 = !{ptr @ivtv_firmware_init._entry.49, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ivtv_firmware_init._entry_ptr.51, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 221, i32 3}
!78 = !{ptr @ivtv_firmware_init._entry.52, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ivtv_firmware_init._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 223, i32 3}
!82 = !{ptr @ivtv_firmware_init._entry.55, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ivtv_firmware_init._entry_ptr.57, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.58, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 244, i32 3}
!86 = !{ptr @.str.59, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @ivtv_init_mpeg_decoder._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @ivtv_init_mpeg_decoder._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.61, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 249, i32 3}
!91 = !{ptr @ivtv_init_mpeg_decoder._entry.60, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ivtv_init_mpeg_decoder._entry_ptr.62, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 255, i32 34}
!95 = !{ptr @.str.65, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 257, i32 3}
!97 = !{ptr @ivtv_init_mpeg_decoder._entry.64, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @ivtv_init_mpeg_decoder._entry_ptr.66, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.67, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 329, i32 3}
!101 = !{ptr @.str.68, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @ivtv_firmware_check._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @ivtv_firmware_check._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.70, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 340, i32 4}
!106 = !{ptr @ivtv_firmware_check._entry.69, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ivtv_firmware_check._entry_ptr.71, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.73, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 351, i32 5}
!110 = !{ptr @ivtv_firmware_check._entry.72, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @ivtv_firmware_check._entry_ptr.74, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.76, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 359, i32 4}
!114 = !{ptr @ivtv_firmware_check._entry.75, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ivtv_firmware_check._entry_ptr.77, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.79, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 367, i32 3}
!118 = !{ptr @ivtv_firmware_check._entry.78, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ivtv_firmware_check._entry_ptr.80, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.82, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 376, i32 4}
!122 = !{ptr @ivtv_firmware_check._entry.81, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ivtv_firmware_check._entry_ptr.83, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.85, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 379, i32 4}
!126 = !{ptr @ivtv_firmware_check._entry.84, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ivtv_firmware_check._entry_ptr.86, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @__UNIQUE_ID_firmware296, !129, !"__UNIQUE_ID_firmware296", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 388, i32 1}
!130 = !{ptr @__UNIQUE_ID_firmware297, !131, !"__UNIQUE_ID_firmware297", i1 false, i1 false}
!131 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 389, i32 1}
!132 = !{ptr @__UNIQUE_ID_firmware298, !133, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 390, i32 1}
!134 = !{ptr @.str.87, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 148, i32 2}
!136 = !{ptr @.str.88, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ivtv_firmware_copy._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ivtv_firmware_copy._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 149, i32 21}
!141 = !{ptr @.str.91, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 151, i32 3}
!143 = !{ptr @ivtv_firmware_copy._entry.90, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @ivtv_firmware_copy._entry_ptr.92, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.94, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 157, i32 2}
!147 = !{ptr @ivtv_firmware_copy._entry.93, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @ivtv_firmware_copy._entry_ptr.95, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.96, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 158, i32 21}
!151 = !{ptr @.str.98, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 160, i32 3}
!153 = !{ptr @ivtv_firmware_copy._entry.97, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @ivtv_firmware_copy._entry_ptr.99, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.100, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 56, i32 4}
!157 = !{ptr @.str.101, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @load_fw_direct._entry, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @load_fw_direct._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.103, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 67, i32 3}
!162 = !{ptr @load_fw_direct._entry.102, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @load_fw_direct._entry_ptr.104, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.106, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 71, i32 2}
!166 = !{ptr @load_fw_direct._entry.105, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @load_fw_direct._entry_ptr.107, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.109, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/ivtv/ivtv-firmware.c", i32 72, i32 2}
!170 = !{ptr @load_fw_direct._entry.108, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @load_fw_direct._entry_ptr.110, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i64 2156805088}
!182 = !{i64 5756977}
!183 = !{i64 2156807554}
!184 = !{i64 2156810060}
!185 = !{i64 2156815594}
!186 = !{i64 2156818071}
!187 = !{i64 2156820718}
!188 = !{i64 2156823405}
!189 = !{i64 2156826052}
!190 = !{i64 2156828739}
!191 = !{i64 2156850604}
!192 = !{i64 5757395}
!193 = !{i64 2156851565}
!194 = !{i64 2156845681}
!195 = !{i64 2156846143}
!196 = !{i64 2156846605}
!197 = !{i64 2156847071}
!198 = !{i64 2156888538}
!199 = !{i64 2156889112}
!200 = !{i64 2156889686}
!201 = !{i64 2156890260}
