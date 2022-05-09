; ModuleID = '/llk/IR_all_yes/sound/pci/lola/lola_pcm.c_pt.bc'
source_filename = "../sound/pci/lola/lola_pcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lola_pcm = type { i32, ptr, [16 x %struct.lola_stream] }
%struct.lola_stream = type { i32, i32, i32, i8, ptr, ptr, i32, i32, i32, i32, i8 }
%struct.lola = type { ptr, ptr, [2 x %struct.lola_bar], i32, %struct.spinlock, %struct.mutex, %struct.lola_rb, %struct.lola_rb, i32, i32, i32, i32, i32, i32, ptr, i32, [2 x %struct.lola_pcm], i32, i32, [2 x %struct.lola_pin_array], %struct.lola_clock_widget, i32, i32, %struct.lola_mixer_widget, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.lola_bar = type { i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lola_rb = type { ptr, i32, i16, i16, i32 }
%struct.lola_pin_array = type { i32, i32, [16 x %struct.lola_pin] }
%struct.lola_pin = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lola_clock_widget = type { i32, i32, i32, i32, i8, [48 x %struct.lola_sample_clock], [48 x i32] }
%struct.lola_sample_clock = type { i32, i32, i32 }
%struct.lola_mixer_widget = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.68, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.68 = type { ptr }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Digigram Lola\00", [18 x i8] zeroinitializer }, align 32
@lola_pcm_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @lola_pcm_open, ptr @lola_pcm_close, ptr null, ptr @lola_pcm_hw_params, ptr @lola_pcm_hw_free, ptr @lola_pcm_prepare, ptr @lola_pcm_trigger, ptr null, ptr @lola_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@lola_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 17476, i32 8190, i32 8000, i32 192000, i32 1, i32 2, i32 1073741824, i32 128, i32 536870912, i32 2, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lola_sync_wait_for_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FIFO not ready (pending %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lola_sync_wait_for_fifo\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/pci/lola/lola_pcm.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lola_sync_wait_for_fifo._entry_ptr = internal global ptr @lola_sync_wait_for_fifo._entry, section ".printk_index", align 4
@lola_stream_wait_for_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"FIFO not ready (stream %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lola_stream_wait_for_fifo\00", [38 x i8] zeroinitializer }, align 32
@lola_stream_wait_for_fifo._entry_ptr = internal global ptr @lola_stream_wait_for_fifo._entry, section ".printk_index", align 4
@wait_for_srst_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SRST not clear (stream %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wait_for_srst_clear\00", [44 x i8] zeroinitializer }, align 32
@wait_for_srst_clear._entry_ptr = internal global ptr @wait_for_srst_clear._entry, section ".printk_index", align 4
@lola_setup_periods._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 363, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Too many BDL entries: buffer=%d, period=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lola_setup_periods\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@lola_setup_periods._entry_ptr = internal global ptr @lola_setup_periods._entry, section ".printk_index", align 4
@lola_set_stream_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 405, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot set stream format 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lola_set_stream_config\00", [41 x i8] zeroinitializer }, align 32
@lola_set_stream_config._entry_ptr = internal global ptr @lola_set_stream_config._entry, section ".printk_index", align 4
@lola_set_stream_config._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 417, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot set stream channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lola_set_stream_config._entry_ptr.17 = internal global ptr @lola_set_stream_config._entry.15, section ".printk_index", align 4
@lola_init_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 633, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't read wcaps for 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lola_init_stream\00", [47 x i8] zeroinitializer }, align 32
@lola_init_stream._entry_ptr = internal global ptr @lola_init_stream._entry, section ".printk_index", align 4
@lola_init_stream._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 641, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid wcaps 0x%x for 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@lola_init_stream._entry_ptr.22 = internal global ptr @lola_init_stream._entry.20, section ".printk_index", align 4
@lola_init_stream._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 651, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lola_init_stream._entry_ptr.24 = internal global ptr @lola_init_stream._entry.23, section ".printk_index", align 4
@lola_init_stream._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.19, ptr @.str.3, i32 661, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't read FORMATS 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@lola_init_stream._entry_ptr.27 = internal global ptr @lola_init_stream._entry.25, section ".printk_index", align 4
@lola_init_stream._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.19, ptr @.str.3, i32 669, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid formats 0x%x for 0x%x\00", [34 x i8] zeroinitializer }, align 32
@lola_init_stream._entry_ptr.30 = internal global ptr @lola_init_stream._entry.28, section ".printk_index", align 4
@switch.table.lola_pcm_prepare = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 512, i32 768, i32 4864], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 598, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"lola_pcm_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 575, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"lola_pcm_hw\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 187, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 146, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 108, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 93, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 362, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 404, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 416, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 633, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 639, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 649, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 661, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private constant [29 x i8] c"../sound/pci/lola/lola_pcm.c\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 668, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [30 x i8] c"switch.table.lola_pcm_prepare\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @lola_init_stream._entry, ptr @lola_init_stream._entry.20, ptr @lola_init_stream._entry.23, ptr @lola_init_stream._entry.25, ptr @lola_init_stream._entry.28, ptr @lola_init_stream._entry_ptr, ptr @lola_init_stream._entry_ptr.22, ptr @lola_init_stream._entry_ptr.24, ptr @lola_init_stream._entry_ptr.27, ptr @lola_init_stream._entry_ptr.30, ptr @lola_set_stream_config._entry, ptr @lola_set_stream_config._entry.15, ptr @lola_set_stream_config._entry_ptr, ptr @lola_set_stream_config._entry_ptr.17, ptr @lola_setup_periods._entry, ptr @lola_setup_periods._entry_ptr, ptr @lola_stream_wait_for_fifo._entry, ptr @lola_stream_wait_for_fifo._entry_ptr, ptr @lola_sync_wait_for_fifo._entry, ptr @lola_sync_wait_for_fifo._entry_ptr, ptr @wait_for_srst_clear._entry, ptr @wait_for_srst_clear._entry_ptr, ptr @.str, ptr @lola_pcm_ops, ptr @lola_pcm_hw, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.26, ptr @.str.29, ptr @switch.table.lola_pcm_prepare], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_pcm_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_sync_wait_for_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_stream_wait_for_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_srst_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_setup_periods._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_set_stream_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_set_stream_config._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_stream._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_stream._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_stream._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lola_init_stream._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lola_pcm_prepare to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lola_pcm_update(ptr nocapture noundef readnone %chip, ptr nocapture noundef readonly %pcm, i32 noundef %bits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits)
  %tobool.not18 = icmp eq i32 %bits, 0
  br i1 %tobool.not18, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.020 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %bits.addr.019 = phi i32 [ %bits.addr.1, %for.inc.land.rhs_crit_edge ], [ %bits, %entry.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.020, i32 %1)
  %cmp = icmp ult i32 %i.020, %1
  br i1 %cmp, label %for.body, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %shl = shl nuw i32 1, %i.020
  %and = and i32 %shl, %bits.addr.019
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  %substream = getelementptr %struct.lola_pcm, ptr %pcm, i32 0, i32 2, i32 %i.020, i32 4
  %2 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %substream, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %running = getelementptr %struct.lola_pcm, ptr %pcm, i32 0, i32 2, i32 %i.020, i32 10
  %4 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %running, align 4
  %5 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @snd_pcm_period_elapsed(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %neg = xor i32 %shl, -1
  %and7 = and i32 %bits.addr.019, %neg
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %bits.addr.1 = phi i32 [ %and7, %if.end ], [ %bits.addr.019, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.020, 1
  %tobool.not = icmp eq i32 %bits.addr.1, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_create_pcm(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #6
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !68
  %pci = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 1
  %1 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev, i32 noundef 2, i32 noundef 0, i32 noundef 4096) #6
  %bdl = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 0, i32 1
  %3 = ptrtoint ptr %bdl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %bdl, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %entry
  %4 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %call.i.1 = tail call ptr @snd_devm_alloc_dir_pages(ptr noundef %dev.1, i32 noundef 2, i32 noundef 0, i32 noundef 4096) #6
  %bdl.1 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 1, i32 1
  %6 = ptrtoint ptr %bdl.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.1, ptr %bdl.1, align 4
  %tobool.not.1 = icmp eq ptr %call.i.1, null
  br i1 %tobool.not.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 4
  %pcm5 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16
  %9 = ptrtoint ptr %pcm5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pcm5, align 4
  %arrayidx8 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 1
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %call10 = call i32 @snd_pcm_new(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %pcm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %for.cond.1.cleanup_crit_edge, label %if.end13

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %for.cond.1
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %name = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %call14 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 80) #6
  %15 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %chip, ptr %private_data, align 8
  %18 = ptrtoint ptr %pcm5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pcm5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end13.for.inc24_crit_edge, label %if.then22

if.end13.for.inc24_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24

if.then22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %21, i32 noundef 0, ptr noundef nonnull @lola_pcm_ops) #6
  br label %for.inc24

for.inc24:                                        ; preds = %if.then22, %if.end13.for.inc24_crit_edge
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool21.not.1 = icmp eq i32 %23, 0
  br i1 %tobool21.not.1, label %for.inc24.for.inc24.1_crit_edge, label %if.then22.1

for.inc24.for.inc24.1_crit_edge:                  ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.1

if.then22.1:                                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %25, i32 noundef 1, ptr noundef nonnull @lola_pcm_ops) #6
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %if.then22.1, %for.inc24.for.inc24.1_crit_edge
  %26 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pcm, align 4
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 4
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call29 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %27, i32 noundef 2, ptr noundef %dev28, i32 noundef 65536, i32 noundef 33554432) #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc24.1, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc24.1 ], [ %call10, %for.cond.1.cleanup_crit_edge ], [ -12, %for.cond.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lola_init_pcm(ptr noundef %chip, i32 noundef %dir, ptr nocapture noundef %nidp) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 %dir
  %0 = ptrtoint ptr %nidp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nidp, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp33.not = icmp eq i32 %3, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp.i = icmp eq i32 %dir, 0
  %input_src_caps_mask.i = getelementptr inbounds %struct.lola, ptr %chip, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nid.036 = phi i32 [ %1, %for.body.lr.ph ], [ %inc4, %for.inc.for.body_crit_edge ]
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 %dir, i32 2, i32 %i.034
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !68
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nid.036, ptr %arrayidx2, align 4
  %index.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 %dir, i32 2, i32 %i.034, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.034, ptr %index.i, align 4
  %dsd.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 %dir, i32 2, i32 %i.034, i32 2
  %add.i = add i32 %i.034, 16
  %spec.select.i = select i1 %cmp.i, i32 %add.i, i32 %i.034
  %7 = ptrtoint ptr %dsd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select.i, ptr %dsd.i, align 4
  %call.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid.036, i32 noundef 3840, i32 noundef 9, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end5.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef %nid.036) #9
  br label %lola_init_stream.exit.thread

if.end5.i:                                        ; preds = %for.body
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  br i1 %cmp.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end5.i
  %and.i = and i32 %13, 15732223
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and.i)
  %cmp8.not.i = icmp eq i32 %and.i, 16
  br i1 %cmp8.not.i, label %if.then7.i.if.end29.i_crit_edge, label %do.end12.i

if.then7.i.if.end29.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.end12.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dev14.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev14.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %13, i32 noundef %nid.036) #9
  br label %lola_init_stream.exit.thread

if.else.i:                                        ; preds = %if.end5.i
  %and16.i = and i32 %13, 15731967
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048592, i32 %and16.i)
  %cmp17.not.i = icmp eq i32 %and16.i, 1048592
  br i1 %cmp17.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 4
  %dev23.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev23.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.21, i32 noundef %13, i32 noundef %nid.036) #9
  br label %lola_init_stream.exit.thread

if.end24.i:                                       ; preds = %if.else.i
  %and25.i = and i32 %13, 4608
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608, i32 %and25.i)
  %cmp26.i = icmp eq i32 %and25.i, 4608
  br i1 %cmp26.i, label %if.then27.i, label %if.end24.i.if.end29.i_crit_edge

if.end24.i.if.end29.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %i.034
  %22 = ptrtoint ptr %input_src_caps_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input_src_caps_mask.i, align 4
  %or.i = or i32 %23, %shl.i
  store i32 %or.i, ptr %input_src_caps_mask.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end24.i.if.end29.i_crit_edge, %if.then7.i.if.end29.i_crit_edge
  %call30.i = call i32 @lola_codec_read(ptr noundef %chip, i32 noundef %nid.036, i32 noundef 3840, i32 noundef 11, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.end38.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 4
  %dev37.i = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %26 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev37.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef %nid.036) #9
  br label %lola_init_stream.exit.thread

if.end38.i:                                       ; preds = %if.end29.i
  %28 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val.i, align 4
  %and39.i = and i32 %29, 3
  store i32 %and39.i, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and39.i)
  %cmp40.i = icmp eq i32 %and39.i, 3
  br i1 %cmp40.i, label %if.end42.thread.i, label %if.end42.i

if.end42.thread.i:                                ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %can_float.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 16, i32 %dir, i32 2, i32 %i.034, i32 3
  %30 = ptrtoint ptr %can_float.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %can_float.i, align 4
  br label %for.inc

if.end42.i:                                       ; preds = %if.end38.i
  %and43.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool.not.i, label %do.end47.i, label %if.end42.i.for.inc_crit_edge

if.end42.i.for.inc_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end47.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip, align 4
  %dev49.i = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev49.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev49.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.29, i32 noundef %and39.i, i32 noundef %nid.036) #9
  br label %lola_init_stream.exit.thread

lola_init_stream.exit.thread:                     ; preds = %do.end47.i, %do.end35.i, %do.end21.i, %do.end12.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end21.i ], [ -22, %do.end47.i ], [ %call30.i, %do.end35.i ], [ -22, %do.end12.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end42.i.for.inc_crit_edge, %if.end42.thread.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %inc = add nuw i32 %i.034, 1
  %inc4 = add i32 %nid.036, 1
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %nid.0.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %inc4, %for.inc.for.end_crit_edge ]
  %37 = ptrtoint ptr %nidp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %nid.0.lcssa, ptr %nidp, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lola_init_stream.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %retval.0.i.ph, %lola_init_stream.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_devm_alloc_dir_pages(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %open_mutex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #6
  %opened = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 10
  %8 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %opened, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3
  %substream4 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 4
  %9 = ptrtoint ptr %substream4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %substream4, align 4
  %master = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 5
  %10 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %master, align 4
  %bf.set = or i8 %bf.load, -128
  %11 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.set, ptr %opened, align 4
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46
  %12 = call ptr @memcpy(ptr %hw, ptr @lola_pcm_hw, i32 64)
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %index = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %sub = sub i32 %14, %16
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 6
  %17 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %channels_max, align 8
  %sample_rate = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 22
  %18 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool8.not = icmp eq i32 %19, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 3
  %20 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rate_min, align 4
  br label %if.end18

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sample_rate_min = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %sample_rate_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sample_rate_min, align 4
  %rate_min15 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 3
  %23 = ptrtoint ptr %rate_min15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rate_min15, align 4
  %sample_rate_max = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 28
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then9
  %.sink.in = phi ptr [ %sample_rate_max, %if.else ], [ %sample_rate, %if.then9 ]
  %24 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink = load i32, ptr %.sink.in, align 4
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 46, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %25, align 8
  %ref_count_rate = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 21
  %27 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ref_count_rate, align 4
  %inc = add i32 %28, 1
  store i32 %inc, ptr %ref_count_rate, align 4
  %call19 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %7, i32 noundef 15) #6
  %granularity = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 26
  %29 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %granularity, align 4
  %call20 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %7, i32 noundef 0, i32 noundef 17, i32 noundef %30) #6
  %31 = ptrtoint ptr %granularity to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %granularity, align 4
  %call22 = tail call i32 @snd_pcm_hw_constraint_step(ptr noundef %7, i32 noundef 0, i32 noundef 13, i32 noundef %32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -16, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %open_mutex) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_close(ptr noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i.i, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %open_mutex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #6
  %substream1 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 4
  %6 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %substream1, align 4
  %cmp = icmp eq ptr %7, %substream
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %substream1, align 4
  %opened = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 10
  %9 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %opened, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %opened, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ref_count_rate = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 21
  %10 = ptrtoint ptr %ref_count_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ref_count_rate, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %ref_count_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp3 = icmp eq i32 %dec, 0
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sample_rate = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sample_rate, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lola_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %hw_params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i.i, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i.i, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %bufsize = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 6
  %6 = ptrtoint ptr %bufsize to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %bufsize, align 4
  %period_bytes = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 7
  %7 = ptrtoint ptr %period_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %period_bytes, align 4
  %format_verb = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 9
  %8 = ptrtoint ptr %format_verb to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format_verb, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_hw_free(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %arrayidx.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %arrayidx.i8 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5
  %open_mutex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #6
  tail call fastcc void @lola_stream_reset(ptr noundef %1, ptr noundef %arrayidx.i8)
  %index.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 1
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %i.011.i = add i32 %7, 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.011.i, i32 %9)
  %cmp12.i = icmp ult i32 %i.011.i, %9
  br i1 %cmp12.i, label %entry.for.body.i_crit_edge, label %entry.lola_cleanup_slave_streams.exit_crit_edge

entry.lola_cleanup_slave_streams.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %i.0.i, %cleanup.i.for.body.i_crit_edge ], [ %i.011.i, %entry.for.body.i_crit_edge ]
  %master.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %i.013.i, i32 5
  %10 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master.i, align 4
  %cmp1.not.i = icmp eq ptr %11, %arrayidx.i8
  br i1 %cmp1.not.i, label %cleanup.i, label %for.body.i.lola_cleanup_slave_streams.exit_crit_edge

for.body.i.lola_cleanup_slave_streams.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

cleanup.i:                                        ; preds = %for.body.i
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %master.i, align 4
  %opened.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %i.013.i, i32 10
  %13 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %opened.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %opened.i, align 4
  %i.0.i = add nuw i32 %i.013.i, 1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ult i32 %i.0.i, %15
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.lola_cleanup_slave_streams.exit_crit_edge

cleanup.i.lola_cleanup_slave_streams.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lola_cleanup_slave_streams.exit:                  ; preds = %cleanup.i.lola_cleanup_slave_streams.exit_crit_edge, %for.body.i.lola_cleanup_slave_streams.exit_crit_edge, %entry.lola_cleanup_slave_streams.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_prepare(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i, align 4
  %arrayidx.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %arrayidx.i85 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime2, align 4
  %open_mutex = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %open_mutex, i32 noundef 0) #6
  tail call fastcc void @lola_stream_reset(ptr noundef %1, ptr noundef %arrayidx.i85)
  %index.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 1
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %i.011.i = add i32 %9, 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.011.i, i32 %11)
  %cmp12.i = icmp ult i32 %i.011.i, %11
  br i1 %cmp12.i, label %entry.for.body.i_crit_edge, label %entry.lola_cleanup_slave_streams.exit_crit_edge

entry.lola_cleanup_slave_streams.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %i.0.i, %cleanup.i.for.body.i_crit_edge ], [ %i.011.i, %entry.for.body.i_crit_edge ]
  %master.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %i.013.i, i32 5
  %12 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master.i, align 4
  %cmp1.not.i = icmp eq ptr %13, %arrayidx.i85
  br i1 %cmp1.not.i, label %cleanup.i, label %for.body.i.lola_cleanup_slave_streams.exit_crit_edge

for.body.i.lola_cleanup_slave_streams.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

cleanup.i:                                        ; preds = %for.body.i
  %14 = ptrtoint ptr %master.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %master.i, align 4
  %opened.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %i.013.i, i32 10
  %15 = ptrtoint ptr %opened.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %opened.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %opened.i, align 4
  %i.0.i = add nuw i32 %i.013.i, 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ult i32 %i.0.i, %17
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.lola_cleanup_slave_streams.exit_crit_edge

cleanup.i.lola_cleanup_slave_streams.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_cleanup_slave_streams.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

lola_cleanup_slave_streams.exit:                  ; preds = %cleanup.i.lola_cleanup_slave_streams.exit_crit_edge, %for.body.i.lola_cleanup_slave_streams.exit_crit_edge, %entry.lola_cleanup_slave_streams.exit_crit_edge
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels, align 8
  %add = add i32 %21, %19
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp = icmp ugt i32 %add, %23
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %lola_cleanup_slave_streams.exit
  %24 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp5131 = icmp ugt i32 %25, 1
  br i1 %cmp5131, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then:                                          ; preds = %lola_cleanup_slave_streams.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %open_mutex) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0132 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %master = getelementptr %struct.lola_stream, ptr %arrayidx.i85, i32 %i.0132, i32 5
  %26 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx.i85, ptr %master, align 4
  %opened = getelementptr %struct.lola_stream, ptr %arrayidx.i85, i32 %i.0132, i32 10
  %27 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %opened, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %opened, align 4
  %inc = add nuw i32 %i.0132, 1
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 8
  %cmp5 = icmp ult i32 %inc, %29
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %open_mutex) #6
  %30 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %runtime2, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 18
  %32 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 21
  %34 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %35, %33
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 16
  %36 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period_size.i, align 4
  %mul.i.i88 = mul i32 %37, %35
  %div1.i.i89 = lshr i32 %mul.i.i88, 3
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 12
  %38 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %format.i, align 4
  %40 = add i32 %39, -2
  %41 = tail call i32 @llvm.fshl.i32(i32 %40, i32 %40, i32 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %switch.lookup, label %for.end.lola_get_format_verb.exit_crit_edge

for.end.lola_get_format_verb.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_get_format_verb.exit

switch.lookup:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.lola_pcm_prepare, i32 0, i32 %41
  %43 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load = load i32, ptr %switch.gep, align 4
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %31, i32 0, i32 15
  %44 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channels.i, align 8
  %or.i = or i32 %45, %switch.load
  br label %lola_get_format_verb.exit

lola_get_format_verb.exit:                        ; preds = %switch.lookup, %for.end.lola_get_format_verb.exit_crit_edge
  %retval.0.i = phi i32 [ %or.i, %switch.lookup ], [ 0, %for.end.lola_get_format_verb.exit_crit_edge ]
  %bufsize11 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 6
  %46 = ptrtoint ptr %bufsize11 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div1.i.i, ptr %bufsize11, align 4
  %period_bytes12 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 7
  %47 = ptrtoint ptr %period_bytes12 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div1.i.i89, ptr %period_bytes12, align 4
  %format_verb13 = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 9
  %48 = ptrtoint ptr %format_verb13 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i, ptr %format_verb13, align 4
  %div.i = udiv i32 %div1.i.i, %div1.i.i89
  %bdl2.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 1
  %49 = ptrtoint ptr %bdl2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bdl2.i, align 4
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %area.i, align 4
  %53 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index.i, align 4
  %frags.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 8
  %55 = ptrtoint ptr %frags.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %frags.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i89, i32 %div1.i.i)
  %cmp28.i.not = icmp ugt i32 %div1.i.i89, %div1.i.i
  br i1 %cmp28.i.not, label %lola_get_format_verb.exit.if.end17_crit_edge, label %for.body.lr.ph.i

lola_get_format_verb.exit.if.end17_crit_edge:     ; preds = %lola_get_format_verb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

for.body.lr.ph.i:                                 ; preds = %lola_get_format_verb.exit
  %mul.i = shl i32 %54, 8
  %add.ptr.i = getelementptr i8, ptr %52, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul.i.i88)
  %cmp36.i.i.not = icmp ult i32 %mul.i.i88, 8
  br label %for.body.i92

for.body.i92:                                     ; preds = %for.inc.i.for.body.i92_crit_edge, %for.body.lr.ph.i
  %ofs.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %retval.2.i26.i, %for.inc.i.for.body.i92_crit_edge ]
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i92_crit_edge ]
  %bdl.029.i = phi ptr [ %add.ptr.i, %for.body.lr.ph.i ], [ %bdl.125.i, %for.inc.i.for.body.i92_crit_edge ]
  br i1 %cmp36.i.i.not, label %for.body.i92.for.inc.i_crit_edge, label %while.body.lr.ph.i.i

for.body.i92.for.inc.i_crit_edge:                 ; preds = %for.body.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

while.body.lr.ph.i.i:                             ; preds = %for.body.i92
  %56 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr.i.i = load i32, ptr %frags.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %57 = phi i32 [ %.pr.i.i, %while.body.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %bdl.039.i.i = phi ptr [ %bdl.029.i, %while.body.lr.ph.i.i ], [ %add.ptr.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %size.addr.038.i.i = phi i32 [ %div1.i.i89, %while.body.lr.ph.i.i ], [ %sub.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %ofs.addr.037.i.i = phi i32 [ %ofs.031.i, %while.body.lr.ph.i.i ], [ %add.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %57)
  %cmp1.i.i = icmp ugt i32 %57, 7
  br i1 %cmp1.i.i, label %while.body.i.i.lola_setup_periods.exit_crit_edge, label %cleanup.i.i

while.body.i.i.lola_setup_periods.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_setup_periods.exit

cleanup.i.i:                                      ; preds = %while.body.i.i
  %58 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %runtime2, align 4
  %dma_buffer_p.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %59, i32 0, i32 53
  %60 = ptrtoint ptr %dma_buffer_p.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_buffer_p.i.i.i, align 8
  %call.i.i.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %61, i32 noundef %ofs.addr.037.i.i) #6
  %62 = tail call i32 @llvm.bswap.i32(i32 %call.i.i.i) #6
  %63 = ptrtoint ptr %bdl.039.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %bdl.039.i.i, align 4
  %arrayidx3.i.i = getelementptr i32, ptr %bdl.039.i.i, i32 1
  %64 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx3.i.i, align 4
  %65 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %runtime2, align 4
  %dma_buffer_p.i29.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %66, i32 0, i32 53
  %67 = ptrtoint ptr %dma_buffer_p.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_buffer_p.i29.i.i, align 8
  %call.i30.i.i = tail call i32 @snd_sgbuf_get_chunk_size(ptr noundef %68, i32 noundef %ofs.addr.037.i.i, i32 noundef %size.addr.038.i.i) #6
  %69 = tail call i32 @llvm.bswap.i32(i32 %call.i30.i.i) #6
  %arrayidx5.i.i = getelementptr i32, ptr %bdl.039.i.i, i32 2
  %70 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %arrayidx5.i.i, align 4
  %sub.i.i = sub i32 %size.addr.038.i.i, %call.i30.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 16777216, i32 0
  %arrayidx6.i.i = getelementptr i32, ptr %bdl.039.i.i, i32 3
  %71 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond.i.i, ptr %arrayidx6.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %bdl.039.i.i, i32 4
  %72 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frags.i, align 4
  %inc.i.i = add i32 %73, 1
  store i32 %inc.i.i, ptr %frags.i, align 4
  %add.i.i = add i32 %call.i30.i.i, %ofs.addr.037.i.i
  %cmp.i.i = icmp sgt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %setup_bdle.exit.i

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

setup_bdle.exit.i:                                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %cmp3.i = icmp slt i32 %add.i.i, 0
  br i1 %cmp3.i, label %setup_bdle.exit.i.lola_setup_periods.exit_crit_edge, label %setup_bdle.exit.i.for.inc.i_crit_edge

setup_bdle.exit.i.for.inc.i_crit_edge:            ; preds = %setup_bdle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

setup_bdle.exit.i.lola_setup_periods.exit_crit_edge: ; preds = %setup_bdle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_setup_periods.exit

for.inc.i:                                        ; preds = %setup_bdle.exit.i.for.inc.i_crit_edge, %for.body.i92.for.inc.i_crit_edge
  %retval.2.i26.i = phi i32 [ %add.i.i, %setup_bdle.exit.i.for.inc.i_crit_edge ], [ %ofs.031.i, %for.body.i92.for.inc.i_crit_edge ]
  %bdl.125.i = phi ptr [ %add.ptr.i.i, %setup_bdle.exit.i.for.inc.i_crit_edge ], [ %bdl.029.i, %for.body.i92.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i, label %for.inc.i.if.end17_crit_edge, label %for.inc.i.for.body.i92_crit_edge

for.inc.i.for.body.i92_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i92

for.inc.i.if.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

lola_setup_periods.exit:                          ; preds = %setup_bdle.exit.i.lola_setup_periods.exit_crit_edge, %while.body.i.i.lola_setup_periods.exit_crit_edge
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i, align 8
  %78 = ptrtoint ptr %bufsize11 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bufsize11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.10, i32 noundef %79, i32 noundef %div1.i.i89) #9
  br label %cleanup

if.end17:                                         ; preds = %for.inc.i.if.end17_crit_edge, %lola_get_format_verb.exit.if.end17_crit_edge
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %80 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rate, align 4
  %call18 = tail call i32 @lola_set_sample_rate(ptr noundef %1, i32 noundef %81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %82 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rate, align 4
  %sample_rate = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 22
  %84 = ptrtoint ptr %sample_rate to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %sample_rate, align 4
  %85 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %channels, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %87 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %val.i, align 4, !annotation !68
  %88 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i85, align 4
  %90 = ptrtoint ptr %format_verb13 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %format_verb13, align 4
  %call.i = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %89, i32 noundef 512, i32 noundef %91, i32 noundef 0, ptr noundef nonnull %val.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i95 = icmp slt i32 %call.i, 0
  br i1 %cmp.i95, label %do.end.i99, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp231.i = icmp sgt i32 %86, 0
  br i1 %cmp231.i, label %for.cond.preheader.i.for.body.i102_crit_edge, label %for.cond.preheader.i.if.end27_crit_edge

for.cond.preheader.i.if.end27_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

for.cond.preheader.i.for.body.i102_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i102

do.end.i99:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %1, align 4
  %dev.i98 = getelementptr inbounds %struct.snd_card, ptr %93, i32 0, i32 27
  %94 = ptrtoint ptr %dev.i98 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i98, align 8
  %96 = ptrtoint ptr %format_verb13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %format_verb13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.13, i32 noundef %97) #9
  br label %lola_set_stream_config.exit.thread

for.body.i102:                                    ; preds = %for.inc.i105.for.body.i102_crit_edge, %for.cond.preheader.i.for.body.i102_crit_edge
  %i.032.i = phi i32 [ %inc.i103, %for.inc.i105.for.body.i102_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i102_crit_edge ]
  %98 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %index.i, align 4
  %shl.i = shl i32 %99, 6
  %or.i100 = or i32 %shl.i, %i.032.i
  %arrayidx.i101 = getelementptr %struct.lola_stream, ptr %arrayidx.i85, i32 %i.032.i
  %100 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i101, align 4
  %call4.i = call i32 @lola_codec_read(ptr noundef %1, i32 noundef %101, i32 noundef 1798, i32 noundef 0, i32 noundef %or.i100, ptr noundef nonnull %val.i, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %for.inc.i105

do.end9.i:                                        ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  %dev11.i = getelementptr inbounds %struct.snd_card, ptr %103, i32 0, i32 27
  %104 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev11.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.16, i32 noundef %i.032.i) #9
  br label %lola_set_stream_config.exit.thread

for.inc.i105:                                     ; preds = %for.body.i102
  %inc.i103 = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i104 = icmp eq i32 %inc.i103, %86
  br i1 %exitcond.not.i104, label %for.inc.i105.if.end27_crit_edge, label %for.inc.i105.for.body.i102_crit_edge

for.inc.i105.for.body.i102_crit_edge:             ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i102

for.inc.i105.if.end27_crit_edge:                  ; preds = %for.inc.i105
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

lola_set_stream_config.exit.thread:               ; preds = %do.end9.i, %do.end.i99
  %retval.0.i106.ph = phi i32 [ %call4.i, %do.end9.i ], [ %call.i, %do.end.i99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end27:                                         ; preds = %for.inc.i105.if.end27_crit_edge, %for.cond.preheader.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %prepared.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 10
  %106 = ptrtoint ptr %prepared.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %bf.load.i108 = load i8, ptr %prepared.i, align 4
  %107 = and i8 %bf.load.i108, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i = icmp eq i8 %107, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.if.then30_crit_edge

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

if.end.i:                                         ; preds = %if.end27
  %108 = ptrtoint ptr %bdl2.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bdl2.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i, align 4
  %112 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %index.i, align 4
  %mul.i110 = shl i32 %113, 8
  %add.i = add i32 %mul.i110, %111
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @arm_heavy_mb() #6
  %114 = call i32 @llvm.bswap.i32(i32 %add.i) #6
  %remap_addr.i = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %115 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %116, i32 160
  %dsd.i = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 2
  %117 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dsd.i, align 4
  %mul2.i = mul i32 %118, 24
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i111, i32 %mul2.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %114) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  call void @arm_heavy_mb() #6
  %119 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %120, i32 160
  %121 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dsd.i, align 4
  %mul14.i = mul i32 %122, 24
  %add.ptr15.i = getelementptr i8, ptr %add.ptr12.i, i32 %mul14.i
  %add.ptr16.i = getelementptr i8, ptr %add.ptr15.i, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 0) #6, !srcloc !70
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %frags.i, align 4
  %sub.i = add i32 %124, -1
  %125 = call i32 @llvm.bswap.i32(i32 %sub.i) #6
  %126 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr23.i = getelementptr i8, ptr %127, i32 160
  %128 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dsd.i, align 4
  %mul25.i = mul i32 %129, 24
  %add.ptr26.i = getelementptr i8, ptr %add.ptr23.i, i32 %mul25.i
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %125) #6, !srcloc !70
  %130 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %131, i32 160
  %132 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dsd.i, align 4
  %mul.i.i114 = mul i32 %133, 24
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i113, i32 %mul.i.i114
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #6, !srcloc !73
  %135 = lshr i32 %134, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and.i.i = and i32 %135, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i115, label %if.end.i.lola_stream_clear_pending_irq.exit.i_crit_edge, label %do.body.i.i

if.end.i.lola_stream_clear_pending_irq.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_stream_clear_pending_irq.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  call void @arm_heavy_mb() #6
  %136 = shl nuw nsw i32 %and.i.i, 24
  %137 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %138, i32 160
  %139 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %dsd.i, align 4
  %mul9.i.i = mul i32 %140, 24
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 %mul9.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %136) #6, !srcloc !70
  br label %lola_stream_clear_pending_irq.exit.i

lola_stream_clear_pending_irq.exit.i:             ; preds = %do.body.i.i, %if.end.i.lola_stream_clear_pending_irq.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %142, i32 160
  %143 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dsd.i, align 4
  %mul36.i = mul i32 %144, 24
  %add.ptr37.i = getelementptr i8, ptr %add.ptr34.i, i32 %mul36.i
  %add.ptr38.i = getelementptr i8, ptr %add.ptr37.i, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 369098752) #6, !srcloc !70
  %145 = ptrtoint ptr %prepared.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load40.i = load i8, ptr %prepared.i, align 4
  %bf.set.i = or i8 %bf.load40.i, 64
  store i8 %bf.set.i, ptr %prepared.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %146 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i.i = sub i32 -20, %146
  %147 = load volatile i32, ptr @jiffies, align 128
  %sub12.i.i = add i32 %add.neg.i.i, %147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i.i)
  %cmp13.i.i = icmp slt i32 %sub12.i.i, 0
  br i1 %cmp13.i.i, label %lola_stream_clear_pending_irq.exit.i.while.body.i.i116_crit_edge, label %lola_stream_clear_pending_irq.exit.i.do.end.i.i_crit_edge

lola_stream_clear_pending_irq.exit.i.do.end.i.i_crit_edge: ; preds = %lola_stream_clear_pending_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

lola_stream_clear_pending_irq.exit.i.while.body.i.i116_crit_edge: ; preds = %lola_stream_clear_pending_irq.exit.i
  br label %while.body.i.i116

while.body.i.i116:                                ; preds = %if.end.i.i.while.body.i.i116_crit_edge, %lola_stream_clear_pending_irq.exit.i.while.body.i.i116_crit_edge
  %148 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %149, i32 160
  %150 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %dsd.i, align 4
  %mul.i60.i = mul i32 %151, 24
  %add.ptr1.i61.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %mul.i60.i
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i61.i) #6, !srcloc !73
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %153 = and i32 %152, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %cmp5.i.not.i = icmp eq i32 %153, 0
  br i1 %cmp5.i.not.i, label %if.end.i.i, label %while.body.i.i116.cleanup_crit_edge

while.body.i.i116.cleanup_crit_edge:              ; preds = %while.body.i.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %while.body.i.i116
  call void @msleep(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %154 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i117 = add i32 %154, %add.neg.i.i
  %cmp.i.i118 = icmp slt i32 %sub.i.i117, 0
  br i1 %cmp.i.i118, label %if.end.i.i.while.body.i.i116_crit_edge, label %if.end.i.i.do.end.i.i_crit_edge

if.end.i.i.do.end.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i.i

if.end.i.i.while.body.i.i116_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i116

do.end.i.i:                                       ; preds = %if.end.i.i.do.end.i.i_crit_edge, %lola_stream_clear_pending_irq.exit.i.do.end.i.i_crit_edge
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %156, i32 0, i32 27
  %157 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i.i, align 8
  %159 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dsd.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.6, i32 noundef %160) #9
  br label %if.then30

if.then30:                                        ; preds = %do.end.i.i, %if.end27.if.then30_crit_edge
  %retval.0.i119.ph = phi i32 [ -5, %do.end.i.i ], [ -22, %if.end27.if.then30_crit_edge ]
  call fastcc void @lola_stream_reset(ptr noundef %1, ptr noundef %arrayidx.i85)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %while.body.i.i116.cleanup_crit_edge, %lola_set_stream_config.exit.thread, %if.end17.cleanup_crit_edge, %lola_setup_periods.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %retval.0.i119.ph, %if.then30 ], [ -22, %lola_setup_periods.exit ], [ %call18, %if.end17.cleanup_crit_edge ], [ %retval.0.i106.ph, %lola_set_stream_config.exit.thread ], [ 0, %while.body.i.i116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_trigger(ptr noundef %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.land.rhs_crit_edge
    i32 4, label %entry.land.rhs_crit_edge79
    i32 6, label %entry.land.rhs_crit_edge80
    i32 3, label %entry.land.end_crit_edge
    i32 5, label %entry.land.end_crit_edge81
    i32 0, label %entry.land.end_crit_edge82
  ]

entry.land.end_crit_edge82:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

entry.land.end_crit_edge81:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

entry.land.rhs_crit_edge80:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

entry.land.rhs_crit_edge79:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs:                                         ; preds = %entry.land.rhs_crit_edge, %entry.land.rhs_crit_edge79, %entry.land.rhs_crit_edge80
  %group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %3 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %group.i, align 4
  %self_group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 17
  %cmp.i.not = icmp eq ptr %4, %self_group.i
  %phi.sel = select i1 %cmp.i.not, i32 1, i32 9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge, %entry.land.end_crit_edge81, %entry.land.end_crit_edge82
  %start.074 = phi i8 [ 16, %land.rhs ], [ 0, %entry.land.end_crit_edge ], [ 0, %entry.land.end_crit_edge81 ], [ 0, %entry.land.end_crit_edge82 ]
  %tobool.not73 = phi i1 [ false, %land.rhs ], [ true, %entry.land.end_crit_edge ], [ true, %entry.land.end_crit_edge81 ], [ true, %entry.land.end_crit_edge82 ]
  %5 = phi i32 [ %phi.sel, %land.rhs ], [ 1, %entry.land.end_crit_edge ], [ 1, %entry.land.end_crit_edge81 ], [ 1, %entry.land.end_crit_edge82 ]
  %remap_addr.i.i = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !73
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  %shr.i = lshr i32 %9, 8
  %granularity.i = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 26
  %10 = ptrtoint ptr %granularity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %granularity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %land.end.lola_get_tstamp.exit_crit_edge, label %if.then.i

land.end.lola_get_tstamp.exit_crit_edge:          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_get_tstamp.exit

if.then.i:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul i32 %11, %5
  %sub.i = add nsw i32 %shr.i, -1
  %add3.i = add i32 %sub.i, %mul.i
  %rem.i = urem i32 %add3.i, %11
  %sub5.i = sub i32 %add3.i, %rem.i
  br label %lola_get_tstamp.exit

lola_get_tstamp.exit:                             ; preds = %if.then.i, %land.end.lola_get_tstamp.exit_crit_edge
  %tstamp.0.i = phi i32 [ %sub5.i, %if.then.i ], [ %shr.i, %land.end.lola_get_tstamp.exit_crit_edge ]
  %reg_lock = getelementptr inbounds %struct.lola, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #6
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %12 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn75 = load ptr, ptr %substreams, align 4
  %cmp.not77 = icmp eq ptr %.pn75, %substreams
  br i1 %cmp.not77, label %lola_get_tstamp.exit.for.end_crit_edge, label %for.body.lr.ph

lola_get_tstamp.exit.for.end_crit_edge:           ; preds = %lola_get_tstamp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %lola_get_tstamp.exit
  %shl.i = shl i32 %tstamp.0.i, 8
  %or.i = or i32 %shl.i, 54
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %or.i57 = or i32 %shl.i, 52
  %16 = tail call i32 @llvm.bswap.i32(i32 %or.i57) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn78 = phi ptr [ %.pn75, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn78, i32 -140
  %17 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s.0, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  %21 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %substream, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %cmp10.not = icmp eq ptr %20, %24
  br i1 %cmp10.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %private_data.i.i = getelementptr i8, ptr %.pn78, i32 -132
  %25 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private_data.i.i, align 4
  %stream.i.i = getelementptr i8, ptr %.pn78, i32 -92
  %27 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stream.i.i, align 4
  %number.i = getelementptr i8, ptr %.pn78, i32 -128
  %29 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number.i, align 4
  br i1 %tobool.not73, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %31 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %32, i32 160
  %dsd.i.i = getelementptr %struct.lola, ptr %26, i32 0, i32 16, i32 %28, i32 2, i32 %30, i32 2
  %33 = ptrtoint ptr %dsd.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dsd.i.i, align 4
  %mul.i.i = mul i32 %34, 24
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i55, i32 %mul.i.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #6, !srcloc !73
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and.i.i = and i32 %36, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then13.lola_stream_start.exit_crit_edge, label %do.body.i.i

if.then13.lola_stream_start.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_stream_start.exit

do.body.i.i:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %37 = shl nuw nsw i32 %and.i.i, 24
  %38 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %39, i32 160
  %40 = ptrtoint ptr %dsd.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dsd.i.i, align 4
  %mul9.i.i = mul i32 %41, 24
  %add.ptr10.i.i = getelementptr i8, ptr %add.ptr7.i.i, i32 %mul9.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i, i32 %37) #6, !srcloc !70
  br label %lola_stream_start.exit

lola_stream_start.exit:                           ; preds = %do.body.i.i, %if.then13.lola_stream_start.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %42 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %remap_addr.i.i, align 4
  %44 = ptrtoint ptr %dsd.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dsd.i.i, align 4
  %mul.i56 = mul i32 %45, 24
  %add.ptr1.i = getelementptr i8, ptr %43, i32 168
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul.i56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %15) #6, !srcloc !70
  br label %if.end14

if.else:                                          ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr.i.i, align 4
  %dsd.i = getelementptr %struct.lola, ptr %26, i32 0, i32 16, i32 %28, i32 2, i32 %30, i32 2
  %48 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dsd.i, align 4
  %mul.i59 = mul i32 %49, 24
  %add.ptr1.i60 = getelementptr i8, ptr %47, i32 168
  %add.ptr2.i61 = getelementptr i8, ptr %add.ptr1.i60, i32 %mul.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i61, i32 %16) #6, !srcloc !70
  %50 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %51, i32 160
  %52 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dsd.i, align 4
  %mul.i.i63 = mul i32 %53, 24
  %add.ptr1.i.i64 = getelementptr i8, ptr %add.ptr.i.i62, i32 %mul.i.i63
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i64) #6, !srcloc !73
  %55 = lshr i32 %54, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and.i.i65 = and i32 %55, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %and.i.i65, 0
  br i1 %tobool.not.i.i66, label %if.else.if.end14_crit_edge, label %do.body.i.i70

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.body.i.i70:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %56 = shl nuw nsw i32 %and.i.i65, 24
  %57 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr7.i.i67 = getelementptr i8, ptr %58, i32 160
  %59 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsd.i, align 4
  %mul9.i.i68 = mul i32 %60, 24
  %add.ptr10.i.i69 = getelementptr i8, ptr %add.ptr7.i.i67, i32 %mul9.i.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.i69, i32 %56) #6, !srcloc !70
  br label %if.end14

if.end14:                                         ; preds = %do.body.i.i70, %if.else.if.end14_crit_edge, %lola_stream_start.exit
  %bf.shl19 = phi i8 [ 0, %lola_stream_start.exit ], [ 32, %if.else.if.end14_crit_edge ], [ 32, %do.body.i.i70 ]
  %running = getelementptr %struct.lola, ptr %26, i32 0, i32 16, i32 %28, i32 2, i32 %30, i32 10
  %61 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %running, align 4
  %bf.clear = and i8 %bf.load, -49
  %bf.set = or i8 %bf.shl19, %start.074
  %bf.set21 = or i8 %bf.set, %bf.clear
  store i8 %bf.set21, ptr %running, align 4
  %runtime.i = getelementptr i8, ptr %.pn78, i32 -20
  %62 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %runtime.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %substream, ptr %63, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %for.body.for.inc_crit_edge
  %65 = ptrtoint ptr %.pn78 to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn = load ptr, ptr %.pn78, align 4
  %66 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %group, align 4
  %substreams6 = getelementptr inbounds %struct.snd_pcm_group, ptr %67, i32 0, i32 2
  %cmp.not = icmp eq ptr %.pn, %substreams6
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lola_get_tstamp.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lola_pcm_pointer(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream.i.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream.i.i, align 4
  %number.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %4 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %number.i, align 4
  %remap_addr = getelementptr %struct.lola, ptr %1, i32 0, i32 2, i32 1, i32 1
  %6 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 160
  %dsd = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 2
  %8 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsd, align 4
  %mul = mul i32 %9, 24
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !73
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %bufsize = getelementptr %struct.lola, ptr %1, i32 0, i32 16, i32 %3, i32 2, i32 %5, i32 6
  %12 = ptrtoint ptr %bufsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not = icmp ult i32 %11, %13
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %.op = shl i32 %11, 3
  %mul.i = select i1 %cmp.not, i32 %.op, i32 0
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %17
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_step(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lola_stream_reset(ptr nocapture noundef readonly %chip, ptr nocapture noundef %str) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.lola_stream, ptr %str, i32 0, i32 10
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %prepared, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end52_crit_edge, label %if.then

entry.if.end52_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then:                                          ; preds = %entry
  %2 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  %substream = getelementptr inbounds %struct.lola_stream, ptr %str, i32 0, i32 4
  %3 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %substream, align 4
  tail call fastcc void @lola_sync_wait_for_fifo(ptr noundef %chip, ptr noundef %4, i1 noundef zeroext false) #6
  %group.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %group.i, align 4
  %substreams.i = getelementptr inbounds %struct.snd_pcm_group, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %substreams.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn34.i = load ptr, ptr %substreams.i, align 4
  %cmp.not36.i = icmp eq ptr %.pn34.i, %substreams.i
  br i1 %cmp.not36.i, label %if.then6.lola_sync_pause.exit_crit_edge, label %for.body.lr.ph.i

if.then6.lola_sync_pause.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sync_pause.exit

for.body.lr.ph.i:                                 ; preds = %if.then6
  %remap_addr.i = getelementptr %struct.lola, ptr %chip, i32 0, i32 2, i32 1, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn37.i = phi ptr [ %.pn34.i, %for.body.lr.ph.i ], [ %.pn.i, %cleanup.i.for.body.i_crit_edge ]
  %s.0.i = getelementptr i8, ptr %.pn37.i, i32 -140
  %8 = ptrtoint ptr %s.0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s.0.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp5.not.i = icmp eq ptr %11, %15
  br i1 %cmp5.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %private_data.i.i.i = getelementptr i8, ptr %.pn37.i, i32 -132
  %16 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i.i.i, align 4
  %stream.i.i.i = getelementptr i8, ptr %.pn37.i, i32 -92
  %18 = ptrtoint ptr %stream.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stream.i.i.i, align 4
  %number.i.i = getelementptr i8, ptr %.pn37.i, i32 -128
  %20 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %number.i.i, align 4
  %paused.i = getelementptr %struct.lola, ptr %17, i32 0, i32 16, i32 %19, i32 2, i32 %21, i32 10
  %22 = ptrtoint ptr %paused.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %paused.i, align 4
  %23 = and i8 %bf.load.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %23)
  %.not.i = icmp eq i8 %23, 96
  br i1 %.not.i, label %do.body.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %remap_addr.i, align 4
  %dsd.i = getelementptr %struct.lola, ptr %17, i32 0, i32 16, i32 %19, i32 2, i32 %21, i32 2
  %26 = ptrtoint ptr %dsd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dsd.i, align 4
  %mul.i = mul i32 %27, 24
  %add.ptr14.i = getelementptr i8, ptr %25, i32 168
  %add.ptr15.i = getelementptr i8, ptr %add.ptr14.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 369098752) #6, !srcloc !70
  br label %cleanup.i

cleanup.i:                                        ; preds = %do.body.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %28 = ptrtoint ptr %.pn37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn37.i, align 4
  %29 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %group.i, align 4
  %substreams2.i = getelementptr inbounds %struct.snd_pcm_group, ptr %30, i32 0, i32 2
  %cmp.not.i = icmp eq ptr %.pn.i, %substreams2.i
  br i1 %cmp.not.i, label %cleanup.i.lola_sync_pause.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.lola_sync_pause.exit_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_sync_pause.exit

lola_sync_pause.exit:                             ; preds = %cleanup.i.lola_sync_pause.exit_crit_edge, %if.then6.lola_sync_pause.exit_crit_edge
  tail call fastcc void @lola_sync_wait_for_fifo(ptr noundef %chip, ptr noundef %4, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %lola_sync_pause.exit, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load8 = load i8, ptr %prepared, align 4
  %bf.clear9 = and i8 %bf.load8, -65
  store i8 %bf.clear9, ptr %prepared, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %remap_addr = getelementptr %struct.lola, ptr %chip, i32 0, i32 2, i32 1, i32 1
  %32 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %remap_addr, align 4
  %add.ptr = getelementptr i8, ptr %33, i32 160
  %dsd = getelementptr inbounds %struct.lola_stream, ptr %str, i32 0, i32 2
  %34 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dsd, align 4
  %mul = mul i32 %35, 24
  %add.ptr10 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 335544320) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -20, %36
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub12.i = add i32 %add.neg.i, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i)
  %cmp13.i = icmp slt i32 %sub12.i, 0
  br i1 %cmp13.i, label %if.end.while.body.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i75.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %38 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 160
  %40 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dsd, align 4
  %mul.i74 = mul i32 %41, 24
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i74
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %43 = and i32 %42, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp5.i = icmp eq i32 %43, 0
  br i1 %cmp5.i, label %while.body.i.lola_stream_wait_for_fifo.exit_crit_edge, label %if.end.i75

while.body.i.lola_stream_wait_for_fifo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_stream_wait_for_fifo.exit

if.end.i75:                                       ; preds = %while.body.i
  tail call void @msleep(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %44, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i75.while.body.i_crit_edge, label %if.end.i75.do.end.i_crit_edge

if.end.i75.do.end.i_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end.i75.while.body.i_crit_edge:                ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

do.end.i:                                         ; preds = %if.end.i75.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %45 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chip, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev.i, align 8
  %49 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dsd, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.6, i32 noundef %50) #9
  br label %lola_stream_wait_for_fifo.exit

lola_stream_wait_for_fifo.exit:                   ; preds = %do.end.i, %while.body.i.lola_stream_wait_for_fifo.exit_crit_edge
  %51 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remap_addr, align 4
  %add.ptr.i77 = getelementptr i8, ptr %52, i32 160
  %53 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dsd, align 4
  %mul.i79 = mul i32 %54, 24
  %add.ptr1.i80 = getelementptr i8, ptr %add.ptr.i77, i32 %mul.i79
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i80) #6, !srcloc !73
  %56 = lshr i32 %55, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  %and.i81 = and i32 %56, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i, label %lola_stream_wait_for_fifo.exit.lola_stream_clear_pending_irq.exit_crit_edge, label %do.body.i82

lola_stream_wait_for_fifo.exit.lola_stream_clear_pending_irq.exit_crit_edge: ; preds = %lola_stream_wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lola_stream_clear_pending_irq.exit

do.body.i82:                                      ; preds = %lola_stream_wait_for_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %57 = shl nuw nsw i32 %and.i81, 24
  %58 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remap_addr, align 4
  %add.ptr7.i = getelementptr i8, ptr %59, i32 160
  %60 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dsd, align 4
  %mul9.i = mul i32 %61, 24
  %add.ptr10.i = getelementptr i8, ptr %add.ptr7.i, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %57) #6, !srcloc !70
  br label %lola_stream_clear_pending_irq.exit

lola_stream_clear_pending_irq.exit:               ; preds = %do.body.i82, %lola_stream_wait_for_fifo.exit.lola_stream_clear_pending_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr, align 4
  %add.ptr17 = getelementptr i8, ptr %63, i32 160
  %64 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dsd, align 4
  %mul19 = mul i32 %65, 24
  %add.ptr20 = getelementptr i8, ptr %add.ptr17, i32 %mul19
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 16777216) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %remap_addr, align 4
  %add.ptr27 = getelementptr i8, ptr %67, i32 160
  %68 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dsd, align 4
  %mul29 = mul i32 %69, 24
  %add.ptr30 = getelementptr i8, ptr %add.ptr27, i32 %mul29
  %add.ptr31 = getelementptr i8, ptr %add.ptr30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %remap_addr, align 4
  %add.ptr37 = getelementptr i8, ptr %71, i32 160
  %72 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dsd, align 4
  %mul39 = mul i32 %73, 24
  %add.ptr40 = getelementptr i8, ptr %add.ptr37, i32 %mul39
  %add.ptr41 = getelementptr i8, ptr %add.ptr40, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %remap_addr, align 4
  %add.ptr47 = getelementptr i8, ptr %75, i32 160
  %76 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %dsd, align 4
  %mul49 = mul i32 %77, 24
  %add.ptr50 = getelementptr i8, ptr %add.ptr47, i32 %mul49
  %add.ptr51 = getelementptr i8, ptr %add.ptr50, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 0) #6, !srcloc !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %78 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i84 = sub i32 -20, %78
  %79 = load volatile i32, ptr @jiffies, align 128
  %sub11.i = add i32 %add.neg.i84, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub11.i)
  %cmp12.i = icmp slt i32 %sub11.i, 0
  br i1 %cmp12.i, label %lola_stream_clear_pending_irq.exit.while.body.i91_crit_edge, label %lola_stream_clear_pending_irq.exit.do.end.i96_crit_edge

lola_stream_clear_pending_irq.exit.do.end.i96_crit_edge: ; preds = %lola_stream_clear_pending_irq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i96

lola_stream_clear_pending_irq.exit.while.body.i91_crit_edge: ; preds = %lola_stream_clear_pending_irq.exit
  br label %while.body.i91

while.body.i91:                                   ; preds = %if.end.i94.while.body.i91_crit_edge, %lola_stream_clear_pending_irq.exit.while.body.i91_crit_edge
  %80 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %remap_addr, align 4
  %82 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dsd, align 4
  %mul.i88 = mul i32 %83, 24
  %add.ptr1.i89 = getelementptr i8, ptr %81, i32 168
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i89, i32 %mul.i88
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %85 = and i32 %84, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i90 = icmp eq i32 %85, 0
  br i1 %tobool.not.i90, label %while.body.i91.if.end52_crit_edge, label %if.end.i94

while.body.i91.if.end52_crit_edge:                ; preds = %while.body.i91
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.end.i94:                                       ; preds = %while.body.i91
  tail call void @msleep(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %sub.i92 = add i32 %86, %add.neg.i84
  %cmp.i93 = icmp slt i32 %sub.i92, 0
  br i1 %cmp.i93, label %if.end.i94.while.body.i91_crit_edge, label %if.end.i94.do.end.i96_crit_edge

if.end.i94.do.end.i96_crit_edge:                  ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i96

if.end.i94.while.body.i91_crit_edge:              ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i91

do.end.i96:                                       ; preds = %if.end.i94.do.end.i96_crit_edge, %lola_stream_clear_pending_irq.exit.do.end.i96_crit_edge
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip, align 4
  %dev.i95 = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 27
  %89 = ptrtoint ptr %dev.i95 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i95, align 8
  %91 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dsd, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.8, i32 noundef %92) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end.i96, %while.body.i91.if.end52_crit_edge, %entry.if.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lola_sync_wait_for_fifo(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %substream, i1 noundef zeroext %ready) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %ready, i32 32, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -20, %0
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub12 = add i32 %add.neg, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12)
  %cmp13 = icmp slt i32 %sub12, 0
  br i1 %cmp13, label %while.body.lr.ph, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

while.body.lr.ph:                                 ; preds = %entry
  %group = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 18
  %remap_addr = getelementptr %struct.lola, ptr %chip, i32 0, i32 2, i32 1, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end43.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %group, align 4
  %substreams = getelementptr inbounds %struct.snd_pcm_group, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %substreams to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn8 = load ptr, ptr %substreams, align 4
  %cmp3.not10 = icmp eq ptr %.pn8, %substreams
  br i1 %cmp3.not10, label %while.body.cleanup46_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.cleanup46_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

for.body:                                         ; preds = %cleanup33.for.body_crit_edge, %while.body.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %cleanup33.for.body_crit_edge ], [ %.pn8, %while.body.for.body_crit_edge ]
  %s.0 = getelementptr i8, ptr %.pn11, i32 -140
  %5 = ptrtoint ptr %s.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s.0, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %cmp6.not = icmp eq ptr %8, %12
  br i1 %cmp6.not, label %if.end, label %for.body.cleanup33_crit_edge

for.body.cleanup33_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.end:                                           ; preds = %for.body
  %private_data.i.i = getelementptr i8, ptr %.pn11, i32 -132
  %13 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i.i, align 4
  %stream.i.i = getelementptr i8, ptr %.pn11, i32 -92
  %15 = ptrtoint ptr %stream.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream.i.i, align 4
  %number.i = getelementptr i8, ptr %.pn11, i32 -128
  %17 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number.i, align 4
  %prepared = getelementptr %struct.lola, ptr %14, i32 0, i32 16, i32 %16, i32 2, i32 %18, i32 10
  %19 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %prepared, align 4
  %20 = and i8 %bf.load, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %20)
  %.not = icmp eq i8 %20, 96
  br i1 %.not, label %if.then14, label %if.end.cleanup33_crit_edge

if.end.cleanup33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.then14:                                        ; preds = %if.end
  %21 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remap_addr, align 4
  %add.ptr15 = getelementptr i8, ptr %22, i32 160
  %dsd = getelementptr %struct.lola, ptr %14, i32 0, i32 16, i32 %16, i32 2, i32 %18, i32 2
  %23 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dsd, align 4
  %mul = mul i32 %24, 24
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %mul
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #6, !srcloc !73
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %and = and i32 %26, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp21.not = icmp eq i32 %and, %cond
  br i1 %cmp21.not, label %if.end25, label %for.end

if.end25:                                         ; preds = %if.then14
  br i1 %ready, label %if.then27, label %if.end25.cleanup33_crit_edge

if.end25.cleanup33_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load29 = load i8, ptr %prepared, align 4
  %bf.clear30 = and i8 %bf.load29, -33
  store i8 %bf.clear30, ptr %prepared, align 4
  br label %cleanup33

cleanup33:                                        ; preds = %if.then27, %if.end25.cleanup33_crit_edge, %if.end.cleanup33_crit_edge, %for.body.cleanup33_crit_edge
  %28 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn11, align 4
  %29 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %group, align 4
  %substreams2 = getelementptr inbounds %struct.snd_pcm_group, ptr %30, i32 0, i32 2
  %cmp3.not = icmp eq ptr %.pn, %substreams2
  br i1 %cmp3.not, label %cleanup33.cleanup46_crit_edge, label %cleanup33.for.body_crit_edge

cleanup33.for.body_crit_edge:                     ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup33.cleanup46_crit_edge:                    ; preds = %cleanup33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

for.end:                                          ; preds = %if.then14
  %31 = ptrtoint ptr %dsd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dsd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %tobool41.not = icmp eq i32 %32, -1
  br i1 %tobool41.not, label %for.end.cleanup46_crit_edge, label %if.end43

for.end.cleanup46_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup46

if.end43:                                         ; preds = %for.end
  tail call void @msleep(i32 noundef 1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %33
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end43.while.body_crit_edge, label %if.end43.do.end_crit_edge

if.end43.do.end_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end43.while.body_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end:                                           ; preds = %if.end43.do.end_crit_edge, %entry.do.end_crit_edge
  %pending.0.lcssa = phi i32 [ -1, %entry.do.end_crit_edge ], [ %32, %if.end43.do.end_crit_edge ]
  %34 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.1, i32 noundef %pending.0.lcssa) #9
  br label %cleanup46

cleanup46:                                        ; preds = %do.end, %for.end.cleanup46_crit_edge, %cleanup33.cleanup46_crit_edge, %while.body.cleanup46_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_set_sample_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_chunk_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lola_codec_read(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/lola/lola_pcm.c", i32 598, i32 32}
!2 = !{ptr @lola_pcm_ops, !3, !"lola_pcm_ops", i1 false, i1 false}
!3 = !{!"../sound/pci/lola/lola_pcm.c", i32 575, i32 33}
!4 = !{ptr @lola_pcm_hw, !5, !"lola_pcm_hw", i1 false, i1 false}
!5 = !{!"../sound/pci/lola/lola_pcm.c", i32 187, i32 38}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/lola/lola_pcm.c", i32 146, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @lola_sync_wait_for_fifo._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @lola_sync_wait_for_fifo._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/pci/lola/lola_pcm.c", i32 108, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lola_stream_wait_for_fifo._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @lola_stream_wait_for_fifo._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/lola/lola_pcm.c", i32 93, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wait_for_srst_clear._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @wait_for_srst_clear._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/pci/lola/lola_pcm.c", i32 362, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lola_setup_periods._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @lola_setup_periods._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/pci/lola/lola_pcm.c", i32 404, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lola_set_stream_config._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @lola_set_stream_config._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/lola/lola_pcm.c", i32 416, i32 4}
!37 = !{ptr @lola_set_stream_config._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lola_set_stream_config._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/lola/lola_pcm.c", i32 633, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lola_init_stream._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @lola_init_stream._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/lola/lola_pcm.c", i32 639, i32 4}
!46 = !{ptr @lola_init_stream._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @lola_init_stream._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @lola_init_stream._entry.23, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../sound/pci/lola/lola_pcm.c", i32 649, i32 4}
!50 = !{ptr @lola_init_stream._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/lola/lola_pcm.c", i32 661, i32 3}
!53 = !{ptr @lola_init_stream._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lola_init_stream._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/lola/lola_pcm.c", i32 668, i32 3}
!57 = !{ptr @lola_init_stream._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @lola_init_stream._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
!69 = !{i64 2154674613}
!70 = !{i64 6232762}
!71 = !{i64 2154675431}
!72 = !{i64 2154676250}
!73 = !{i64 6233180}
!74 = !{i64 2154643666}
!75 = !{i64 2154644144}
!76 = !{i64 2154677044}
!77 = !{i64 2154650464}
!78 = !{i64 2154642764}
!79 = !{i64 2154644960}
!80 = !{i64 2154645877}
!81 = !{i64 2154682087}
!82 = !{i64 2154662959}
!83 = !{i64 2154663746}
!84 = !{i64 2154664493}
!85 = !{i64 2154665208}
!86 = !{i64 2154665916}
!87 = !{i64 2154666624}
!88 = !{i64 2154647508}
!89 = !{i64 2154657092}
