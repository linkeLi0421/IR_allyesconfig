; ModuleID = '/llk/IR_all_yes/drivers/media/pci/solo6x10/solo6x10-g723.c_pt.bc'
source_filename = "../drivers/media/pci/solo6x10/solo6x10-g723.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, i32 }
%union.anon.114 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.solo_dev = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.v4l2_device, %struct.gpio_chip, i8, i8, i8, i8, [2 x %struct.i2c_adapter], i32, %struct.mutex, i32, %struct.wait_queue_head, ptr, i32, i32, [4 x %struct.solo_p2m_dev], %struct.atomic_t, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, %struct.v4l2_ctrl_handler, [16 x ptr], i16, i8, i32, i16, i16, i16, i16, i16, i16, i8, %struct.spinlock, [2 x i32], ptr, ptr, %struct.atomic_t, i32, %struct.device, i32, %struct.bin_attribute, i32, ptr, %struct.wait_queue_head, ptr, i32, i32, %struct.vb2_queue, i32, ptr, %struct.mutex, %struct.spinlock, i32, %struct.list_head }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.97 = type { ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.solo_p2m_dev = type { %struct.mutex, %struct.completion, i32, i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.83 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.80], %struct.media_entity_enum, i32 }
%struct.anon.80 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.98, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.98 = type { %struct.anon.101, [40 x i8] }
%struct.anon.101 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.107, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.107 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.102, [128 x i8] }
%union.anon.102 = type { %union.anon.104 }
%union.anon.104 = type { [64 x i64] }
%struct.solo_snd_pcm = type { i32, %struct.spinlock, ptr, ptr, i32 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@solo_g723_init.ops = internal global { %struct.snd_device_ops, [20 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Softlogic%d\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"solo6x10\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SOLO-6x10 Audio\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s on %s IRQ %d\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SOLO-6x10\00", [22 x i8] zeroinitializer }, align 32
@snd_solo_capture_volume = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_solo_capture_volume_info, ptr @snd_solo_capture_volume_get, ptr @snd_solo_capture_volume_put, %union.anon.114 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@solo_g723_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 401, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Alsa sound card as %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"solo_g723_init\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/pci/solo6x10/solo6x10-g723.c\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@solo_g723_init._entry_ptr = internal global ptr @solo_g723_init._entry, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@snd_solo_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_solo_pcm_open, ptr @snd_solo_pcm_close, ptr null, ptr null, ptr null, ptr @snd_solo_pcm_prepare, ptr @snd_solo_pcm_trigger, ptr null, ptr @snd_solo_pcm_pointer, ptr null, ptr null, ptr @snd_solo_pcm_copy_user, ptr @snd_solo_pcm_copy_kernel, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Camera #%d Audio\00", [47 x i8] zeroinitializer }, align 32
@snd_solo_pcm_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&solo_pcm->lock\00", [16 x i8] zeroinitializer }, align 32
@snd_solo_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65795, i64 2, i32 2, i32 8000, i32 8000, i32 1, i32 1, i32 1536, i32 48, i32 48, i32 32, i32 32, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 354, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 363, i32 16 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 373, i32 24 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 374, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 375, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 383, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"snd_solo_capture_volume\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 309, i32 38 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 401, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 311, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"snd_solo_pcm_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 260, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 339, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 134, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"snd_solo_pcm_hw\00", align 1
@___asan_gen_.71 = private constant [46 x i8] c"../drivers/media/pci/solo6x10/solo6x10-g723.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 100, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @solo_g723_init._entry, ptr @solo_g723_init._entry_ptr, ptr @solo_g723_init.ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_solo_capture_volume, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_solo_pcm_ops, ptr @.str.11, ptr @snd_solo_pcm_open.__key, ptr @.str.12, ptr @snd_solo_pcm_hw, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_g723_init.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_solo_capture_volume to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @solo_g723_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_solo_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_solo_pcm_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_solo_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_g723_isr(ptr noundef readonly %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_pcm = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 48
  %0 = ptrtoint ptr %snd_pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_pcm, align 4
  %substream = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %ss.015 = load ptr, ptr %substream, align 4
  %cmp.not16 = icmp eq ptr %ss.015, null
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ss.017 = phi ptr [ %ss.0, %for.inc.for.body_crit_edge ], [ %ss.015, %entry.for.body_crit_edge ]
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.017, i32 0, i32 2
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  %cmp1 = icmp eq ptr %4, null
  %cmp3 = icmp eq ptr %4, %solo_dev
  %or.cond = or i1 %cmp1, %cmp3
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end5.for.inc_crit_edge, label %if.end8

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %ss.017) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.017, i32 0, i32 15
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %ss.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %ss.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @solo_g723_init(ptr noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %kctl = alloca %struct.snd_kcontrol_new, align 4
  %name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %kctl) #10
  %0 = call ptr @memset(ptr %kctl, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #10
  %snd_users = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 49
  %1 = call ptr @memset(ptr %name, i32 255, i32 32)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_users, i32 noundef 4) #10
  %2 = ptrtoint ptr %snd_users to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %snd_users, align 4
  %vfd = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 28
  %3 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vfd, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %num, align 4
  %conv = zext i16 %6 to i32
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str, i32 noundef %conv)
  %7 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %solo_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %snd_card = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 47
  %call2 = call i32 @snd_card_new(ptr noundef %dev, i32 noundef -1, ptr noundef nonnull %name, ptr noundef null, i32 noundef 0, ptr noundef %snd_card) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %snd_card, align 8
  %driver = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 2
  %call6 = call i32 @strscpy(ptr noundef %driver, ptr noundef nonnull @.str.1, i32 noundef 16) #10
  %shortname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 3
  %call8 = call i32 @strscpy(ptr noundef %shortname, ptr noundef nonnull @.str.2, i32 noundef 32) #10
  %longname = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %solo_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.end.pci_name.exit_crit_edge ]
  %irq = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, ptr noundef %retval.0.i.i, i32 noundef %18)
  %call16 = call i32 @snd_device_new(ptr noundef %10, i32 noundef 0, ptr noundef %solo_dev, ptr noundef nonnull @solo_g723_init.ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %pci_name.exit.snd_error_crit_edge, label %if.end20

pci_name.exit.snd_error_crit_edge:                ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_error

if.end20:                                         ; preds = %pci_name.exit
  %mixername = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 6
  %call22 = call i32 @strscpy(ptr noundef %mixername, ptr noundef nonnull @.str.4, i32 noundef 80) #10
  %19 = call ptr @memcpy(ptr %kctl, ptr @snd_solo_capture_volume, i32 48)
  %nr_chans = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 6
  %20 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_chans, align 8
  %count = getelementptr inbounds %struct.snd_kcontrol_new, ptr %kctl, i32 0, i32 6
  %22 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %count, align 4
  %call23 = call ptr @snd_ctl_new1(ptr noundef nonnull %kctl, ptr noundef %solo_dev) #10
  %call24 = call i32 @snd_ctl_add(ptr noundef %10, ptr noundef %call23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end20.snd_error_crit_edge, label %if.end28

if.end20.snd_error_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_error

if.end28:                                         ; preds = %if.end20
  %23 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %snd_card, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #10
  %25 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !49
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 2
  %26 = ptrtoint ptr %nr_chans to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_chans, align 8
  %call.i = call i32 @snd_pcm_new(ptr noundef %24, ptr noundef %driver.i, i32 noundef 0, i32 noundef 0, i32 noundef %27, ptr noundef nonnull %pcm.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %solo_snd_pcm_init.exit.thread, label %if.end.i

solo_snd_pcm_init.exit.thread:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  br label %snd_error

if.end.i:                                         ; preds = %if.end28
  %28 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcm.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @snd_solo_pcm_ops) #10
  %30 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %solo_dev, ptr %private_data.i, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 3
  %33 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %31, i32 0, i32 7
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 3
  %call3.i = call i32 @strscpy(ptr noundef %name.i, ptr noundef %shortname.i, i32 noundef 80) #10
  %34 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcm.i, align 4
  %substream.i = getelementptr %struct.snd_pcm, ptr %35, i32 0, i32 8, i32 1, i32 4
  %36 = ptrtoint ptr %substream.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %ss.021.i = load ptr, ptr %substream.i, align 4
  %tobool.not22.i = icmp eq ptr %ss.021.i, null
  br i1 %tobool.not22.i, label %if.end.i.if.end33_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %ss.024.i = phi ptr [ %ss.0.i, %for.body.i.for.body.i_crit_edge ], [ %ss.021.i, %if.end.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %name4.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.024.i, i32 0, i32 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name4.i, ptr noundef nonnull @.str.11, i32 noundef %i.023.i) #10
  %next.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss.024.i, i32 0, i32 15
  %inc.i = add i32 %i.023.i, 1
  %37 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %ss.0.i = load ptr, ptr %next.i, align 4
  %tobool.not.i = icmp eq ptr %ss.0.i, null
  br i1 %tobool.not.i, label %for.body.i.if.end33_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.if.end33_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.end33:                                         ; preds = %for.body.i.if.end33_crit_edge, %if.end.i.if.end33_crit_edge
  %38 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcm.i, align 4
  %call7.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %39, i32 noundef 1, ptr noundef null, i32 noundef 1536, i32 noundef 1536) #10
  %40 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcm.i, align 4
  %snd_pcm.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 48
  %42 = ptrtoint ptr %snd_pcm.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %snd_pcm.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #10
  %call34 = call i32 @snd_card_register(ptr noundef %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.snd_error_crit_edge, label %if.end38

if.end33.snd_error_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %snd_error

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @solo_g723_config(ptr noundef %solo_dev)
  %43 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %solo_dev, align 8
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev40, ptr noundef nonnull @.str.5, ptr noundef nonnull %name) #13
  br label %cleanup

snd_error:                                        ; preds = %if.end33.snd_error_crit_edge, %solo_snd_pcm_init.exit.thread, %if.end20.snd_error_crit_edge, %pci_name.exit.snd_error_crit_edge
  %ret.0 = phi i32 [ %call16, %pci_name.exit.snd_error_crit_edge ], [ %call24, %if.end20.snd_error_crit_edge ], [ %call34, %if.end33.snd_error_crit_edge ], [ %call.i, %solo_snd_pcm_init.exit.thread ]
  %call42 = call i32 @snd_card_free(ptr noundef %10) #10
  br label %cleanup

cleanup:                                          ; preds = %snd_error, %if.end38, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %snd_error ], [ 0, %if.end38 ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %kctl) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @solo_g723_config(ptr nocapture noundef readonly %solo_dev) unnamed_addr #0 align 64 {
entry:
  %val.i13 = alloca i16, align 2
  %val.i9 = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %clock_mhz = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 4
  %0 = ptrtoint ptr %clock_mhz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clock_mhz, align 8
  %mul = mul i32 %1, 1000000
  %div = udiv i32 %mul, 800000
  %or = or i32 %div, 1638400
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #10, !srcloc !51
  %6 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 6, ptr noundef nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %type = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  %or4 = select i1 %cmp, i32 786544, i32 786576
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i9) #10
  %10 = ptrtoint ptr %val.i9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i9, align 2, !annotation !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  call void @arm_heavy_mb() #10
  %11 = call i32 @llvm.bswap.i32(i32 %or4) #10
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 3336
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %11) #10, !srcloc !51
  %14 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %solo_dev, align 8
  %call.i12 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i9) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i9) #10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i13) #10
  %16 = ptrtoint ptr %val.i13 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %val.i13, align 2, !annotation !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  call void @arm_heavy_mb() #10
  %17 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %18, i32 3328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 196771) #10, !srcloc !51
  %19 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %solo_dev, align 8
  %call.i16 = call i32 @pci_read_config_word(ptr noundef %20, i32 noundef 6, ptr noundef nonnull %val.i13) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i13) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @solo_g723_exit(ptr nocapture noundef %solo_dev) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %snd_card = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 47
  %0 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd_card, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %val.i, align 2, !annotation !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 5
  %3 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !51
  %5 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %solo_dev, align 8
  %call.i = call i32 @pci_read_config_word(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #10
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %solo_dev, i32 0, i32 8
  %7 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_mask.i, align 8
  %and.i = and i32 %8, -9
  store i32 %and.i, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #10
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %val.i.i, align 2, !annotation !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  call void @arm_heavy_mb() #10
  %10 = call i32 @llvm.bswap.i32(i32 %and.i) #10
  %11 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #10, !srcloc !51
  %13 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %solo_dev, align 8
  %call.i.i = call i32 @pci_read_config_word(ptr noundef %14, i32 noundef 6, ptr noundef nonnull %val.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #10
  %15 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %snd_card, align 8
  %call = call i32 @snd_card_free(ptr noundef %16) #10
  %17 = ptrtoint ptr %snd_card to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %snd_card, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_solo_capture_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %info, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_capture_volume_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, -1
  %call = tail call zeroext i8 @tw28_get_audio_gain(ptr noundef %1, i8 noundef zeroext %conv) #10
  %conv1 = zext i8 %call to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %value2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %value2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_capture_volume_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %4 = trunc i32 %3 to i8
  %conv = add i8 %4, -1
  %call = tail call zeroext i8 @tw28_get_audio_gain(ptr noundef %1, i8 noundef zeroext %conv) #10
  %conv1 = zext i8 %call to i32
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %5 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv1)
  %cmp = icmp eq i32 %6, %conv1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = trunc i32 %6 to i8
  tail call void @tw28_set_audio_gain(ptr noundef %1, i8 noundef zeroext %conv, i8 noundef zeroext %conv6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @tw28_get_audio_gain(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw28_set_audio_gain(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_open(ptr nocapture noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 60) #14
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.oom_crit_edge, label %if.end

entry.oom_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %oom

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %g723_dma = getelementptr inbounds %struct.solo_snd_pcm, ptr %call7.i.i, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 48, ptr noundef %g723_dma, i32 noundef 3264, i32 noundef 0) #10
  %g723_buf = getelementptr inbounds %struct.solo_snd_pcm, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %g723_buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %g723_buf, align 4
  %cmp3 = icmp eq ptr %call.i, null
  br i1 %cmp3, label %if.end.oom_crit_edge, label %do.body

if.end.oom_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %oom

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.solo_snd_pcm, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @snd_solo_pcm_open.__key, i16 noundef signext 3) #10
  %solo_dev7 = getelementptr inbounds %struct.solo_snd_pcm, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %solo_dev7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %solo_dev7, align 8
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 11
  %7 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %runtime, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %8, i32 0, i32 46
  %9 = call ptr @memcpy(ptr %hw, ptr @snd_solo_pcm_hw, i32 64)
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

oom:                                              ; preds = %if.end.oom_crit_edge, %entry.oom_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %oom, %do.body
  %retval.0 = phi i32 [ -12, %oom ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_close(ptr nocapture noundef %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %solo_dev = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %solo_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %solo_dev, align 4
  store ptr %3, ptr %private_data, align 4
  %4 = load ptr, ptr %solo_dev, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %g723_buf = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %g723_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %g723_buf, align 4
  %g723_dma = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %g723_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %g723_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 48, ptr noundef %8, i32 noundef %10, i32 noundef 0) #10
  tail call void @kfree(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_solo_pcm_prepare(ptr nocapture noundef readnone %ss) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_trigger(ptr nocapture noundef readonly %ss, i32 noundef %cmd) #0 align 64 {
entry:
  %val.i.i29 = alloca i16, align 2
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %solo_dev1 = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %solo_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %solo_dev1, align 4
  %lock = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %snd_users = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 49
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_users, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %snd_users, i32 1, i32 3, i32 1) #10
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %snd_users, ptr %snd_users, i32 1, ptr elementtype(i32) %snd_users) #10, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp2 = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp2, label %if.then3, label %if.then.sw.epilog.sink.split_crit_edge

if.then.sw.epilog.sink.split_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %irq_mask.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq_mask.i, align 8
  %or.i = or i32 %9, 8
  store i32 %or.i, ptr %irq_mask.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #10
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %val.i.i, align 2, !annotation !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %reg_base.i.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #10, !srcloc !51
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call.i.i28 = call i32 @pci_read_config_word(ptr noundef %15, i32 noundef 6, ptr noundef nonnull %val.i.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #10
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %sw.bb6.sw.epilog_crit_edge, label %if.then8

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb6
  %snd_users9 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 49
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %snd_users9, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %snd_users9, i32 1, i32 3, i32 1) #10
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %snd_users9, ptr %snd_users9, i32 1, ptr elementtype(i32) %snd_users9) #10, !srcloc !56
  %asmresult.i.i.i.i27 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i27)
  %cmp11 = icmp eq i32 %asmresult.i.i.i.i27, 0
  br i1 %cmp11, label %if.then12, label %if.then8.sw.epilog.sink.split_crit_edge

if.then8.sw.epilog.sink.split_crit_edge:          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %irq_mask.i30 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %irq_mask.i30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_mask.i30, align 8
  %and.i = and i32 %20, -9
  store i32 %and.i, ptr %irq_mask.i30, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i29) #10
  %21 = ptrtoint ptr %val.i.i29 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %val.i.i29, align 2, !annotation !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %reg_base.i.i31 = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %reg_base.i.i31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base.i.i31, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32, i32 %22) #10, !srcloc !51
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 8
  %call.i.i33 = call i32 @pci_read_config_word(ptr noundef %26, i32 noundef 6, ptr noundef nonnull %val.i.i29) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i29) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then12, %if.then8.sw.epilog.sink.split_crit_edge, %if.then3, %if.then.sw.epilog.sink.split_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cmd, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb6.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_pointer(ptr nocapture noundef readonly %ss) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %solo_dev1 = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %solo_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %solo_dev1, align 4
  %reg_base.i = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 3348
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !58
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %and = and i32 %7, 31
  %mul = mul nuw nsw i32 %and, 48
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_copy_user(ptr nocapture noundef readonly %ss, i32 noundef %channel, i32 noundef %pos, ptr noundef %dst, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %solo_dev1 = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %solo_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %solo_dev1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %count)
  %4 = icmp ult i32 %count, 48
  br i1 %4, label %entry.cleanup14_crit_edge, label %for.body.lr.ph

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i32 %count, 48
  %div2 = udiv i32 %pos, 48
  %g723_dma = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 1
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %g723_buf = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %dst.addr.033 = phi ptr [ %dst, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.034, %div2
  %5 = ptrtoint ptr %g723_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %g723_dma, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  %add5 = select i1 %cmp3, i32 7340032, i32 9437184
  %mul6 = shl i32 %add, 10
  %add7 = add i32 %add5, %mul6
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %mul8 = mul i32 %10, 48
  %add9 = add i32 %add7, %mul8
  %call = tail call i32 @solo_p2m_dma_t(ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %add9, i32 noundef 48, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup14_crit_edge

for.body.cleanup14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end:                                           ; preds = %for.body
  %11 = ptrtoint ptr %g723_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g723_buf, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.end.cleanup14_crit_edge, label %if.end.i.i

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

if.end.i.i:                                       ; preds = %if.end
  %13 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dst.addr.033, i32 48, i32 -1226833920) #15, !srcloc !60
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup14_crit_edge

if.end.i.i.cleanup14_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef 48) #10
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dst.addr.033, ptr noundef %12, i32 noundef 48) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool11.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool11.not, label %for.inc, label %copy_to_user.exit.cleanup14_crit_edge

copy_to_user.exit.cleanup14_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

for.inc:                                          ; preds = %copy_to_user.exit
  %add.ptr = getelementptr i8, ptr %dst.addr.033, i32 48
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.cleanup14_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup14_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup14

cleanup14:                                        ; preds = %for.inc.cleanup14_crit_edge, %copy_to_user.exit.cleanup14_crit_edge, %if.end.i.i.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %for.body.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup14_crit_edge ], [ 0, %for.inc.cleanup14_crit_edge ], [ %call, %for.body.cleanup14_crit_edge ], [ -14, %copy_to_user.exit.cleanup14_crit_edge ], [ -14, %if.end.cleanup14_crit_edge ], [ -14, %if.end.i.i.cleanup14_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_solo_pcm_copy_kernel(ptr nocapture noundef readonly %ss, i32 noundef %channel, i32 noundef %pos, ptr nocapture noundef writeonly %dst, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %solo_dev1 = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %solo_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %solo_dev1, align 4
  %div2 = udiv i32 %pos, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %count)
  %4 = icmp ult i32 %count, 48
  br i1 %4, label %entry.cleanup10_crit_edge, label %for.body.lr.ph

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.body.lr.ph:                                   ; preds = %entry
  %div = udiv i32 %count, 48
  %g723_dma = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.solo_dev, ptr %3, i32 0, i32 1
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %ss, i32 0, i32 3
  %g723_buf = getelementptr inbounds %struct.solo_snd_pcm, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %dst.addr.028 = phi ptr [ %dst, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.029, %div2
  %5 = ptrtoint ptr %g723_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %g723_dma, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3 = icmp eq i32 %8, 0
  %add5 = select i1 %cmp3, i32 7340032, i32 9437184
  %mul6 = shl i32 %add, 10
  %add7 = add i32 %add5, %mul6
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %mul8 = mul i32 %10, 48
  %add9 = add i32 %add7, %mul8
  %call = tail call i32 @solo_p2m_dma_t(ptr noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %add9, i32 noundef 48, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup10_crit_edge

for.body.cleanup10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

for.inc:                                          ; preds = %for.body
  %11 = ptrtoint ptr %g723_buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g723_buf, align 4
  %13 = call ptr @memcpy(ptr %dst.addr.028, ptr %12, i32 48)
  %add.ptr = getelementptr i8, ptr %dst.addr.028, i32 48
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.cleanup10_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup10

cleanup10:                                        ; preds = %for.inc.cleanup10_crit_edge, %for.body.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup10_crit_edge ], [ %call, %for.body.cleanup10_crit_edge ], [ 0, %for.inc.cleanup10_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @solo_p2m_dma_t(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !31, !33, !35, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @solo_g723_init.ops, !1, !"ops", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 354, i32 31}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 363, i32 16}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 373, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 374, i32 27}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 375, i32 26}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 383, i32 27}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 401, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @solo_g723_init._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @solo_g723_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 311, i32 10}
!22 = !{ptr @snd_solo_capture_volume, !23, !"snd_solo_capture_volume", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 309, i32 38}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 339, i32 21}
!26 = !{ptr @snd_solo_pcm_ops, !27, !"snd_solo_pcm_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 260, i32 33}
!28 = !{ptr @snd_solo_pcm_open.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 134, i32 2}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @snd_solo_pcm_hw, !32, !"snd_solo_pcm_hw", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/solo6x10/solo6x10-g723.c", i32 100, i32 38}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!35 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{i64 2156940667}
!51 = !{i64 6682183}
!52 = !{i64 2148303790}
!53 = !{i64 2148219099, i64 2148219131, i64 2148219160, i64 2148219194, i64 2148219225, i64 2148219248}
!54 = !{i64 2148304019}
!55 = !{i64 2148306831}
!56 = !{i64 2148221564, i64 2148221596, i64 2148221625, i64 2148221659, i64 2148221690, i64 2148221713}
!57 = !{i64 2148307060}
!58 = !{i64 6682601}
!59 = !{i64 2156940276}
!60 = !{i64 2152182806, i64 2152182831}
