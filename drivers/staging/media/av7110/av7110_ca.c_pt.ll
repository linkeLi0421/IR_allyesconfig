; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_ca.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_ca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.112 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.109], %struct.media_entity_enum, i32 }
%struct.anon.109 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.ca_descr = type { i32, i32, [8 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@av7110_debug = external dso_local local_unnamed_addr global i32, align 4
@CI_handle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017dvb_ttpci: %s(): av7110:%p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CI_handle\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/av7110/av7110_ca.c\00", [55 x i8] zeroinitializer }, align 32
@CI_handle._entry_ptr = internal global ptr @CI_handle._entry, section ".printk_index", align 4
@dvbdev_ca = internal global { %struct.dvb_device, [32 x i8] } { %struct.dvb_device { %struct.list_head zeroinitializer, ptr @dvb_ca_fops, ptr null, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, %struct.wait_queue_head zeroinitializer, ptr @dvb_ca_ioctl, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_ca_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @dvb_ca_read, ptr @dvb_ca_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dvb_ca_poll, ptr @dvb_generic_ioctl, ptr null, ptr null, i32 0, ptr @dvb_ca_open, ptr null, ptr @dvb_generic_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@dvb_ca_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvb_ca_read\00", [20 x i8] zeroinitializer }, align 32
@dvb_ca_read._entry_ptr = internal global ptr @dvb_ca_read._entry, section ".printk_index", align 4
@dvb_ca_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_ca_write\00", [19 x i8] zeroinitializer }, align 32
@dvb_ca_write._entry_ptr = internal global ptr @dvb_ca_write._entry, section ".printk_index", align 4
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@dvb_ca_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvb_ca_poll\00", [20 x i8] zeroinitializer }, align 32
@dvb_ca_poll._entry_ptr = internal global ptr @dvb_ca_poll._entry, section ".printk_index", align 4
@dvb_ca_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dvb_ca_open\00", [20 x i8] zeroinitializer }, align 32
@dvb_ca_open._entry_ptr = internal global ptr @dvb_ca_open._entry, section ".printk_index", align 4
@dvb_ca_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_ca_ioctl\00", [19 x i8] zeroinitializer }, align 32
@dvb_ca_ioctl._entry_ptr = internal global ptr @dvb_ca_ioctl._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 32, i64 28544, i64 1074818950, i64 1091334021, i64 2148036483, i64 2148298626, i64 2148560769, i64 2165075844]
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 29, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"dvbdev_ca\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 352, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"dvb_ca_fops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 341, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 337, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 327, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 230, i32 6 }
@___asan_gen_.46 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 214, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 156, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 220, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 204, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [44 x i8] c"../drivers/staging/media/av7110/av7110_ca.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 241, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @CI_handle._entry, ptr @CI_handle._entry_ptr, ptr @dvb_ca_ioctl._entry, ptr @dvb_ca_ioctl._entry_ptr, ptr @dvb_ca_open._entry, ptr @dvb_ca_open._entry_ptr, ptr @dvb_ca_poll._entry, ptr @dvb_ca_poll._entry_ptr, ptr @dvb_ca_read._entry, ptr @dvb_ca_read._entry_ptr, ptr @dvb_ca_write._entry, ptr @dvb_ca_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dvbdev_ca, ptr @dvb_ca_fops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CI_handle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvbdev_ca to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_ca_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @CI_handle(ptr noundef %av7110, ptr nocapture noundef readonly %data, i16 noundef zeroext %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %av7110) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %len)
  %cmp = icmp ult i16 %len, 3
  br i1 %cmp, label %do.end2.sw.epilog38_crit_edge, label %if.end5

do.end2.sw.epilog38_crit_edge:                    ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog38

if.end5:                                          ; preds = %do.end2
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %2)
  %cond = icmp eq i8 %2, 1
  br i1 %cond, label %sw.bb, label %if.end5.sw.epilog38_crit_edge

if.end5.sw.epilog38_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog38

sw.bb:                                            ; preds = %if.end5
  %arrayidx7 = getelementptr i8, ptr %data, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx7, align 1
  %.off = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end16, label %sw.bb.sw.epilog38_crit_edge

sw.bb.sw.epilog38_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog38

if.end16:                                         ; preds = %sw.bb
  %arrayidx17 = getelementptr i8, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx17, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end16.sw.epilog38_crit_edge [
    i8 0, label %sw.bb19
    i8 1, label %sw.bb23
    i8 2, label %sw.bb30
  ]

if.end16.sw.epilog38_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog38

sw.bb19:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %conv21 = zext i8 %4 to i32
  %sub = add nsw i32 %conv21, -1
  %flags = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 30, i32 %sub, i32 2
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  br label %sw.epilog38

sw.bb23:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %conv26 = zext i8 %4 to i32
  %sub27 = add nsw i32 %conv26, -1
  %flags29 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 30, i32 %sub27, i32 2
  %9 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags29, align 4
  %or = or i32 %10, 1
  store i32 %or, ptr %flags29, align 4
  br label %sw.epilog38

sw.bb30:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i8 %4 to i32
  %sub34 = add nsw i32 %conv33, -1
  %flags36 = getelementptr %struct.av7110, ptr %av7110, i32 0, i32 30, i32 %sub34, i32 2
  %11 = ptrtoint ptr %flags36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags36, align 4
  %or37 = or i32 %12, 2
  store i32 %or37, ptr %flags36, align 4
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.bb30, %sw.bb23, %sw.bb19, %if.end16.sw.epilog38_crit_edge, %sw.bb.sw.epilog38_crit_edge, %if.end5.sw.epilog38_crit_edge, %do.end2.sw.epilog38_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_get_data(ptr noundef %cibuf, ptr noundef %data, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_ringbuffer_free(ptr noundef %cibuf) #6
  %add = add i32 %len, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp = icmp slt i32 %call, %add
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = lshr i32 %len, 8
  %conv = trunc i32 %0 to i8
  %1 = ptrtoint ptr %cibuf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cibuf, align 4
  %pwrite = getelementptr inbounds %struct.dvb_ringbuffer, ptr %cibuf, i32 0, i32 3
  %3 = ptrtoint ptr %pwrite to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pwrite, align 4
  %arrayidx = getelementptr i8, ptr %2, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %6 = load i32, ptr %pwrite, align 4
  %add3 = add i32 %6, 1
  %size = getelementptr inbounds %struct.dvb_ringbuffer, ptr %cibuf, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %rem = srem i32 %add3, %8
  store i32 %rem, ptr %pwrite, align 4
  %conv5 = trunc i32 %len to i8
  %9 = load ptr, ptr %cibuf, align 4
  %arrayidx8 = getelementptr i8, ptr %9, i32 %rem
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv5, ptr %arrayidx8, align 1
  %11 = load i32, ptr %pwrite, align 4
  %add10 = add i32 %11, 1
  %12 = load i32, ptr %size, align 4
  %rem12 = srem i32 %add10, %12
  store i32 %rem12, ptr %pwrite, align 4
  %call14 = tail call i32 @dvb_ringbuffer_write(ptr noundef %cibuf, ptr noundef %data, i32 noundef %len) #6
  %queue = getelementptr inbounds %struct.dvb_ringbuffer, ptr %cibuf, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_ca_register(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb_adapter = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 78
  %ca_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 81
  %call = tail call i32 @dvb_register_device(ptr noundef %dvb_adapter, ptr noundef %ca_dev, ptr noundef nonnull @dvbdev_ca, ptr noundef %av7110, i32 noundef 4, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ca_unregister(ptr nocapture noundef readonly %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ca_dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 81
  %0 = ptrtoint ptr %ca_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ca_dev, align 4
  tail call void @dvb_unregister_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_ca_init(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  %tab.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_rbuffer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 75
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 76
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tab.i) #6
  %0 = getelementptr inbounds [3 x ptr], ptr %tab.i, i32 0, i32 1
  %1 = getelementptr inbounds [3 x ptr], ptr %tab.i, i32 0, i32 2
  %2 = ptrtoint ptr %tab.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ci_rbuffer, ptr %tab.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ci_wbuffer, ptr %0, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %1, align 4
  %tobool.not3.i = icmp eq ptr %ci_rbuffer, null
  br i1 %tobool.not3.i, label %entry.ci_ll_init.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.ci_ll_init.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_init.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.04.i = phi ptr [ %incdec.ptr7.i, %if.end.i.for.body.i_crit_edge ], [ %tab.i, %entry.for.body.i_crit_edge ]
  %call.i = tail call noalias ptr @vmalloc(i32 noundef 8192) #10
  %tobool2.not.i = icmp eq ptr %call.i, null
  br i1 %tobool2.not.i, label %while.cond.preheader.i, label %if.end.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %cmp.not5.i = icmp eq ptr %p.04.i, %tab.i
  br i1 %cmp.not5.i, label %while.cond.preheader.i.ci_ll_init.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.ci_ll_init.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_init.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %p.16.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %p.04.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr ptr, ptr %p.16.i, i32 -1
  %5 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  call void @vfree(ptr noundef %8) #6
  %9 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %incdec.ptr.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %10, align 4
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %tab.i
  br i1 %cmp.not.i, label %while.body.i.ci_ll_init.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.ci_ll_init.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_init.exit

if.end.i:                                         ; preds = %for.body.i
  %12 = ptrtoint ptr %p.04.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.04.i, align 4
  tail call void @dvb_ringbuffer_init(ptr noundef %13, ptr noundef nonnull %call.i, i32 noundef 8192) #6
  %incdec.ptr7.i = getelementptr ptr, ptr %p.04.i, i32 1
  %14 = ptrtoint ptr %incdec.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr.i = load ptr, ptr %incdec.ptr7.i, align 4
  %tobool.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i, label %if.end.i.ci_ll_init.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.ci_ll_init.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_init.exit

ci_ll_init.exit:                                  ; preds = %if.end.i.ci_ll_init.exit_crit_edge, %while.body.i.ci_ll_init.exit_crit_edge, %while.cond.preheader.i.ci_ll_init.exit_crit_edge, %entry.ci_ll_init.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %while.cond.preheader.i.ci_ll_init.exit_crit_edge ], [ 0, %entry.ci_ll_init.exit_crit_edge ], [ -12, %while.body.i.ci_ll_init.exit_crit_edge ], [ 0, %if.end.i.ci_ll_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tab.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ca_exit(ptr nocapture noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_rbuffer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 75
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 76
  %0 = ptrtoint ptr %ci_rbuffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_rbuffer, align 4
  tail call void @vfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %ci_rbuffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ci_rbuffer, align 4
  %3 = ptrtoint ptr %ci_wbuffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ci_wbuffer, align 4
  tail call void @vfree(ptr noundef %4) #6
  %5 = ptrtoint ptr %ci_wbuffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ci_wbuffer, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, ptr noundef %parg) #0 align 64 {
entry:
  %msg.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef %3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ioctl_mutex = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 96
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %ioctl_mutex, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end3.cleanup82_crit_edge

do.end3.cleanup82_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup82

if.end7:                                          ; preds = %do.end3
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cmd, label %sw.default [
    i32 28544, label %sw.bb
    i32 -2146406527, label %sw.bb9
    i32 -2146668670, label %sw.bb12
    i32 -2129891452, label %if.end7.sw.epilog_crit_edge
    i32 1091334021, label %if.end7.sw.epilog_crit_edge126
    i32 -2146930813, label %sw.bb33
    i32 1074818950, label %sw.bb38
  ]

if.end7.sw.epilog_crit_edge126:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end7
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i) #6
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 1688854138585088, ptr %msg.i, align 8
  %and.i = and i32 %4, 1
  %8 = shl nuw nsw i32 %and.i, 3
  %and.1.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  %add.1.i = add nuw nsw i32 %8, 8
  %spec.select.1.i = select i1 %tobool.not.1.i, i32 %8, i32 %add.1.i
  %call.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %spec.select.1.i)
  %cmp1.i = icmp slt i32 %call.i, %spec.select.1.i
  br i1 %cmp1.i, label %sw.bb.ci_ll_reset.exit_crit_edge, label %for.cond4.preheader.i

sw.bb.ci_ll_reset.exit_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_reset.exit

for.cond4.preheader.i:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %arrayidx.i = getelementptr inbounds [8 x i8], ptr %msg.i, i32 0, i32 2
  br i1 %tobool.not.i, label %for.cond4.preheader.i.for.inc14.i_crit_edge, label %if.then10.i

for.cond4.preheader.i.for.inc14.i_crit_edge:      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14.i

if.then10.i:                                      ; preds = %for.cond4.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx.i, align 2
  %call11.i = call i32 @dvb_ringbuffer_write(ptr noundef %ci_wbuffer, ptr noundef nonnull %msg.i, i32 noundef 8) #6
  %flags.i = getelementptr %struct.av7110, ptr %3, i32 0, i32 30, i32 0, i32 2
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %flags.i, align 4
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %if.then10.i, %for.cond4.preheader.i.for.inc14.i_crit_edge
  br i1 %tobool.not.1.i, label %for.inc14.i.ci_ll_reset.exit_crit_edge, label %if.then10.1.i

for.inc14.i.ci_ll_reset.exit_crit_edge:           ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_reset.exit

if.then10.1.i:                                    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx.i, align 2
  %call11.1.i = call i32 @dvb_ringbuffer_write(ptr noundef %ci_wbuffer, ptr noundef nonnull %msg.i, i32 noundef 8) #6
  %flags.1.i = getelementptr %struct.av7110, ptr %3, i32 0, i32 30, i32 1, i32 2
  %12 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %flags.1.i, align 4
  br label %ci_ll_reset.exit

ci_ll_reset.exit:                                 ; preds = %if.then10.1.i, %for.inc14.i.ci_ll_reset.exit_crit_edge, %sw.bb.ci_ll_reset.exit_crit_edge
  %retval.0.i = phi i32 [ -16, %sw.bb.ci_ll_reset.exit_crit_edge ], [ 0, %if.then10.1.i ], [ 0, %for.inc14.i.ci_ll_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arm_app = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %13 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arm_app, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool11.not = icmp sgt i32 %14, -1
  %or = select i1 %tobool11.not, i32 9, i32 10
  %15 = ptrtoint ptr %parg to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 2, ptr %parg, align 1
  %cap.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %parg, i32 4
  %16 = ptrtoint ptr %cap.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %or, ptr %cap.sroa.5.0..sroa_idx, align 1
  %cap.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %parg, i32 8
  %17 = ptrtoint ptr %cap.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 16, ptr %cap.sroa.7.0..sroa_idx, align 1
  %cap.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %parg, i32 12
  %18 = ptrtoint ptr %cap.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1, ptr %cap.sroa.9.0..sroa_idx, align 1
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  %19 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %parg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %if.then15, label %if.end17

if.then15:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #6
  br label %cleanup82

if.end17:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx21 = getelementptr %struct.av7110, ptr %3, i32 0, i32 30, i32 %20
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %arrayidx21, align 4
  %arm_app23 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 66
  %23 = ptrtoint ptr %arm_app23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arm_app23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %tobool25.not = icmp sgt i32 %24, -1
  %cond26 = select i1 %tobool25.not, i32 1, i32 2
  %25 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parg, align 4
  %type = getelementptr %struct.av7110, ptr %3, i32 0, i32 30, i32 %26, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cond26, ptr %type, align 4
  %28 = load i32, ptr %parg, align 4
  %arrayidx32 = getelementptr %struct.av7110, ptr %3, i32 0, i32 30, i32 %28
  %29 = call ptr @memcpy(ptr %parg, ptr %arrayidx32, i32 12)
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %parg to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 16, ptr %parg, align 1
  %info34.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %parg, i32 4
  %31 = ptrtoint ptr %info34.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 1, ptr %info34.sroa.5.0..sroa_idx, align 1
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end7
  %32 = ptrtoint ptr %parg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %parg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %33)
  %cmp39 = icmp ugt i32 %33, 15
  br i1 %cmp39, label %sw.bb38.if.then42_crit_edge, label %lor.lhs.false40

sw.bb38.if.then42_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

lor.lhs.false40:                                  ; preds = %sw.bb38
  %parity = getelementptr inbounds %struct.ca_descr, ptr %parg, i32 0, i32 1
  %34 = ptrtoint ptr %parity to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %parity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp41 = icmp ugt i32 %35, 1
  br i1 %cmp41, label %lor.lhs.false40.if.then42_crit_edge, label %if.end44

lor.lhs.false40.if.then42_crit_edge:              ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then42

if.then42:                                        ; preds = %lor.lhs.false40.if.then42_crit_edge, %sw.bb38.if.then42_crit_edge
  tail call void @mutex_unlock(ptr noundef %ioctl_mutex) #6
  br label %cleanup82

if.end44:                                         ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw nsw i32 %33, 8
  %or47 = or i32 %35, %shl
  %cw = getelementptr inbounds %struct.ca_descr, ptr %parg, i32 0, i32 2
  %36 = ptrtoint ptr %cw to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %cw, align 4
  %conv = zext i8 %37 to i32
  %shl49 = shl nuw nsw i32 %conv, 8
  %arrayidx51 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx51, align 1
  %conv52 = zext i8 %39 to i32
  %or53 = or i32 %shl49, %conv52
  %arrayidx55 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 2
  %40 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx55, align 2
  %conv56 = zext i8 %41 to i32
  %shl57 = shl nuw nsw i32 %conv56, 8
  %arrayidx59 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 3
  %42 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx59, align 1
  %conv60 = zext i8 %43 to i32
  %or61 = or i32 %shl57, %conv60
  %arrayidx63 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx63, align 4
  %conv64 = zext i8 %45 to i32
  %shl65 = shl nuw nsw i32 %conv64, 8
  %arrayidx67 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 5
  %46 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %47 to i32
  %or69 = or i32 %shl65, %conv68
  %arrayidx71 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 6
  %48 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx71, align 2
  %conv72 = zext i8 %49 to i32
  %shl73 = shl nuw nsw i32 %conv72, 8
  %arrayidx75 = getelementptr %struct.ca_descr, ptr %parg, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %51 to i32
  %or77 = or i32 %shl73, %conv76
  %call78 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %3, i32 noundef 1, i32 noundef 10, i32 noundef 5, i32 noundef %or47, i32 noundef %or53, i32 noundef %or61, i32 noundef %or69, i32 noundef %or77) #6
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end44, %sw.bb33, %if.end17, %sw.bb9, %ci_ll_reset.exit, %if.end7.sw.epilog_crit_edge, %if.end7.sw.epilog_crit_edge126
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %sw.bb33 ], [ 0, %if.end7.sw.epilog_crit_edge ], [ 0, %if.end7.sw.epilog_crit_edge126 ], [ 0, %sw.bb9 ], [ %retval.0.i, %ci_ll_reset.exit ], [ 0, %if.end17 ], [ 0, %if.end44 ]
  call void @mutex_unlock(ptr noundef %ioctl_mutex) #6
  br label %cleanup82

cleanup82:                                        ; preds = %sw.epilog, %if.then42, %if.then15, %do.end3.cleanup82_crit_edge
  %retval.2 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %if.then42 ], [ -22, %if.then15 ], [ -512, %do.end3.cleanup82_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ci_rbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75
  %5 = ptrtoint ptr %ci_rbuffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_rbuffer, align 4
  %tobool.not.i = icmp eq ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool1.not.i = icmp eq i32 %count, 0
  %or.cond.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i, label %do.end3.ci_ll_read.exit_crit_edge, label %if.end.i

do.end3.ci_ll_read.exit_crit_edge:                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_read.exit

if.end.i:                                         ; preds = %do.end3
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %7 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %call.i = tail call i32 @dvb_ringbuffer_empty(ptr noundef %ci_rbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %land.lhs.true.i.ci_ll_read.exit_crit_edge

land.lhs.true.i.ci_ll_read.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_read.exit

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 184) #6
  %call9.i = tail call i32 @dvb_ringbuffer_empty(ptr noundef %ci_rbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end5.i.if.end26.i_crit_edge, label %if.then11.i

if.end5.i.if.end26.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %9 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %queue.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75, i32 5
  %call1315.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %call1416.i = call i32 @dvb_ringbuffer_empty(ptr noundef %ci_rbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1416.i)
  %tobool15.not17.i = icmp eq i32 %call1416.i, 0
  br i1 %tobool15.not17.i, label %if.then11.i.if.end22.thread11.i_crit_edge, label %if.then11.i.if.end17.i_crit_edge

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  br label %if.end17.i

if.then11.i.if.end22.thread11.i_crit_edge:        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.thread11.i

if.end17.i:                                       ; preds = %cleanup.i.if.end17.i_crit_edge, %if.then11.i.if.end17.i_crit_edge
  %call1318.i = phi i32 [ %call13.i, %cleanup.i.if.end17.i_crit_edge ], [ %call1315.i, %if.then11.i.if.end17.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1318.i)
  %tobool18.not.i = icmp eq i32 %call1318.i, 0
  br i1 %tobool18.not.i, label %cleanup.i, label %if.end22.i

cleanup.i:                                        ; preds = %if.end17.i
  call void @schedule() #6
  %call13.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %call14.i = call i32 @dvb_ringbuffer_empty(ptr noundef %ci_rbuffer) #6
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %cleanup.i.if.end22.thread11.i_crit_edge, label %cleanup.i.if.end17.i_crit_edge

cleanup.i.if.end17.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

cleanup.i.if.end22.thread11.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.thread11.i

if.end22.thread11.i:                              ; preds = %cleanup.i.if.end22.thread11.i_crit_edge, %if.then11.i.if.end22.thread11.i_crit_edge
  call void @finish_wait(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %if.end26.i

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %ci_ll_read.exit

if.end26.i:                                       ; preds = %if.end22.thread11.i, %if.end5.i.if.end26.i_crit_edge
  %call27.i = call i32 @dvb_ringbuffer_avail(ptr noundef %ci_rbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call27.i)
  %cmp.i = icmp slt i32 %call27.i, 4
  br i1 %cmp.i, label %if.end26.i.ci_ll_read.exit_crit_edge, label %if.end29.i

if.end26.i.ci_ll_read.exit_crit_edge:             ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_read.exit

if.end29.i:                                       ; preds = %if.end26.i
  %10 = ptrtoint ptr %ci_rbuffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ci_rbuffer, align 4
  %pread.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75, i32 2
  %12 = ptrtoint ptr %pread.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pread.i, align 4
  %size.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75, i32 1
  %14 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size.i, align 4
  %rem.i = srem i32 %13, %15
  %arrayidx.i = getelementptr i8, ptr %11, i32 %rem.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %17 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %add33.i = add i32 %13, 1
  %rem35.i = srem i32 %add33.i, %15
  %arrayidx36.i = getelementptr i8, ptr %11, i32 %rem35.i
  %18 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %19 to i32
  %or.i = or i32 %shl.i, %conv37.i
  %add38.i = add nuw nsw i32 %or.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call27.i, i32 %add38.i)
  %cmp39.i = icmp slt i32 %call27.i, %add38.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %count)
  %cmp42.i = icmp ugt i32 %or.i, %count
  %or.cond1.i = or i1 %cmp42.i, %cmp39.i
  br i1 %or.cond1.i, label %if.end29.i.ci_ll_read.exit_crit_edge, label %if.end45.i

if.end29.i.ci_ll_read.exit_crit_edge:             ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_read.exit

if.end45.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %add47.i = add i32 %13, 2
  %rem49.i = srem i32 %add47.i, %15
  %20 = ptrtoint ptr %pread.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %rem49.i, ptr %pread.i, align 4
  %call51.i = call i32 @dvb_ringbuffer_read_user(ptr noundef %ci_rbuffer, ptr noundef %buf, i32 noundef %or.i) #6
  br label %ci_ll_read.exit

ci_ll_read.exit:                                  ; preds = %if.end45.i, %if.end29.i.ci_ll_read.exit_crit_edge, %if.end26.i.ci_ll_read.exit_crit_edge, %if.end22.i, %land.lhs.true.i.ci_ll_read.exit_crit_edge, %do.end3.ci_ll_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call51.i, %if.end45.i ], [ 0, %do.end3.ci_ll_read.exit_crit_edge ], [ -11, %land.lhs.true.i.ci_ll_read.exit_crit_edge ], [ -512, %if.end22.i ], [ 0, %if.end26.i.ci_ll_read.exit_crit_edge ], [ -22, %if.end29.i.ci_ll_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef %3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76
  %f_flags.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags.i, align 4
  %and.i = and i32 %6, 2048
  %call.i = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #6
  %7 = inttoptr i32 %call.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end3.ci_ll_write.exit_crit_edge, label %if.end.i

do.end3.ci_ll_write.exit_crit_edge:               ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_ll_write.exit

if.end.i:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %count)
  %cmp.i = icmp ugt i32 %count, 2048
  br i1 %cmp.i, label %if.end.i.out.i_crit_edge, label %if.then.i.i.i.i

if.end.i.out.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %if.end.i
  tail call void @__check_object_size(ptr noundef nonnull %7, i32 noundef %count, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.7, i32 noundef 156) #6
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #11, !srcloc !47
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !48

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %7, i32 noundef %count) #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !37) #6
  %and.i.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !49
  %and.i.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %call1.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %7, ptr noundef %buf, i32 noundef %count) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %count, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %count, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6.i, label %if.then11.i.i.i, !prof !48

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = sub i32 %count, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %sub.i.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %out.i

if.end6.i:                                        ; preds = %if.end.i.i.i
  %call7.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  %add.i = add nuw nsw i32 %count, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call7.i)
  %cmp8.i = icmp ugt i32 %add.i, %call7.i
  br i1 %cmp8.i, label %if.then9.i, label %if.end6.i.if.end36.i_crit_edge

if.end6.i.if.end36.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then9.i.out.i_crit_edge

if.then9.i.out.i_crit_edge:                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.end12.i:                                       ; preds = %if.then9.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 159) #6
  %call16.i = tail call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call16.i, i32 %add.i)
  %cmp18.not.i = icmp ult i32 %call16.i, %add.i
  br i1 %cmp18.not.i, label %if.then19.i, label %if.end12.i.if.end36.i_crit_edge

if.end12.i.if.end36.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.i

if.then19.i:                                      ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  %13 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #6
  %queue.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76, i32 5
  %call2116.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %call2217.i = call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call2217.i, i32 %add.i)
  %cmp24.not18.i = icmp ult i32 %call2217.i, %add.i
  br i1 %cmp24.not18.i, label %if.then19.i.if.end26.i_crit_edge, label %if.then19.i.if.end31.thread12.i_crit_edge

if.then19.i.if.end31.thread12.i_crit_edge:        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.thread12.i

if.then19.i.if.end26.i_crit_edge:                 ; preds = %if.then19.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %cleanup.i.if.end26.i_crit_edge, %if.then19.i.if.end26.i_crit_edge
  %call2119.i = phi i32 [ %call21.i, %cleanup.i.if.end26.i_crit_edge ], [ %call2116.i, %if.then19.i.if.end26.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2119.i)
  %tobool27.not.i = icmp eq i32 %call2119.i, 0
  br i1 %tobool27.not.i, label %cleanup.i, label %if.end31.i

cleanup.i:                                        ; preds = %if.end26.i
  call void @schedule() #6
  %call21.i = call i32 @prepare_to_wait_event(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #6
  %call22.i = call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  %cmp24.not.i = icmp ult i32 %call22.i, %add.i
  br i1 %cmp24.not.i, label %cleanup.i.if.end26.i_crit_edge, label %cleanup.i.if.end31.thread12.i_crit_edge

cleanup.i.if.end31.thread12.i_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.thread12.i

cleanup.i.if.end26.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end31.thread12.i:                              ; preds = %cleanup.i.if.end31.thread12.i_crit_edge, %if.then19.i.if.end31.thread12.i_crit_edge
  call void @finish_wait(ptr noundef %queue.i, ptr noundef nonnull %__wq_entry.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %if.end36.i

if.end31.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #6
  br label %out.i

if.end36.i:                                       ; preds = %if.end31.thread12.i, %if.end12.i.if.end36.i_crit_edge, %if.end6.i.if.end36.i_crit_edge
  %shr.i = lshr i32 %count, 8
  %conv.i = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %ci_wbuffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_wbuffer, align 4
  %pwrite.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76, i32 3
  %16 = ptrtoint ptr %pwrite.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pwrite.i, align 4
  %arrayidx.i = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %19 = load i32, ptr %pwrite.i, align 4
  %add38.i = add i32 %19, 1
  %size.i = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76, i32 1
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  %rem.i = srem i32 %add38.i, %21
  store i32 %rem.i, ptr %pwrite.i, align 4
  %conv41.i = trunc i32 %count to i8
  %22 = load ptr, ptr %ci_wbuffer, align 4
  %arrayidx44.i = getelementptr i8, ptr %22, i32 %rem.i
  %23 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv41.i, ptr %arrayidx44.i, align 1
  %24 = load i32, ptr %pwrite.i, align 4
  %add46.i = add i32 %24, 1
  %25 = load i32, ptr %size.i, align 4
  %rem48.i = srem i32 %add46.i, %25
  store i32 %rem48.i, ptr %pwrite.i, align 4
  %call50.i = call i32 @dvb_ringbuffer_write(ptr noundef %ci_wbuffer, ptr noundef nonnull %7, i32 noundef %count) #6
  br label %out.i

out.i:                                            ; preds = %if.end36.i, %if.end31.i, %if.then9.i.out.i_crit_edge, %if.then11.i.i.i, %if.end.i.out.i_crit_edge
  %res.0.i = phi i32 [ -22, %if.end.i.out.i_crit_edge ], [ -11, %if.then9.i.out.i_crit_edge ], [ -512, %if.end31.i ], [ %call50.i, %if.end36.i ], [ -14, %if.then11.i.i.i ]
  call void @free_pages(i32 noundef %call.i, i32 noundef 0) #6
  br label %ci_ll_write.exit

ci_ll_write.exit:                                 ; preds = %out.i, %do.end3.ci_ll_write.exit_crit_edge
  %retval.0.i = phi i32 [ %res.0.i, %out.i ], [ -12, %do.end3.ci_ll_write.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef %3) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %queue = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75, i32 5
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %do.end3.poll_wait.exit28_crit_edge, label %land.lhs.true.i

do.end3.poll_wait.exit28_crit_edge:               ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit28

land.lhs.true.i:                                  ; preds = %do.end3
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i26_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i26_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i26

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %6(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #6
  br label %land.lhs.true.i26

land.lhs.true.i26:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i26_crit_edge
  %queue429 = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76, i32 5
  %7 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wait, align 4
  %tobool1.not.i23 = icmp eq ptr %8, null
  %tobool3.not.i24 = icmp eq ptr %queue429, null
  %or.cond.i25 = or i1 %tobool3.not.i24, %tobool1.not.i23
  br i1 %or.cond.i25, label %land.lhs.true.i26.poll_wait.exit28_crit_edge, label %if.then.i27

land.lhs.true.i26.poll_wait.exit28_crit_edge:     ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %poll_wait.exit28

if.then.i27:                                      ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %8(ptr noundef %file, ptr noundef nonnull %queue429, ptr noundef nonnull %wait) #6
  br label %poll_wait.exit28

poll_wait.exit28:                                 ; preds = %if.then.i27, %land.lhs.true.i26.poll_wait.exit28_crit_edge, %do.end3.poll_wait.exit28_crit_edge
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76
  %ci_rbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75
  %call5 = tail call i32 @dvb_ringbuffer_empty(ptr noundef %ci_rbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %spec.select = select i1 %tobool6.not, i32 65, i32 0
  %call9 = tail call i32 @dvb_ringbuffer_free(ptr noundef %ci_wbuffer) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call9)
  %cmp = icmp sgt i32 %call9, 1024
  %or11 = or i32 %spec.select, 260
  %mask.1 = select i1 %cmp, i32 %or11, i32 %spec.select
  ret i32 %mask.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_ca_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %priv = getelementptr inbounds %struct.dvb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %call = tail call i32 @dvb_generic_open(ptr noundef %inode, ptr noundef %file) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %4 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef %3) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  %ci_rbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 75
  %ci_wbuffer = getelementptr inbounds %struct.av7110, ptr %3, i32 0, i32 76
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %ci_rbuffer) #6
  tail call void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef %ci_wbuffer) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %do.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_release(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_empty(ptr noundef) local_unnamed_addr #2

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
declare dso_local i32 @dvb_ringbuffer_avail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ringbuffer_read_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_generic_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_flush_spinlock_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ringbuffer_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 29, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @CI_handle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @CI_handle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @dvbdev_ca, !7, !"dvbdev_ca", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 352, i32 26}
!8 = !{ptr @dvb_ca_fops, !9, !"dvb_ca_fops", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 341, i32 37}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 337, i32 2}
!12 = !{ptr @dvb_ca_read._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dvb_ca_read._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 327, i32 2}
!16 = !{ptr @dvb_ca_write._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dvb_ca_write._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 220, i32 2}
!27 = !{ptr @dvb_ca_poll._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @dvb_ca_poll._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 204, i32 2}
!31 = !{ptr @dvb_ca_open._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @dvb_ca_open._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/av7110/av7110_ca.c", i32 241, i32 2}
!35 = !{ptr @dvb_ca_ioctl._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @dvb_ca_ioctl._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2152179275, i64 2152179300}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 4674830}
!50 = !{i64 4675027}
!51 = !{i64 2152160260}
