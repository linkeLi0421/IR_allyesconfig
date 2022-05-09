; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_av.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_av.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.dvb_demux_feed = type { %union.anon, %union.anon.0, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.114 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.111], %struct.media_entity_enum, i32 }
%struct.anon.111 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.166, i32 }
%union.anon.166 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.170 }
%union.anon.170 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.video_still_picture = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@av7110_debug = external dso_local local_unnamed_addr global i32, align 4
@av7110_av_start_record._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017dvb_ttpci: %s(): av7110:%p, , dvb_demux_feed:%p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"av7110_av_start_record\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/av7110/av7110_av.c\00", [55 x i8] zeroinitializer }, align 32
@av7110_av_start_record._entry_ptr = internal global ptr @av7110_av_start_record._entry, section ".printk_index", align 4
@av7110_av_start_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017dvb_ttpci: %s(): av7110:%p, \0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"av7110_av_start_play\00", [43 x i8] zeroinitializer }, align 32
@av7110_av_start_play._entry_ptr = internal global ptr @av7110_av_start_play._entry, section ".printk_index", align 4
@av7110_av_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"av7110_av_stop\00", [17 x i8] zeroinitializer }, align 32
@av7110_av_stop._entry_ptr = internal global ptr @av7110_av_stop._entry, section ".printk_index", align 4
@av7110_pes_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"resync\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"av7110_pes_play\00", [16 x i8] zeroinitializer }, align 32
@av7110_pes_play._entry_ptr = internal global ptr @av7110_pes_play._entry, section ".printk_index", align 4
@av7110_pes_play._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017dvb_ttpci: %s(): pread=0x%08lx, pwrite=0x%08lx\0A\00", [46 x i8] zeroinitializer }, align 32
@av7110_pes_play._entry_ptr.10 = internal global ptr @av7110_pes_play._entry.8, section ".printk_index", align 4
@av7110_set_volume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"av7110_set_volume\00", [46 x i8] zeroinitializer }, align 32
@av7110_set_volume._entry_ptr = internal global ptr @av7110_set_volume._entry, section ".printk_index", align 4
@av7110_set_vidmode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.12, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"av7110_set_vidmode\00", [45 x i8] zeroinitializer }, align 32
@av7110_set_vidmode._entry_ptr = internal global ptr @av7110_set_vidmode._entry, section ".printk_index", align 4
@av7110_write_to_decoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.13, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"av7110_write_to_decoder\00", [40 x i8] zeroinitializer }, align 32
@av7110_write_to_decoder._entry_ptr = internal global ptr @av7110_write_to_decoder._entry, section ".printk_index", align 4
@av7110_av_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&av7110->video_events.wait_queue\00", [63 x i8] zeroinitializer }, align 32
@av7110_av_register.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&av7110->video_events.lock\00", [37 x i8] zeroinitializer }, align 32
@dvbdev_video = internal global { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_video_fops, ptr null, i32 0, i32 0, i32 0, i32 5, i32 1, i32 6, %struct.wait_queue_head zeroinitializer, ptr @dvb_video_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvbdev_audio = internal global { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_audio_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr @dvb_audio_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_video_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @dvb_video_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_video_poll, ptr @dvb_generic_ioctl, ptr @dvb_generic_ioctl, ptr null, i32 0, ptr @dvb_video_open, ptr null, ptr @dvb_video_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_video_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.17, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_video_write\00", [16 x i8] zeroinitializer }, align 32
@dvb_video_write._entry_ptr = internal global ptr @dvb_video_write._entry, section ".printk_index", align 4
@ts_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_ttpci: %s(): %s: type %d cnt %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ts_play\00", [24 x i8] zeroinitializer }, align 32
@ts_play._entry_ptr = internal global ptr @ts_play._entry, section ".printk_index", align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dvb_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.23, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dvb_play\00", [23 x i8] zeroinitializer }, align 32
@dvb_play._entry_ptr = internal global ptr @dvb_play._entry, section ".printk_index", align 4
@dvb_video_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.24, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_video_poll\00", [17 x i8] zeroinitializer }, align 32
@dvb_video_poll._entry_ptr = internal global ptr @dvb_video_poll._entry, section ".printk_index", align 4
@dvb_video_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.25, ptr @.str.2, i32 1508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_video_open\00", [17 x i8] zeroinitializer }, align 32
@dvb_video_open._entry_ptr = internal global ptr @dvb_video_open._entry, section ".printk_index", align 4
@dvb_video_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.26, ptr @.str.2, i32 1532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_video_release\00", [46 x i8] zeroinitializer }, align 32
@dvb_video_release._entry_ptr = internal global ptr @dvb_video_release._entry, section ".printk_index", align 4
@dvb_video_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017dvb_ttpci: %s(): av7110:%p, cmd=%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_video_ioctl\00", [16 x i8] zeroinitializer }, align 32
@dvb_video_ioctl._entry_ptr = internal global ptr @dvb_video_ioctl._entry, section ".printk_index", align 4
@play_iframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.29, ptr @.str.2, i32 1029, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"play_iframe\00", [20 x i8] zeroinitializer }, align 32
@play_iframe._entry_ptr = internal global ptr @play_iframe._entry, section ".printk_index", align 4
@iframe_header = internal global { [9 x i8], [23 x i8] } { [9 x i8] c"\00\00\01\E0\00\00\80\00\00", [23 x i8] zeroinitializer }, align 32
@dvb_play_kernel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.30, ptr @.str.2, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_play_kernel\00", [16 x i8] zeroinitializer }, align 32
@dvb_play_kernel._entry_ptr = internal global ptr @dvb_play_kernel._entry, section ".printk_index", align 4
@dvb_audio_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr @dvb_audio_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_audio_poll, ptr @dvb_generic_ioctl, ptr @dvb_generic_ioctl, ptr null, i32 0, ptr @dvb_audio_open, ptr null, ptr @dvb_audio_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_audio_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.31, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_audio_write\00", [16 x i8] zeroinitializer }, align 32
@dvb_audio_write._entry_ptr = internal global ptr @dvb_audio_write._entry, section ".printk_index", align 4
@dvb_audio_write._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013not audio source memory\0A\00", [37 x i8] zeroinitializer }, align 32
@dvb_audio_write._entry_ptr.34 = internal global ptr @dvb_audio_write._entry.32, section ".printk_index", align 4
@dvb_aplay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.35, ptr @.str.2, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb_aplay\00", [22 x i8] zeroinitializer }, align 32
@dvb_aplay._entry_ptr = internal global ptr @dvb_aplay._entry, section ".printk_index", align 4
@dvb_audio_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.36, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_audio_poll\00", [17 x i8] zeroinitializer }, align 32
@dvb_audio_poll._entry_ptr = internal global ptr @dvb_audio_poll._entry, section ".printk_index", align 4
@dvb_audio_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.37, ptr @.str.2, i32 1547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_audio_open\00", [17 x i8] zeroinitializer }, align 32
@dvb_audio_open._entry_ptr = internal global ptr @dvb_audio_open._entry, section ".printk_index", align 4
@dvb_audio_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.38, ptr @.str.2, i32 1561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_audio_release\00", [46 x i8] zeroinitializer }, align 32
@dvb_audio_release._entry_ptr = internal global ptr @dvb_audio_release._entry, section ".printk_index", align 4
@dvb_audio_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.39, ptr @.str.2, i32 1360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_audio_ioctl\00", [16 x i8] zeroinitializer }, align 32
@dvb_audio_ioctl._entry_ptr = internal global ptr @dvb_audio_ioctl._entry, section ".printk_index", align 4
@play_audio_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.40, ptr @.str.2, i32 423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"play_audio_cb\00", [18 x i8] zeroinitializer }, align 32
@play_audio_cb._entry_ptr = internal global ptr @play_audio_cb._entry, section ".printk_index", align 4
@play_video_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.41, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"play_video_cb\00", [18 x i8] zeroinitializer }, align 32
@play_video_cb._entry_ptr = internal global ptr @play_video_cb._entry, section ".printk_index", align 4
@get_video_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.42, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_video_format\00", [47 x i8] zeroinitializer }, align 32
@get_video_format._entry_ptr = internal global ptr @get_video_format._entry, section ".printk_index", align 4
@get_video_format._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dvb_ttpci: %s(): playback %dx%d fr=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@get_video_format._entry_ptr.45 = internal global ptr @get_video_format._entry.43, section ".printk_index", align 4
@sw2mode = internal constant { <{ [8 x i32], [8 x i32] }>, [32 x i8] } { <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 1], [8 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@switch.table.p_to_t = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\00\00\00\00\00\00\00\00\00\00\00@", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.52 = internal global [59 x i64] [i64 57, i64 8, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 255]
@__sancov_gen_cov_switch_values.53 = internal global [59 x i64] [i64 57, i64 8, i64 188, i64 189, i64 190, i64 191, i64 192, i64 193, i64 194, i64 195, i64 196, i64 197, i64 198, i64 199, i64 200, i64 201, i64 202, i64 203, i64 204, i64 205, i64 206, i64 207, i64 208, i64 209, i64 210, i64 211, i64 212, i64 213, i64 214, i64 215, i64 216, i64 217, i64 218, i64 219, i64 220, i64 221, i64 222, i64 223, i64 224, i64 225, i64 226, i64 227, i64 228, i64 229, i64 230, i64 231, i64 232, i64 233, i64 234, i64 235, i64 236, i64 237, i64 238, i64 239, i64 240, i64 241, i64 242, i64 243, i64 255]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 2148298551, i64 2148822811, i64 2148822812]
@__sancov_gen_cov_switch_values.56 = internal global [19 x i64] [i64 17, i64 32, i64 28437, i64 28438, i64 28439, i64 28440, i64 28441, i64 28442, i64 28445, i64 28447, i64 28448, i64 28450, i64 28452, i64 28453, i64 1074294558, i64 2147774241, i64 2148298551, i64 2148822811, i64 2148822812]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [17 x i64] [i64 15, i64 32, i64 28417, i64 28418, i64 28419, i64 28420, i64 28421, i64 28422, i64 28423, i64 28424, i64 28425, i64 28428, i64 28429, i64 28431, i64 1074294542, i64 2147774219, i64 2149609226]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 109, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 152, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 186, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 246, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 260, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 273, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 323, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 842, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1630, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1631, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"dvbdev_video\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1584, i32 26 }
@___asan_gen_.138 = private unnamed_addr constant [13 x i8] c"dvbdev_audio\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1604, i32 26 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"dvb_video_fops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1573, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 962, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 438, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 230, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.163, i32 214, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 156, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 474, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 932, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1508, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1532, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1129, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1029, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [14 x i8] c"iframe_header\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1019, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 507, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"dvb_audio_fops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1593, i32 37 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1004, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1007, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 537, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 984, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1547, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1561, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 1360, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 423, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 411, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 358, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 372, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant [8 x i8] c"sw2mode\00", align 1
@___asan_gen_.286 = private constant [44 x i8] c"../drivers/staging/media/av7110/av7110_av.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 339, i32 31 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"switch.table.p_to_t\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @av7110_av_start_play._entry, ptr @av7110_av_start_play._entry_ptr, ptr @av7110_av_start_record._entry, ptr @av7110_av_start_record._entry_ptr, ptr @av7110_av_stop._entry, ptr @av7110_av_stop._entry_ptr, ptr @av7110_pes_play._entry, ptr @av7110_pes_play._entry.8, ptr @av7110_pes_play._entry_ptr, ptr @av7110_pes_play._entry_ptr.10, ptr @av7110_set_vidmode._entry, ptr @av7110_set_vidmode._entry_ptr, ptr @av7110_set_volume._entry, ptr @av7110_set_volume._entry_ptr, ptr @av7110_write_to_decoder._entry, ptr @av7110_write_to_decoder._entry_ptr, ptr @dvb_aplay._entry, ptr @dvb_aplay._entry_ptr, ptr @dvb_audio_ioctl._entry, ptr @dvb_audio_ioctl._entry_ptr, ptr @dvb_audio_open._entry, ptr @dvb_audio_open._entry_ptr, ptr @dvb_audio_poll._entry, ptr @dvb_audio_poll._entry_ptr, ptr @dvb_audio_release._entry, ptr @dvb_audio_release._entry_ptr, ptr @dvb_audio_write._entry, ptr @dvb_audio_write._entry.32, ptr @dvb_audio_write._entry_ptr, ptr @dvb_audio_write._entry_ptr.34, ptr @dvb_play._entry, ptr @dvb_play._entry_ptr, ptr @dvb_play_kernel._entry, ptr @dvb_play_kernel._entry_ptr, ptr @dvb_video_ioctl._entry, ptr @dvb_video_ioctl._entry_ptr, ptr @dvb_video_open._entry, ptr @dvb_video_open._entry_ptr, ptr @dvb_video_poll._entry, ptr @dvb_video_poll._entry_ptr, ptr @dvb_video_release._entry, ptr @dvb_video_release._entry_ptr, ptr @dvb_video_write._entry, ptr @dvb_video_write._entry_ptr, ptr @get_video_format._entry, ptr @get_video_format._entry.43, ptr @get_video_format._entry_ptr, ptr @get_video_format._entry_ptr.45, ptr @play_audio_cb._entry, ptr @play_audio_cb._entry_ptr, ptr @play_iframe._entry, ptr @play_iframe._entry_ptr, ptr @play_video_cb._entry, ptr @play_video_cb._entry_ptr, ptr @ts_play._entry, ptr @ts_play._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @av7110_av_register.__key, ptr @.str.14, ptr @av7110_av_register.__key.15, ptr @.str.16, ptr @dvbdev_video, ptr @dvbdev_audio, ptr @dvb_video_fops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @iframe_header, ptr @.str.30, ptr @dvb_audio_fops, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @sw2mode, ptr @switch.table.p_to_t], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_av_start_record._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_av_start_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_av_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_pes_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_pes_play._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_set_volume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_set_vidmode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_write_to_decoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_av_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_av_register.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_video to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_audio to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_video_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @play_iframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iframe_header to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_play_kernel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_write._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_aplay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_audio_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @play_audio_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @play_video_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_video_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_video_format._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw2mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.p_to_t to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_record_cb(ptr noundef %p2t, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_filter_pes2ts, ptr %p2t, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ts_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ts_type, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %5)
  %cmp = icmp eq i8 %5, -32
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3 = getelementptr i8, ptr %buf, i32 5
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr i8, ptr %buf, i32 4
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx4, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %ts_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ts_type, align 8
  %and7 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cb, align 8
  %call = tail call i32 %11(ptr noundef %buf, i32 noundef %len, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef null) #9
  br label %cleanup

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @dvb_filter_pes2ts(ptr noundef %p2t, ptr noundef %buf, i32 noundef %len, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then9 ], [ %call10, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_filter_pes2ts(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_av_start_record(ptr noundef %av7110, i32 noundef %av, ptr noundef %dvbdmxfeed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %av7110, ptr noundef %dvbdmxfeed) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %3 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end3
  %rec_mode = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 25
  %5 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rec_mode, align 4
  %and5 = and i32 %6, %av
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call9 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 1, i32 noundef 0) #9
  %recording = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 24
  %7 = ptrtoint ptr %recording to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %recording, align 8
  %8 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rec_mode, align 4
  %or = or i32 %9, %av
  store i32 %or, ptr %rec_mode, align 4
  %10 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or, label %if.end8.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb16
    i32 3, label %sw.bb25
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %p2t = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 56
  %pesfilter = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %pesfilter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pesfilter, align 8
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %pid, align 4
  tail call void @dvb_filter_pes2ts_init(ptr noundef %p2t, i16 noundef zeroext %14, ptr noundef nonnull @dvb_filter_pes2ts_cb, ptr noundef %12) #9
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx18 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 56, i32 1
  %arrayidx20 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20, align 4
  %pid21 = getelementptr inbounds %struct.dvb_demux_feed, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %pid21 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pid21, align 4
  tail call void @dvb_filter_pes2ts_init(ptr noundef %arrayidx18, i16 noundef zeroext %18, ptr noundef nonnull @dvb_filter_pes2ts_cb, ptr noundef %16) #9
  br label %cleanup.sink.split

sw.bb25:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %p2t26 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 56
  %pesfilter28 = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 13
  %19 = ptrtoint ptr %pesfilter28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pesfilter28, align 8
  %pid30 = getelementptr inbounds %struct.dvb_demux_feed, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %pid30 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pid30, align 4
  tail call void @dvb_filter_pes2ts_init(ptr noundef %p2t26, i16 noundef zeroext %22, ptr noundef nonnull @dvb_filter_pes2ts_cb, ptr noundef %20) #9
  %arrayidx34 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 56, i32 1
  %arrayidx36 = getelementptr %struct.dvb_demux, ptr %1, i32 0, i32 13, i32 1
  %23 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx36, align 4
  %pid37 = getelementptr inbounds %struct.dvb_demux_feed, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %pid37 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %pid37, align 4
  tail call void @dvb_filter_pes2ts_init(ptr noundef %arrayidx34, i16 noundef zeroext %26, ptr noundef nonnull @dvb_filter_pes2ts_cb, ptr noundef %24) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb25, %sw.bb16, %sw.bb
  %.sink = phi i32 [ 1, %sw.bb ], [ 4, %sw.bb16 ], [ 5, %sw.bb25 ]
  %call15 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 0, i32 noundef 2, i32 noundef %.sink, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %do.end3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call15, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_filter_pes2ts_init(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_filter_pes2ts_cb(ptr noundef %priv, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 8
  %call = tail call i32 %1(ptr noundef %data, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %priv, ptr noundef null) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_av_start_play(ptr noundef %av7110, i32 noundef %av) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %rec_mode = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 25
  %1 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rec_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.end6, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %3 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %playing, align 8
  %and7 = and i32 %4, %av
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 1, i32 noundef 0) #9
  %5 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then13, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %ipack = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 57
  tail call void @av7110_ipack_reset(ptr noundef %ipack) #9
  %arrayidx15 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  tail call void @av7110_ipack_reset(ptr noundef %arrayidx15) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  %7 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playing, align 8
  %or = or i32 %8, %av
  store i32 %or, ptr %playing, align 8
  %9 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %or, label %if.end16.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb20
    i32 3, label %sw.bb22
  ]

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

sw.bb20:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 4, i32 noundef 0) #9
  %sinfo = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 59
  %10 = ptrtoint ptr %sinfo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %sinfo, align 8
  br label %cleanup

sw.bb22:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %sinfo23 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 59
  %11 = ptrtoint ptr %sinfo23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %sinfo23, align 8
  %call24 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 5, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb22, %sw.bb20, %sw.bb, %if.end16.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end3.cleanup_crit_edge ], [ -16, %if.end6.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ %call24, %sw.bb22 ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ipack_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_av_stop(ptr noundef %av7110, i32 noundef %av) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %1 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %playing, align 8
  %and4 = and i32 %2, %av
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.end3.if.end9_crit_edge

do.end3.if.end9_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true:                                    ; preds = %do.end3
  %rec_mode = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 25
  %3 = ptrtoint ptr %rec_mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rec_mode, align 4
  %and6 = and i32 %4, %av
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %do.end3.if.end9_crit_edge
  %call10 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 1, i32 noundef 0) #9
  %5 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool12.not = icmp eq i32 %6, 0
  %neg22 = xor i32 %av, -1
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %and15 = and i32 %6, %neg22
  %7 = ptrtoint ptr %playing to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and15, ptr %playing, align 8
  %8 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %and15, label %if.then13.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb18
    i32 0, label %sw.bb20
  ]

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

sw.bb18:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 4, i32 noundef 0) #9
  br label %cleanup

sw.bb20:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %vidmode = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 31
  %9 = ptrtoint ptr %vidmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vidmode, align 4
  %call21 = tail call i32 @av7110_set_vidmode(ptr noundef %av7110, i32 noundef %10)
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %rec_mode23 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 25
  %11 = ptrtoint ptr %rec_mode23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rec_mode23, align 4
  %and24 = and i32 %12, %neg22
  store i32 %and24, ptr %rec_mode23, align 4
  %13 = zext i32 %and24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %and24, label %if.else.cleanup_crit_edge [
    i32 2, label %sw.bb26
    i32 1, label %sw.bb28
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 0, i32 noundef 2, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup

sw.bb28:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 9, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb28, %sw.bb26, %if.else.cleanup_crit_edge, %sw.bb20, %sw.bb18, %sw.bb, %if.then13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ], [ %call21, %sw.bb20 ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb ], [ 0, %if.else.cleanup_crit_edge ], [ %call29, %sw.bb28 ], [ %call27, %sw.bb26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_set_vidmode(ptr noundef %av7110, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.12, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 5, i32 noundef 2, i32 noundef 1, i32 noundef %mode) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.end3.if.end19_crit_edge

do.end3.if.end19_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end3
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %1 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool6.not = icmp eq i32 %2, 0
  br i1 %tobool6.not, label %if.then7, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then7:                                         ; preds = %land.lhs.true
  %pids = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 74
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = ptrtoint ptr %pids to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pids, align 4
  %arrayidx11 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 2
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx11, align 4
  %arrayidx13 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 74, i32 4
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx13, align 4
  %call14 = tail call i32 @ChangePIDs(ptr noundef %av7110, i16 noundef zeroext %4, i16 noundef zeroext %6, i16 noundef zeroext %8, i16 noundef zeroext 0, i16 noundef zeroext %10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.then7.if.end19_crit_edge

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 9, i32 noundef 0) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.then7.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %do.end3.if.end19_crit_edge
  %ret.0 = phi i32 [ %call4, %do.end3.if.end19_crit_edge ], [ 0, %land.lhs.true.if.end19_crit_edge ], [ %call14, %if.then7.if.end19_crit_edge ], [ %call17, %if.then16 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_pes_play(ptr noundef %dest, ptr noundef %buf, i32 noundef %dlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dlen)
  %tobool.not = icmp eq i32 %dlen, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %call140 = tail call i32 @dvb_ringbuffer_avail(ptr noundef %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 6
  br i1 %cmp141, label %while.cond.preheader.cleanup_crit_edge, label %if.end3.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3.lr.ph:                                    ; preds = %while.cond.preheader
  %pread = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buf, i32 0, i32 2
  %size = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buf, i32 0, i32 1
  br label %if.end3

if.end3:                                          ; preds = %do.end.if.end3_crit_edge, %if.end3.lr.ph
  %call142 = phi i32 [ %call140, %if.end3.lr.ph ], [ %call, %do.end.if.end3_crit_edge ]
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %pread to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pread, align 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %rem = srem i32 %3, %5
  %arrayidx = getelementptr i8, ptr %1, i32 %rem
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shl = shl nuw i32 %conv, 24
  %add6 = add i32 %3, 1
  %rem8 = srem i32 %add6, %5
  %arrayidx9 = getelementptr i8, ptr %1, i32 %rem8
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %9 to i32
  %shl11 = shl nuw nsw i32 %conv10, 16
  %or = or i32 %shl11, %shl
  %add14 = add i32 %3, 2
  %rem16 = srem i32 %add14, %5
  %arrayidx17 = getelementptr i8, ptr %1, i32 %rem16
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or20 = or i32 %or, %shl19
  %add23 = add i32 %3, 3
  %rem25 = srem i32 %add23, %5
  %arrayidx26 = getelementptr i8, ptr %1, i32 %rem25
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %or28 = or i32 %or20, %conv27
  %and = and i32 %or28, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %and)
  %cmp29 = icmp eq i32 %and, 480
  %and31 = and i32 %or28, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 448, i32 %and31)
  %cmp32 = icmp eq i32 %and31, 448
  %or.cond = or i1 %cmp29, %cmp32
  call void @__sanitizer_cov_trace_const_cmp4(i32 445, i32 %or28)
  %cmp35 = icmp eq i32 %or28, 445
  %or.cond135 = select i1 %or.cond, i1 true, i1 %cmp35
  br i1 %or.cond135, label %while.end, label %do.end

do.end:                                           ; preds = %if.end3
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  %14 = ptrtoint ptr %pread to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pread, align 4
  %add41 = add i32 %15, 1
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %rem43 = srem i32 %add41, %17
  store i32 %rem43, ptr %pread, align 4
  %call = tail call i32 @dvb_ringbuffer_avail(ptr noundef %buf) #9
  %cmp = icmp slt i32 %call, 6
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end.if.end3_crit_edge

do.end.if.end3_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end:                                        ; preds = %if.end3
  %add47 = add i32 %3, 4
  %rem49 = srem i32 %add47, %5
  %arrayidx50 = getelementptr i8, ptr %1, i32 %rem49
  %18 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx50, align 1
  %conv51 = zext i8 %19 to i32
  %shl52 = shl nuw nsw i32 %conv51, 8
  %add56 = add i32 %3, 5
  %rem58 = srem i32 %add56, %5
  %arrayidx59 = getelementptr i8, ptr %1, i32 %rem58
  %20 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %21 to i32
  %or62 = or i32 %shl52, %conv60
  %add65 = add nuw nsw i32 %or62, 6
  %conv67 = and i32 %add65, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %call142, i32 %conv67)
  %cmp68 = icmp ult i32 %call142, %conv67
  call void @__sanitizer_cov_trace_cmp4(i32 %conv67, i32 %dlen)
  %cmp72 = icmp sgt i32 %conv67, %dlen
  %or.cond136 = or i1 %cmp68, %cmp72
  br i1 %or.cond136, label %while.end.cleanup_crit_edge, label %if.end76

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end76:                                         ; preds = %while.end
  tail call void @dvb_ringbuffer_read(ptr noundef %buf, ptr noundef %dest, i32 noundef %conv67) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %22 = load i32, ptr @av7110_debug, align 4
  %and79 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.end76.cleanup_crit_edge, label %do.end84

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end84:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %pread to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pread, align 4
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buf, i32 0, i32 3
  %25 = ptrtoint ptr %pwrite to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pwrite, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %24, i32 noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.end76.cleanup_crit_edge, %while.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %while.cond.preheader.cleanup_crit_edge ], [ -1, %while.end.cleanup_crit_edge ], [ %conv67, %do.end84 ], [ %conv67, %if.end76.cleanup_crit_edge ], [ -1, %do.end.cleanup_crit_edge ]
  %queue91 = getelementptr inbounds %struct.dvb_ringbuffer, ptr %buf, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %queue91, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_set_volume(ptr noundef %av7110, i32 noundef %volleft, i32 noundef %volright) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %mixer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 77
  %1 = ptrtoint ptr %mixer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %volleft, ptr %mixer, align 4
  %volume_right = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 77, i32 1
  %2 = ptrtoint ptr %volume_right to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %volright, ptr %volume_right, align 4
  %adac_type = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 12
  %3 = ptrtoint ptr %adac_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %adac_type, align 8
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %4, label %do.end3.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb26
    i32 3, label %sw.bb45
  ]

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  %mul = shl i32 %volleft, 8
  %div = udiv i32 %mul, 1036
  %6 = tail call i32 @llvm.umin.i32(i32 %div, i32 63)
  %conv = or i32 %6, 128
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 0, i32 noundef 2, i32 noundef 3, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %mul5 = shl i32 %volright, 8
  %div6 = udiv i32 %mul5, 1036
  %7 = tail call i32 @llvm.umin.i32(i32 %div6, i32 63)
  %call.i118 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 6, i32 noundef 0, i32 noundef 2, i32 noundef 4, i32 noundef %7) #9
  br label %cleanup

sw.bb18:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %div19114 = lshr i32 %volleft, 1
  %div20115 = lshr i32 %volright, 1
  %8 = trunc i32 %div19114 to i8
  %conv22 = sub i8 127, %8
  %call23 = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext 32, i8 noundef zeroext 3, i8 noundef zeroext %conv22) #9
  %9 = trunc i32 %div20115 to i8
  %conv24 = sub i8 127, %9
  %call25 = tail call i32 @i2c_writereg(ptr noundef %av7110, i8 noundef zeroext 32, i8 noundef zeroext 4, i8 noundef zeroext %conv24) #9
  br label %cleanup

sw.bb26:                                          ; preds = %do.end3
  %10 = tail call i32 @llvm.umax.i32(i32 %volright, i32 %volleft)
  %mul29 = mul i32 %10, 115
  %div30 = udiv i32 %mul29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp31.not = icmp eq i32 %10, 0
  br i1 %cmp31.not, label %sw.bb26.if.end37_crit_edge, label %if.then33

sw.bb26.if.end37_crit_edge:                       ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %sub34 = sub i32 %volright, %volleft
  %mul35 = mul i32 %sub34, 127
  %div36 = udiv i32 %mul35, %10
  %div36.tr = trunc i32 %div36 to i16
  %phi.cast113 = shl i16 %div36.tr, 8
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %sw.bb26.if.end37_crit_edge
  %balance.0 = phi i16 [ %phi.cast113, %if.then33 ], [ 0, %sw.bb26.if.end37_crit_edge ]
  %call40 = tail call i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext 18, i16 noundef zeroext 1, i16 noundef zeroext %balance.0) #9
  %div30.tr = trunc i32 %div30 to i16
  %conv41 = shl i16 %div30.tr, 8
  %call42 = tail call i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext 18, i16 noundef zeroext 0, i16 noundef zeroext %conv41) #9
  %call44 = tail call i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext 18, i16 noundef zeroext 6, i16 noundef zeroext %conv41) #9
  br label %cleanup

sw.bb45:                                          ; preds = %do.end3
  %11 = tail call i32 @llvm.umax.i32(i32 %volright, i32 %volleft)
  %mul52 = mul i32 %11, 115
  %div53 = udiv i32 %mul52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp55.not = icmp eq i32 %11, 0
  br i1 %cmp55.not, label %sw.bb45.if.end61_crit_edge, label %if.then57

sw.bb45.if.end61_crit_edge:                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then57:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %sub58 = sub i32 %volright, %volleft
  %mul59 = mul i32 %sub58, 127
  %div60 = udiv i32 %mul59, %11
  %div60.tr = trunc i32 %div60 to i16
  %phi.cast = shl i16 %div60.tr, 8
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %sw.bb45.if.end61_crit_edge
  %balance.1 = phi i16 [ %phi.cast, %if.then57 ], [ 0, %sw.bb45.if.end61_crit_edge ]
  %call64 = tail call i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext 18, i16 noundef zeroext 1, i16 noundef zeroext %balance.1) #9
  %div53.tr = trunc i32 %div53 to i16
  %conv65 = shl i16 %div53.tr, 8
  %call66 = tail call i32 @msp_writereg(ptr noundef %av7110, i8 noundef zeroext 18, i16 noundef zeroext 0, i16 noundef zeroext %conv65) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.end37, %sw.bb18, %if.end15, %sw.bb.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end61 ], [ 0, %if.end37 ], [ 0, %sw.bb18 ], [ %call.i118, %if.end15 ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ 0, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_writereg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msp_writereg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ChangePIDs(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @av7110_p2t_init(ptr nocapture noundef writeonly %p, ptr noundef %feed) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pos = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 2
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pos, align 4
  %frags = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %frags, align 4
  %tobool.not = icmp eq ptr %feed, null
  %2 = call ptr @memset(ptr %p, i32 0, i32 189)
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %feed1 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %feed1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %feed, ptr %feed1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_p2t_write(ptr nocapture noundef readonly %buf, i32 noundef %length, i16 noundef zeroext %pid, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frags = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 3
  %0 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frags, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %1, label %entry.if.end43_crit_edge [
    i32 0, label %entry.if.end45_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.epilog
    i32 3, label %entry.if.then19_crit_edge
  ]

entry.if.then19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

entry.if.end45_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp = icmp eq i8 %4, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb.if.end43_crit_edge

sw.bb.if.end43_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true:                                    ; preds = %sw.bb
  %arrayidx4 = getelementptr i8, ptr %buf, i32 1
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp6 = icmp eq i8 %6, 1
  br i1 %cmp6, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

sw.epilog:                                        ; preds = %entry
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp13 = icmp eq i8 %8, 1
  br i1 %cmp13, label %sw.epilog.if.then19_crit_edge, label %sw.epilog.if.end43_crit_edge

sw.epilog.if.end43_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

sw.epilog.if.then19_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

if.then19:                                        ; preds = %sw.epilog.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge, %entry.if.then19_crit_edge
  %c.0215 = phi i32 [ 1, %sw.epilog.if.then19_crit_edge ], [ 2, %land.lhs.true.if.then19_crit_edge ], [ 0, %entry.if.then19_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %buf, i32 %c.0215
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %10, label %if.then19.if.end43_crit_edge [
    i8 -68, label %if.then19.sw.bb24_crit_edge
    i8 -65, label %if.then19.sw.bb24_crit_edge230
    i8 -1, label %if.then19.sw.bb24_crit_edge231
    i8 -16, label %if.then19.sw.bb24_crit_edge232
    i8 -15, label %if.then19.sw.bb24_crit_edge233
    i8 -66, label %if.then19.sw.bb24_crit_edge234
    i8 -14, label %if.then19.sw.bb24_crit_edge235
    i8 -13, label %if.then19.sw.bb24_crit_edge236
    i8 -67, label %if.then19.sw.bb24_crit_edge237
    i8 -32, label %if.then19.sw.bb24_crit_edge238
    i8 -31, label %if.then19.sw.bb24_crit_edge239
    i8 -30, label %if.then19.sw.bb24_crit_edge240
    i8 -29, label %if.then19.sw.bb24_crit_edge241
    i8 -28, label %if.then19.sw.bb24_crit_edge242
    i8 -27, label %if.then19.sw.bb24_crit_edge243
    i8 -26, label %if.then19.sw.bb24_crit_edge244
    i8 -25, label %if.then19.sw.bb24_crit_edge245
    i8 -24, label %if.then19.sw.bb24_crit_edge246
    i8 -23, label %if.then19.sw.bb24_crit_edge247
    i8 -22, label %if.then19.sw.bb24_crit_edge248
    i8 -21, label %if.then19.sw.bb24_crit_edge249
    i8 -20, label %if.then19.sw.bb24_crit_edge250
    i8 -19, label %if.then19.sw.bb24_crit_edge251
    i8 -18, label %if.then19.sw.bb24_crit_edge252
    i8 -17, label %if.then19.sw.bb24_crit_edge253
    i8 -64, label %if.then19.sw.bb24_crit_edge254
    i8 -63, label %if.then19.sw.bb24_crit_edge255
    i8 -62, label %if.then19.sw.bb24_crit_edge256
    i8 -61, label %if.then19.sw.bb24_crit_edge257
    i8 -60, label %if.then19.sw.bb24_crit_edge258
    i8 -59, label %if.then19.sw.bb24_crit_edge259
    i8 -58, label %if.then19.sw.bb24_crit_edge260
    i8 -57, label %if.then19.sw.bb24_crit_edge261
    i8 -56, label %if.then19.sw.bb24_crit_edge262
    i8 -55, label %if.then19.sw.bb24_crit_edge263
    i8 -54, label %if.then19.sw.bb24_crit_edge264
    i8 -53, label %if.then19.sw.bb24_crit_edge265
    i8 -52, label %if.then19.sw.bb24_crit_edge266
    i8 -51, label %if.then19.sw.bb24_crit_edge267
    i8 -50, label %if.then19.sw.bb24_crit_edge268
    i8 -49, label %if.then19.sw.bb24_crit_edge269
    i8 -48, label %if.then19.sw.bb24_crit_edge270
    i8 -47, label %if.then19.sw.bb24_crit_edge271
    i8 -46, label %if.then19.sw.bb24_crit_edge272
    i8 -45, label %if.then19.sw.bb24_crit_edge273
    i8 -44, label %if.then19.sw.bb24_crit_edge274
    i8 -43, label %if.then19.sw.bb24_crit_edge275
    i8 -42, label %if.then19.sw.bb24_crit_edge276
    i8 -41, label %if.then19.sw.bb24_crit_edge277
    i8 -40, label %if.then19.sw.bb24_crit_edge278
    i8 -39, label %if.then19.sw.bb24_crit_edge279
    i8 -38, label %if.then19.sw.bb24_crit_edge280
    i8 -37, label %if.then19.sw.bb24_crit_edge281
    i8 -36, label %if.then19.sw.bb24_crit_edge282
    i8 -35, label %if.then19.sw.bb24_crit_edge283
    i8 -34, label %if.then19.sw.bb24_crit_edge284
    i8 -33, label %if.then19.sw.bb24_crit_edge285
  ]

if.then19.sw.bb24_crit_edge285:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge284:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge283:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge282:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge281:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge280:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge279:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge278:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge277:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge276:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge275:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge274:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge273:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge272:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge271:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge270:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge269:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge268:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge267:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge266:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge265:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge264:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge263:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge262:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge261:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge260:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge259:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge258:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge257:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge256:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge255:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge254:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge253:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge252:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge251:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge250:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge249:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge248:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge247:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge246:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge245:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge244:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge243:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge242:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge241:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge240:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge239:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge238:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge237:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge236:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge235:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge234:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge233:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge232:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge231:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge230:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.sw.bb24_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb24

if.then19.if.end43_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

sw.bb24:                                          ; preds = %if.then19.sw.bb24_crit_edge, %if.then19.sw.bb24_crit_edge230, %if.then19.sw.bb24_crit_edge231, %if.then19.sw.bb24_crit_edge232, %if.then19.sw.bb24_crit_edge233, %if.then19.sw.bb24_crit_edge234, %if.then19.sw.bb24_crit_edge235, %if.then19.sw.bb24_crit_edge236, %if.then19.sw.bb24_crit_edge237, %if.then19.sw.bb24_crit_edge238, %if.then19.sw.bb24_crit_edge239, %if.then19.sw.bb24_crit_edge240, %if.then19.sw.bb24_crit_edge241, %if.then19.sw.bb24_crit_edge242, %if.then19.sw.bb24_crit_edge243, %if.then19.sw.bb24_crit_edge244, %if.then19.sw.bb24_crit_edge245, %if.then19.sw.bb24_crit_edge246, %if.then19.sw.bb24_crit_edge247, %if.then19.sw.bb24_crit_edge248, %if.then19.sw.bb24_crit_edge249, %if.then19.sw.bb24_crit_edge250, %if.then19.sw.bb24_crit_edge251, %if.then19.sw.bb24_crit_edge252, %if.then19.sw.bb24_crit_edge253, %if.then19.sw.bb24_crit_edge254, %if.then19.sw.bb24_crit_edge255, %if.then19.sw.bb24_crit_edge256, %if.then19.sw.bb24_crit_edge257, %if.then19.sw.bb24_crit_edge258, %if.then19.sw.bb24_crit_edge259, %if.then19.sw.bb24_crit_edge260, %if.then19.sw.bb24_crit_edge261, %if.then19.sw.bb24_crit_edge262, %if.then19.sw.bb24_crit_edge263, %if.then19.sw.bb24_crit_edge264, %if.then19.sw.bb24_crit_edge265, %if.then19.sw.bb24_crit_edge266, %if.then19.sw.bb24_crit_edge267, %if.then19.sw.bb24_crit_edge268, %if.then19.sw.bb24_crit_edge269, %if.then19.sw.bb24_crit_edge270, %if.then19.sw.bb24_crit_edge271, %if.then19.sw.bb24_crit_edge272, %if.then19.sw.bb24_crit_edge273, %if.then19.sw.bb24_crit_edge274, %if.then19.sw.bb24_crit_edge275, %if.then19.sw.bb24_crit_edge276, %if.then19.sw.bb24_crit_edge277, %if.then19.sw.bb24_crit_edge278, %if.then19.sw.bb24_crit_edge279, %if.then19.sw.bb24_crit_edge280, %if.then19.sw.bb24_crit_edge281, %if.then19.sw.bb24_crit_edge282, %if.then19.sw.bb24_crit_edge283, %if.then19.sw.bb24_crit_edge284, %if.then19.sw.bb24_crit_edge285
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %p, align 4
  %arrayidx27 = getelementptr [188 x i8], ptr %p, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx27, align 1
  %arrayidx29 = getelementptr [188 x i8], ptr %p, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx29, align 2
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx20, align 1
  %arrayidx32 = getelementptr [188 x i8], ptr %p, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx32, align 1
  %pos = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 2
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 4, ptr %pos, align 4
  %add.ptr = getelementptr i8, ptr %p, i32 4
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %arrayidx20, i32 180)
  %add39 = or i32 %c.0215, 180
  %counter = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 1
  %feed = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 4
  %20 = ptrtoint ptr %feed to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %feed, align 4
  tail call fastcc void @p_to_t(ptr noundef %p, i32 noundef 184, i16 noundef zeroext %pid, ptr noundef %counter, ptr noundef %21)
  %22 = call ptr @memset(ptr %p, i32 0, i32 188)
  %23 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pos, align 4
  br label %if.end43

if.end43:                                         ; preds = %sw.bb24, %if.then19.if.end43_crit_edge, %sw.epilog.if.end43_crit_edge, %land.lhs.true.if.end43_crit_edge, %sw.bb.if.end43_crit_edge, %entry.if.end43_crit_edge
  %c.1 = phi i32 [ %add39, %sw.bb24 ], [ 0, %sw.epilog.if.end43_crit_edge ], [ 0, %if.then19.if.end43_crit_edge ], [ 0, %land.lhs.true.if.end43_crit_edge ], [ 0, %sw.bb.if.end43_crit_edge ], [ 0, %entry.if.end43_crit_edge ]
  %24 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %frags, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %entry.if.end45_crit_edge
  %c.2 = phi i32 [ %c.1, %if.end43 ], [ %1, %entry.if.end45_crit_edge ]
  %pos46 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 2
  %25 = ptrtoint ptr %pos46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pos46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool47.not = icmp eq i32 %26, 0
  br i1 %tobool47.not, label %if.end45.if.end76_crit_edge, label %if.then48

if.end45.if.end76_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

if.then48:                                        ; preds = %if.end45
  %add.ptr49 = getelementptr i8, ptr %buf, i32 %c.2
  %sub50 = sub i32 %length, %c.2
  %call = tail call fastcc i32 @find_pes_header(ptr noundef %add.ptr49, i32 noundef %sub50, ptr noundef %frags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp52 = icmp sgt i32 %call, -1
  br i1 %cmp52, label %land.lhs.true54, label %if.then48.if.else_crit_edge

if.then48.if.else_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true54:                                  ; preds = %if.then48
  %27 = ptrtoint ptr %pos46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pos46, align 4
  %sub56 = sub i32 184, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub56)
  %cmp57 = icmp slt i32 %call, %sub56
  br i1 %cmp57, label %if.then59, label %land.lhs.true54.if.else_crit_edge

land.lhs.true54.if.else_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then59:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  %add60 = add i32 %call, %c.2
  br label %if.end63

if.else:                                          ; preds = %land.lhs.true54.if.else_crit_edge, %if.then48.if.else_crit_edge
  %29 = ptrtoint ptr %pos46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pos46, align 4
  %sub62 = sub i32 184, %30
  br label %if.end63

if.end63:                                         ; preds = %if.else, %if.then59
  %l.0 = phi i32 [ %add60, %if.then59 ], [ %sub62, %if.else ]
  %31 = ptrtoint ptr %pos46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pos46, align 4
  %add.ptr67 = getelementptr i8, ptr %p, i32 %32
  %33 = call ptr @memcpy(ptr %add.ptr67, ptr %buf, i32 %l.0)
  %add68 = add i32 %l.0, %c.2
  %34 = load i32, ptr %pos46, align 4
  %add70 = add i32 %34, %l.0
  store i32 %add70, ptr %pos46, align 4
  %counter74 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 1
  %feed75 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 4
  %35 = ptrtoint ptr %feed75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %feed75, align 4
  tail call fastcc void @p_to_t(ptr noundef %p, i32 noundef %add70, i16 noundef zeroext %pid, ptr noundef %counter74, ptr noundef %36)
  %37 = call ptr @memset(ptr %p, i32 0, i32 188)
  %38 = ptrtoint ptr %pos46 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %pos46, align 4
  %39 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %frags, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.end63, %if.end45.if.end76_crit_edge
  %c.3 = phi i32 [ %add68, %if.end63 ], [ %c.2, %if.end45.if.end76_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.3, i32 %length)
  %cmp77216 = icmp slt i32 %c.3, %length
  br i1 %cmp77216, label %while.body.lr.ph, label %if.end76.while.end_crit_edge

if.end76.while.end_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end76
  %counter103 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 1
  %feed104 = getelementptr inbounds %struct.av7110_p2t, ptr %p, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end110.while.body_crit_edge, %while.body.lr.ph
  %add.0218 = phi i32 [ 0, %while.body.lr.ph ], [ %add.1, %if.end110.while.body_crit_edge ]
  %c.4217 = phi i32 [ %c.3, %while.body.lr.ph ], [ %c.5, %if.end110.while.body_crit_edge ]
  %add.ptr79 = getelementptr i8, ptr %buf, i32 %c.4217
  %add.ptr80 = getelementptr i8, ptr %add.ptr79, i32 %add.0218
  %sub81 = sub i32 %length, %c.4217
  %sub82 = sub i32 %sub81, %add.0218
  %call84 = tail call fastcc i32 @find_pes_header(ptr noundef %add.ptr80, i32 noundef %sub82, ptr noundef %frags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call84)
  %cmp85 = icmp sgt i32 %call84, -1
  br i1 %cmp85, label %if.then87, label %if.end110.thread

if.then87:                                        ; preds = %while.body
  %add88 = add nsw i32 %add.0218, %c.4217
  %add89 = add i32 %add88, %call84
  call void @__sanitizer_cov_trace_cmp4(i32 %add89, i32 %c.4217)
  %cmp90 = icmp sgt i32 %add89, %c.4217
  br i1 %cmp90, label %if.then92, label %if.then87.if.end110_crit_edge

if.then87.if.end110_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then92:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %sub94 = sub i32 %add89, %c.4217
  %40 = ptrtoint ptr %feed104 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %feed104, align 4
  tail call fastcc void @p_to_t(ptr noundef %add.ptr79, i32 noundef %sub94, i16 noundef zeroext %pid, ptr noundef %counter103, ptr noundef %41)
  %42 = call ptr @memset(ptr %p, i32 0, i32 188)
  %43 = ptrtoint ptr %pos46 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pos46, align 4
  %44 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %frags, align 4
  br label %if.end110

if.end110.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rem = srem i32 %sub81, 184
  %sub101 = sub i32 %sub81, %rem
  %45 = ptrtoint ptr %feed104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %feed104, align 4
  tail call fastcc void @p_to_t(ptr noundef %add.ptr79, i32 noundef %sub101, i16 noundef zeroext %pid, ptr noundef %counter103, ptr noundef %46)
  %add.ptr108 = getelementptr i8, ptr %add.ptr79, i32 %sub101
  %47 = call ptr @memcpy(ptr %p, ptr %add.ptr108, i32 %rem)
  %48 = ptrtoint ptr %pos46 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %rem, ptr %pos46, align 4
  br label %while.end

if.end110:                                        ; preds = %if.then92, %if.then87.if.end110_crit_edge
  %c.5 = phi i32 [ %add89, %if.then92 ], [ %c.4217, %if.then87.if.end110_crit_edge ]
  %add.1 = phi i32 [ 0, %if.then92 ], [ 1, %if.then87.if.end110_crit_edge ]
  %cmp77 = icmp slt i32 %c.5, %length
  br i1 %cmp77, label %if.end110.while.body_crit_edge, label %if.end110.while.end_crit_edge

if.end110.while.end_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end110.while.body_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end110.while.end_crit_edge, %if.end110.thread, %if.end76.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @p_to_t(ptr nocapture noundef readonly %buf, i32 noundef %length, i16 noundef zeroext %pid, ptr nocapture noundef %counter, ptr noundef %feed) unnamed_addr #0 align 64 {
entry:
  %obuf = alloca [188 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 188, ptr nonnull %obuf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %length)
  %cmp = icmp sgt i32 %length, 3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.while.body.lr.ph_crit_edge

land.lhs.true.while.body.lr.ph_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true3.while.body.lr.ph_crit_edge

land.lhs.true3.while.body.lr.ph_crit_edge:        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

land.lhs.true8:                                   ; preds = %land.lhs.true3
  %arrayidx9 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp11 = icmp eq i8 %5, 1
  br i1 %cmp11, label %if.then, label %land.lhs.true8.while.body.lr.ph_crit_edge

land.lhs.true8.while.body.lr.ph_crit_edge:        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.then:                                          ; preds = %land.lhs.true8
  %arrayidx13 = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %7)
  %8 = icmp ugt i8 %7, -69
  br i1 %8, label %switch.lookup, label %if.then.while.body.lr.ph_crit_edge

if.then.while.body.lr.ph_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp1772 = icmp sgt i32 %length, 0
  br i1 %cmp1772, label %while.body.lr.ph.thread, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %and.i6380 = lshr i16 %pid, 8
  %9 = trunc i16 %and.i6380 to i8
  %conv6.i6481 = and i8 %9, 31
  %conv13.i6682 = trunc i16 %pid to i8
  %tshead.sroa.4.0..sroa_idx.i6983 = getelementptr inbounds i8, ptr %obuf, i32 1
  %tshead.sroa.7.0..sroa_idx.i7084 = getelementptr inbounds i8, ptr %obuf, i32 2
  %tshead.sroa.9.0..sroa_idx.i7185 = getelementptr inbounds i8, ptr %obuf, i32 3
  %arrayidx29.i86 = getelementptr inbounds i8, ptr %obuf, i32 4
  %arrayidx33.i87 = getelementptr inbounds i8, ptr %obuf, i32 5
  %uglygep.i88 = getelementptr inbounds i8, ptr %obuf, i32 6
  %cb89 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %obuf, i32 1
  %11 = call ptr @memset(ptr %10, i32 0, i32 187)
  br label %if.else.peel

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %switch.tableidx = add i8 %7, 68
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [68 x i8], ptr @switch.table.p_to_t, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %13)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %switch.lookup, %if.then.while.body.lr.ph_crit_edge, %land.lhs.true8.while.body.lr.ph_crit_edge, %land.lhs.true3.while.body.lr.ph_crit_edge, %land.lhs.true.while.body.lr.ph_crit_edge
  %tobool.not.i61.peel.ph = phi i8 [ 0, %land.lhs.true.while.body.lr.ph_crit_edge ], [ 0, %land.lhs.true3.while.body.lr.ph_crit_edge ], [ 0, %land.lhs.true8.while.body.lr.ph_crit_edge ], [ 0, %if.then.while.body.lr.ph_crit_edge ], [ %switch.load, %switch.lookup ]
  %and.i63 = lshr i16 %pid, 8
  %14 = trunc i16 %and.i63 to i8
  %conv6.i64 = and i8 %14, 31
  %conv13.i66 = trunc i16 %pid to i8
  %tshead.sroa.4.0..sroa_idx.i69 = getelementptr inbounds i8, ptr %obuf, i32 1
  %tshead.sroa.7.0..sroa_idx.i70 = getelementptr inbounds i8, ptr %obuf, i32 2
  %tshead.sroa.9.0..sroa_idx.i71 = getelementptr inbounds i8, ptr %obuf, i32 3
  %arrayidx29.i = getelementptr inbounds i8, ptr %obuf, i32 4
  %arrayidx33.i = getelementptr inbounds i8, ptr %obuf, i32 5
  %uglygep.i = getelementptr inbounds i8, ptr %obuf, i32 6
  %cb = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 1
  %15 = call ptr @memset(ptr %obuf, i32 0, i32 188)
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %length)
  %cmp19.peel = icmp ugt i32 %length, 183
  br i1 %cmp19.peel, label %if.end35.peel, label %while.body.lr.ph.if.else.peel_crit_edge

while.body.lr.ph.if.else.peel_crit_edge:          ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.peel

if.else.peel:                                     ; preds = %while.body.lr.ph.if.else.peel_crit_edge, %while.body.lr.ph.thread
  %cb109 = phi ptr [ %cb89, %while.body.lr.ph.thread ], [ %cb, %while.body.lr.ph.if.else.peel_crit_edge ]
  %uglygep.i107 = phi ptr [ %uglygep.i88, %while.body.lr.ph.thread ], [ %uglygep.i, %while.body.lr.ph.if.else.peel_crit_edge ]
  %arrayidx33.i105 = phi ptr [ %arrayidx33.i87, %while.body.lr.ph.thread ], [ %arrayidx33.i, %while.body.lr.ph.if.else.peel_crit_edge ]
  %arrayidx29.i103 = phi ptr [ %arrayidx29.i86, %while.body.lr.ph.thread ], [ %arrayidx29.i, %while.body.lr.ph.if.else.peel_crit_edge ]
  %tshead.sroa.9.0..sroa_idx.i71101 = phi ptr [ %tshead.sroa.9.0..sroa_idx.i7185, %while.body.lr.ph.thread ], [ %tshead.sroa.9.0..sroa_idx.i71, %while.body.lr.ph.if.else.peel_crit_edge ]
  %tshead.sroa.7.0..sroa_idx.i7099 = phi ptr [ %tshead.sroa.7.0..sroa_idx.i7084, %while.body.lr.ph.thread ], [ %tshead.sroa.7.0..sroa_idx.i70, %while.body.lr.ph.if.else.peel_crit_edge ]
  %tshead.sroa.4.0..sroa_idx.i6997 = phi ptr [ %tshead.sroa.4.0..sroa_idx.i6983, %while.body.lr.ph.thread ], [ %tshead.sroa.4.0..sroa_idx.i69, %while.body.lr.ph.if.else.peel_crit_edge ]
  %conv13.i6695 = phi i8 [ %conv13.i6682, %while.body.lr.ph.thread ], [ %conv13.i66, %while.body.lr.ph.if.else.peel_crit_edge ]
  %conv6.i6492 = phi i8 [ %conv6.i6481, %while.body.lr.ph.thread ], [ %conv6.i64, %while.body.lr.ph.if.else.peel_crit_edge ]
  %tobool.not.i61.peel7891 = phi i8 [ 0, %while.body.lr.ph.thread ], [ %tobool.not.i61.peel.ph, %while.body.lr.ph.if.else.peel_crit_edge ]
  %conv29.peel = trunc i32 %length to i8
  %or.i65.peel = or i8 %tobool.not.i61.peel7891, %conv6.i6492
  %16 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %counter, align 1
  %inc.i67.peel = add i8 %17, 1
  store i8 %inc.i67.peel, ptr %counter, align 1
  %18 = and i8 %17, 15
  %or23.i68.peel = or i8 %18, 48
  %19 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 71, ptr %obuf, align 1
  %20 = ptrtoint ptr %tshead.sroa.4.0..sroa_idx.i6997 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or.i65.peel, ptr %tshead.sroa.4.0..sroa_idx.i6997, align 1
  %21 = ptrtoint ptr %tshead.sroa.7.0..sroa_idx.i7099 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13.i6695, ptr %tshead.sroa.7.0..sroa_idx.i7099, align 1
  %22 = ptrtoint ptr %tshead.sroa.9.0..sroa_idx.i71101 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %or23.i68.peel, ptr %tshead.sroa.9.0..sroa_idx.i71101, align 1
  %sub27.i.peel = sub nuw i8 -73, %conv29.peel
  %23 = ptrtoint ptr %arrayidx29.i103 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %sub27.i.peel, ptr %arrayidx29.i103, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -73, i8 %conv29.peel)
  %cmp.i.peel = icmp ult i8 %conv29.peel, -73
  br i1 %cmp.i.peel, label %if.end35.i.peel, label %if.else.peel.if.end35.peel.thread_crit_edge

if.else.peel.if.end35.peel.thread_crit_edge:      ; preds = %if.else.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.peel.thread

if.end35.i.peel:                                  ; preds = %if.else.peel
  %24 = ptrtoint ptr %arrayidx33.i105 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx33.i105, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -74, i8 %conv29.peel)
  %cmp3761.not.i.peel = icmp eq i8 %conv29.peel, -74
  br i1 %cmp3761.not.i.peel, label %if.end35.i.peel.if.end35.peel.thread_crit_edge, label %for.body.preheader.i.peel

if.end35.i.peel.if.end35.peel.thread_crit_edge:   ; preds = %if.end35.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.peel.thread

for.body.preheader.i.peel:                        ; preds = %if.end35.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i.peel = sub nuw nsw i32 188, %length
  %smax.i.peel = call i32 @llvm.smax.i32(i32 %add36.i.peel, i32 7) #9
  %25 = add nsw i32 %smax.i.peel, -6
  %26 = call ptr @memset(ptr %uglygep.i107, i32 255, i32 %25)
  br label %if.end35.peel.thread

if.end35.peel.thread:                             ; preds = %for.body.preheader.i.peel, %if.end35.i.peel.if.end35.peel.thread_crit_edge, %if.else.peel.if.end35.peel.thread_crit_edge
  %c.2.i.peel = phi i32 [ 6, %if.end35.i.peel.if.end35.peel.thread_crit_edge ], [ %smax.i.peel, %for.body.preheader.i.peel ], [ 5, %if.else.peel.if.end35.peel.thread_crit_edge ]
  %add.ptr32.peel = getelementptr i8, ptr %obuf, i32 %c.2.i.peel
  %sub34.peel = sub nuw nsw i32 188, %c.2.i.peel
  %27 = call ptr @memcpy(ptr %add.ptr32.peel, ptr %buf, i32 %sub34.peel)
  br label %while.end.sink.split

if.end35.peel:                                    ; preds = %while.body.lr.ph
  %or.i.peel = or i8 %tobool.not.i61.peel.ph, %conv6.i64
  %28 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %counter, align 1
  %inc.i.peel = add i8 %29, 1
  store i8 %inc.i.peel, ptr %counter, align 1
  %30 = and i8 %29, 15
  %or23.i.peel = or i8 %30, 16
  %31 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 71, ptr %obuf, align 1
  %32 = ptrtoint ptr %tshead.sroa.4.0..sroa_idx.i69 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %or.i.peel, ptr %tshead.sroa.4.0..sroa_idx.i69, align 1
  %33 = ptrtoint ptr %tshead.sroa.7.0..sroa_idx.i70 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv13.i66, ptr %tshead.sroa.7.0..sroa_idx.i70, align 1
  %34 = ptrtoint ptr %tshead.sroa.9.0..sroa_idx.i71 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %or23.i.peel, ptr %tshead.sroa.9.0..sroa_idx.i71, align 1
  %35 = call ptr @memcpy(ptr %arrayidx29.i, ptr %buf, i32 184)
  %36 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cb, align 8
  %call38.peel = call i32 %37(ptr noundef nonnull %obuf, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %feed, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 184, i32 %length)
  %cmp17.peel.not = icmp eq i32 %length, 184
  br i1 %cmp17.peel.not, label %if.end35.peel.while.end_crit_edge, label %if.end35.peel.while.body_crit_edge

if.end35.peel.while.body_crit_edge:               ; preds = %if.end35.peel
  br label %while.body

if.end35.peel.while.end_crit_edge:                ; preds = %if.end35.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %if.end35.peel.while.body_crit_edge
  %c.074 = phi i32 [ %add, %if.end35.while.body_crit_edge ], [ 184, %if.end35.peel.while.body_crit_edge ]
  %38 = call ptr @memset(ptr %obuf, i32 0, i32 188)
  %sub = sub i32 %length, %c.074
  call void @__sanitizer_cov_trace_const_cmp4(i32 183, i32 %sub)
  %cmp19 = icmp sgt i32 %sub, 183
  br i1 %cmp19, label %if.end35, label %if.else

if.else:                                          ; preds = %while.body
  %conv29 = trunc i32 %sub to i8
  %conv.i = and i32 %sub, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 -72, i8 %conv29)
  %tobool1.not.i = icmp eq i8 %conv29, -72
  %tshead.sroa.9.0.i = select i1 %tobool1.not.i, i8 16, i8 48
  %39 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %counter, align 1
  %inc.i67 = add i8 %40, 1
  store i8 %inc.i67, ptr %counter, align 1
  %41 = and i8 %40, 15
  %or23.i68 = or i8 %41, %tshead.sroa.9.0.i
  %42 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 71, ptr %obuf, align 1
  %43 = ptrtoint ptr %tshead.sroa.4.0..sroa_idx.i69 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv6.i64, ptr %tshead.sroa.4.0..sroa_idx.i69, align 1
  %44 = ptrtoint ptr %tshead.sroa.7.0..sroa_idx.i70 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv13.i66, ptr %tshead.sroa.7.0..sroa_idx.i70, align 1
  %45 = ptrtoint ptr %tshead.sroa.9.0..sroa_idx.i71 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %or23.i68, ptr %tshead.sroa.9.0..sroa_idx.i71, align 1
  br i1 %tobool1.not.i, label %if.else.if.end35.thread_crit_edge, label %if.then26.i

if.else.if.end35.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.thread

if.then26.i:                                      ; preds = %if.else
  %sub27.i = sub i8 -73, %conv29
  %46 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub27.i, ptr %arrayidx29.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -73, i8 %conv29)
  %cmp.i = icmp ult i8 %conv29, -73
  br i1 %cmp.i, label %if.end35.i, label %if.then26.i.if.end35.thread_crit_edge

if.then26.i.if.end35.thread_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.thread

if.end35.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -74, i8 %conv29)
  %cmp3761.not.i = icmp eq i8 %conv29, -74
  br i1 %cmp3761.not.i, label %if.end35.i.if.end35.thread_crit_edge, label %for.body.preheader.i

if.end35.i.if.end35.thread_crit_edge:             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.thread

for.body.preheader.i:                             ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %add36.i = sub nsw i32 188, %conv.i
  %smax.i = call i32 @llvm.smax.i32(i32 %add36.i, i32 7) #9
  %47 = add nsw i32 %smax.i, -6
  %48 = call ptr @memset(ptr %uglygep.i, i32 255, i32 %47)
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %for.body.preheader.i, %if.end35.i.if.end35.thread_crit_edge, %if.then26.i.if.end35.thread_crit_edge, %if.else.if.end35.thread_crit_edge
  %c.2.i = phi i32 [ 4, %if.else.if.end35.thread_crit_edge ], [ 6, %if.end35.i.if.end35.thread_crit_edge ], [ %smax.i, %for.body.preheader.i ], [ 5, %if.then26.i.if.end35.thread_crit_edge ]
  %add.ptr32 = getelementptr i8, ptr %obuf, i32 %c.2.i
  %add.ptr33 = getelementptr i8, ptr %buf, i32 %c.074
  %sub34 = sub nuw nsw i32 188, %c.2.i
  %49 = call ptr @memcpy(ptr %add.ptr32, ptr %add.ptr33, i32 %sub34)
  br label %while.end.sink.split

if.end35:                                         ; preds = %while.body
  %50 = ptrtoint ptr %counter to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %counter, align 1
  %inc.i = add i8 %51, 1
  store i8 %inc.i, ptr %counter, align 1
  %52 = and i8 %51, 15
  %or23.i = or i8 %52, 16
  %53 = ptrtoint ptr %obuf to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 71, ptr %obuf, align 1
  %54 = ptrtoint ptr %tshead.sroa.4.0..sroa_idx.i69 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv6.i64, ptr %tshead.sroa.4.0..sroa_idx.i69, align 1
  %55 = ptrtoint ptr %tshead.sroa.7.0..sroa_idx.i70 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv13.i66, ptr %tshead.sroa.7.0..sroa_idx.i70, align 1
  %56 = ptrtoint ptr %tshead.sroa.9.0..sroa_idx.i71 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %or23.i, ptr %tshead.sroa.9.0..sroa_idx.i71, align 1
  %add.ptr24 = getelementptr i8, ptr %buf, i32 %c.074
  %57 = call ptr @memcpy(ptr %arrayidx29.i, ptr %add.ptr24, i32 184)
  %add = add i32 %c.074, 184
  %58 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cb, align 8
  %call38 = call i32 %59(ptr noundef nonnull %obuf, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %feed, ptr noundef null) #9
  %cmp17 = icmp slt i32 %add, %length
  br i1 %cmp17, label %if.end35.while.body_crit_edge, label %if.end35.while.end_crit_edge, !llvm.loop !153

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end.sink.split:                             ; preds = %if.end35.thread, %if.end35.peel.thread
  %cb109.sink = phi ptr [ %cb109, %if.end35.peel.thread ], [ %cb, %if.end35.thread ]
  %60 = ptrtoint ptr %cb109.sink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cb109.sink, align 8
  %call38.peel120 = call i32 %61(ptr noundef nonnull %obuf, i32 noundef 188, ptr noundef null, i32 noundef 0, ptr noundef %feed, ptr noundef null) #9
  br label %while.end

while.end:                                        ; preds = %while.end.sink.split, %if.end35.while.end_crit_edge, %if.end35.peel.while.end_crit_edge, %if.end.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 188, ptr nonnull %obuf) #9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @find_pes_header(ptr nocapture noundef readonly %buf, i32 noundef %length, ptr nocapture noundef writeonly %frags) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frags, align 4
  %sub = add i32 %length, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp95 = icmp sgt i32 %sub, 0
  br i1 %cmp95, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %c.096 = phi i32 [ %add, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %c.096
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp1 = icmp eq i8 %2, 0
  %add = add nuw nsw i32 %c.096, 1
  br i1 %cmp1, label %land.lhs.true, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %add
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp5 = icmp eq i8 %4, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %add8 = add nuw i32 %c.096, 2
  %arrayidx9 = getelementptr i8, ptr %buf, i32 %add8
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp11 = icmp eq i8 %6, 1
  br i1 %cmp11, label %if.then, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true7
  %add13 = add nuw i32 %c.096, 3
  %arrayidx14 = getelementptr i8, ptr %buf, i32 %add13
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx14, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %8, label %if.then.if.end_crit_edge [
    i8 -68, label %if.then.cleanup_crit_edge
    i8 -65, label %if.then.cleanup_crit_edge118
    i8 -1, label %if.then.cleanup_crit_edge119
    i8 -16, label %if.then.cleanup_crit_edge120
    i8 -15, label %if.then.cleanup_crit_edge121
    i8 -66, label %if.then.cleanup_crit_edge122
    i8 -14, label %if.then.cleanup_crit_edge123
    i8 -13, label %if.then.cleanup_crit_edge124
    i8 -67, label %if.then.cleanup_crit_edge125
    i8 -32, label %if.then.cleanup_crit_edge126
    i8 -31, label %if.then.cleanup_crit_edge127
    i8 -30, label %if.then.cleanup_crit_edge128
    i8 -29, label %if.then.cleanup_crit_edge129
    i8 -28, label %if.then.cleanup_crit_edge130
    i8 -27, label %if.then.cleanup_crit_edge131
    i8 -26, label %if.then.cleanup_crit_edge132
    i8 -25, label %if.then.cleanup_crit_edge133
    i8 -24, label %if.then.cleanup_crit_edge134
    i8 -23, label %if.then.cleanup_crit_edge135
    i8 -22, label %if.then.cleanup_crit_edge136
    i8 -21, label %if.then.cleanup_crit_edge137
    i8 -20, label %if.then.cleanup_crit_edge138
    i8 -19, label %if.then.cleanup_crit_edge139
    i8 -18, label %if.then.cleanup_crit_edge140
    i8 -17, label %if.then.cleanup_crit_edge141
    i8 -64, label %if.then.cleanup_crit_edge142
    i8 -63, label %if.then.cleanup_crit_edge143
    i8 -62, label %if.then.cleanup_crit_edge144
    i8 -61, label %if.then.cleanup_crit_edge145
    i8 -60, label %if.then.cleanup_crit_edge146
    i8 -59, label %if.then.cleanup_crit_edge147
    i8 -58, label %if.then.cleanup_crit_edge148
    i8 -57, label %if.then.cleanup_crit_edge149
    i8 -56, label %if.then.cleanup_crit_edge150
    i8 -55, label %if.then.cleanup_crit_edge151
    i8 -54, label %if.then.cleanup_crit_edge152
    i8 -53, label %if.then.cleanup_crit_edge153
    i8 -52, label %if.then.cleanup_crit_edge154
    i8 -51, label %if.then.cleanup_crit_edge155
    i8 -50, label %if.then.cleanup_crit_edge156
    i8 -49, label %if.then.cleanup_crit_edge157
    i8 -48, label %if.then.cleanup_crit_edge158
    i8 -47, label %if.then.cleanup_crit_edge159
    i8 -46, label %if.then.cleanup_crit_edge160
    i8 -45, label %if.then.cleanup_crit_edge161
    i8 -44, label %if.then.cleanup_crit_edge162
    i8 -43, label %if.then.cleanup_crit_edge163
    i8 -42, label %if.then.cleanup_crit_edge164
    i8 -41, label %if.then.cleanup_crit_edge165
    i8 -40, label %if.then.cleanup_crit_edge166
    i8 -39, label %if.then.cleanup_crit_edge167
    i8 -38, label %if.then.cleanup_crit_edge168
    i8 -37, label %if.then.cleanup_crit_edge169
    i8 -36, label %if.then.cleanup_crit_edge170
    i8 -35, label %if.then.cleanup_crit_edge171
    i8 -34, label %if.then.cleanup_crit_edge172
    i8 -33, label %if.then.cleanup_crit_edge173
  ]

if.then.cleanup_crit_edge173:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge172:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge171:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge170:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge169:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge168:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge167:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge166:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge165:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge164:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge163:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge162:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge161:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge160:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge159:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge158:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge157:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge156:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge155:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge154:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge153:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge152:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge151:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge150:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge149:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge148:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge147:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge146:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge145:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge144:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge143:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge142:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge141:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge140:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge139:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge138:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge137:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge136:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge135:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge134:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge133:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge132:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge131:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge130:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge129:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge128:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge127:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge126:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge125:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge124:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge123:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge122:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge121:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge120:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge119:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge118:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.then.if.end_crit_edge, %land.lhs.true7.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  %cmp = icmp slt i32 %add, %sub
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %c.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %add, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0.lcssa, i32 %sub)
  %cmp20 = icmp eq i32 %c.0.lcssa, %sub
  br i1 %cmp20, label %if.then24, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then24:                                        ; preds = %while.end
  %sub25 = add i32 %length, -1
  %arrayidx26 = getelementptr i8, ptr %buf, i32 %sub25
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp28 = icmp eq i8 %11, 0
  br i1 %cmp28, label %if.then30, label %if.then24.if.end31_crit_edge

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %frags, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then24.if.end31_crit_edge
  %sub32 = add i32 %length, -2
  %arrayidx33 = getelementptr i8, ptr %buf, i32 %sub32
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp35 = icmp eq i8 %14, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end31.if.end44_crit_edge

if.end31.if.end44_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

land.lhs.true37:                                  ; preds = %if.end31
  %15 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp41 = icmp eq i8 %16, 0
  br i1 %cmp41, label %if.then43, label %land.lhs.true37.if.end44_crit_edge

land.lhs.true37.if.end44_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then43:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %frags, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %land.lhs.true37.if.end44_crit_edge, %if.end31.if.end44_crit_edge
  %arrayidx46 = getelementptr i8, ptr %buf, i32 %sub
  %18 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp48 = icmp eq i8 %19, 0
  br i1 %cmp48, label %land.lhs.true50, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true50:                                  ; preds = %if.end44
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp54 = icmp eq i8 %21, 0
  br i1 %cmp54, label %land.lhs.true56, label %land.lhs.true50.cleanup_crit_edge

land.lhs.true50.cleanup_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true56:                                  ; preds = %land.lhs.true50
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp60 = icmp eq i8 %23, 1
  br i1 %cmp60, label %if.then62, label %land.lhs.true56.cleanup_crit_edge

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then62:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %frags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %land.lhs.true56.cleanup_crit_edge, %land.lhs.true50.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge118, %if.then.cleanup_crit_edge119, %if.then.cleanup_crit_edge120, %if.then.cleanup_crit_edge121, %if.then.cleanup_crit_edge122, %if.then.cleanup_crit_edge123, %if.then.cleanup_crit_edge124, %if.then.cleanup_crit_edge125, %if.then.cleanup_crit_edge126, %if.then.cleanup_crit_edge127, %if.then.cleanup_crit_edge128, %if.then.cleanup_crit_edge129, %if.then.cleanup_crit_edge130, %if.then.cleanup_crit_edge131, %if.then.cleanup_crit_edge132, %if.then.cleanup_crit_edge133, %if.then.cleanup_crit_edge134, %if.then.cleanup_crit_edge135, %if.then.cleanup_crit_edge136, %if.then.cleanup_crit_edge137, %if.then.cleanup_crit_edge138, %if.then.cleanup_crit_edge139, %if.then.cleanup_crit_edge140, %if.then.cleanup_crit_edge141, %if.then.cleanup_crit_edge142, %if.then.cleanup_crit_edge143, %if.then.cleanup_crit_edge144, %if.then.cleanup_crit_edge145, %if.then.cleanup_crit_edge146, %if.then.cleanup_crit_edge147, %if.then.cleanup_crit_edge148, %if.then.cleanup_crit_edge149, %if.then.cleanup_crit_edge150, %if.then.cleanup_crit_edge151, %if.then.cleanup_crit_edge152, %if.then.cleanup_crit_edge153, %if.then.cleanup_crit_edge154, %if.then.cleanup_crit_edge155, %if.then.cleanup_crit_edge156, %if.then.cleanup_crit_edge157, %if.then.cleanup_crit_edge158, %if.then.cleanup_crit_edge159, %if.then.cleanup_crit_edge160, %if.then.cleanup_crit_edge161, %if.then.cleanup_crit_edge162, %if.then.cleanup_crit_edge163, %if.then.cleanup_crit_edge164, %if.then.cleanup_crit_edge165, %if.then.cleanup_crit_edge166, %if.then.cleanup_crit_edge167, %if.then.cleanup_crit_edge168, %if.then.cleanup_crit_edge169, %if.then.cleanup_crit_edge170, %if.then.cleanup_crit_edge171, %if.then.cleanup_crit_edge172, %if.then.cleanup_crit_edge173
  %retval.0 = phi i32 [ -1, %if.then62 ], [ -1, %land.lhs.true56.cleanup_crit_edge ], [ -1, %land.lhs.true50.cleanup_crit_edge ], [ -1, %if.end44.cleanup_crit_edge ], [ %c.0.lcssa, %while.end.cleanup_crit_edge ], [ %c.096, %if.then.cleanup_crit_edge ], [ %c.096, %if.then.cleanup_crit_edge118 ], [ %c.096, %if.then.cleanup_crit_edge119 ], [ %c.096, %if.then.cleanup_crit_edge120 ], [ %c.096, %if.then.cleanup_crit_edge121 ], [ %c.096, %if.then.cleanup_crit_edge122 ], [ %c.096, %if.then.cleanup_crit_edge123 ], [ %c.096, %if.then.cleanup_crit_edge124 ], [ %c.096, %if.then.cleanup_crit_edge125 ], [ %c.096, %if.then.cleanup_crit_edge126 ], [ %c.096, %if.then.cleanup_crit_edge127 ], [ %c.096, %if.then.cleanup_crit_edge128 ], [ %c.096, %if.then.cleanup_crit_edge129 ], [ %c.096, %if.then.cleanup_crit_edge130 ], [ %c.096, %if.then.cleanup_crit_edge131 ], [ %c.096, %if.then.cleanup_crit_edge132 ], [ %c.096, %if.then.cleanup_crit_edge133 ], [ %c.096, %if.then.cleanup_crit_edge134 ], [ %c.096, %if.then.cleanup_crit_edge135 ], [ %c.096, %if.then.cleanup_crit_edge136 ], [ %c.096, %if.then.cleanup_crit_edge137 ], [ %c.096, %if.then.cleanup_crit_edge138 ], [ %c.096, %if.then.cleanup_crit_edge139 ], [ %c.096, %if.then.cleanup_crit_edge140 ], [ %c.096, %if.then.cleanup_crit_edge141 ], [ %c.096, %if.then.cleanup_crit_edge142 ], [ %c.096, %if.then.cleanup_crit_edge143 ], [ %c.096, %if.then.cleanup_crit_edge144 ], [ %c.096, %if.then.cleanup_crit_edge145 ], [ %c.096, %if.then.cleanup_crit_edge146 ], [ %c.096, %if.then.cleanup_crit_edge147 ], [ %c.096, %if.then.cleanup_crit_edge148 ], [ %c.096, %if.then.cleanup_crit_edge149 ], [ %c.096, %if.then.cleanup_crit_edge150 ], [ %c.096, %if.then.cleanup_crit_edge151 ], [ %c.096, %if.then.cleanup_crit_edge152 ], [ %c.096, %if.then.cleanup_crit_edge153 ], [ %c.096, %if.then.cleanup_crit_edge154 ], [ %c.096, %if.then.cleanup_crit_edge155 ], [ %c.096, %if.then.cleanup_crit_edge156 ], [ %c.096, %if.then.cleanup_crit_edge157 ], [ %c.096, %if.then.cleanup_crit_edge158 ], [ %c.096, %if.then.cleanup_crit_edge159 ], [ %c.096, %if.then.cleanup_crit_edge160 ], [ %c.096, %if.then.cleanup_crit_edge161 ], [ %c.096, %if.then.cleanup_crit_edge162 ], [ %c.096, %if.then.cleanup_crit_edge163 ], [ %c.096, %if.then.cleanup_crit_edge164 ], [ %c.096, %if.then.cleanup_crit_edge165 ], [ %c.096, %if.then.cleanup_crit_edge166 ], [ %c.096, %if.then.cleanup_crit_edge167 ], [ %c.096, %if.then.cleanup_crit_edge168 ], [ %c.096, %if.then.cleanup_crit_edge169 ], [ %c.096, %if.then.cleanup_crit_edge170 ], [ %c.096, %if.then.cleanup_crit_edge171 ], [ %c.096, %if.then.cleanup_crit_edge172 ], [ %c.096, %if.then.cleanup_crit_edge173 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_write_to_decoder(ptr nocapture noundef readonly %feed, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux1 = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 2
  %0 = ptrtoint ptr %demux1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux1, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %full_ts = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 45
  %5 = ptrtoint ptr %full_ts to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %full_ts, align 8, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  br i1 %tobool5.not, label %do.end4.if.end7_crit_edge, label %land.lhs.true

do.end4.if.end7_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %do.end4
  %frontend = getelementptr inbounds %struct.dmx_demux, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %frontend to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %frontend, align 4
  %source = getelementptr inbounds %struct.dmx_frontend, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %do.end4.if.end7_crit_edge
  %pes_type = getelementptr inbounds %struct.dvb_demux_feed, ptr %feed, i32 0, i32 11
  %11 = ptrtoint ptr %pes_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pes_type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %12, label %if.end7.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
  ]

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end7
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %14 = ptrtoint ptr %stream_source to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp8 = icmp eq i32 %15, 1
  br i1 %cmp8, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  %stream_source12 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %16 = ptrtoint ptr %stream_source12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream_source12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp13 = icmp eq i32 %17, 1
  br i1 %cmp13, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arrayidx.i = getelementptr %struct.av7110, ptr %3, i32 0, i32 57, i32 %12
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %19 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @av7110_ipack_reset(ptr noundef %arrayidx.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 3
  %20 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx3.i, align 1
  %22 = and i8 %21, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i, label %if.end.i.cleanup_crit_edge, label %if.end8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %and11.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then13.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @av7110_ipack_flush(ptr noundef %arrayidx.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end8.i.if.end14.i_crit_edge
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx3.i, align 1
  %25 = and i8 %24, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool18.not.i = icmp eq i8 %25, 0
  br i1 %tobool18.not.i, label %if.end14.i.if.end28.i_crit_edge, label %if.then19.i

if.end14.i.if.end28.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then19.i:                                      ; preds = %if.end14.i
  %arrayidx20.i = getelementptr i8, ptr %buf, i32 4
  %26 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %27 to i32
  %add.i = add nuw nsw i32 %conv21.i, 1
  %sub.i = sub i32 %len, %add.i
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool25.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool25.not.i, label %if.then19.i.cleanup_crit_edge, label %if.then19.i.if.end28.i_crit_edge

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then19.i.cleanup_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end28.i:                                       ; preds = %if.then19.i.if.end28.i_crit_edge, %if.end14.i.if.end28.i_crit_edge
  %buf.addr.0.i = phi ptr [ %add.ptr.i, %if.then19.i.if.end28.i_crit_edge ], [ %buf, %if.end14.i.if.end28.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %sub.i, %if.then19.i.if.end28.i_crit_edge ], [ %len, %if.end14.i.if.end28.i_crit_edge ]
  %add.ptr29.i = getelementptr i8, ptr %buf.addr.0.i, i32 4
  %sub30.i = add i32 %len.addr.0.i, -4
  %call.i = tail call i32 @av7110_ipack_instant_repack(ptr noundef %add.ptr29.i, i32 noundef %sub30.i, ptr noundef %arrayidx.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end28.i, %if.then19.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i, %sw.bb11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ], [ -1, %if.then.i ], [ 0, %if.end28.i ], [ -1, %if.end.i.cleanup_crit_edge ], [ 0, %if.then19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_video_add_event(ptr noundef %av7110, ptr nocapture noundef readonly %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %eventw = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 1
  %0 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eventw, align 4
  %add = add i32 %1, 1
  %rem = srem i32 %add, 8
  %eventr = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 2
  %2 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eventr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %3)
  %cmp = icmp eq i32 %rem, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %overflow = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 3
  %4 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %overflow, align 4
  %5 = trunc i32 %rem to i8
  %rem3.lhs.trunc = add i8 %5, 1
  %rem320 = srem i8 %rem3.lhs.trunc, 8
  %rem3.sext = sext i8 %rem320 to i32
  %6 = ptrtoint ptr %eventr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem3.sext, ptr %eventr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %video_events = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83
  %arrayidx = getelementptr [8 x %struct.video_event], ptr %video_events, i32 0, i32 %1
  %7 = call ptr @memcpy(ptr %arrayidx, ptr %event, i32 20)
  %8 = ptrtoint ptr %eventw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem, ptr %eventw, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  %wait_queue = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 4
  tail call void @__wake_up(ptr noundef %wait_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_av_register(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %audiostate = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 53
  %videostate = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 49
  %display_format = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 49, i32 4
  %0 = call ptr @memset(ptr %videostate, i32 0, i32 16)
  %1 = call ptr @memset(ptr %audiostate, i32 0, i32 24)
  %2 = ptrtoint ptr %display_format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %display_format, align 8
  %display_ar = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 51
  %3 = ptrtoint ptr %display_ar to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %display_ar, align 8
  %display_panscan = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 50
  %4 = ptrtoint ptr %display_panscan to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 3, ptr %display_panscan, align 4
  %wait_queue = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait_queue, ptr noundef nonnull @.str.14, ptr noundef nonnull @av7110_av_register.__key) #9
  %lock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @av7110_av_register.__key.15, i16 noundef signext 3) #9
  %eventr = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 2
  %5 = ptrtoint ptr %eventr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %eventr, align 4
  %eventw = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 1
  %6 = ptrtoint ptr %eventw to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %eventw, align 4
  %overflow = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 3
  %7 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %overflow, align 4
  %video_size = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 84
  %8 = call ptr @memset(ptr %video_size, i32 0, i32 12)
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %video_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 79
  %call18 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %video_dev, ptr noundef nonnull @dvbdev_video, ptr noundef %av7110, i32 noundef 6, i32 noundef 0) #9
  %audio_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 80
  %call20 = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %audio_dev, ptr noundef nonnull @dvbdev_audio, ptr noundef %av7110, i32 noundef 7, i32 noundef 0) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_av_unregister(ptr nocapture noundef readonly %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %audio_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 80
  %0 = ptrtoint ptr %audio_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_dev, align 8
  tail call void @dvb_unregister_device(ptr noundef %1) #9
  %video_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 79
  %2 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video_dev, align 4
  tail call void @dvb_unregister_device(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_av_init(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipack1 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 57
  %call = tail call i32 @av7110_ipack_init(ptr noundef %ipack1, i32 noundef 2048, ptr noundef nonnull @play_audio_cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %entry.cleanup17_crit_edge, label %for.inc

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

if.then3:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57
  tail call void @av7110_ipack_free(ptr noundef %incdec.ptr) #9
  br label %cleanup17

for.inc:                                          ; preds = %entry
  %data = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 0, i32 15
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %av7110, ptr %data, align 4
  %add.ptr.1 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  %call.1 = tail call i32 @av7110_ipack_init(ptr noundef %add.ptr.1, i32 noundef 2048, ptr noundef nonnull @play_video_cb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp2.1 = icmp slt i32 %call.1, 0
  br i1 %cmp2.1, label %if.then3, label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %data.1 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1, i32 15
  %1 = ptrtoint ptr %data.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %av7110, ptr %data.1, align 4
  %avout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14
  %iobuf = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 13
  %2 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iobuf, align 4
  tail call void @dvb_ringbuffer_init(ptr noundef %avout, ptr noundef %3, i32 noundef 131072) #9
  %aout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 15
  %4 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobuf, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 131072
  tail call void @dvb_ringbuffer_init(ptr noundef %aout, ptr noundef %add.ptr6, i32 noundef 65536) #9
  %6 = ptrtoint ptr %iobuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iobuf, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 459776
  %kbuf = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 58
  %8 = ptrtoint ptr %kbuf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr10, ptr %kbuf, align 8
  %add.ptr14 = getelementptr i8, ptr %7, i32 463872
  %arrayidx16 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 58, i32 1
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr14, ptr %arrayidx16, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %for.inc.1, %if.then3, %entry.cleanup17_crit_edge
  %call42 = phi i32 [ %call.1, %if.then3 ], [ %call.1, %for.inc.1 ], [ %call, %entry.cleanup17_crit_edge ]
  ret i32 %call42
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @play_audio_cb(ptr noundef %buf, i32 noundef %count, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40, ptr noundef %priv) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %aout = getelementptr inbounds %struct.av7110, ptr %priv, i32 0, i32 15
  tail call fastcc void @aux_ring_buffer_write(ptr noundef %aout, ptr noundef %buf, i32 noundef %count)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @play_video_cb(ptr noundef %buf, i32 noundef %count, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, ptr noundef %priv) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %arrayidx = getelementptr i8, ptr %buf, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %2)
  %cmp = icmp ugt i8 %2, -33
  br i1 %cmp, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %3 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then6.do.end3.i_crit_edge, label %do.end.i

if.then6.do.end3.i_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, ptr noundef %priv) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then6.do.end3.i_crit_edge
  %sinfo.i = getelementptr inbounds %struct.av7110, ptr %priv, i32 0, i32 59
  %4 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sinfo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not.i = icmp eq i32 %5, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %do.end3.i.get_video_format.exit_crit_edge

do.end3.i.get_video_format.exit_crit_edge:        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_video_format.exit

for.cond.preheader.i:                             ; preds = %do.end3.i
  %sub.i = add i32 %count, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 7
  br i1 %cmp1.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.get_video_format.exit_crit_edge

for.cond.preheader.i.get_video_format.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_video_format.exit

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 7, %for.cond.preheader.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %i.02.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.i = icmp eq i8 %7, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %arrayidx8.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not.i = icmp eq i8 %9, 0
  br i1 %tobool10.not.i, label %lor.lhs.false11.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false11.i:                                ; preds = %lor.lhs.false.i
  %arrayidx12.i = getelementptr i8, ptr %add.ptr.i, i32 2
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp14.not.i = icmp eq i8 %11, 1
  br i1 %cmp14.not.i, label %lor.lhs.false16.i, label %lor.lhs.false11.i.for.inc.i_crit_edge

lor.lhs.false11.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false16.i:                                ; preds = %lor.lhs.false11.i
  %arrayidx17.i = getelementptr i8, ptr %add.ptr.i, i32 3
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -77, i8 %13)
  %cmp19.not.i = icmp eq i8 %13, -77
  br i1 %cmp19.not.i, label %if.end22.i, label %lor.lhs.false16.i.for.inc.i_crit_edge

lor.lhs.false16.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end22.i:                                       ; preds = %lor.lhs.false16.i
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %arrayidx24.i = getelementptr i8, ptr %add.ptr23.i, i32 1
  %14 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %15 to i32
  %16 = lshr i32 %conv25.i, 4
  %17 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %add.ptr23.i, align 1
  %conv28.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv28.i, 4
  %or.i = or i32 %shl.i, %16
  %and31.i = shl nuw nsw i32 %conv25.i, 8
  %shl32.i = and i32 %and31.i, 3840
  %arrayidx33.i = getelementptr i8, ptr %add.ptr23.i, i32 2
  %19 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %20 to i32
  %or35.i = or i32 %shl32.i, %conv34.i
  %arrayidx36.i = getelementptr i8, ptr %add.ptr23.i, i32 3
  %21 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx36.i, align 1
  %23 = and i8 %22, 15
  %and38.i = zext i8 %23 to i32
  %arrayidx39.i = getelementptr [16 x i32], ptr @sw2mode, i32 0, i32 %and38.i
  %24 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx39.i, align 4
  %call40.i = tail call i32 @av7110_set_vidmode(ptr noundef %priv, i32 noundef %25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %do.body43.i, label %if.end22.i.get_video_format.exit_crit_edge

if.end22.i.get_video_format.exit_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_video_format.exit

do.body43.i:                                      ; preds = %if.end22.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %26 = load i32, ptr @av7110_debug, align 4
  %and44.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  br i1 %tobool45.not.i, label %do.body43.i.do.end54.i_crit_edge, label %do.end49.i

do.body43.i.do.end54.i_crit_edge:                 ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end54.i

do.end49.i:                                       ; preds = %do.body43.i
  call void @__sanitizer_cov_trace_pc() #11
  %call51.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %or.i, i32 noundef %or35.i, i32 noundef %and38.i) #12
  br label %do.end54.i

do.end54.i:                                       ; preds = %do.end49.i, %do.body43.i.do.end54.i_crit_edge
  %27 = ptrtoint ptr %sinfo.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %sinfo.i, align 8
  br label %get_video_format.exit

for.inc.i:                                        ; preds = %lor.lhs.false16.i.for.inc.i_crit_edge, %lor.lhs.false11.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %sub.i
  br i1 %exitcond.not.i, label %for.inc.i.get_video_format.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.get_video_format.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_video_format.exit

get_video_format.exit:                            ; preds = %for.inc.i.get_video_format.exit_crit_edge, %do.end54.i, %if.end22.i.get_video_format.exit_crit_edge, %for.cond.preheader.i.get_video_format.exit_crit_edge, %do.end3.i.get_video_format.exit_crit_edge
  %avout = getelementptr inbounds %struct.av7110, ptr %priv, i32 0, i32 14
  br label %if.end10

if.else:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %aout = getelementptr inbounds %struct.av7110, ptr %priv, i32 0, i32 15
  br label %if.end10

if.end10:                                         ; preds = %if.else, %get_video_format.exit
  %aout.sink = phi ptr [ %aout, %if.else ], [ %avout, %get_video_format.exit ]
  tail call fastcc void @aux_ring_buffer_write(ptr noundef %aout.sink, ptr noundef %buf, i32 noundef %count)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_ipack_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ipack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_av_exit(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ipack = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 57
  tail call void @av7110_ipack_free(ptr noundef %ipack) #9
  %arrayidx2 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  tail call void @av7110_ipack_free(ptr noundef %arrayidx2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @av7110_ipack_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_ipack_instant_repack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_video_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %5 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef %3, i32 noundef %cmd) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %.fr = freeze i32 %7
  %and4 = and i32 %.fr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp.not = icmp eq i32 %and4, 0
  br i1 %cmp.not, label %switch.early.test, label %do.end3.if.end12_crit_edge

do.end3.if.end12_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

switch.early.test:                                ; preds = %do.end3
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cmd, label %switch.early.test.cleanup220_crit_edge [
    i32 -2146144484, label %switch.early.test.if.end12_crit_edge
    i32 -2146144485, label %switch.early.test.if.end12_crit_edge370
    i32 -2146668745, label %switch.early.test.if.end12_crit_edge371
  ]

switch.early.test.if.end12_crit_edge371:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

switch.early.test.if.end12_crit_edge370:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

switch.early.test.if.end12_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

switch.early.test.cleanup220_crit_edge:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup220

if.end12:                                         ; preds = %switch.early.test.if.end12_crit_edge, %switch.early.test.if.end12_crit_edge370, %switch.early.test.if.end12_crit_edge371, %do.end3.if.end12_crit_edge
  %ioctl_mutex = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 96
  %call13 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup220_crit_edge

if.end12.cleanup220_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup220

if.end16:                                         ; preds = %if.end12
  %9 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %cmd, label %sw.default217 [
    i32 28437, label %sw.bb
    i32 28438, label %sw.bb28
    i32 28439, label %sw.bb65
    i32 28440, label %sw.bb80
    i32 28441, label %sw.bb97
    i32 28442, label %sw.bb100
    i32 -2146144485, label %sw.bb103
    i32 -2146144484, label %sw.bb105
    i32 -2146668745, label %sw.bb108
    i32 28445, label %sw.bb109
    i32 28453, label %sw.bb121
    i32 1074294558, label %sw.bb129
    i32 28447, label %sw.bb136
    i32 28448, label %sw.bb151
    i32 -2147193055, label %sw.bb183
    i32 28450, label %sw.bb184
    i32 28452, label %if.end16.sw.epilog218_crit_edge
  ]

if.end16.sw.epilog218_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

sw.bb:                                            ; preds = %if.end16
  %play_state = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %10 = ptrtoint ptr %play_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %play_state, align 4
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %11 = ptrtoint ptr %stream_source to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream_source, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp18 = icmp eq i32 %12, 1
  br i1 %cmp18, label %if.then19, label %if.else

if.then19:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call i32 @av7110_av_stop(ptr noundef %3, i32 noundef 1)
  br label %if.end24

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %videostate = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49
  %13 = ptrtoint ptr %videostate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %videostate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  %cond = zext i1 %tobool22.not to i32
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 14, i32 noundef 0, i32 noundef %cond) #9
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then19
  %ret.0 = phi i32 [ %call20, %if.then19 ], [ %call.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool25.not = icmp eq i32 %ret.0, 0
  br i1 %tobool25.not, label %if.then26, label %if.end24.sw.epilog218_crit_edge

if.end24.sw.epilog218_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %trickmode = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %15 = ptrtoint ptr %trickmode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %trickmode, align 4
  br label %sw.epilog218

sw.bb28:                                          ; preds = %if.end16
  %trickmode29 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %16 = ptrtoint ptr %trickmode29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %trickmode29, align 4
  %play_state31 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %17 = ptrtoint ptr %play_state31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %play_state31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp32 = icmp eq i32 %18, 2
  br i1 %cmp32, label %if.then33, label %sw.bb28.if.end40_crit_edge

sw.bb28.if.end40_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then33:                                        ; preds = %sw.bb28
  %19 = ptrtoint ptr %play_state31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %play_state31, align 4
  %call.i335 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 13, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool37.not = icmp eq i32 %call.i335, 0
  br i1 %tobool37.not, label %if.then33.if.end40_crit_edge, label %if.then33.sw.epilog218_crit_edge

if.then33.sw.epilog218_crit_edge:                 ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.end40:                                         ; preds = %if.then33.if.end40_crit_edge, %sw.bb28.if.end40_crit_edge
  %stream_source42 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %20 = ptrtoint ptr %stream_source42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stream_source42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp43 = icmp eq i32 %21, 1
  br i1 %cmp43, label %if.then44, label %if.end40.if.end59_crit_edge

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then44:                                        ; preds = %if.end40
  %playing = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %22 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp45 = icmp eq i32 %23, 3
  br i1 %cmp45, label %if.then46, label %if.then44.if.end55_crit_edge

if.then44.if.end55_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then46:                                        ; preds = %if.then44
  %call47 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.then46.sw.epilog218_crit_edge

if.then46.sw.epilog218_crit_edge:                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end50:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %playing, align 8
  %and52 = and i32 %25, -2
  store i32 %and52, ptr %playing, align 8
  br label %if.end55

if.end55:                                         ; preds = %if.end50, %if.then44.if.end55_crit_edge
  %call54 = tail call i32 @av7110_av_start_play(ptr noundef %3, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool56.not = icmp eq i32 %call54, 0
  br i1 %tobool56.not, label %if.end55.if.end59_crit_edge, label %if.end55.sw.epilog218_crit_edge

if.end55.sw.epilog218_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end59:                                         ; preds = %if.end55.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  %call.i336 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 13, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i336)
  %tobool60.not = icmp eq i32 %call.i336, 0
  br i1 %tobool60.not, label %if.then61, label %if.end59.sw.epilog218_crit_edge

if.end59.sw.epilog218_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %play_state31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %play_state31, align 4
  br label %sw.epilog218

sw.bb65:                                          ; preds = %if.end16
  %play_state67 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %27 = ptrtoint ptr %play_state67 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %play_state67, align 4
  %playing68 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %28 = ptrtoint ptr %playing68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %playing68, align 8
  %and69 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else73, label %if.then71

if.then71:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %call72 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 3, i32 noundef 0) #9
  br label %if.end75

if.else73:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #11
  %call.i337 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 258, i32 noundef 0, i32 noundef 1) #9
  br label %if.end75

if.end75:                                         ; preds = %if.else73, %if.then71
  %ret.4 = phi i32 [ %call72, %if.then71 ], [ %call.i337, %if.else73 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.4)
  %tobool76.not = icmp eq i32 %ret.4, 0
  br i1 %tobool76.not, label %if.then77, label %if.end75.sw.epilog218_crit_edge

if.end75.sw.epilog218_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %trickmode78 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %30 = ptrtoint ptr %trickmode78 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 3, ptr %trickmode78, align 4
  br label %sw.epilog218

sw.bb80:                                          ; preds = %if.end16
  %playing81 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %31 = ptrtoint ptr %playing81 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %playing81, align 8
  %and82 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %sw.bb80.if.end90_crit_edge, label %if.end86

sw.bb80.if.end90_crit_edge:                       ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end86:                                         ; preds = %sw.bb80
  %call85 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 7, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool87.not = icmp eq i32 %call85, 0
  br i1 %tobool87.not, label %if.end86.if.end90_crit_edge, label %if.end86.sw.epilog218_crit_edge

if.end86.sw.epilog218_crit_edge:                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end86.if.end90_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.end90:                                         ; preds = %if.end86.if.end90_crit_edge, %sw.bb80.if.end90_crit_edge
  %call.i338 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 13, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool91.not = icmp eq i32 %call.i338, 0
  br i1 %tobool91.not, label %if.then92, label %if.end90.sw.epilog218_crit_edge

if.end90.sw.epilog218_crit_edge:                  ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %play_state94 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %33 = ptrtoint ptr %play_state94 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %play_state94, align 4
  %trickmode95 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %34 = ptrtoint ptr %trickmode95 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %trickmode95, align 4
  br label %sw.epilog218

sw.bb97:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %stream_source99 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %35 = ptrtoint ptr %stream_source99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %4, ptr %stream_source99, align 8
  br label %sw.epilog218

sw.bb100:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %videostate101 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49
  %36 = ptrtoint ptr %videostate101 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %4, ptr %videostate101, align 8
  br label %sw.epilog218

sw.bb103:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %videostate104 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49
  %37 = call ptr @memcpy(ptr %parg, ptr %videostate104, i32 20)
  br label %sw.epilog218

sw.bb105:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %f_flags, align 4
  %call107 = tail call fastcc i32 @dvb_video_get_event(ptr noundef %3, ptr noundef %parg, i32 noundef %39)
  br label %sw.epilog218

sw.bb108:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %video_size = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 84
  %40 = call ptr @memcpy(ptr %parg, ptr %video_size, i32 12)
  br label %sw.epilog218

sw.bb109:                                         ; preds = %if.end16
  %41 = icmp ult ptr %parg, inttoptr (i32 3 to ptr)
  br i1 %41, label %switch.lookup, label %sw.bb109.sw.epilog218_crit_edge

sw.bb109.sw.epilog218_crit_edge:                  ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

switch.lookup:                                    ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  %switch.idx.cast = trunc i32 %4 to i16
  %switch.idx.mult = shl i16 %switch.idx.cast, 1
  %switch.offset = or i16 %switch.idx.mult, 1
  %display_panscan114 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 50
  %42 = ptrtoint ptr %display_panscan114 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %switch.offset, ptr %display_panscan114, align 4
  %display_format = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 4
  %43 = ptrtoint ptr %display_format to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %4, ptr %display_format, align 8
  %conv = zext i16 %switch.offset to i32
  %call120 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 5, i32 noundef 4, i32 noundef 1, i32 noundef %conv) #9
  br label %sw.epilog218

sw.bb121:                                         ; preds = %if.end16
  %cmp122 = icmp ugt ptr %parg, inttoptr (i32 1 to ptr)
  br i1 %cmp122, label %sw.bb121.sw.epilog218_crit_edge, label %if.end125

sw.bb121.sw.epilog218_crit_edge:                  ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end125:                                        ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  %display_ar = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 51
  %44 = ptrtoint ptr %display_ar to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %4, ptr %display_ar, align 8
  %conv127 = and i32 %4, 65535
  %call128 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 5, i32 noundef 3, i32 noundef 1, i32 noundef %conv127) #9
  br label %sw.epilog218

sw.bb129:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %stream_source131 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %45 = ptrtoint ptr %stream_source131 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %stream_source131, align 8
  %avout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %avout) #9
  %46 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parg, align 4
  %size = getelementptr inbounds %struct.video_still_picture, ptr %parg, i32 0, i32 1
  %48 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size, align 4
  %call134 = tail call fastcc i32 @play_iframe(ptr noundef %3, ptr noundef %47, i32 noundef %49)
  br label %sw.epilog218

sw.bb136:                                         ; preds = %if.end16
  %playing137 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %50 = ptrtoint ptr %playing137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %playing137, align 8
  %and138 = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.else142, label %if.then140

if.then140:                                       ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  %call141 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 6, i32 noundef 2, i32 noundef 5, i32 noundef 0) #9
  br label %if.end144

if.else142:                                       ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #11
  %shr1.i339 = lshr i32 %4, 16
  %and2.i340 = and i32 %4, 65535
  %call.i341 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 22, i32 noundef %shr1.i339, i32 noundef %and2.i340) #9
  br label %if.end144

if.end144:                                        ; preds = %if.else142, %if.then140
  %ret.9 = phi i32 [ %call141, %if.then140 ], [ %call.i341, %if.else142 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.9)
  %tobool145.not = icmp eq i32 %ret.9, 0
  br i1 %tobool145.not, label %if.then146, label %if.end144.sw.epilog218_crit_edge

if.end144.sw.epilog218_crit_edge:                 ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then146:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #11
  %trickmode147 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %52 = ptrtoint ptr %trickmode147 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %trickmode147, align 4
  %play_state149 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %53 = ptrtoint ptr %play_state149 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %play_state149, align 4
  br label %sw.epilog218

sw.bb151:                                         ; preds = %if.end16
  %playing152 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %54 = ptrtoint ptr %playing152 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %playing152, align 8
  %and153 = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.else166, label %if.then155

if.then155:                                       ; preds = %sw.bb151
  %trickmode156 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %56 = ptrtoint ptr %trickmode156 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %trickmode156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp157.not = icmp eq i32 %57, 2
  br i1 %cmp157.not, label %if.then155.if.end176_crit_edge, label %if.end161

if.then155.if.end176_crit_edge:                   ; preds = %if.then155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.end161:                                        ; preds = %if.then155
  %call160 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 4, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool162.not = icmp eq i32 %call160, 0
  br i1 %tobool162.not, label %if.end161.if.end176_crit_edge, label %if.end161.sw.epilog218_crit_edge

if.end161.sw.epilog218_crit_edge:                 ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end161.if.end176_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.else166:                                       ; preds = %sw.bb151
  %call.i345 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 13, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i345)
  %tobool168.not = icmp eq i32 %call.i345, 0
  br i1 %tobool168.not, label %if.end171, label %if.else166.sw.epilog218_crit_edge

if.else166.sw.epilog218_crit_edge:                ; preds = %if.else166
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end171:                                        ; preds = %if.else166
  %call.i346 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool172.not = icmp eq i32 %call.i346, 0
  br i1 %tobool172.not, label %if.end171.if.end176_crit_edge, label %if.end171.sw.epilog218_crit_edge

if.end171.sw.epilog218_crit_edge:                 ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end171.if.end176_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end176

if.end176:                                        ; preds = %if.end171.if.end176_crit_edge, %if.end161.if.end176_crit_edge, %if.then155.if.end176_crit_edge
  %shr1.i347 = lshr i32 %4, 16
  %and2.i348 = and i32 %4, 65535
  %call.i349 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 34, i32 noundef %shr1.i347, i32 noundef %and2.i348) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i349)
  %tobool177.not = icmp eq i32 %call.i349, 0
  br i1 %tobool177.not, label %if.then178, label %if.end176.sw.epilog218_crit_edge

if.end176.sw.epilog218_crit_edge:                 ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then178:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #11
  %trickmode179 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %58 = ptrtoint ptr %trickmode179 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %trickmode179, align 4
  %play_state181 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 1
  %59 = ptrtoint ptr %play_state181 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %play_state181, align 4
  br label %sw.epilog218

sw.bb183:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %parg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 15, ptr %parg, align 4
  br label %sw.epilog218

sw.bb184:                                         ; preds = %if.end16
  %avout185 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %avout185) #9
  %arrayidx = getelementptr %struct.av7110, ptr %3, i32 0, i32 57, i32 1
  tail call void @av7110_ipack_reset(ptr noundef %arrayidx) #9
  %playing186 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %61 = ptrtoint ptr %playing186 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %playing186, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp187 = icmp eq i32 %62, 3
  br i1 %cmp187, label %if.then189, label %sw.bb184.sw.epilog218_crit_edge

sw.bb184.sw.epilog218_crit_edge:                  ; preds = %sw.bb184
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then189:                                       ; preds = %sw.bb184
  %call190 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 5, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %if.end193, label %if.then189.sw.epilog218_crit_edge

if.then189.sw.epilog218_crit_edge:                ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.end193:                                        ; preds = %if.then189
  %trickmode194 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 52
  %63 = ptrtoint ptr %trickmode194 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %trickmode194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp195 = icmp eq i32 %64, 1
  br i1 %cmp195, label %if.then197, label %if.end193.if.end199_crit_edge

if.end193.if.end199_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end199

if.then197:                                       ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  %call198 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 6, i32 noundef 2, i32 noundef 5, i32 noundef 0) #9
  %65 = ptrtoint ptr %trickmode194 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %trickmode194, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %if.end193.if.end199_crit_edge
  %66 = phi i32 [ %.pr, %if.then197 ], [ %64, %if.end193.if.end199_crit_edge ]
  %ret.13 = phi i32 [ %call198, %if.then197 ], [ 0, %if.end193.if.end199_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %66)
  %cmp201 = icmp eq i32 %66, 2
  br i1 %cmp201, label %if.then203, label %if.end199.if.end209_crit_edge

if.end199.if.end209_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then203:                                       ; preds = %if.end199
  %call204 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 4, i32 noundef 2, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call204)
  %tobool205.not = icmp eq i32 %call204, 0
  br i1 %tobool205.not, label %if.then206, label %if.then203.if.end209_crit_edge

if.then203.if.end209_crit_edge:                   ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end209

if.then206:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  %shr1.i350 = lshr i32 %4, 16
  %and2.i351 = and i32 %4, 65535
  %call.i352 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 34, i32 noundef %shr1.i350, i32 noundef %and2.i351) #9
  br label %if.end209

if.end209:                                        ; preds = %if.then206, %if.then203.if.end209_crit_edge, %if.end199.if.end209_crit_edge
  %ret.14 = phi i32 [ %call204, %if.then203.if.end209_crit_edge ], [ %call.i352, %if.then206 ], [ %ret.13, %if.end199.if.end209_crit_edge ]
  %67 = ptrtoint ptr %trickmode194 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %trickmode194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp211 = icmp eq i32 %68, 3
  br i1 %cmp211, label %if.then213, label %if.end209.sw.epilog218_crit_edge

if.end209.sw.epilog218_crit_edge:                 ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

if.then213:                                       ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #11
  %call.i353 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 14, i32 noundef 0, i32 noundef 1) #9
  br label %sw.epilog218

sw.default217:                                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog218

sw.epilog218:                                     ; preds = %sw.default217, %if.then213, %if.end209.sw.epilog218_crit_edge, %if.then189.sw.epilog218_crit_edge, %sw.bb184.sw.epilog218_crit_edge, %sw.bb183, %if.then178, %if.end176.sw.epilog218_crit_edge, %if.end171.sw.epilog218_crit_edge, %if.else166.sw.epilog218_crit_edge, %if.end161.sw.epilog218_crit_edge, %if.then146, %if.end144.sw.epilog218_crit_edge, %sw.bb129, %if.end125, %sw.bb121.sw.epilog218_crit_edge, %switch.lookup, %sw.bb109.sw.epilog218_crit_edge, %sw.bb108, %sw.bb105, %sw.bb103, %sw.bb100, %sw.bb97, %if.then92, %if.end90.sw.epilog218_crit_edge, %if.end86.sw.epilog218_crit_edge, %if.then77, %if.end75.sw.epilog218_crit_edge, %if.then61, %if.end59.sw.epilog218_crit_edge, %if.end55.sw.epilog218_crit_edge, %if.then46.sw.epilog218_crit_edge, %if.then33.sw.epilog218_crit_edge, %if.then26, %if.end24.sw.epilog218_crit_edge, %if.end16.sw.epilog218_crit_edge
  %ret.15 = phi i32 [ -515, %sw.default217 ], [ 0, %if.end16.sw.epilog218_crit_edge ], [ %call190, %if.then189.sw.epilog218_crit_edge ], [ %call.i353, %if.then213 ], [ %ret.14, %if.end209.sw.epilog218_crit_edge ], [ 0, %sw.bb184.sw.epilog218_crit_edge ], [ 0, %sw.bb183 ], [ %call.i349, %if.end176.sw.epilog218_crit_edge ], [ 0, %if.then178 ], [ %ret.9, %if.end144.sw.epilog218_crit_edge ], [ 0, %if.then146 ], [ %call134, %sw.bb129 ], [ %call128, %if.end125 ], [ 0, %sw.bb108 ], [ %call107, %sw.bb105 ], [ 0, %sw.bb103 ], [ 0, %sw.bb100 ], [ 0, %sw.bb97 ], [ %call.i338, %if.end90.sw.epilog218_crit_edge ], [ 0, %if.then92 ], [ %ret.4, %if.end75.sw.epilog218_crit_edge ], [ 0, %if.then77 ], [ %call.i335, %if.then33.sw.epilog218_crit_edge ], [ %call47, %if.then46.sw.epilog218_crit_edge ], [ %call.i336, %if.end59.sw.epilog218_crit_edge ], [ 0, %if.then61 ], [ %ret.0, %if.end24.sw.epilog218_crit_edge ], [ 0, %if.then26 ], [ %call120, %switch.lookup ], [ -22, %sw.bb121.sw.epilog218_crit_edge ], [ -22, %sw.bb109.sw.epilog218_crit_edge ], [ %call54, %if.end55.sw.epilog218_crit_edge ], [ %call85, %if.end86.sw.epilog218_crit_edge ], [ %call.i346, %if.end171.sw.epilog218_crit_edge ], [ %call160, %if.end161.sw.epilog218_crit_edge ], [ %call.i345, %if.else166.sw.epilog218_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #9
  br label %cleanup220

cleanup220:                                       ; preds = %sw.epilog218, %if.end12.cleanup220_crit_edge, %switch.early.test.cleanup220_crit_edge
  %retval.0 = phi i32 [ %ret.15, %sw.epilog218 ], [ -1, %switch.early.test.cleanup220_crit_edge ], [ -512, %if.end12.cleanup220_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_video_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and4 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp eq i32 %and4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %7 = ptrtoint ptr %stream_source to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream_source, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7.not = icmp eq i32 %8, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 970) #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !156
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %12 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #9, !srcloc !159
  %asmresult = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool14.not = icmp eq i32 %asmresult, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %asmresult12 = extractvalue { i32, i32 } %12, 1
  %conv17 = and i32 %asmresult12, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %conv17)
  %cmp18 = icmp eq i32 %conv17, 71
  %rem = urem i32 %count, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp20 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp20, %cmp18
  %13 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f_flags, align 4
  %and24 = and i32 %14, 2048
  br i1 %or.cond, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call fastcc i32 @ts_play(ptr noundef %3, ptr noundef %buf, i32 noundef %count, i32 noundef %and24, i32 noundef 1)
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call fastcc i32 @dvb_play(ptr noundef %3, ptr noundef %buf, i32 noundef %count, i32 noundef %and24)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then22, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.then22 ], [ %call28, %if.else ], [ -1, %do.end3.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ -14, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_video_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.24, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and4 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp.not = icmp eq i32 %and4, 0
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %do.end3
  %queue = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.then5.poll_wait.exit49_crit_edge, label %land.lhs.true.i

if.then5.poll_wait.exit49_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit49

land.lhs.true.i:                                  ; preds = %if.then5
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i47_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i47_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i47

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %8(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #9
  br label %land.lhs.true.i47

if.end6:                                          ; preds = %do.end3
  %tobool.not.i43 = icmp eq ptr %wait, null
  br i1 %tobool.not.i43, label %if.end6.poll_wait.exit49_crit_edge, label %if.end6.land.lhs.true.i47_crit_edge

if.end6.land.lhs.true.i47_crit_edge:              ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i47

if.end6.poll_wait.exit49_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit49

land.lhs.true.i47:                                ; preds = %if.end6.land.lhs.true.i47_crit_edge, %if.then.i, %land.lhs.true.i.land.lhs.true.i47_crit_edge
  %wait_queue52 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 83, i32 4
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait, align 4
  %tobool1.not.i44 = icmp eq ptr %10, null
  %tobool3.not.i45 = icmp eq ptr %wait_queue52, null
  %or.cond.i46 = or i1 %tobool3.not.i45, %tobool1.not.i44
  br i1 %or.cond.i46, label %land.lhs.true.i47.poll_wait.exit49_crit_edge, label %if.then.i48

land.lhs.true.i47.poll_wait.exit49_crit_edge:     ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit49

if.then.i48:                                      ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %10(ptr noundef %file, ptr noundef nonnull %wait_queue52, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit49

poll_wait.exit49:                                 ; preds = %if.then.i48, %land.lhs.true.i47.poll_wait.exit49_crit_edge, %if.end6.poll_wait.exit49_crit_edge, %if.then5.poll_wait.exit49_crit_edge
  %eventw = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 83, i32 1
  %11 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eventw, align 4
  %eventr = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 83, i32 2
  %13 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eventr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp9.not = icmp eq i32 %12, %14
  %spec.select = select i1 %cmp9.not, i32 0, i32 2
  %15 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %f_flags, align 4
  %and13 = and i32 %16, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 0
  br i1 %cmp14.not, label %poll_wait.exit49.if.end27_crit_edge, label %if.then15

poll_wait.exit49.if.end27_crit_edge:              ; preds = %poll_wait.exit49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then15:                                        ; preds = %poll_wait.exit49
  %playing = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %17 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then15
  %avout18 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14
  %call19 = tail call i32 @dvb_ringbuffer_free(ptr noundef %avout18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call19)
  %cmp20 = icmp sgt i32 %call19, 20479
  br i1 %cmp20, label %land.lhs.true, label %if.then17.if.end27_crit_edge

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  %call21 = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call21)
  %cmp22 = icmp sgt i32 %call21, 20479
  %or = or i32 %spec.select, 260
  %spec.select42 = select i1 %cmp22, i32 %or, i32 %spec.select
  br label %if.end27

if.else:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %or25 = or i32 %spec.select, 260
  br label %if.end27

if.end27:                                         ; preds = %if.else, %land.lhs.true, %if.then17.if.end27_crit_edge, %poll_wait.exit49.if.end27_crit_edge
  %mask.1 = phi i32 [ %spec.select, %if.then17.if.end27_crit_edge ], [ %or25, %if.else ], [ %spec.select, %poll_wait.exit49.if.end27_crit_edge ], [ %spec.select42, %land.lhs.true ]
  ret i32 %mask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_video_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.25, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @dvb_generic_open(ptr noundef %inode, ptr noundef %file) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and7 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp8.not = icmp eq i32 %and7, 0
  br i1 %cmp8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %aout) #9
  %avout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 14
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %avout) #9
  %video_blank = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 48
  %7 = ptrtoint ptr %video_blank to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %video_blank, align 4
  %audiostate = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53
  %8 = ptrtoint ptr %audiostate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %audiostate, align 8
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 49, i32 2
  %9 = ptrtoint ptr %stream_source to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %stream_source, align 8
  %eventw = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 83, i32 1
  %10 = ptrtoint ptr %eventw to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %eventw, align 4
  %eventr = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 83, i32 2
  %11 = ptrtoint ptr %eventr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %eventr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end3.cleanup_crit_edge ], [ 0, %if.then9 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_video_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and4 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp.not = icmp eq i32 %and4, 0
  br i1 %cmp.not, label %do.end3.if.end7_crit_edge, label %if.then5

do.end3.if.end7_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @av7110_av_stop(ptr noundef %3, i32 noundef 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end3.if.end7_crit_edge
  %call8 = tail call i32 @dvb_generic_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ts_play(ptr noundef %av7110, ptr noundef %buf, i32 noundef %count, i32 noundef %nonblock, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.19, i32 noundef %type, i32 noundef %count) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool4.not = icmp eq i32 %type, 0
  %avout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14
  %aout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 15
  %cond = select i1 %tobool4.not, ptr %aout, ptr %avout
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 58, i32 %type
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %2, null
  br i1 %tobool5.not, label %do.end3.cleanup53_crit_edge, label %if.end7

do.end3.cleanup53_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool8.not = icmp eq i32 %nonblock, 0
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %land.lhs.true

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end7
  %call9 = tail call i32 @dvb_ringbuffer_free(ptr noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call9)
  %cmp = icmp sgt i32 %call9, 4095
  br i1 %cmp, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup53_crit_edge

land.lhs.true.cleanup53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end7.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 187, i32 %count)
  %cmp12106 = icmp ugt i32 %count, 187
  br i1 %cmp12106, label %while.body.lr.ph, label %if.end11.while.end_crit_edge

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end11
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, ptr %cond, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 %type
  %arrayidx2.i = getelementptr i8, ptr %2, i32 1
  %arrayidx3.i = getelementptr i8, ptr %2, i32 3
  %arrayidx20.i = getelementptr i8, ptr %2, i32 4
  br label %while.body

while.body:                                       ; preds = %write_ts_to_decoder.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0110 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %write_ts_to_decoder.exit.while.body_crit_edge ]
  %todo.0107 = phi i32 [ %count, %while.body.lr.ph ], [ %sub51, %write_ts_to_decoder.exit.while.body_crit_edge ]
  %call13 = call i32 @dvb_ringbuffer_free(ptr noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, 4095
  br i1 %cmp14, label %while.body.if.end8.i.i_crit_edge, label %if.then15

while.body.if.end8.i.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then15:                                        ; preds = %while.body
  br i1 %tobool8.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %count, %todo.0107
  br label %cleanup53

if.end18:                                         ; preds = %if.then15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 453) #9
  %call25 = call i32 @dvb_ringbuffer_free(ptr noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, 4095
  br i1 %cmp26, label %if.end18.if.end8.i.i_crit_edge, label %if.then27

if.end18.if.end8.i.i_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then27:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call29102 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call30103 = call i32 @dvb_ringbuffer_free(ptr noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call30103)
  %cmp31104 = icmp sgt i32 %call30103, 4095
  br i1 %cmp31104, label %if.then27.if.end39.thread89_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  br label %if.end33

if.then27.if.end39.thread89_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread89

if.end33:                                         ; preds = %cleanup.if.end33_crit_edge, %if.then27.if.end33_crit_edge
  %call29105 = phi i32 [ %call29, %cleanup.if.end33_crit_edge ], [ %call29102, %if.then27.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29105)
  %tobool34.not = icmp eq i32 %call29105, 0
  br i1 %tobool34.not, label %cleanup, label %if.then42

cleanup:                                          ; preds = %if.end33
  call void @schedule() #9
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call30 = call i32 @dvb_ringbuffer_free(ptr noundef %cond) #9
  %cmp31 = icmp sgt i32 %call30, 4095
  br i1 %cmp31, label %cleanup.if.end39.thread89_crit_edge, label %cleanup.if.end33_crit_edge

cleanup.if.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

cleanup.if.end39.thread89_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.thread89

if.end39.thread89:                                ; preds = %cleanup.if.end39.thread89_crit_edge, %if.then27.if.end39.thread89_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end8.i.i

if.then42:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  %sub43 = sub i32 %count, %todo.0107
  br label %cleanup53

if.end8.i.i:                                      ; preds = %if.end39.thread89, %if.end18.if.end8.i.i_crit_edge, %while.body.if.end8.i.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end8.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end8.i.i.if.then11.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end8.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0110, i32 188, i32 -1226833920) #13, !srcloc !160
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !161

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 188) #9
  %5 = call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !156
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %2, ptr noundef %buf.addr.0110, i32 noundef 188) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end49, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !161

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end8.i.i.if.then11.i.i_crit_edge
  %res.0.i.i94 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 188, %if.end8.i.i.if.then11.i.i_crit_edge ], [ 188, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 188, %res.0.i.i94
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i94)
  br label %cleanup53

if.end49:                                         ; preds = %if.end.i.i
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %10 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  call void @av7110_ipack_reset(ptr noundef %arrayidx.i) #9
  br label %write_ts_to_decoder.exit

if.end.i:                                         ; preds = %if.end49
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3.i, align 1
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not.i = icmp eq i8 %13, 0
  br i1 %tobool6.not.i, label %if.end.i.write_ts_to_decoder.exit_crit_edge, label %if.end8.i

if.end.i.write_ts_to_decoder.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_ts_to_decoder.exit

if.end8.i:                                        ; preds = %if.end.i
  %and11.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then13.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @av7110_ipack_flush(ptr noundef %arrayidx.i) #9
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end8.i.if.end14.i_crit_edge
  %14 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx3.i, align 1
  %16 = and i8 %15, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool18.not.i = icmp eq i8 %16, 0
  br i1 %tobool18.not.i, label %if.end14.i.if.end28.i_crit_edge, label %if.then19.i

if.end14.i.if.end28.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then19.i:                                      ; preds = %if.end14.i
  %17 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %18 to i32
  %add.i = add nuw nsw i32 %conv21.i, 1
  %sub.i = sub nsw i32 187, %conv21.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -69, i8 %18)
  %tobool25.not.i = icmp eq i8 %18, -69
  br i1 %tobool25.not.i, label %if.then19.i.write_ts_to_decoder.exit_crit_edge, label %if.then19.i.if.end28.i_crit_edge

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then19.i.write_ts_to_decoder.exit_crit_edge:   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %write_ts_to_decoder.exit

if.end28.i:                                       ; preds = %if.then19.i.if.end28.i_crit_edge, %if.end14.i.if.end28.i_crit_edge
  %buf.addr.0.i = phi ptr [ %add.ptr.i, %if.then19.i.if.end28.i_crit_edge ], [ %2, %if.end14.i.if.end28.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %sub.i, %if.then19.i.if.end28.i_crit_edge ], [ 188, %if.end14.i.if.end28.i_crit_edge ]
  %add.ptr29.i = getelementptr i8, ptr %buf.addr.0.i, i32 4
  %sub30.i = add nsw i32 %len.addr.0.i, -4
  %call.i = call i32 @av7110_ipack_instant_repack(ptr noundef %add.ptr29.i, i32 noundef %sub30.i, ptr noundef %arrayidx.i) #9
  br label %write_ts_to_decoder.exit

write_ts_to_decoder.exit:                         ; preds = %if.end28.i, %if.then19.i.write_ts_to_decoder.exit_crit_edge, %if.end.i.write_ts_to_decoder.exit_crit_edge, %if.then.i
  %sub51 = add i32 %todo.0107, -188
  %add.ptr = getelementptr i8, ptr %buf.addr.0110, i32 188
  %cmp12 = icmp ugt i32 %sub51, 187
  br i1 %cmp12, label %write_ts_to_decoder.exit.while.body_crit_edge, label %write_ts_to_decoder.exit.while.end_crit_edge

write_ts_to_decoder.exit.while.end_crit_edge:     ; preds = %write_ts_to_decoder.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

write_ts_to_decoder.exit.while.body_crit_edge:    ; preds = %write_ts_to_decoder.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %write_ts_to_decoder.exit.while.end_crit_edge, %if.end11.while.end_crit_edge
  %todo.0.lcssa = phi i32 [ %count, %if.end11.while.end_crit_edge ], [ %sub51, %write_ts_to_decoder.exit.while.end_crit_edge ]
  %sub52 = sub i32 %count, %todo.0.lcssa
  br label %cleanup53

cleanup53:                                        ; preds = %while.end, %if.then11.i.i, %if.then42, %if.then17, %land.lhs.true.cleanup53_crit_edge, %do.end3.cleanup53_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then17 ], [ %sub43, %if.then42 ], [ %sub52, %while.end ], [ -105, %do.end3.cleanup53_crit_edge ], [ -11, %land.lhs.true.cleanup53_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_play(ptr noundef %av7110, ptr noundef %buf, i32 noundef %count, i32 noundef %nonblock) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 58, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %do.end3.cleanup80_crit_edge, label %if.end6

do.end3.cleanup80_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool7.not = icmp eq i32 %nonblock, 0
  br i1 %tobool7.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %avout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14
  %call8 = tail call i32 @dvb_ringbuffer_free(ptr noundef %avout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call8)
  %cmp = icmp sgt i32 %call8, 20479
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true.cleanup80_crit_edge

land.lhs.true.cleanup80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

land.lhs.true9:                                   ; preds = %land.lhs.true
  %aout = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 15
  %call10 = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, 20479
  br i1 %cmp11, label %land.lhs.true9.if.end13_crit_edge, label %land.lhs.true9.cleanup80_crit_edge

land.lhs.true9.cleanup80_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

land.lhs.true9.if.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp14.not26 = icmp eq i32 %count, 0
  br i1 %cmp14.not26, label %if.end13.cleanup80_crit_edge, label %while.body.lr.ph

if.end13.cleanup80_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

while.body.lr.ph:                                 ; preds = %if.end13
  %avout15 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14
  %aout19 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 15
  %queue = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14, i32 5
  %arrayidx76 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.029 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end73.while.body_crit_edge ]
  %todo.027 = phi i32 [ %count, %while.body.lr.ph ], [ %sub78, %if.end73.while.body_crit_edge ]
  %call16 = call i32 @dvb_ringbuffer_free(ptr noundef %avout15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call16)
  %cmp17 = icmp sgt i32 %call16, 20479
  br i1 %cmp17, label %land.lhs.true18, label %while.body.if.then22_crit_edge

while.body.if.then22_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true18:                                  ; preds = %while.body
  %call20 = call i32 @dvb_ringbuffer_free(ptr noundef %aout19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call20)
  %cmp21 = icmp sgt i32 %call20, 20479
  br i1 %cmp21, label %land.lhs.true18.if.end64_crit_edge, label %land.lhs.true18.if.then22_crit_edge

land.lhs.true18.if.then22_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

land.lhs.true18.if.end64_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then22:                                        ; preds = %land.lhs.true18.if.then22_crit_edge, %while.body.if.then22_crit_edge
  br i1 %tobool7.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 %count, %todo.027
  br label %cleanup80

if.end25:                                         ; preds = %if.then22
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 487) #9
  %call33 = call i32 @dvb_ringbuffer_free(ptr noundef %avout15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, 20479
  br i1 %cmp34, label %land.lhs.true35, label %if.end25.if.then39_crit_edge

if.end25.if.then39_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

land.lhs.true35:                                  ; preds = %if.end25
  %call37 = call i32 @dvb_ringbuffer_free(ptr noundef %aout19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call37)
  %cmp38 = icmp sgt i32 %call37, 20479
  br i1 %cmp38, label %land.lhs.true35.if.end64_crit_edge, label %land.lhs.true35.if.then39_crit_edge

land.lhs.true35.if.then39_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39

land.lhs.true35.if.end64_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

if.then39:                                        ; preds = %land.lhs.true35.if.then39_crit_edge, %if.end25.if.then39_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then39
  %call42 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call44 = call i32 @dvb_ringbuffer_free(ptr noundef %avout15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call44)
  %cmp45 = icmp sgt i32 %call44, 20479
  br i1 %cmp45, label %land.lhs.true46, label %for.cond.if.end51_crit_edge

for.cond.if.end51_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

land.lhs.true46:                                  ; preds = %for.cond
  %call48 = call i32 @dvb_ringbuffer_free(ptr noundef %aout19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call48)
  %cmp49 = icmp sgt i32 %call48, 20479
  br i1 %cmp49, label %if.end58.thread10, label %land.lhs.true46.if.end51_crit_edge

land.lhs.true46.if.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true46.if.end51_crit_edge, %for.cond.if.end51_crit_edge
  %tobool52.not = icmp eq i32 %call42, 0
  br i1 %tobool52.not, label %cleanup, label %if.then61

cleanup:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void @schedule() #9
  br label %for.cond

if.end58.thread10:                                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end64

if.then61:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  %sub62 = sub i32 %count, %todo.027
  br label %cleanup80

if.end64:                                         ; preds = %if.end58.thread10, %land.lhs.true35.if.end64_crit_edge, %land.lhs.true18.if.end64_crit_edge
  %4 = call i32 @llvm.umin.i32(i32 %todo.027, i32 4096)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  call void @__check_object_size(ptr noundef %6, i32 noundef %4, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end64.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end64.if.end.i.i_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end64
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.029, i32 %4, i32 -1226833920) #13, !srcloc !160
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !161

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %6, i32 noundef %4) #9
  %8 = call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !156
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %6, ptr noundef %buf.addr.029, i32 noundef %4) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end64.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %4, %if.end64.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %4, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end73, label %if.then11.i.i, !prof !161

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %4, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup80

if.end73:                                         ; preds = %if.end.i.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call77 = call i32 @av7110_ipack_instant_repack(ptr noundef %13, i32 noundef %4, ptr noundef %arrayidx76) #9
  %sub78 = sub i32 %todo.027, %4
  %add.ptr = getelementptr i8, ptr %buf.addr.029, i32 %4
  %cmp14.not = icmp eq i32 %sub78, 0
  br i1 %cmp14.not, label %if.end73.cleanup80_crit_edge, label %if.end73.while.body_crit_edge

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end73.cleanup80_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup80

cleanup80:                                        ; preds = %if.end73.cleanup80_crit_edge, %if.then11.i.i, %if.then61, %if.then24, %if.end13.cleanup80_crit_edge, %land.lhs.true9.cleanup80_crit_edge, %land.lhs.true.cleanup80_crit_edge, %do.end3.cleanup80_crit_edge
  %retval.0 = phi i32 [ %sub, %if.then24 ], [ %sub62, %if.then61 ], [ -105, %do.end3.cleanup80_crit_edge ], [ -11, %land.lhs.true9.cleanup80_crit_edge ], [ -11, %land.lhs.true.cleanup80_crit_edge ], [ -14, %if.then11.i.i ], [ 0, %if.end13.cleanup80_crit_edge ], [ %count, %if.end73.cleanup80_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_video_get_event(ptr noundef %av7110, ptr nocapture noundef writeonly %event, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %video_events = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83
  %overflow = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 3
  %0 = ptrtoint ptr %overflow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %overflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %overflow to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %overflow, align 4
  br label %cleanup37

if.end:                                           ; preds = %entry
  %eventw = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 1
  %3 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %eventw, align 4
  %eventr = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 2
  %5 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %eventr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp eq i32 %4, %6
  br i1 %cmp, label %if.then2, label %if.end.if.end31_crit_edge

if.end.if.end31_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then2:                                         ; preds = %if.end
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.then2.cleanup37_crit_edge

if.then2.cleanup37_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.end5:                                          ; preds = %if.then2
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 906) #9
  %7 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %eventw, align 4
  %9 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %eventr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp11.not = icmp eq i32 %8, %10
  br i1 %cmp11.not, label %if.then12, label %if.end5.if.end31_crit_edge

if.end5.if.end31_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then12:                                        ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %wait_queue = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 4
  %call77 = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %12 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eventw, align 4
  %14 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eventr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp16.not78 = icmp eq i32 %13, %15
  br i1 %cmp16.not78, label %if.then12.if.end18_crit_edge, label %if.then12.cleanup28.thread70_crit_edge

if.then12.cleanup28.thread70_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28.thread70

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  br label %if.end18

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.then12.if.end18_crit_edge
  %call79 = phi i32 [ %call, %cleanup.if.end18_crit_edge ], [ %call77, %if.then12.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool19.not = icmp eq i32 %call79, 0
  br i1 %tobool19.not, label %cleanup, label %cleanup28

cleanup:                                          ; preds = %if.end18
  call void @schedule() #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %16 = ptrtoint ptr %eventw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %eventw, align 4
  %18 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %eventr, align 4
  %cmp16.not = icmp eq i32 %17, %19
  br i1 %cmp16.not, label %cleanup.if.end18_crit_edge, label %cleanup.cleanup28.thread70_crit_edge

cleanup.cleanup28.thread70_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup28.thread70

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

cleanup28.thread70:                               ; preds = %cleanup.cleanup28.thread70_crit_edge, %if.then12.cleanup28.thread70_crit_edge
  call void @finish_wait(ptr noundef %wait_queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end31

cleanup28:                                        ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp25 = icmp slt i32 %call79, 0
  br i1 %cmp25, label %cleanup28.cleanup37_crit_edge, label %cleanup28.if.end31_crit_edge

cleanup28.if.end31_crit_edge:                     ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

cleanup28.cleanup37_crit_edge:                    ; preds = %cleanup28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.end31:                                         ; preds = %cleanup28.if.end31_crit_edge, %cleanup28.thread70, %if.end5.if.end31_crit_edge, %if.end.if.end31_crit_edge
  %lock = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 83, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %lock) #9
  %20 = ptrtoint ptr %eventr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eventr, align 4
  %arrayidx = getelementptr [8 x %struct.video_event], ptr %video_events, i32 0, i32 %21
  %22 = call ptr @memcpy(ptr %event, ptr %arrayidx, i32 20)
  %23 = load i32, ptr %eventr, align 4
  %add = add i32 %23, 1
  %rem = srem i32 %add, 8
  store i32 %rem, ptr %eventr, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #9
  br label %cleanup37

cleanup37:                                        ; preds = %if.end31, %cleanup28.cleanup37_crit_edge, %if.then2.cleanup37_crit_edge, %if.then
  %retval.1 = phi i32 [ -75, %if.then ], [ 0, %if.end31 ], [ %call79, %cleanup28.cleanup37_crit_edge ], [ -11, %if.then2.cleanup37_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @play_iframe(ptr noundef %av7110, ptr noundef %buf, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29, ptr noundef %av7110) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %do.end3.cleanup68_crit_edge, label %if.end5

do.end3.cleanup68_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end5:                                          ; preds = %do.end3
  %playing = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 26
  %1 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %playing, align 8
  %and6 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.for.body.preheader_crit_edge

if.end5.for.body.preheader_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @av7110_av_start_play(ptr noundef %av7110, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.cleanup68_crit_edge, label %if.then8.for.body.preheader_crit_edge

if.then8.for.body.preheader_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then8.cleanup68_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.body.preheader:                               ; preds = %if.then8.for.body.preheader_crit_edge, %if.end5.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.014 = phi i32 [ %inc55, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %progressive.013 = phi i32 [ %spec.select1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %match.012 = phi i32 [ %match.2.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1042) #9
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.014
  %3 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !156
  %and.i = and i32 %5, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %6 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %add.ptr, i32 -1226833921) #9, !srcloc !162
  %asmresult = extractvalue { i32, i32 } %6, 0
  %asmresult17 = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool19.not = icmp eq i32 %asmresult, 0
  br i1 %tobool19.not, label %if.end21, label %for.body.cleanup68_crit_edge

for.body.cleanup68_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end21:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %match.012)
  %cmp22 = icmp eq i32 %match.012, 5
  %and26 = and i32 %asmresult17, 8
  %spec.select = select i1 %cmp22, i32 0, i32 %match.012
  %spec.select1 = select i1 %cmp22, i32 %and26, i32 %progressive.013
  %conv28 = and i32 %asmresult17, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv28)
  %cmp29 = icmp eq i32 %conv28, 0
  br i1 %cmp29, label %if.then31, label %if.end36

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %7 = add nsw i32 %spec.select, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %8 = icmp ult i32 %7, 2
  %cond = select i1 %8, i32 2, i32 1
  br label %for.inc

if.end36:                                         ; preds = %if.end21
  %9 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %spec.select, label %if.end36.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb42
    i32 4, label %sw.bb48
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv28)
  %cmp38 = icmp eq i32 %conv28, 1
  br i1 %cmp38, label %sw.bb.for.inc_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb42:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 181, i32 %conv28)
  %cmp44 = icmp eq i32 %conv28, 181
  br i1 %cmp44, label %sw.bb42.for.inc_crit_edge, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb42.for.inc_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb48:                                          ; preds = %if.end36
  %and50 = and i32 %asmresult17, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and50)
  %cmp51 = icmp eq i32 %and50, 16
  br i1 %cmp51, label %sw.bb48.for.inc_crit_edge, label %sw.bb48.sw.epilog_crit_edge

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb48.for.inc_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb48.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end36.sw.epilog_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.bb48.for.inc_crit_edge, %sw.bb42.for.inc_crit_edge, %sw.bb.for.inc_crit_edge, %if.then31
  %match.2.ph = phi i32 [ 5, %sw.bb48.for.inc_crit_edge ], [ 4, %sw.bb42.for.inc_crit_edge ], [ 3, %sw.bb.for.inc_crit_edge ], [ 0, %sw.epilog ], [ %cond, %if.then31 ]
  %inc55 = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc55, %len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %div = udiv i32 400000, %len
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %10 = load i32, ptr @av7110_debug, align 4
  %and.i3 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i3)
  %tobool.not.i = icmp eq i32 %and.i3, 0
  br i1 %tobool.not.i, label %for.end.do.end3.i_crit_edge, label %do.end.i

for.end.do.end3.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30, ptr noundef %av7110) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %for.end.do.end3.i_crit_edge
  %arrayidx.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 58, i32 1
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %12, null
  br i1 %tobool4.not.i, label %do.end3.i.for.body60.preheader_crit_edge, label %while.cond.preheader.i

do.end3.i.for.body60.preheader_crit_edge:         ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60.preheader

while.cond.preheader.i:                           ; preds = %do.end3.i
  %avout15.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14
  %aout19.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 15
  %queue.i = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 14, i32 5
  %arrayidx68.i = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  %call16.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %avout15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call16.i)
  %cmp17.i = icmp sgt i32 %call16.i, 20479
  br i1 %cmp17.i, label %land.lhs.true18.i, label %while.cond.preheader.i.if.end25.i_crit_edge

while.cond.preheader.i.if.end25.i_crit_edge:      ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true18.i:                                ; preds = %while.cond.preheader.i
  %call20.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call20.i)
  %cmp21.i = icmp sgt i32 %call20.i, 20479
  br i1 %cmp21.i, label %land.lhs.true18.i.if.end64.i_crit_edge, label %land.lhs.true18.i.if.end25.i_crit_edge

land.lhs.true18.i.if.end25.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i

land.lhs.true18.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.end25.i:                                       ; preds = %land.lhs.true18.i.if.end25.i_crit_edge, %while.cond.preheader.i.if.end25.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 520) #9
  %call33.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %avout15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call33.i)
  %cmp34.i = icmp sgt i32 %call33.i, 20479
  br i1 %cmp34.i, label %land.lhs.true35.i, label %if.end25.i.if.then39.i_crit_edge

if.end25.i.if.then39.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

land.lhs.true35.i:                                ; preds = %if.end25.i
  %call37.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call37.i)
  %cmp38.i = icmp sgt i32 %call37.i, 20479
  br i1 %cmp38.i, label %land.lhs.true35.i.if.end64.i_crit_edge, label %land.lhs.true35.i.if.then39.i_crit_edge

land.lhs.true35.i.if.then39.i_crit_edge:          ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then39.i

land.lhs.true35.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.i

if.then39.i:                                      ; preds = %land.lhs.true35.i.if.then39.i_crit_edge, %if.end25.i.if.then39.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %13 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then39.i
  %call42.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %call44.i = call i32 @dvb_ringbuffer_free(ptr noundef %avout15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call44.i)
  %cmp45.i = icmp sgt i32 %call44.i, 20479
  br i1 %cmp45.i, label %land.lhs.true46.i, label %for.cond.i.if.end51.i_crit_edge

for.cond.i.if.end51.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

land.lhs.true46.i:                                ; preds = %for.cond.i
  %call48.i = call i32 @dvb_ringbuffer_free(ptr noundef %aout19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call48.i)
  %cmp49.i = icmp sgt i32 %call48.i, 20479
  br i1 %cmp49.i, label %if.end58.thread10.i, label %land.lhs.true46.i.if.end51.i_crit_edge

land.lhs.true46.i.if.end51.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51.i

if.end51.i:                                       ; preds = %land.lhs.true46.i.if.end51.i_crit_edge, %for.cond.i.if.end51.i_crit_edge
  %tobool52.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool52.not.i, label %cleanup.i, label %if.end58.i

cleanup.i:                                        ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @schedule() #9
  br label %for.cond.i

if.end58.thread10.i:                              ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @finish_wait(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end64.i

if.end58.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %for.body60.preheader

if.end64.i:                                       ; preds = %if.end58.thread10.i, %land.lhs.true35.i.if.end64.i_crit_edge, %land.lhs.true18.i.if.end64.i_crit_edge
  %call69.i = call i32 @av7110_ipack_instant_repack(ptr noundef nonnull @iframe_header, i32 noundef 9, ptr noundef %arrayidx68.i) #9
  br label %for.body60.preheader

for.body60.preheader:                             ; preds = %if.end64.i, %if.end58.i, %do.end3.i.for.body60.preheader_crit_edge
  br label %for.body60

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.body60.preheader
  %i.115 = phi i32 [ %inc63, %for.body60.for.body60_crit_edge ], [ 0, %for.body60.preheader ]
  %14 = call fastcc i32 @dvb_play(ptr noundef %av7110, ptr noundef %buf, i32 noundef %len, i32 noundef 0)
  %inc63 = add nuw nsw i32 %i.115, 1
  %exitcond16 = icmp eq i32 %i.115, %div
  br i1 %exitcond16, label %for.end64, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

for.end64:                                        ; preds = %for.body60
  %arrayidx = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 57, i32 1
  call void @av7110_ipack_flush(ptr noundef %arrayidx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1)
  %tobool65.not = icmp eq i32 %spec.select1, 0
  br i1 %tobool65.not, label %for.end64.cleanup68_crit_edge, label %if.then66

for.end64.cleanup68_crit_edge:                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.then66:                                        ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #11
  %call.i4 = call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 128, i32 noundef 2, i32 noundef 4, i32 noundef 0, i32 noundef 258, i32 noundef 0, i32 noundef 1) #9
  br label %cleanup68

cleanup68:                                        ; preds = %if.then66, %for.end64.cleanup68_crit_edge, %for.body.cleanup68_crit_edge, %if.then8.cleanup68_crit_edge, %do.end3.cleanup68_crit_edge
  %retval.2 = phi i32 [ %call.i4, %if.then66 ], [ 0, %do.end3.cleanup68_crit_edge ], [ -16, %if.then8.cleanup68_crit_edge ], [ 0, %for.end64.cleanup68_crit_edge ], [ -14, %for.body.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_audio_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %5 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39, ptr noundef %3, i32 noundef %cmd) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %6 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f_flags, align 4
  %and4 = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp = icmp ne i32 %and4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2145358070, i32 %cmd)
  %cmp5.not = icmp eq i32 %cmd, -2145358070
  %or.cond = or i1 %cmp5.not, %cmp
  br i1 %or.cond, label %if.end7, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end3
  %ioctl_mutex = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 96
  %call8 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cmd, label %sw.default141 [
    i32 28417, label %sw.bb
    i32 28418, label %sw.bb21
    i32 28419, label %sw.bb37
    i32 28420, label %sw.bb44
    i32 28421, label %sw.bb53
    i32 28422, label %sw.bb56
    i32 28423, label %sw.bb63
    i32 28424, label %sw.bb68
    i32 28425, label %sw.bb74
    i32 -2145358070, label %sw.bb125
    i32 -2147193077, label %sw.bb127
    i32 28428, label %sw.bb134
    i32 28429, label %if.end11.sw.epilog142_crit_edge
    i32 1074294542, label %sw.bb139
    i32 28431, label %if.end11.sw.epilog142_crit_edge229
  ]

if.end11.sw.epilog142_crit_edge229:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.end11.sw.epilog142_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

sw.bb:                                            ; preds = %if.end11
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %9 = ptrtoint ptr %stream_source to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp12 = icmp eq i32 %10, 1
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @av7110_av_stop(ptr noundef %3, i32 noundef 2)
  br label %if.end16

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 1) #9
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %call.i, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.sw.epilog142_crit_edge

if.end16.sw.epilog142_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %play_state = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 2
  %11 = ptrtoint ptr %play_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %play_state, align 8
  br label %sw.epilog142

sw.bb21:                                          ; preds = %if.end11
  %stream_source23 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %12 = ptrtoint ptr %stream_source23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stream_source23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp24 = icmp eq i32 %13, 1
  br i1 %cmp24, label %if.end27, label %sw.bb21.if.end31_crit_edge

sw.bb21.if.end31_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end27:                                         ; preds = %sw.bb21
  %call26 = tail call i32 @av7110_av_start_play(ptr noundef %3, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool28.not = icmp eq i32 %call26, 0
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.end27.sw.epilog142_crit_edge

if.end27.sw.epilog142_crit_edge:                  ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.end27.if.end31_crit_edge, %sw.bb21.if.end31_crit_edge
  %call.i217 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %tobool32.not = icmp eq i32 %call.i217, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.sw.epilog142_crit_edge

if.end31.sw.epilog142_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %play_state35 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 2
  %14 = ptrtoint ptr %play_state35 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %play_state35, align 8
  br label %sw.epilog142

sw.bb37:                                          ; preds = %if.end11
  %call.i218 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool39.not = icmp eq i32 %call.i218, 0
  br i1 %tobool39.not, label %if.then40, label %sw.bb37.sw.epilog142_crit_edge

sw.bb37.sw.epilog142_crit_edge:                   ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then40:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %play_state42 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 2
  %15 = ptrtoint ptr %play_state42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %play_state42, align 8
  br label %sw.epilog142

sw.bb44:                                          ; preds = %if.end11
  %play_state46 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 2
  %16 = ptrtoint ptr %play_state46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %play_state46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp47 = icmp eq i32 %17, 2
  br i1 %cmp47, label %if.then48, label %sw.bb44.sw.epilog142_crit_edge

sw.bb44.sw.epilog142_crit_edge:                   ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %play_state46 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %play_state46, align 8
  %call.i219 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 18) #9
  br label %sw.epilog142

sw.bb53:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %stream_source55 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %19 = ptrtoint ptr %stream_source55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %4, ptr %stream_source55, align 4
  br label %sw.epilog142

sw.bb56:                                          ; preds = %if.end11
  %tobool57.not = icmp eq ptr %parg, null
  %cond = select i1 %tobool57.not, i32 2, i32 1
  %call.i220 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool59.not = icmp eq i32 %call.i220, 0
  br i1 %tobool59.not, label %if.then60, label %sw.bb56.sw.epilog142_crit_edge

sw.bb56.sw.epilog142_crit_edge:                   ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then60:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %mute_state = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 1
  %20 = ptrtoint ptr %mute_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %4, ptr %mute_state, align 4
  br label %sw.epilog142

sw.bb63:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %audiostate64 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53
  %21 = ptrtoint ptr %audiostate64 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %4, ptr %audiostate64, align 8
  %tobool65.not = icmp eq ptr %parg, null
  %cond66 = select i1 %tobool65.not, i32 14, i32 15
  %call.i221 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef %cond66) #9
  br label %sw.epilog142

sw.bb68:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %arm_app = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %22 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arm_app, align 4
  %and69 = and i32 %23, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9761, i32 %and69)
  %cmp70 = icmp ult i32 %and69, 9761
  %spec.select = select i1 %cmp70, i32 -22, i32 0
  %bypass_mode = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 5
  %24 = ptrtoint ptr %bypass_mode to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %4, ptr %bypass_mode, align 4
  br label %sw.epilog142

sw.bb74:                                          ; preds = %if.end11
  %channel_select = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 4
  %25 = ptrtoint ptr %channel_select to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %4, ptr %channel_select, align 8
  %26 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %4, label %sw.bb74.sw.epilog142_crit_edge [
    i32 0, label %sw.bb78
    i32 1, label %sw.bb93
    i32 2, label %sw.bb109
  ]

sw.bb74.sw.epilog142_crit_edge:                   ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

sw.bb78:                                          ; preds = %sw.bb74
  %call.i222 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %tobool80.not = icmp eq i32 %call.i222, 0
  br i1 %tobool80.not, label %if.then81, label %sw.bb78.sw.epilog142_crit_edge

sw.bb78.sw.epilog142_crit_edge:                   ; preds = %sw.bb78
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then81:                                        ; preds = %sw.bb78
  %adac_type = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %27 = ptrtoint ptr %adac_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adac_type, align 8
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %28, label %if.then81.sw.epilog142_crit_edge [
    i32 1, label %if.then83
    i32 3, label %if.then88
  ]

if.then81.sw.epilog142_crit_edge:                 ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then83:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %call84 = tail call i32 @i2c_writereg(ptr noundef %3, i8 noundef zeroext 32, i8 noundef zeroext 2, i8 noundef zeroext 73) #9
  br label %sw.epilog142

if.then88:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 @msp_writereg(ptr noundef %3, i8 noundef zeroext 18, i16 noundef zeroext 8, i16 noundef zeroext 544) #9
  br label %sw.epilog142

sw.bb93:                                          ; preds = %sw.bb74
  %call.i223 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 256) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool95.not = icmp eq i32 %call.i223, 0
  br i1 %tobool95.not, label %if.then96, label %sw.bb93.sw.epilog142_crit_edge

sw.bb93.sw.epilog142_crit_edge:                   ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then96:                                        ; preds = %sw.bb93
  %adac_type97 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %30 = ptrtoint ptr %adac_type97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %adac_type97, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %31, label %if.then96.sw.epilog142_crit_edge [
    i32 1, label %if.then99
    i32 3, label %if.then104
  ]

if.then96.sw.epilog142_crit_edge:                 ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then99:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call i32 @i2c_writereg(ptr noundef %3, i8 noundef zeroext 32, i8 noundef zeroext 2, i8 noundef zeroext 74) #9
  br label %sw.epilog142

if.then104:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %call105 = tail call i32 @msp_writereg(ptr noundef %3, i8 noundef zeroext 18, i16 noundef zeroext 8, i16 noundef zeroext 512) #9
  br label %sw.epilog142

sw.bb109:                                         ; preds = %sw.bb74
  %call.i224 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 128, i32 noundef 3, i32 noundef 2, i32 noundef 0, i32 noundef 512) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %tobool111.not = icmp eq i32 %call.i224, 0
  br i1 %tobool111.not, label %if.then112, label %sw.bb109.sw.epilog142_crit_edge

sw.bb109.sw.epilog142_crit_edge:                  ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then112:                                       ; preds = %sw.bb109
  %adac_type113 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 12
  %33 = ptrtoint ptr %adac_type113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %adac_type113, align 8
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %34, label %if.then112.sw.epilog142_crit_edge [
    i32 1, label %if.then115
    i32 3, label %if.then120
  ]

if.then112.sw.epilog142_crit_edge:                ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then115:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %call116 = tail call i32 @i2c_writereg(ptr noundef %3, i8 noundef zeroext 32, i8 noundef zeroext 2, i8 noundef zeroext 69) #9
  br label %sw.epilog142

if.then120:                                       ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = tail call i32 @msp_writereg(ptr noundef %3, i8 noundef zeroext 18, i16 noundef zeroext 8, i16 noundef zeroext 528) #9
  br label %sw.epilog142

sw.bb125:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %audiostate126 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53
  %36 = call ptr @memcpy(ptr %parg, ptr %audiostate126, i32 32)
  br label %sw.epilog142

sw.bb127:                                         ; preds = %if.end11
  %arm_app128 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %37 = ptrtoint ptr %arm_app128 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arm_app128, align 4
  %and129 = and i32 %38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 9761, i32 %and129)
  %cmp130 = icmp ult i32 %and129, 9761
  br i1 %cmp130, label %if.then131, label %if.else132

if.then131:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %parg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 14, ptr %parg, align 4
  br label %sw.epilog142

if.else132:                                       ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %parg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 271, ptr %parg, align 4
  br label %sw.epilog142

sw.bb134:                                         ; preds = %if.end11
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %aout) #9
  %ipack = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 57
  tail call void @av7110_ipack_reset(ptr noundef %ipack) #9
  %playing = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %41 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %cmp135 = icmp eq i32 %42, 3
  br i1 %cmp135, label %if.then136, label %sw.bb134.sw.epilog142_crit_edge

sw.bb134.sw.epilog142_crit_edge:                  ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

if.then136:                                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #11
  %call137 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 9, i32 noundef 2, i32 noundef 2, i32 noundef 5, i32 noundef 0) #9
  br label %sw.epilog142

sw.bb139:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %parg, align 4
  %volume_right = getelementptr inbounds %struct.audio_mixer, ptr %parg, i32 0, i32 1
  %45 = ptrtoint ptr %volume_right to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %volume_right, align 4
  %call140 = tail call i32 @av7110_set_volume(ptr noundef %3, i32 noundef %44, i32 noundef %46)
  br label %sw.epilog142

sw.default141:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog142

sw.epilog142:                                     ; preds = %sw.default141, %sw.bb139, %if.then136, %sw.bb134.sw.epilog142_crit_edge, %if.else132, %if.then131, %sw.bb125, %if.then120, %if.then115, %if.then112.sw.epilog142_crit_edge, %sw.bb109.sw.epilog142_crit_edge, %if.then104, %if.then99, %if.then96.sw.epilog142_crit_edge, %sw.bb93.sw.epilog142_crit_edge, %if.then88, %if.then83, %if.then81.sw.epilog142_crit_edge, %sw.bb78.sw.epilog142_crit_edge, %sw.bb74.sw.epilog142_crit_edge, %sw.bb68, %sw.bb63, %if.then60, %sw.bb56.sw.epilog142_crit_edge, %sw.bb53, %if.then48, %sw.bb44.sw.epilog142_crit_edge, %if.then40, %sw.bb37.sw.epilog142_crit_edge, %if.then33, %if.end31.sw.epilog142_crit_edge, %if.end27.sw.epilog142_crit_edge, %if.then18, %if.end16.sw.epilog142_crit_edge, %if.end11.sw.epilog142_crit_edge, %if.end11.sw.epilog142_crit_edge229
  %ret.4 = phi i32 [ -515, %sw.default141 ], [ %call140, %sw.bb139 ], [ 0, %if.end11.sw.epilog142_crit_edge ], [ 0, %if.end11.sw.epilog142_crit_edge229 ], [ %call137, %if.then136 ], [ 0, %sw.bb134.sw.epilog142_crit_edge ], [ 0, %if.then131 ], [ 0, %if.else132 ], [ 0, %sw.bb125 ], [ %call.i224, %sw.bb109.sw.epilog142_crit_edge ], [ 0, %if.then115 ], [ 0, %if.then120 ], [ %call.i223, %sw.bb93.sw.epilog142_crit_edge ], [ 0, %if.then99 ], [ 0, %if.then104 ], [ %call.i222, %sw.bb78.sw.epilog142_crit_edge ], [ 0, %if.then83 ], [ 0, %if.then88 ], [ %spec.select, %sw.bb68 ], [ %call.i221, %sw.bb63 ], [ %call.i220, %sw.bb56.sw.epilog142_crit_edge ], [ 0, %if.then60 ], [ 0, %sw.bb53 ], [ %call.i219, %if.then48 ], [ 0, %sw.bb44.sw.epilog142_crit_edge ], [ %call.i218, %sw.bb37.sw.epilog142_crit_edge ], [ 0, %if.then40 ], [ %call.i217, %if.end31.sw.epilog142_crit_edge ], [ 0, %if.then33 ], [ %ret.0, %if.end16.sw.epilog142_crit_edge ], [ 0, %if.then18 ], [ 0, %if.then81.sw.epilog142_crit_edge ], [ 0, %if.then96.sw.epilog142_crit_edge ], [ 0, %if.then112.sw.epilog142_crit_edge ], [ -22, %sw.bb74.sw.epilog142_crit_edge ], [ %call26, %if.end27.sw.epilog142_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog142, %if.end7.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %sw.epilog142 ], [ -1, %do.end3.cleanup_crit_edge ], [ -512, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_audio_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.31, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %5 = ptrtoint ptr %stream_source to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #12
  br label %cleanup

if.end10:                                         ; preds = %do.end3
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 1011) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !156
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %buf, i32 -1226833921) #9, !srcloc !163
  %asmresult = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !157
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool15.not = icmp eq i32 %asmresult, 0
  br i1 %tobool15.not, label %if.end17, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %asmresult13 = extractvalue { i32, i32 } %10, 1
  %conv18 = and i32 %asmresult13, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %conv18)
  %cmp19 = icmp eq i32 %conv18, 71
  %rem = urem i32 %count, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp21 = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp21, %cmp19
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %11 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f_flags, align 4
  %and24 = and i32 %12, 2048
  br i1 %or.cond, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call fastcc i32 @ts_play(ptr noundef %3, ptr noundef %buf, i32 noundef %count, i32 noundef %and24, i32 noundef 0)
  br label %cleanup

if.else:                                          ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %13 = load i32, ptr @av7110_debug, align 4
  %and.i40 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not.i = icmp eq i32 %and.i40, 0
  br i1 %tobool.not.i, label %if.else.do.end3.i_crit_edge, label %do.end.i

if.else.do.end3.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35, ptr noundef %3) #12
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.else.do.end3.i_crit_edge
  %kbuf.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 58
  %14 = ptrtoint ptr %kbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %kbuf.i, align 4
  %tobool4.not.i = icmp eq ptr %15, null
  br i1 %tobool4.not.i, label %do.end3.i.cleanup_crit_edge, label %if.end6.i

do.end3.i.cleanup_crit_edge:                      ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool7.not.i = icmp eq i32 %and24, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end10.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %aout.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  %call8.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %call8.i)
  %cmp.i = icmp slt i32 %call8.i, 20480
  br i1 %cmp.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end10.i_crit_edge

land.lhs.true.i.if.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %land.lhs.true.i.if.end10.i_crit_edge, %if.end6.i.if.end10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp11.not30.i = icmp eq i32 %count, 0
  br i1 %cmp11.not30.i, label %if.end10.i.cleanup_crit_edge, label %while.body.lr.ph.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end10.i
  %aout12.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  %queue.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15, i32 5
  %ipack.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 57
  br label %while.body.i

while.body.i:                                     ; preds = %if.end58.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %buf.addr.034.i = phi ptr [ %buf, %while.body.lr.ph.i ], [ %add.ptr.i, %if.end58.i.while.body.i_crit_edge ]
  %todo.031.i = phi i32 [ %count, %while.body.lr.ph.i ], [ %sub63.i, %if.end58.i.while.body.i_crit_edge ]
  %call13.i = call i32 @dvb_ringbuffer_free(ptr noundef %aout12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 20480
  br i1 %cmp14.i, label %if.then15.i, label %while.body.i.if.end49.i_crit_edge

while.body.i.if.end49.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then15.i:                                      ; preds = %while.body.i
  br i1 %tobool7.not.i, label %if.end18.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i = sub i32 %count, %todo.031.i
  br label %cleanup

if.end18.i:                                       ; preds = %if.then15.i
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 549) #9
  %call26.i = call i32 @dvb_ringbuffer_free(ptr noundef %aout12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call26.i)
  %cmp27.i = icmp sgt i32 %call26.i, 20479
  br i1 %cmp27.i, label %if.end18.i.if.end49.i_crit_edge, label %if.then28.i

if.end18.i.if.end49.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.then28.i:                                      ; preds = %if.end18.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %16 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %call3125.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %call3326.i = call i32 @dvb_ringbuffer_free(ptr noundef %aout12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call3326.i)
  %cmp3427.i = icmp sgt i32 %call3326.i, 20479
  br i1 %cmp3427.i, label %if.then28.i.if.end43.thread10.i_crit_edge, label %if.then28.i.if.end36.i_crit_edge

if.then28.i.if.end36.i_crit_edge:                 ; preds = %if.then28.i
  br label %if.end36.i

if.then28.i.if.end43.thread10.i_crit_edge:        ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread10.i

if.end36.i:                                       ; preds = %cleanup.i.if.end36.i_crit_edge, %if.then28.i.if.end36.i_crit_edge
  %call3128.i = phi i32 [ %call31.i, %cleanup.i.if.end36.i_crit_edge ], [ %call3125.i, %if.then28.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3128.i)
  %tobool37.not.i = icmp eq i32 %call3128.i, 0
  br i1 %tobool37.not.i, label %cleanup.i, label %if.then46.i

cleanup.i:                                        ; preds = %if.end36.i
  call void @schedule() #9
  %call31.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %call33.i = call i32 @dvb_ringbuffer_free(ptr noundef %aout12.i) #9
  %cmp34.i = icmp sgt i32 %call33.i, 20479
  br i1 %cmp34.i, label %cleanup.i.if.end43.thread10.i_crit_edge, label %cleanup.i.if.end36.i_crit_edge

cleanup.i.if.end36.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

cleanup.i.if.end43.thread10.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.thread10.i

if.end43.thread10.i:                              ; preds = %cleanup.i.if.end43.thread10.i_crit_edge, %if.then28.i.if.end43.thread10.i_crit_edge
  call void @finish_wait(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end49.i

if.then46.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %sub47.i = sub i32 %count, %todo.031.i
  br label %cleanup

if.end49.i:                                       ; preds = %if.end43.thread10.i, %if.end18.i.if.end49.i_crit_edge, %while.body.i.if.end49.i_crit_edge
  %17 = call i32 @llvm.umin.i32(i32 %todo.031.i, i32 4096) #9
  %18 = ptrtoint ptr %kbuf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kbuf.i, align 4
  call void @__check_object_size(ptr noundef %19, i32 noundef %17, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.22, i32 noundef 156) #9
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end49.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end49.i.if.end.i.i.i_crit_edge:                ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end49.i
  %20 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.034.i, i32 %17, i32 -1226833920) #13, !srcloc !160
  %asmresult.i.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !161

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef %17) #9
  %21 = call i32 @llvm.read_register.i32(metadata !143) #9
  %and.i.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !156
  %and.i.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %buf.addr.034.i, i32 noundef %17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #9, !srcloc !157
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end49.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %17, %if.end49.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %17, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end58.i, label %if.then11.i.i.i, !prof !161

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i = sub i32 %17, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 %sub.i.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %cleanup

if.end58.i:                                       ; preds = %if.end.i.i.i
  %25 = ptrtoint ptr %kbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kbuf.i, align 4
  %call62.i = call i32 @av7110_ipack_instant_repack(ptr noundef %26, i32 noundef %17, ptr noundef %ipack.i) #9
  %sub63.i = sub i32 %todo.031.i, %17
  %add.ptr.i = getelementptr i8, ptr %buf.addr.034.i, i32 %17
  %cmp11.not.i = icmp eq i32 %sub63.i, 0
  br i1 %cmp11.not.i, label %if.end58.i.cleanup_crit_edge, label %if.end58.i.while.body.i_crit_edge

if.end58.i.while.body.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end58.i.cleanup_crit_edge:                     ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end58.i.cleanup_crit_edge, %if.then11.i.i.i, %if.then46.i, %if.then17.i, %if.end10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end3.i.cleanup_crit_edge, %if.then23, %if.end10.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -1, %do.end7 ], [ %call25, %if.then23 ], [ -14, %if.end10.cleanup_crit_edge ], [ %sub.i, %if.then17.i ], [ %sub47.i, %if.then46.i ], [ -105, %do.end3.i.cleanup_crit_edge ], [ -11, %land.lhs.true.i.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ 0, %if.end10.i.cleanup_crit_edge ], [ %count, %if.end58.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_audio_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %queue = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end3.poll_wait.exit_crit_edge, label %land.lhs.true.i

do.end3.poll_wait.exit_crit_edge:                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %do.end3
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %do.end3.poll_wait.exit_crit_edge
  %playing = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 26
  %7 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %playing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not = icmp eq i32 %8, 0
  br i1 %tobool4.not, label %poll_wait.exit.if.end10_crit_edge, label %if.then5

poll_wait.exit.if.end10_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then5:                                         ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  %call7 = tail call i32 @dvb_ringbuffer_free(ptr noundef %aout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 20479, i32 %call7)
  %cmp = icmp sgt i32 %call7, 20479
  %spec.select = select i1 %cmp, i32 260, i32 0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %poll_wait.exit.if.end10_crit_edge
  %mask.0 = phi i32 [ %spec.select, %if.then5 ], [ 260, %poll_wait.exit.if.end10_crit_edge ]
  ret i32 %mask.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_audio_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @dvb_generic_open(ptr noundef %inode, ptr noundef %file) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37, ptr noundef %3) #12
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  %aout = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 15
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %aout) #9
  %stream_source = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 53, i32 3
  %5 = ptrtoint ptr %stream_source to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %stream_source, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_audio_release(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38, ptr noundef %3) #12
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @av7110_av_stop(ptr noundef %3, i32 noundef 2)
  %call5 = tail call i32 @dvb_generic_release(ptr noundef %inode, ptr noundef %file) #9
  ret i32 %call5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aux_ring_buffer_write(ptr noundef %rbuf, ptr noundef %buf, i32 noundef %count) unnamed_addr #7 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not18 = icmp eq i32 %count, 0
  br i1 %cmp.not18, label %entry.cleanup29_crit_edge, label %while.body.lr.ph

entry.cleanup29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

while.body.lr.ph:                                 ; preds = %entry
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, ptr %rbuf, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.020 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end21.while.body_crit_edge ]
  %todo.019 = phi i32 [ %count, %while.body.lr.ph ], [ %sub27, %if.end21.while.body_crit_edge ]
  %call = call i32 @dvb_ringbuffer_free(ptr noundef %rbuf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call)
  %cmp1 = icmp slt i32 %call, 2048
  br i1 %cmp1, label %if.then, label %while.body.if.end21_crit_edge

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 394) #9
  %call5 = call i32 @dvb_ringbuffer_free(ptr noundef %rbuf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 2047
  br i1 %cmp6, label %if.then.if.end21_crit_edge, label %if.then7

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %0 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call914 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call1015 = call i32 @dvb_ringbuffer_free(ptr noundef %rbuf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2047, i32 %call1015)
  %cmp1116 = icmp sgt i32 %call1015, 2047
  br i1 %cmp1116, label %if.then7.if.end16.thread10_crit_edge, label %if.then7.if.end_crit_edge

if.then7.if.end_crit_edge:                        ; preds = %if.then7
  br label %if.end

if.then7.if.end16.thread10_crit_edge:             ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread10

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then7.if.end_crit_edge
  %call917 = phi i32 [ %call9, %cleanup.if.end_crit_edge ], [ %call914, %if.then7.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call917)
  %tobool.not = icmp eq i32 %call917, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

cleanup:                                          ; preds = %if.end
  call void @schedule() #9
  %call9 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %call10 = call i32 @dvb_ringbuffer_free(ptr noundef %rbuf) #9
  %cmp11 = icmp sgt i32 %call10, 2047
  br i1 %cmp11, label %cleanup.if.end16.thread10_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.if.end16.thread10_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.thread10

if.end16.thread10:                                ; preds = %cleanup.if.end16.thread10_crit_edge, %if.then7.if.end16.thread10_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end21

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %cleanup29

if.end21:                                         ; preds = %if.end16.thread10, %if.then.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %call22 = call i32 @dvb_ringbuffer_free(ptr noundef %rbuf) #9
  %1 = call i32 @llvm.umin.i32(i32 %call22, i32 %todo.019)
  %call26 = call i32 @dvb_ringbuffer_write(ptr noundef %rbuf, ptr noundef %buf.addr.020, i32 noundef %1) #9
  %sub27 = sub i32 %todo.019, %1
  %add.ptr = getelementptr i8, ptr %buf.addr.020, i32 %1
  %cmp.not = icmp eq i32 %sub27, 0
  br i1 %cmp.not, label %if.end21.cleanup29_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end21.cleanup29_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup29

cleanup29:                                        ; preds = %if.end21.cleanup29_crit_edge, %if.end16, %entry.cleanup29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 109, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @av7110_av_start_record._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @av7110_av_start_record._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 152, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @av7110_av_start_play._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @av7110_av_start_play._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 186, i32 2}
!13 = !{ptr @av7110_av_stop._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @av7110_av_stop._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 246, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @av7110_pes_play._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @av7110_pes_play._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 260, i32 2}
!22 = !{ptr @av7110_pes_play._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @av7110_pes_play._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 273, i32 2}
!26 = !{ptr @av7110_set_volume._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @av7110_set_volume._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 323, i32 2}
!30 = !{ptr @av7110_set_vidmode._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @av7110_set_vidmode._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 842, i32 2}
!34 = !{ptr @av7110_write_to_decoder._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @av7110_write_to_decoder._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @av7110_av_register.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1630, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @av7110_av_register.__key.15, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1631, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dvbdev_video, !43, !"dvbdev_video", i1 false, i1 false}
!43 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1584, i32 26}
!44 = !{ptr @dvb_video_fops, !45, !"dvb_video_fops", i1 false, i1 false}
!45 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1573, i32 37}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 962, i32 2}
!48 = !{ptr @dvb_video_write._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dvb_video_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 438, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ts_play._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @ts_play._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!57 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 474, i32 2}
!64 = !{ptr @dvb_play._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @dvb_play._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 932, i32 2}
!68 = !{ptr @dvb_video_poll._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dvb_video_poll._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1508, i32 2}
!72 = !{ptr @dvb_video_open._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dvb_video_open._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1532, i32 2}
!76 = !{ptr @dvb_video_release._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @dvb_video_release._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1129, i32 2}
!80 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dvb_video_ioctl._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @dvb_video_ioctl._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1029, i32 2}
!85 = !{ptr @play_iframe._entry, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @play_iframe._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 507, i32 2}
!89 = !{ptr @dvb_play_kernel._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_play_kernel._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @iframe_header, !92, !"iframe_header", i1 false, i1 false}
!92 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1019, i32 11}
!93 = !{ptr @dvbdev_audio, !94, !"dvbdev_audio", i1 false, i1 false}
!94 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1604, i32 26}
!95 = !{ptr @dvb_audio_fops, !96, !"dvb_audio_fops", i1 false, i1 false}
!96 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1593, i32 37}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1004, i32 2}
!99 = !{ptr @dvb_audio_write._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @dvb_audio_write._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1007, i32 3}
!103 = !{ptr @dvb_audio_write._entry.32, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dvb_audio_write._entry_ptr.34, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 537, i32 2}
!107 = !{ptr @dvb_aplay._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dvb_aplay._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 984, i32 2}
!111 = !{ptr @dvb_audio_poll._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @dvb_audio_poll._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1547, i32 2}
!115 = !{ptr @dvb_audio_open._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @dvb_audio_open._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1561, i32 2}
!119 = !{ptr @dvb_audio_release._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @dvb_audio_release._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.39, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 1360, i32 2}
!123 = !{ptr @dvb_audio_ioctl._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @dvb_audio_ioctl._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.40, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 423, i32 2}
!127 = !{ptr @play_audio_cb._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @play_audio_cb._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 411, i32 2}
!131 = !{ptr @play_video_cb._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @play_video_cb._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 358, i32 2}
!135 = !{ptr @get_video_format._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @get_video_format._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.44, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 372, i32 4}
!139 = !{ptr @get_video_format._entry.43, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @get_video_format._entry_ptr.45, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @sw2mode, !142, !"sw2mode", i1 false, i1 false}
!142 = !{!"../drivers/staging/media/av7110/av7110_av.c", i32 339, i32 31}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = distinct !{!153, !154}
!154 = !{!"llvm.loop.peeled.count", i32 1}
!155 = !{i8 0, i8 2}
!156 = !{i64 4832214}
!157 = !{i64 4832411}
!158 = !{i64 2152317644}
!159 = !{i64 2158823471, i64 2158823751, i64 2158824085, i64 2158824419}
!160 = !{i64 2152336659, i64 2152336684}
!161 = !{!"branch_weights", i32 2000, i32 1}
!162 = !{i64 2158858593, i64 2158858873, i64 2158859207, i64 2158859541}
!163 = !{i64 2158844680, i64 2158844960, i64 2158845294, i64 2158845628}
