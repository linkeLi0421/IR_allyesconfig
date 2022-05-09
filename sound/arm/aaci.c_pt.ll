; ModuleID = '/llk/IR_all_yes/sound/arm/aaci.c_pt.bc'
source_filename = "../sound/arm/aaci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_pcm = type { ptr, i8, i16, i16, i32, [2 x %struct.anon.98], i32 }
%struct.anon.98 = type { i16, [4 x i16], [4 x i8], [4 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.aaci = type { ptr, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, ptr, ptr, i32, %struct.aaci_runtime, %struct.aaci_runtime, ptr }
%struct.aaci_runtime = type { ptr, ptr, %struct.spinlock, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32 }
%struct.snd_ac97_bus = type { ptr, ptr, ptr, ptr, i16, i8, i32, %struct.spinlock, [2 x [4 x i16]], i16, ptr, [4 x ptr], ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.86, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.86 = type { i32, [28 x i8] }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_aaci__295_1091_aaci_driver_init6 = internal global ptr @aaci_driver_init, section ".initcall6.init", align 4
@aaci_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @aaci_probe, ptr @aaci_remove, ptr null, ptr @aaci_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_aaci_driver_exit = internal global ptr @aaci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file296 = internal constant [33 x i8] c"snd_aaci.file=sound/arm/snd-aaci\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [21 x i8] c"snd_aaci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [79 x i8] c"snd_aaci.description=ARM PrimeCell PL041 Advanced Audio CODEC Interface driver\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aaci-pl041\00", [21 x i8] zeroinitializer }, align 32
@aaci_ids = internal global { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 266305, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@aaci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&aaci->playback.lock\00", [43 x i8] zeroinitializer }, align 32
@aaci_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&aaci->capture.lock\00", [44 x i8] zeroinitializer }, align 32
@aaci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014AACI: FIFO depth %d not supported\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aaci_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sound/arm/aaci.c\00", [47 x i8] zeroinitializer }, align 32
@aaci_probe._entry_ptr = internal global ptr @aaci_probe._entry, section ".printk_index", align 4
@aaci_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1045, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aaci_probe._entry_ptr.11 = internal global ptr @aaci_probe._entry.7, section ".printk_index", align 4
@aaci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1046, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FIFO %u entries\0A\00", [47 x i8] zeroinitializer }, align 32
@aaci_probe._entry_ptr.14 = internal global ptr @aaci_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ARM AC'97 Interface\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s PL%03x rev%u at 0x%08llx, irq %d\00", [60 x i8] zeroinitializer }, align 32
@aaci_init_card.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&aaci->ac97_sem\00", [16 x i8] zeroinitializer }, align 32
@aaci_init_card.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&aaci->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aaci_bus_ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @aaci_ac97_write, ptr @aaci_ac97_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ac97_defs = internal constant { [3 x %struct.ac97_pcm], [36 x i8] } { [3 x %struct.ac97_pcm] [%struct.ac97_pcm { ptr null, i8 64, i16 0, i16 0, i32 0, [2 x %struct.anon.98] [%struct.anon.98 { i16 984, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.98 { i16 408, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.98] [%struct.anon.98 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.98 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.98] [%struct.anon.98 { i16 64, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.98 zeroinitializer], i32 0 }], [36 x i8] zeroinitializer }, align 32
@aaci_ac97_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 99, ptr @.str.22, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"timeout waiting for write to complete\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aaci_ac97_write\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@aaci_ac97_write._entry_ptr = internal global ptr @aaci_ac97_write._entry, section ".printk_index", align 4
@aaci_ac97_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 136, ptr @.str.22, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"timeout on slot 1 TX busy\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aaci_ac97_read\00", [17 x i8] zeroinitializer }, align 32
@aaci_ac97_read._entry_ptr = internal global ptr @aaci_ac97_read._entry, section ".printk_index", align 4
@aaci_ac97_read._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.6, i32 153, ptr @.str.22, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"timeout on RX valid\0A\00", [43 x i8] zeroinitializer }, align 32
@aaci_ac97_read._entry_ptr.27 = internal global ptr @aaci_ac97_read._entry.25, section ".printk_index", align 4
@aaci_ac97_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.6, i32 165, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ac97 read back fail.  retry\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aaci_ac97_read._entry_ptr.31 = internal global ptr @aaci_ac97_read._entry.28, section ".printk_index", align 4
@aaci_ac97_read._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.6, i32 170, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"wrong ac97 register read back (%x != %x)\0A\00", [54 x i8] zeroinitializer }, align 32
@aaci_ac97_read._entry_ptr.34 = internal global ptr @aaci_ac97_read._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AACI AC'97\00", [21 x i8] zeroinitializer }, align 32
@aaci_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @aaci_pcm_open, ptr @aaci_pcm_close, ptr null, ptr @aaci_pcm_hw_params, ptr @aaci_pcm_hw_free, ptr @aaci_pcm_prepare, ptr @aaci_pcm_playback_trigger, ptr null, ptr @aaci_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aaci_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @aaci_pcm_open, ptr @aaci_pcm_close, ptr null, ptr @aaci_pcm_hw_params, ptr @aaci_pcm_hw_free, ptr @aaci_pcm_capture_prepare, ptr @aaci_pcm_capture_trigger, ptr null, ptr @aaci_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@aaci_hw_info = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 327939, i64 4, i32 0, i32 0, i32 0, i32 2, i32 2, i32 65536, i32 256, i32 4096, i32 4, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@aaci_rule_channels.channel_list = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 6], [20 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 199, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX overrun on chan %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aaci_fifo_irq\00", [18 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry_ptr = internal global ptr @aaci_fifo_irq._entry, section ".printk_index", align 4
@aaci_fifo_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.6, i32 204, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX timeout on chan %d\0A\00", [41 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry_ptr.40 = internal global ptr @aaci_fifo_irq._entry.38, section ".printk_index", align 4
@aaci_fifo_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.6, i32 214, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX interrupt???\0A\00", [47 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry_ptr.43 = internal global ptr @aaci_fifo_irq._entry.41, section ".printk_index", align 4
@aaci_fifo_irq.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.44, ptr @.str.37, ptr @.str.6, ptr @.str.45, i8 0, i8 66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"snd_aaci\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX underrun on chan %d\0A\00", [40 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.37, ptr @.str.6, i32 274, ptr @.str.30, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TX interrupt???\0A\00", [47 x i8] zeroinitializer }, align 32
@aaci_fifo_irq._entry_ptr.48 = internal global ptr @aaci_fifo_irq._entry.46, section ".printk_index", align 4
@channels_to_slotmask = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 24, i32 0, i32 408, i32 0, i32 984], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"aaci_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1081, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1083, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"aaci_ids\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1071, i32 23 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 997, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1004, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1033, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1045, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 1046, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 894, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 896, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 901, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 902, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"aaci_bus_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 814, i32 38 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"ac97_defs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 773, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 98, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 136, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 153, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 164, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 168, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 918, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"aaci_playback_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 625, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"aaci_capture_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 727, i32 33 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"aaci_hw_info\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 348, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"channel_list\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 383, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 199, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 204, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 214, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 264, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 274, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"channels_to_slotmask\00", align 1
@___asan_gen_.216 = private constant [20 x i8] c"../sound/arm/aaci.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 490, i32 18 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_aaci_driver_exit, ptr @__initcall__kmod_snd_aaci__295_1091_aaci_driver_init6, ptr @aaci_ac97_read._entry, ptr @aaci_ac97_read._entry.25, ptr @aaci_ac97_read._entry.28, ptr @aaci_ac97_read._entry.32, ptr @aaci_ac97_read._entry_ptr, ptr @aaci_ac97_read._entry_ptr.27, ptr @aaci_ac97_read._entry_ptr.31, ptr @aaci_ac97_read._entry_ptr.34, ptr @aaci_ac97_write._entry, ptr @aaci_ac97_write._entry_ptr, ptr @aaci_driver_exit, ptr @aaci_fifo_irq._entry, ptr @aaci_fifo_irq._entry.38, ptr @aaci_fifo_irq._entry.41, ptr @aaci_fifo_irq._entry.46, ptr @aaci_fifo_irq._entry_ptr, ptr @aaci_fifo_irq._entry_ptr.40, ptr @aaci_fifo_irq._entry_ptr.43, ptr @aaci_fifo_irq._entry_ptr.48, ptr @aaci_probe._entry, ptr @aaci_probe._entry.12, ptr @aaci_probe._entry.7, ptr @aaci_probe._entry_ptr, ptr @aaci_probe._entry_ptr.11, ptr @aaci_probe._entry_ptr.14, ptr @aaci_driver, ptr @.str, ptr @aaci_ids, ptr @aaci_probe.__key, ptr @.str.1, ptr @aaci_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @aaci_init_card.__key, ptr @.str.17, ptr @aaci_init_card.__key.18, ptr @.str.19, ptr @aaci_bus_ops, ptr @ac97_defs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @aaci_playback_ops, ptr @aaci_capture_ops, ptr @aaci_hw_info, ptr @aaci_rule_channels.channel_list, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @channels_to_slotmask], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_init_card.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_init_card.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_bus_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_defs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ac97_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ac97_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ac97_read._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ac97_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_ac97_read._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_hw_info to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_rule_channels.channel_list to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_fifo_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_fifo_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_fifo_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aaci_fifo_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channels_to_slotmask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @aaci_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aaci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @amba_driver_unregister(ptr noundef nonnull @aaci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %pcm.i156 = alloca ptr, align 4
  %ac97_template.i = alloca %struct.snd_ac97_template, align 4
  %ac97_bus.i = alloca ptr, align 4
  %ac97.i = alloca ptr, align 4
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_request_regions(ptr noundef %dev, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #9
  %0 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !116
  %call.i = call i32 @snd_card_new(ptr noundef %dev, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 404, ptr noundef nonnull %card.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aaci_init_card.exit.thread, label %aaci_init_card.exit

aaci_init_card.exit.thread:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #9
  br label %if.end100

aaci_init_card.exit:                              ; preds = %if.end
  %1 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aaci_free_card, ptr %private_free.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 2
  %call2.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef nonnull @.str, i32 noundef 16) #9
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 3
  %call4.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef nonnull @.str.15, i32 noundef 32) #9
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 4
  %shortname6.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 3
  %periphid.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 4
  %8 = ptrtoint ptr %periphid.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %periphid.i, align 8
  %and.i = and i32 %9, 4095
  %shr.i = lshr i32 %9, 20
  %and9.i = and i32 %shr.i, 15
  %res.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %10 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %res.i, align 8
  %conv.i = zext i32 %11 to i64
  %irq.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 8
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %longname.i, i32 noundef 80, ptr noundef nonnull @.str.16, ptr noundef %shortname6.i, i32 noundef %and.i, i32 noundef %and9.i, i64 noundef %conv.i, i32 noundef %13) #9
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 8
  %ac97_sem.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 6
  call void @__mutex_init(ptr noundef %ac97_sem.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @aaci_init_card.__key) #9
  %irq_lock.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 5
  call void @__mutex_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @aaci_init_card.__key.18) #9
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %card14.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %card14.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %card14.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %17, align 4
  %maincr.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 9
  %22 = ptrtoint ptr %maincr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 121, ptr %maincr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #9
  %tobool2.not = icmp eq ptr %17, null
  br i1 %tobool2.not, label %aaci_init_card.exit.if.end100_crit_edge, label %if.end4

aaci_init_card.exit.if.end100_crit_edge:          ; preds = %aaci_init_card.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.end4:                                          ; preds = %aaci_init_card.exit
  %23 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %res.i, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %24
  %add.i = add i32 %sub.i, %26
  %call7 = call ptr @ioremap(i32 noundef %24, i32 noundef %add.i) #9
  %base = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 2
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7, ptr %base, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end4.if.then97_crit_edge, label %do.body

if.end4.if.then97_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

do.body:                                          ; preds = %if.end4
  %playback = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 10
  %lock = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 10, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @aaci_probe.__key, i16 noundef signext 3) #9
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %30 = ptrtoint ptr %playback to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %playback, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 144
  %fifo = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr17, ptr %fifo, align 4
  %capture = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 11
  %lock20 = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 11, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock20, ptr noundef nonnull @.str.3, ptr noundef nonnull @aaci_probe.__key.2, i16 noundef signext 3) #9
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %34 = ptrtoint ptr %capture to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %capture, align 4
  %add.ptr29 = getelementptr i8, ptr %33, i32 144
  %fifo31 = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 11, i32 1
  %35 = ptrtoint ptr %fifo31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr29, ptr %fifo31, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %add.ptr38 = getelementptr i8, ptr %33, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %add.ptr42 = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #9, !srcloc !118
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr34.1 = getelementptr i8, ptr %37, i32 20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %add.ptr38.1 = getelementptr i8, ptr %37, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.1, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %add.ptr42.1 = getelementptr i8, ptr %37, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.1, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.1, i32 0) #9, !srcloc !118
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr34.2 = getelementptr i8, ptr %39, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %add.ptr38.2 = getelementptr i8, ptr %39, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.2, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %add.ptr42.2 = getelementptr i8, ptr %39, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.2, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.2, i32 0) #9, !srcloc !118
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  %add.ptr34.3 = getelementptr i8, ptr %41, i32 60
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  call void @arm_heavy_mb() #9
  %add.ptr38.3 = getelementptr i8, ptr %41, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.3, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %add.ptr42.3 = getelementptr i8, ptr %41, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.3, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.3, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  call void @arm_heavy_mb() #9
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr51 = getelementptr i8, ptr %43, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -14745600) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %maincr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %maincr.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45)
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr56 = getelementptr i8, ptr %48, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %46) #9, !srcloc !118
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97_template.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac97_bus.i) #9
  %52 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -1 to ptr), ptr %ac97_bus.i, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ac97.i) #9
  %53 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -1 to ptr), ptr %ac97.i, align 4, !annotation !116
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %55, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %56(i32 noundef 429496) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr5.i = getelementptr i8, ptr %58, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 16777216) #9, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 9019416) #9
  %60 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card14.i, align 4
  %call.i150 = call i32 @snd_ac97_bus(ptr noundef %61, i32 noundef 0, ptr noundef nonnull @aaci_bus_ops, ptr noundef nonnull %17, ptr noundef nonnull %ac97_bus.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i, label %if.end.i151, label %do.body.aaci_probe_ac97.exit.thread_crit_edge

do.body.aaci_probe_ac97.exit.thread_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %aaci_probe_ac97.exit.thread

if.end.i151:                                      ; preds = %do.body
  %62 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97_template.i, i32 0, i32 5
  %63 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ac97_bus.i, align 4
  %clock.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 48000, ptr %clock.i, align 4
  %ac97_bus6.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 7
  %66 = ptrtoint ptr %ac97_bus6.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %ac97_bus6.i, align 4
  %67 = getelementptr inbounds i8, ptr %ac97_template.i, i32 4
  %68 = call ptr @memset(ptr %67, i32 0, i32 20)
  %69 = ptrtoint ptr %ac97_template.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %17, ptr %ac97_template.i, align 4
  %70 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %62, align 4
  %call7.i = call i32 @snd_ac97_mixer(ptr noundef %64, ptr noundef nonnull %ac97_template.i, ptr noundef nonnull %ac97.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i151.aaci_probe_ac97.exit.thread_crit_edge

if.end.i151.aaci_probe_ac97.exit.thread_crit_edge: ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %aaci_probe_ac97.exit.thread

if.end10.i:                                       ; preds = %if.end.i151
  %71 = ptrtoint ptr %ac97.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ac97.i, align 4
  %ac9711.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 8
  %73 = ptrtoint ptr %ac9711.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %ac9711.i, align 4
  %scaps.i.i = getelementptr inbounds %struct.snd_ac97, ptr %72, i32 0, i32 18
  %74 = ptrtoint ptr %scaps.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %scaps.i.i, align 4
  %and.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool13.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then14.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_ac97_write_cache(ptr noundef %72, i16 noundef zeroext 10, i16 noundef zeroext -32738) #9
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %if.end10.i.if.end15.i_crit_edge
  %76 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ac97_bus.i, align 4
  %call16.i = call i32 @snd_ac97_pcm_assign(ptr noundef %77, i16 noundef zeroext 3, ptr noundef nonnull @ac97_defs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end64, label %if.end15.i.aaci_probe_ac97.exit.thread_crit_edge

if.end15.i.aaci_probe_ac97.exit.thread_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aaci_probe_ac97.exit.thread

aaci_probe_ac97.exit.thread:                      ; preds = %if.end15.i.aaci_probe_ac97.exit.thread_crit_edge, %if.end.i151.aaci_probe_ac97.exit.thread_crit_edge, %do.body.aaci_probe_ac97.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call16.i, %if.end15.i.aaci_probe_ac97.exit.thread_crit_edge ], [ %call7.i, %if.end.i151.aaci_probe_ac97.exit.thread_crit_edge ], [ %call.i150, %do.body.aaci_probe_ac97.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac97.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac97_bus.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97_template.i) #9
  br label %if.then97

if.end64:                                         ; preds = %if.end15.i
  %78 = ptrtoint ptr %ac97_bus.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ac97_bus.i, align 4
  %pcms.i = getelementptr inbounds %struct.snd_ac97_bus, ptr %79, i32 0, i32 10
  %80 = ptrtoint ptr %pcms.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pcms.i, align 4
  %pcm.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 10, i32 3
  %82 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %pcm.i, align 4
  %83 = load ptr, ptr %pcms.i, align 4
  %arrayidx21.i = getelementptr %struct.ac97_pcm, ptr %83, i32 1
  %pcm22.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 11, i32 3
  %84 = ptrtoint ptr %pcm22.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %arrayidx21.i, ptr %pcm22.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac97.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ac97_bus.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97_template.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  call void @arm_heavy_mb() #9
  %85 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %playback, align 4
  %add.ptr.i152 = getelementptr i8, ptr %86, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 16777472) #9, !srcloc !118
  %87 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %playback, align 4
  %add.ptr243.i = getelementptr i8, ptr %88, i32 8
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr243.i) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %90 = and i32 %89, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not44.i = icmp eq i32 %90, 0
  br i1 %tobool.not44.i, label %if.end64.do.body4.i_crit_edge, label %if.end64.aaci_size_fifo.exit_crit_edge

if.end64.aaci_size_fifo.exit_crit_edge:           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %aaci_size_fifo.exit

if.end64.do.body4.i_crit_edge:                    ; preds = %if.end64
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %if.end64.do.body4.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %do.body4.i.do.body4.i_crit_edge ], [ 0, %if.end64.do.body4.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !129
  call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %fifo, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 0) #9, !srcloc !118
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %93 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %playback, align 4
  %add.ptr2.i = getelementptr i8, ptr %94, i32 8
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %96 = and i32 %95, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i153 = icmp eq i32 %96, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %i.045.i)
  %cmp.i154 = icmp ult i32 %i.045.i, 4095
  %or.cond.i = select i1 %tobool.not.i153, i1 %cmp.i154, i1 false
  br i1 %or.cond.i, label %do.body4.i.do.body4.i_crit_edge, label %do.body4.i.aaci_size_fifo.exit_crit_edge

do.body4.i.aaci_size_fifo.exit_crit_edge:         ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %aaci_size_fifo.exit

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body4.i

aaci_size_fifo.exit:                              ; preds = %do.body4.i.aaci_size_fifo.exit_crit_edge, %if.end64.aaci_size_fifo.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end64.aaci_size_fifo.exit_crit_edge ], [ %inc.i, %do.body4.i.aaci_size_fifo.exit_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %playback, align 4
  %add.ptr11.i = getelementptr i8, ptr %98, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %maincr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %maincr.i, align 4
  %and15.i = and i32 %100, -2
  %101 = call i32 @llvm.bswap.i32(i32 %and15.i) #9
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %103, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %101) #9, !srcloc !118
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base, align 4
  %add.ptr21.i = getelementptr i8, ptr %105, i32 120
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #9, !srcloc !123
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %107(i32 noundef 214748) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  call void @arm_heavy_mb() #9
  %108 = ptrtoint ptr %maincr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %maincr.i, align 4
  %110 = call i32 @llvm.bswap.i32(i32 %109) #9
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %112, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 %110) #9, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %i.0.lcssa.i)
  %cmp31.i = icmp eq i32 %i.0.lcssa.i, 4096
  %fifo_depth170 = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 3
  br i1 %cmp31.i, label %.thread, label %114

.thread:                                          ; preds = %aaci_size_fifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %fifo_depth170 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 8, ptr %fifo_depth170, align 4
  br label %do.end71

114:                                              ; preds = %aaci_size_fifo.exit
  %115 = ptrtoint ptr %fifo_depth170 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %i.0.lcssa.i, ptr %fifo_depth170, align 4
  %and = and i32 %i.0.lcssa.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool67.not = icmp eq i32 %and, 0
  br i1 %tobool67.not, label %if.end75, label %.do.end71_crit_edge

.do.end71_crit_edge:                              ; preds = %114
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end71

do.end71:                                         ; preds = %.do.end71_crit_edge, %.thread
  %116 = phi i32 [ 8, %.thread ], [ %i.0.lcssa.i, %.do.end71_crit_edge ]
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %116) #12
  br label %if.then97

if.end75:                                         ; preds = %114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i156) #9
  %117 = ptrtoint ptr %pcm.i156 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i156, align 4, !annotation !116
  %118 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card14.i, align 4
  %call.i158 = call i32 @snd_pcm_new(ptr noundef %119, ptr noundef nonnull @.str.35, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm.i156) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp eq i32 %call.i158, 0
  br i1 %cmp.i159, label %if.end79, label %aaci_init_pcm.exit

aaci_init_pcm.exit:                               ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i156) #9
  br label %if.then97

if.end79:                                         ; preds = %if.end75
  %120 = ptrtoint ptr %pcm.i156 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pcm.i156, align 4
  %pcm1.i = getelementptr inbounds %struct.aaci, ptr %17, i32 0, i32 12
  %122 = ptrtoint ptr %pcm1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %121, ptr %pcm1.i, align 4
  %private_data.i160 = getelementptr inbounds %struct.snd_pcm, ptr %121, i32 0, i32 11
  %123 = ptrtoint ptr %private_data.i160 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %17, ptr %private_data.i160, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %121, i32 0, i32 3
  %124 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %121, i32 0, i32 7
  %call2.i161 = call i32 @strscpy(ptr noundef %name.i, ptr noundef nonnull @.str, i32 noundef 80) #9
  %125 = ptrtoint ptr %pcm.i156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pcm.i156, align 4
  call void @snd_pcm_set_ops(ptr noundef %126, i32 noundef 0, ptr noundef nonnull @aaci_playback_ops) #9
  %127 = ptrtoint ptr %pcm.i156 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcm.i156, align 4
  call void @snd_pcm_set_ops(ptr noundef %128, i32 noundef 1, ptr noundef nonnull @aaci_capture_ops) #9
  %129 = ptrtoint ptr %pcm.i156 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %pcm.i156, align 4
  %131 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %card14.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %132, i32 0, i32 27
  %133 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i, align 8
  %call4.i162 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %130, i32 noundef 2, ptr noundef %134, i32 noundef 0, i32 noundef 65536) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i156) #9
  %135 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %card14.i, align 4
  %call80 = call i32 @snd_card_register(ptr noundef %136) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp eq i32 %call80, 0
  br i1 %cmp81, label %do.end85, label %if.end79.if.then97_crit_edge

if.end79.if.then97_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then97

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  %137 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %card14.i, align 4
  %longname = getelementptr inbounds %struct.snd_card, ptr %138, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %longname) #12
  %139 = ptrtoint ptr %fifo_depth170 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %fifo_depth170, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %140) #12
  %141 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %card14.i, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %143 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %driver_data.i, align 4
  br label %cleanup

if.then97:                                        ; preds = %if.end79.if.then97_crit_edge, %aaci_init_pcm.exit, %do.end71, %aaci_probe_ac97.exit.thread, %if.end4.if.then97_crit_edge
  %ret.0182 = phi i32 [ -19, %do.end71 ], [ %call.i158, %aaci_init_pcm.exit ], [ %ret.0.i.ph, %aaci_probe_ac97.exit.thread ], [ -12, %if.end4.if.then97_crit_edge ], [ %call80, %if.end79.if.then97_crit_edge ]
  %144 = ptrtoint ptr %card14.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %card14.i, align 4
  %call99 = call i32 @snd_card_free(ptr noundef %145) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %aaci_init_card.exit.if.end100_crit_edge, %aaci_init_card.exit.thread
  %ret.0176 = phi i32 [ %ret.0182, %if.then97 ], [ -12, %aaci_init_card.exit.if.end100_crit_edge ], [ -12, %aaci_init_card.exit.thread ]
  call void @amba_release_regions(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end100, %do.end85, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0176, %if.end100 ], [ 0, %do.end85 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aaci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %base = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !118
  %call2 = tail call i32 @snd_card_free(ptr noundef nonnull %1) #9
  tail call void @amba_release_regions(ptr noundef %dev) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aaci_free_card(ptr nocapture noundef readonly %card) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %base = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ac97_write_cache(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_assign(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aaci_ac97_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ugt i16 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac97_sem = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ac97_sem, i32 noundef 0) #9
  tail call fastcc void @aaci_ac97_select_codec(ptr noundef %1, ptr noundef %ac97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %conv2 = zext i16 %val to i32
  %shl = shl nuw nsw i32 %conv2, 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %conv6 = zext i16 %reg to i32
  %shl7 = shl nuw nsw i32 %conv6, 12
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl7)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %7) #9, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 4509708) #9
  br label %do.body10

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %if.end
  %timeout.0 = phi i32 [ 168, %if.end ], [ %dec, %do.body10.do.body10_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #9
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 104
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  %15 = and i32 %14, 167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool15.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool15.not
  br i1 %or.cond, label %do.end16, label %do.body10.do.body10_crit_edge

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

do.end16:                                         ; preds = %do.body10
  br i1 %tobool.not, label %do.end16.if.end24_crit_edge, label %do.end22

do.end16.if.end24_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.end22:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.20) #12
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %do.end16.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %ac97_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @aaci_ac97_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %3)
  %cmp = icmp ugt i16 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %ac97_sem = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ac97_sem, i32 noundef 0) #9
  tail call fastcc void @aaci_ac97_select_codec(ptr noundef %1, ptr noundef %ac97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  tail call void @arm_heavy_mb() #9
  %conv2 = zext i16 %reg to i32
  %shl = shl nuw nsw i32 %conv2, 12
  %or = or i32 %shl, 524288
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !118
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 4509708) #9
  br label %do.body3

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %if.end
  %timeout.0 = phi i32 [ 168, %if.end ], [ %dec, %do.body3.do.body3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %10, i32 104
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %12 = and i32 %11, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool8.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end9, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

do.end9:                                          ; preds = %do.body3
  br i1 %tobool.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23) #12
  br label %out

if.end17:                                         ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 4509708) #9
  br label %do.body18

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %if.end17
  %timeout.1 = phi i32 [ 168, %if.end17 ], [ %dec33, %do.body18.do.body18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #9
  tail call void @__might_resched(ptr noundef nonnull @.str.6, i32 noundef 148, i32 noundef 0) #9
  %call.i = tail call i32 @__cond_resched() #9
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %18, i32 104
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !140
  %20 = and i32 %19, 1073807360
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073807360, i32 %20)
  %cmp30.not = icmp eq i32 %20, 1073807360
  %dec33 = add nsw i32 %timeout.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec33)
  %tobool34.not = icmp eq i32 %dec33, 0
  %or.cond114 = select i1 %cmp30.not, i1 true, i1 %tobool34.not
  br i1 %or.cond114, label %do.end36, label %do.body18.do.body18_crit_edge

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.end36:                                         ; preds = %do.body18
  br i1 %cmp30.not, label %do.body46.preheader, label %do.end42

do.body46.preheader:                              ; preds = %do.end36
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr50117 = getelementptr i8, ptr %22, i32 80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50117) #9, !srcloc !123
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr118 = lshr i32 %24, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr118, i32 %conv2)
  %cmp55119 = icmp eq i32 %shr118, %conv2
  br i1 %cmp55119, label %do.body46.preheader.if.then57_crit_edge, label %if.else.preheader

do.body46.preheader.if.then57_crit_edge:          ; preds = %do.body46.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.preheader:                                ; preds = %do.body46.preheader
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.29) #12
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr50 = getelementptr i8, ptr %28, i32 80
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #9, !srcloc !123
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr = lshr i32 %30, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv2)
  %cmp55 = icmp eq i32 %shr, %conv2
  br i1 %cmp55, label %if.else.preheader.if.then57_crit_edge, label %if.else.1

if.else.preheader.if.then57_crit_edge:            ; preds = %if.else.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

do.end42:                                         ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.26) #12
  br label %out

if.then57:                                        ; preds = %if.else.8.if.then57_crit_edge, %if.else.7.if.then57_crit_edge, %if.else.6.if.then57_crit_edge, %if.else.5.if.then57_crit_edge, %if.else.4.if.then57_crit_edge, %if.else.3.if.then57_crit_edge, %if.else.2.if.then57_crit_edge, %if.else.1.if.then57_crit_edge, %if.else.preheader.if.then57_crit_edge, %do.body46.preheader.if.then57_crit_edge
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %34, i32 88
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #9, !srcloc !123
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !142
  %shr65 = lshr i32 %36, 4
  %phi.cast = trunc i32 %shr65 to i16
  br label %out

do.cond83.thread:                                 ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.33, i32 noundef %shr.8, i32 noundef %conv2) #12
  br label %out

if.else.1:                                        ; preds = %if.else.preheader
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.29) #12
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr50.1 = getelementptr i8, ptr %42, i32 80
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.1) #9, !srcloc !123
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.1 = lshr i32 %44, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.1, i32 %conv2)
  %cmp55.1 = icmp eq i32 %shr.1, %conv2
  br i1 %cmp55.1, label %if.else.1.if.then57_crit_edge, label %if.else.2

if.else.1.if.then57_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.2:                                        ; preds = %if.else.1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.29) #12
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr50.2 = getelementptr i8, ptr %48, i32 80
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.2) #9, !srcloc !123
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.2 = lshr i32 %50, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.2, i32 %conv2)
  %cmp55.2 = icmp eq i32 %shr.2, %conv2
  br i1 %cmp55.2, label %if.else.2.if.then57_crit_edge, label %if.else.3

if.else.2.if.then57_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.3:                                        ; preds = %if.else.2
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %52, ptr noundef nonnull @.str.29) #12
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr50.3 = getelementptr i8, ptr %54, i32 80
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.3) #9, !srcloc !123
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.3 = lshr i32 %56, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.3, i32 %conv2)
  %cmp55.3 = icmp eq i32 %shr.3, %conv2
  br i1 %cmp55.3, label %if.else.3.if.then57_crit_edge, label %if.else.4

if.else.3.if.then57_crit_edge:                    ; preds = %if.else.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.4:                                        ; preds = %if.else.3
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.29) #12
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr50.4 = getelementptr i8, ptr %60, i32 80
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.4) #9, !srcloc !123
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.4 = lshr i32 %62, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.4, i32 %conv2)
  %cmp55.4 = icmp eq i32 %shr.4, %conv2
  br i1 %cmp55.4, label %if.else.4.if.then57_crit_edge, label %if.else.5

if.else.4.if.then57_crit_edge:                    ; preds = %if.else.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.5:                                        ; preds = %if.else.4
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.29) #12
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr50.5 = getelementptr i8, ptr %66, i32 80
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.5) #9, !srcloc !123
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.5 = lshr i32 %68, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.5, i32 %conv2)
  %cmp55.5 = icmp eq i32 %shr.5, %conv2
  br i1 %cmp55.5, label %if.else.5.if.then57_crit_edge, label %if.else.6

if.else.5.if.then57_crit_edge:                    ; preds = %if.else.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.6:                                        ; preds = %if.else.5
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.29) #12
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr50.6 = getelementptr i8, ptr %72, i32 80
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.6) #9, !srcloc !123
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.6 = lshr i32 %74, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.6, i32 %conv2)
  %cmp55.6 = icmp eq i32 %shr.6, %conv2
  br i1 %cmp55.6, label %if.else.6.if.then57_crit_edge, label %if.else.7

if.else.6.if.then57_crit_edge:                    ; preds = %if.else.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.7:                                        ; preds = %if.else.6
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.29) #12
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr50.7 = getelementptr i8, ptr %78, i32 80
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.7) #9, !srcloc !123
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.7 = lshr i32 %80, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.7, i32 %conv2)
  %cmp55.7 = icmp eq i32 %shr.7, %conv2
  br i1 %cmp55.7, label %if.else.7.if.then57_crit_edge, label %if.else.8

if.else.7.if.then57_crit_edge:                    ; preds = %if.else.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.else.8:                                        ; preds = %if.else.7
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.29) #12
  %83 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base, align 4
  %add.ptr50.8 = getelementptr i8, ptr %84, i32 80
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.8) #9, !srcloc !123
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %shr.8 = lshr i32 %86, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.8, i32 %conv2)
  %cmp55.8 = icmp eq i32 %shr.8, %conv2
  br i1 %cmp55.8, label %if.else.8.if.then57_crit_edge, label %do.cond83.thread

if.else.8.if.then57_crit_edge:                    ; preds = %if.else.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

out:                                              ; preds = %do.cond83.thread, %if.then57, %do.end42, %do.end15
  %v.1 = phi i16 [ -1, %do.end15 ], [ -1, %do.end42 ], [ %phi.cast, %if.then57 ], [ -1, %do.cond83.thread ]
  tail call void @mutex_unlock(ptr noundef %ac97_sem) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %v.1, %out ], [ -1, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aaci_ac97_select_codec(ptr nocapture noundef readonly %aaci, ptr nocapture noundef readonly %ac97) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maincr1 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 9
  %0 = ptrtoint ptr %maincr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maincr1, align 4
  %num = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 11
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num, align 8
  %conv = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %conv, 10
  %or = or i32 %shl, %1
  %base = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 104
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !123
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and10 = and i32 %7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.if.end20_crit_edge, label %if.then12

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 80
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end.if.end20_crit_edge
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %15, i32 120
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !123
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %17)
  %cmp.not = icmp eq i32 %or, %17
  br i1 %cmp.not, label %if.end20.if.end39_crit_edge, label %do.body

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.body:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %20, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %18) #9, !srcloc !118
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr35 = getelementptr i8, ptr %22, i32 120
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !148
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #9
  br label %if.end39

if.end39:                                         ; preds = %do.body, %if.end20.if.end39_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %playback = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 10
  %capture = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 11
  %aacirun.0 = select i1 %cmp, ptr %playback, ptr %capture
  %substream2 = getelementptr inbounds %struct.aaci_runtime, ptr %aacirun.0, i32 0, i32 6
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2, align 4
  %private_data3 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %7 = ptrtoint ptr %private_data3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %aacirun.0, ptr %private_data3, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46
  %8 = call ptr @memcpy(ptr %hw, ptr @aaci_hw_info, i32 64)
  %pcm = getelementptr inbounds %struct.aaci_runtime, ptr %aacirun.0, i32 0, i32 3
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %rates = getelementptr inbounds %struct.ac97_pcm, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %rates to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rates, align 4
  %rates5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 2
  %13 = ptrtoint ptr %rates5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rates5, align 8
  %call.i = tail call i32 @snd_pcm_hw_limit_rates(ptr noundef %hw) #9
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7 = icmp eq i32 %15, 0
  br i1 %cmp7, label %if.then8, label %entry.if.end19_crit_edge

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then8:                                         ; preds = %entry
  %channels_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 6
  %16 = ptrtoint ptr %channels_max to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 6, ptr %channels_max, align 8
  %17 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %runtime1, align 4
  %call11 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %18, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @aaci_rule_channels, ptr noundef %3, i32 noundef 10, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %19 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm, align 4
  %arrayidx = getelementptr %struct.ac97_pcm, ptr %20, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool15.not = icmp eq i16 %22, 0
  br i1 %tobool15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @snd_ac97_pcm_double_rate_rules(ptr noundef %1) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge, %entry.if.end19_crit_edge
  %fifo_depth = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fifo_depth, align 4
  %mul = shl i32 %24, 1
  %fifo_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 46, i32 12
  %25 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %fifo_size, align 8
  %irq_lock = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #9
  %users = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 4
  %26 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %users, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool21.not = icmp eq i32 %27, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %irq = getelementptr inbounds %struct.amba_device, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 8
  %call.i60 = tail call i32 @request_threaded_irq(i32 noundef %31, ptr noundef nonnull @aaci_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp25.not = icmp eq i32 %call.i60, 0
  br i1 %cmp25.not, label %if.then22.if.end29_crit_edge, label %if.then26

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %users, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %users, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then22.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %ret.1 = phi i32 [ 0, %if.end19.if.end29_crit_edge ], [ %call.i60, %if.then26 ], [ 0, %if.then22.if.end29_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %irq_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end29 ], [ %call11, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime, align 4
  %private_data1 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 44
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 8
  %cr = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 461, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %substream21 = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %substream21 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %substream21, align 4
  %irq_lock = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #9
  %users = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %users, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool22.not = icmp eq i32 %dec, 0
  br i1 %tobool22.not, label %if.then23, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.amba_device, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 8
  %call = tail call ptr @free_irq(i32 noundef %14, ptr noundef %1) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %irq_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i43 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %9)
  %cmp = icmp ugt i32 %9, 48000
  %conv = zext i1 %cmp to i32
  %cr.i = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !149

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 480, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %pcm_open.i = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %pcm_open.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pcm_open.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %if.end.i.if.end_crit_edge, label %if.then21.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then21.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %pcm.i = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcm.i, align 4
  %call.i = tail call i32 @snd_ac97_pcm_close(ptr noundef %15) #9
  br label %if.end

if.end:                                           ; preds = %if.then21.i, %if.end.i.if.end_crit_edge
  %16 = ptrtoint ptr %pcm_open.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pcm_open.i, align 4
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp7.not = icmp eq i32 %7, 2
  br i1 %cmp7.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %mul = phi i32 [ 2, %land.lhs.true.if.end10_crit_edge ], [ 0, %if.end.if.end10_crit_edge ]
  %pcm11 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %pcm11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm11, align 4
  %arrayidx = getelementptr %struct.ac97_pcm, ptr %18, i32 0, i32 5, i32 %conv
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 4
  %call13 = tail call i32 @snd_ac97_pcm_open(ptr noundef %18, i32 noundef %9, i32 noundef %7, i16 noundef zeroext %20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  %conv15 = zext i1 %cmp14 to i32
  %21 = ptrtoint ptr %pcm_open.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv15, ptr %pcm_open.i, align 4
  %add = add i32 %mul, %7
  %arrayidx17 = getelementptr [7 x i32], ptr @channels_to_slotmask, i32 0, i32 %add
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %or = or i32 %23, 98304
  %24 = ptrtoint ptr %cr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %cr.i, align 4
  %fifo_depth = getelementptr inbounds %struct.aaci, ptr %5, i32 0, i32 3
  %25 = ptrtoint ptr %fifo_depth to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fifo_depth, align 4
  %27 = shl i32 %26, 1
  %div42 = and i32 %27, 2147483646
  %fifo_bytes = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 12
  %28 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div42, ptr %fifo_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end10 ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_hw_free(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %cr = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !149

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 480, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pcm_open = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pcm_open to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pcm_open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %if.end.if.end22_crit_edge, label %if.then21

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %pcm = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_ac97_pcm_close(ptr noundef %9) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.if.end22_crit_edge
  %10 = ptrtoint ptr %pcm_open to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %pcm_open, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aaci_pcm_prepare(ptr nocapture noundef readonly %substream) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %div1.i.i = lshr i32 %mul.i.i, 3
  %period = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div1.i.i, ptr %period, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %9 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_area, align 4
  %start = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %start, align 4
  %12 = load ptr, ptr %runtime1, align 4
  %buffer_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size.i, align 4
  %frame_bits.i.i17 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 21
  %15 = ptrtoint ptr %frame_bits.i.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %frame_bits.i.i17, align 8
  %mul.i.i18 = mul i32 %16, %14
  %div1.i.i19 = lshr i32 %mul.i.i18, 3
  %add.ptr = getelementptr i8, ptr %10, i32 %div1.i.i19
  %end = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %end, align 4
  %ptr = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %10, ptr %ptr, align 4
  %bytes = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div1.i.i, ptr %bytes, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.do.body.i.i_crit_edge
    i32 6, label %entry.do.body.i.i20_crit_edge
    i32 0, label %sw.bb6
    i32 5, label %sw.bb7
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge50
  ]

entry.sw.epilog_crit_edge50:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.do.body.i.i20_crit_edge:                    ; preds = %entry
  br label %do.body.i.i20

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 5000, %entry.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i.i = icmp sgt i32 %8, -1
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %aaci_pcm_playback_start.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

aaci_pcm_playback_start.exit:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cr.i = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cr.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %cr.i, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  %14 = or i32 %13, 603979776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %14) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %17 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cr.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %add.ptr10.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %19) #9, !srcloc !118
  br label %sw.epilog

do.body.i.i20:                                    ; preds = %do.body.i.i20.do.body.i.i20_crit_edge, %entry.do.body.i.i20_crit_edge
  %timeout.0.i.i14 = phi i32 [ %dec.i.i17, %do.body.i.i20.do.body.i.i20_crit_edge ], [ 5000, %entry.do.body.i.i20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %tobool.not.i.i16 = icmp sgt i32 %25, -1
  %dec.i.i17 = add nsw i32 %timeout.0.i.i14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i14)
  %tobool2.not.i.i18 = icmp eq i32 %timeout.0.i.i14, 0
  %or.cond.i.i19 = select i1 %tobool.not.i.i16, i1 true, i1 %tobool2.not.i.i18
  br i1 %or.cond.i.i19, label %aaci_pcm_playback_start.exit26, label %do.body.i.i20.do.body.i.i20_crit_edge

do.body.i.i20.do.body.i.i20_crit_edge:            ; preds = %do.body.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i20

aaci_pcm_playback_start.exit26:                   ; preds = %do.body.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %cr.i21 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %cr.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cr.i21, align 4
  %or.i22 = or i32 %27, 1
  store i32 %or.i22, ptr %cr.i21, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %3, align 4
  %add.ptr.i23 = getelementptr i8, ptr %29, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  %31 = or i32 %30, 603979776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 4
  %add.ptr4.i24 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i24, i32 %31) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %34 = ptrtoint ptr %cr.i21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cr.i21, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #9
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %3, align 4
  %add.ptr10.i25 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i25, i32 %36) #9, !srcloc !118
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr.i27 = getelementptr i8, ptr %40, i32 16
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %42 = and i32 %41, -603979777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %42) #9, !srcloc !118
  %cr.i28 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %45 = ptrtoint ptr %cr.i28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cr.i28, align 4
  %and4.i = and i32 %46, -2
  store i32 %and4.i, ptr %cr.i28, align 4
  br label %do.body.i.i35

do.body.i.i35:                                    ; preds = %do.body.i.i35.do.body.i.i35_crit_edge, %sw.bb6
  %timeout.0.i.i29 = phi i32 [ 5000, %sw.bb6 ], [ %dec.i.i32, %do.body.i.i35.do.body.i.i35_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #9
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %49, i32 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool.not.i.i31 = icmp sgt i32 %50, -1
  %dec.i.i32 = add nsw i32 %timeout.0.i.i29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i29)
  %tobool2.not.i.i33 = icmp eq i32 %timeout.0.i.i29, 0
  %or.cond.i.i34 = select i1 %tobool.not.i.i31, i1 true, i1 %tobool2.not.i.i33
  br i1 %or.cond.i.i34, label %aaci_pcm_playback_stop.exit, label %do.body.i.i35.do.body.i.i35_crit_edge

do.body.i.i35.do.body.i.i35_crit_edge:            ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i35

aaci_pcm_playback_stop.exit:                      ; preds = %do.body.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %cr.i28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cr.i28, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #9
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %add.ptr10.i36 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i36, i32 %53) #9, !srcloc !118
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  %add.ptr.i37 = getelementptr i8, ptr %57, i32 16
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !154
  %59 = and i32 %58, -603979777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  tail call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %add.ptr3.i38 = getelementptr i8, ptr %61, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i38, i32 %59) #9, !srcloc !118
  %cr.i39 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %62 = ptrtoint ptr %cr.i39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cr.i39, align 4
  %and4.i40 = and i32 %63, -2
  store i32 %and4.i40, ptr %cr.i39, align 4
  br label %do.body.i.i47

do.body.i.i47:                                    ; preds = %do.body.i.i47.do.body.i.i47_crit_edge, %sw.bb7
  %timeout.0.i.i41 = phi i32 [ 5000, %sw.bb7 ], [ %dec.i.i44, %do.body.i.i47.do.body.i.i47_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748) #9
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %3, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %66, i32 8
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %tobool.not.i.i43 = icmp sgt i32 %67, -1
  %dec.i.i44 = add nsw i32 %timeout.0.i.i41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i41)
  %tobool2.not.i.i45 = icmp eq i32 %timeout.0.i.i41, 0
  %or.cond.i.i46 = select i1 %tobool.not.i.i43, i1 true, i1 %tobool2.not.i.i45
  br i1 %or.cond.i.i46, label %aaci_pcm_playback_stop.exit49, label %do.body.i.i47.do.body.i.i47_crit_edge

do.body.i.i47.do.body.i.i47_crit_edge:            ; preds = %do.body.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i47

aaci_pcm_playback_stop.exit49:                    ; preds = %do.body.i.i47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !156
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %cr.i39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cr.i39, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #9
  %71 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %3, align 4
  %add.ptr10.i48 = getelementptr i8, ptr %72, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i48, i32 %70) #9, !srcloc !118
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %aaci_pcm_playback_stop.exit49, %aaci_pcm_playback_stop.exit, %aaci_pcm_playback_start.exit26, %aaci_pcm_playback_start.exit, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge50
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge50 ], [ 0, %aaci_pcm_playback_stop.exit49 ], [ 0, %aaci_pcm_playback_stop.exit ], [ 0, %aaci_pcm_playback_start.exit26 ], [ 0, %aaci_pcm_playback_start.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aaci_pcm_pointer(ptr nocapture noundef readonly %substream) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ptr = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 4
  %start = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %start, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %mul.i = shl i32 %sub.ptr.sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_rule_channels(ptr noundef %p, ptr nocapture noundef readonly %rule) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ac97_bus = getelementptr inbounds %struct.aaci, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ac97_bus, align 4
  %pcms = getelementptr inbounds %struct.snd_ac97_bus, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %pcms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcms, align 4
  %r = getelementptr inbounds %struct.ac97_pcm, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %r to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %r, align 4
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %conv, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, i32 3, i32 7
  %mask.0 = select i1 %tobool.not, i32 1, i32 %spec.select
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %rule, i32 0, i32 1
  %8 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %var, align 4
  %sub.i = add i32 %9, -8
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %p, i32 0, i32 3, i32 %sub.i
  %call8 = tail call i32 @snd_interval_list(ptr noundef %arrayidx.i, i32 noundef 3, ptr noundef nonnull @aaci_rule_channels.channel_list, i32 noundef %mask.0) #9
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_double_rate_rules(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.aaci, ptr %devid, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.for.inc_crit_edge, label %if.then3

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @aaci_fifo_irq(ptr noundef %devid, i32 noundef 0, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %if.then.for.inc_crit_edge
  %4 = and i32 %3, 16256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not.1 = icmp eq i32 %4, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %3, 7
  tail call fastcc void @aaci_fifo_irq(ptr noundef %devid, i32 noundef 1, i32 noundef %shr)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %5 = and i32 %3, 2080768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.2 = icmp eq i32 %5, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %shr.1 = lshr i32 %3, 14
  tail call fastcc void @aaci_fifo_irq(ptr noundef %devid, i32 noundef 2, i32 noundef %shr.1)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %6 = and i32 %3, 266338304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not.3 = icmp eq i32 %6, 0
  br i1 %tobool2.not.3, label %for.inc.2.if.end4_crit_edge, label %if.then3.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr.2 = lshr i32 %3, 21
  tail call fastcc void @aaci_fifo_irq(ptr noundef %devid, i32 noundef 3, i32 noundef %shr.2)
  br label %if.end4

if.end4:                                          ; preds = %if.then3.3, %for.inc.2.if.end4_crit_edge, %entry.if.end4_crit_edge
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_limit_rates(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_list(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aaci_fifo_irq(ptr noundef %aaci, i32 noundef %channel, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %aaci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aaci, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %channel) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  tail call void @arm_heavy_mb() #9
  %shl = shl i32 2, %channel
  %2 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and4 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end16_crit_edge, label %do.end8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %aaci to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aaci, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.39, i32 noundef %channel) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %shl13 = shl i32 512, %channel
  %7 = tail call i32 @llvm.bswap.i32(i32 %shl13)
  %base14 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 2
  %8 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base14, align 4
  %add.ptr15 = getelementptr i8, ptr %9, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %7) #9, !srcloc !118
  br label %if.end16

if.end16:                                         ; preds = %do.end8, %if.end.if.end16_crit_edge
  %and17 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end74_crit_edge, label %if.then19

if.end16.if.end74_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then19:                                        ; preds = %if.end16
  %capture = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11
  %substream = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 6
  %10 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %substream, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.then19.cleanup69_crit_edge, label %lor.lhs.false

if.then19.cleanup69_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

lor.lhs.false:                                    ; preds = %if.then19
  %start = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 8
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %start, align 4
  %tobool21.not = icmp eq ptr %13, null
  br i1 %tobool21.not, label %lor.lhs.false.cleanup69_crit_edge, label %if.end32

lor.lhs.false.cleanup69_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

if.end32:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %ptr33 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 10
  %14 = ptrtoint ptr %ptr33 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ptr33, align 4
  %fifo_bytes = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 12
  %bytes = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 11
  %cr = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 5
  %period = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 7
  %fifo = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 1
  %end = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 11, i32 9
  br label %do.body34.outer

do.body34.outer:                                  ; preds = %for.inc.do.body34.outer_crit_edge, %if.end32
  %ptr.0.ph = phi ptr [ %15, %if.end32 ], [ %ptr.2, %for.inc.do.body34.outer_crit_edge ]
  %period_elapsed.0.off0.ph = phi i1 [ false, %if.end32 ], [ %period_elapsed.1.off0, %for.inc.do.body34.outer_crit_edge ]
  br label %do.body34

do.body34:                                        ; preds = %if.end48.do.body34_crit_edge, %do.body34.outer
  %period_elapsed.0.off0 = phi i1 [ %period_elapsed.1.off0, %if.end48.do.body34_crit_edge ], [ %period_elapsed.0.off0.ph, %do.body34.outer ]
  %16 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fifo_bytes, align 4
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp slt i32 %19, 1
  br i1 %cmp, label %if.then35, label %do.body34.if.end37_crit_edge

do.body34.if.end37_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period, align 4
  %add = add i32 %21, %19
  %22 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %bytes, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %do.body34.if.end37_crit_edge
  %period_elapsed.1.off0 = phi i1 [ true, %if.then35 ], [ %period_elapsed.0.off0, %do.body34.if.end37_crit_edge ]
  %23 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cr, align 4
  %and38 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.do.end62_crit_edge, label %if.end41

if.end37.do.end62_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end41:                                         ; preds = %if.end37
  %25 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %capture, align 4
  %add.ptr43 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #9, !srcloc !123
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  %and45 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end41.do.end62_crit_edge, label %if.end48

if.end41.do.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end62

if.end48:                                         ; preds = %if.end41
  %and49 = lshr i32 %28, 4
  %and49.lobit = and i32 %and49, 1
  %29 = xor i32 %and49.lobit, 1
  %spec.select = lshr i32 %17, %29
  %30 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bytes, align 4
  %sub = sub i32 %31, %spec.select
  store i32 %sub, ptr %bytes, align 4
  %cmp54.not271 = icmp eq i32 %spec.select, 0
  br i1 %cmp54.not271, label %if.end48.do.body34_crit_edge, label %for.body.lr.ph

if.end48.do.body34_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34

for.body.lr.ph:                                   ; preds = %if.end48
  %32 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %fifo, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ptr.1273 = phi ptr [ %ptr.0.ph, %for.body.lr.ph ], [ %ptr.2, %for.inc.for.body_crit_edge ]
  %len.1272 = phi i32 [ %spec.select, %for.body.lr.ph ], [ %sub59, %for.inc.for.body_crit_edge ]
  %34 = tail call ptr asm "ldmia\09$1, {r0, r1, r2, r3}\0A\09stmia\09$0!, {r0, r1, r2, r3}", "=r,r,0,~{r0},~{r1},~{r2},~{r3},~{cc}"(ptr %33, ptr %ptr.1273) #13, !srcloc !161
  %35 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end, align 4
  %cmp55.not = icmp ult ptr %34, %36
  br i1 %cmp55.not, label %for.body.for.inc_crit_edge, label %if.then56

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %start, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then56, %for.body.for.inc_crit_edge
  %ptr.2 = phi ptr [ %38, %if.then56 ], [ %34, %for.body.for.inc_crit_edge ]
  %sub59 = add i32 %len.1272, -16
  %cmp54.not = icmp eq i32 %sub59, 0
  br i1 %cmp54.not, label %for.inc.do.body34.outer_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body34.outer_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body34.outer

do.end62:                                         ; preds = %if.end41.do.end62_crit_edge, %if.end37.do.end62_crit_edge
  %39 = ptrtoint ptr %ptr33 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ptr.0.ph, ptr %ptr33, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br i1 %period_elapsed.1.off0, label %if.then66, label %do.end62.if.end74_crit_edge

do.end62.if.end74_crit_edge:                      ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %41) #9
  br label %if.end74

cleanup69:                                        ; preds = %lor.lhs.false.cleanup69_crit_edge, %if.then19.cleanup69_crit_edge
  %42 = ptrtoint ptr %aaci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aaci, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.42) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  tail call void @arm_heavy_mb() #9
  %44 = ptrtoint ptr %capture to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %capture, align 4
  %add.ptr31 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 0) #9, !srcloc !118
  br label %if.end185

if.end74:                                         ; preds = %if.then66, %do.end62.if.end74_crit_edge, %if.end16.if.end74_crit_edge
  %and75 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end74.if.end96_crit_edge, label %do.body78

if.end74.if.end96_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end96

do.body78:                                        ; preds = %if.end74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aaci_fifo_irq.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aaci_fifo_irq, %if.then84)) #9
          to label %do.body90 [label %if.then84], !srcloc !163

if.then84:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %aaci to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aaci, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aaci_fifo_irq.__UNIQUE_ID_ddebug294, ptr noundef %47, ptr noundef nonnull @.str.45, i32 noundef %channel) #9
  br label %do.body90

do.body90:                                        ; preds = %if.then84, %do.body78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %shl93 = shl i32 32, %channel
  %48 = tail call i32 @llvm.bswap.i32(i32 %shl93)
  %base94 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 2
  %49 = ptrtoint ptr %base94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base94, align 4
  %add.ptr95 = getelementptr i8, ptr %50, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 %48) #9, !srcloc !118
  br label %if.end96

if.end96:                                         ; preds = %do.body90, %if.end74.if.end96_crit_edge
  %and97 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end185_crit_edge, label %if.then99

if.end96.if.end185_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then99:                                        ; preds = %if.end96
  %playback = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10
  %substream103 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 6
  %51 = ptrtoint ptr %substream103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %substream103, align 4
  %tobool104.not = icmp eq ptr %52, null
  br i1 %tobool104.not, label %if.then99.do.end111_crit_edge, label %lor.lhs.false105

if.then99.do.end111_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

lor.lhs.false105:                                 ; preds = %if.then99
  %start106 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 8
  %53 = ptrtoint ptr %start106 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %start106, align 4
  %tobool107.not = icmp eq ptr %54, null
  br i1 %tobool107.not, label %lor.lhs.false105.do.end111_crit_edge, label %if.end119

lor.lhs.false105.do.end111_crit_edge:             ; preds = %lor.lhs.false105
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end111

do.end111:                                        ; preds = %lor.lhs.false105.do.end111_crit_edge, %if.then99.do.end111_crit_edge
  %55 = ptrtoint ptr %aaci to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aaci, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %56, ptr noundef nonnull @.str.47) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %57 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %playback, align 4
  %add.ptr118 = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #9, !srcloc !118
  br label %if.end185

if.end119:                                        ; preds = %lor.lhs.false105
  %lock120 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock120) #9
  %ptr121 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 10
  %59 = ptrtoint ptr %ptr121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ptr121, align 4
  %fifo_bytes124 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 12
  %bytes126 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 11
  %cr133 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 5
  %period129 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 7
  %fifo159 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 1
  %end160 = getelementptr inbounds %struct.aaci, ptr %aaci, i32 0, i32 10, i32 9
  br label %do.body122.outer

do.body122.outer:                                 ; preds = %for.inc165.do.body122.outer_crit_edge, %if.end119
  %period_elapsed101.0.off0.ph = phi i1 [ false, %if.end119 ], [ %period_elapsed101.1.off0, %for.inc165.do.body122.outer_crit_edge ]
  %ptr102.0.ph = phi ptr [ %60, %if.end119 ], [ %ptr102.2, %for.inc165.do.body122.outer_crit_edge ]
  br label %do.body122

do.body122:                                       ; preds = %if.end148.do.body122_crit_edge, %do.body122.outer
  %period_elapsed101.0.off0 = phi i1 [ %period_elapsed101.1.off0, %if.end148.do.body122_crit_edge ], [ %period_elapsed101.0.off0.ph, %do.body122.outer ]
  %61 = ptrtoint ptr %fifo_bytes124 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fifo_bytes124, align 4
  %63 = ptrtoint ptr %bytes126 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bytes126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp127 = icmp slt i32 %64, 1
  br i1 %cmp127, label %if.then128, label %do.body122.if.end132_crit_edge

do.body122.if.end132_crit_edge:                   ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then128:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %period129 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %period129, align 4
  %add131 = add i32 %66, %64
  %67 = ptrtoint ptr %bytes126 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add131, ptr %bytes126, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %do.body122.if.end132_crit_edge
  %period_elapsed101.1.off0 = phi i1 [ true, %if.then128 ], [ %period_elapsed101.0.off0, %do.body122.if.end132_crit_edge ]
  %68 = ptrtoint ptr %cr133 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cr133, align 4
  %and134 = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.end132.do.end173_crit_edge, label %if.end137

if.end132.do.end173_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end173

if.end137:                                        ; preds = %if.end132
  %70 = ptrtoint ptr %playback to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %playback, align 4
  %add.ptr141 = getelementptr i8, ptr %71, i32 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #9, !srcloc !123
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %and145 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end137.do.end173_crit_edge, label %if.end148

if.end137.do.end173_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end173

if.end148:                                        ; preds = %if.end137
  %and149 = lshr i32 %73, 1
  %and149.lobit = and i32 %and149, 1
  %74 = xor i32 %and149.lobit, 1
  %spec.select258 = lshr i32 %62, %74
  %75 = ptrtoint ptr %bytes126 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bytes126, align 4
  %sub155 = sub i32 %76, %spec.select258
  store i32 %sub155, ptr %bytes126, align 4
  %cmp157.not274 = icmp eq i32 %spec.select258, 0
  br i1 %cmp157.not274, label %if.end148.do.body122_crit_edge, label %for.body158.lr.ph

if.end148.do.body122_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body122

for.body158.lr.ph:                                ; preds = %if.end148
  %77 = ptrtoint ptr %fifo159 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fifo159, align 4
  br label %for.body158

for.body158:                                      ; preds = %for.inc165.for.body158_crit_edge, %for.body158.lr.ph
  %len123.1276 = phi i32 [ %spec.select258, %for.body158.lr.ph ], [ %sub166, %for.inc165.for.body158_crit_edge ]
  %ptr102.1275 = phi ptr [ %ptr102.0.ph, %for.body158.lr.ph ], [ %ptr102.2, %for.inc165.for.body158_crit_edge ]
  %79 = tail call ptr asm "ldmia\09$0!, {r0, r1, r2, r3}\0A\09stmia\09$1, {r0, r1, r2, r3}", "=r,r,0,~{r0},~{r1},~{r2},~{r3},~{cc}"(ptr %78, ptr %ptr102.1275) #13, !srcloc !167
  %80 = ptrtoint ptr %end160 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end160, align 4
  %cmp161.not = icmp ult ptr %79, %81
  br i1 %cmp161.not, label %for.body158.for.inc165_crit_edge, label %if.then162

for.body158.for.inc165_crit_edge:                 ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc165

if.then162:                                       ; preds = %for.body158
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %start106 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %start106, align 4
  br label %for.inc165

for.inc165:                                       ; preds = %if.then162, %for.body158.for.inc165_crit_edge
  %ptr102.2 = phi ptr [ %83, %if.then162 ], [ %79, %for.body158.for.inc165_crit_edge ]
  %sub166 = add i32 %len123.1276, -16
  %cmp157.not = icmp eq i32 %sub166, 0
  br i1 %cmp157.not, label %for.inc165.do.body122.outer_crit_edge, label %for.inc165.for.body158_crit_edge

for.inc165.for.body158_crit_edge:                 ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body158

for.inc165.do.body122.outer_crit_edge:            ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body122.outer

do.end173:                                        ; preds = %if.end137.do.end173_crit_edge, %if.end132.do.end173_crit_edge
  %84 = ptrtoint ptr %ptr121 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %ptr102.0.ph, ptr %ptr121, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock120) #9
  br i1 %period_elapsed101.1.off0, label %if.then177, label %do.end173.if.end185_crit_edge

do.end173.if.end185_crit_edge:                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then177:                                       ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %substream103 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %substream103, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %86) #9
  br label %if.end185

if.end185:                                        ; preds = %if.then177, %do.end173.if.end185_crit_edge, %do.end111, %if.end96.if.end185_crit_edge, %cleanup69
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_open(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 8
  %period_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %period_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %period_size.i.i, align 4
  %frame_bits.i.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i.i.i, align 8
  %mul.i.i.i = mul i32 %9, %7
  %div1.i.i.i = lshr i32 %mul.i.i.i, 3
  %period.i = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %period.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div1.i.i.i, ptr %period.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %11 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_area.i, align 4
  %start.i = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %start.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %start.i, align 4
  %14 = load ptr, ptr %runtime1, align 4
  %buffer_size.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %buffer_size.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %buffer_size.i.i, align 4
  %frame_bits.i.i17.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %14, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits.i.i17.i, align 8
  %mul.i.i18.i = mul i32 %18, %16
  %div1.i.i19.i = lshr i32 %mul.i.i18.i, 3
  %add.ptr.i = getelementptr i8, ptr %12, i32 %div1.i.i19.i
  %end.i = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %end.i, align 4
  %ptr.i = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %12, ptr %ptr.i, align 4
  %bytes.i = getelementptr inbounds %struct.aaci_runtime, ptr %5, i32 0, i32 11
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i.i.i, ptr %bytes.i, align 4
  %ac97 = getelementptr inbounds %struct.aaci, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ac97, align 4
  tail call void @aaci_ac97_write(ptr noundef %23, i16 noundef zeroext 42, i16 noundef zeroext 1)
  %24 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ac97, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rate, align 4
  %conv = trunc i32 %27 to i16
  tail call void @aaci_ac97_write(ptr noundef %25, i16 noundef zeroext 50, i16 noundef zeroext %conv)
  %28 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ac97, align 4
  %30 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rate, align 4
  %conv5 = trunc i32 %31 to i16
  tail call void @aaci_ac97_write(ptr noundef %29, i16 noundef zeroext 52, i16 noundef zeroext %conv5)
  %32 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ac97, align 4
  tail call void @aaci_ac97_write(ptr noundef %33, i16 noundef zeroext 26, i16 noundef zeroext 1028)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aaci_pcm_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %lock = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 2
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %cmd, label %sw.default [
    i32 1, label %entry.do.body.i.i_crit_edge
    i32 6, label %entry.do.body.i.i20_crit_edge
    i32 0, label %entry.do.body.i.i32_crit_edge
    i32 5, label %entry.do.body.i.i41_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge
    i32 4, label %entry.sw.epilog_crit_edge47
  ]

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.do.body.i.i41_crit_edge:                    ; preds = %entry
  br label %do.body.i.i41

entry.do.body.i.i32_crit_edge:                    ; preds = %entry
  br label %do.body.i.i32

entry.do.body.i.i20_crit_edge:                    ; preds = %entry
  br label %do.body.i.i20

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  %timeout.0.i.i = phi i32 [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ], [ 5000, %entry.do.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #9
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %9 = and i32 %8, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool2.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %aaci_pcm_capture_start.exit, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

aaci_pcm_capture_start.exit:                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %cr.i = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr.i, align 4
  %or.i = or i32 %11, 1
  store i32 %or.i, ptr %cr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %cr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #9, !srcloc !118
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add.ptr3.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %20 = or i32 %19, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %add.ptr10.i = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %20) #9, !srcloc !118
  br label %sw.epilog

do.body.i.i20:                                    ; preds = %do.body.i.i20.do.body.i.i20_crit_edge, %entry.do.body.i.i20_crit_edge
  %timeout.0.i.i14 = phi i32 [ %dec.i.i17, %do.body.i.i20.do.body.i.i20_crit_edge ], [ 5000, %entry.do.body.i.i20_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #9
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %27 = and i32 %26, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i16 = icmp eq i32 %27, 0
  %dec.i.i17 = add nsw i32 %timeout.0.i.i14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i14)
  %tobool2.not.i.i18 = icmp eq i32 %timeout.0.i.i14, 0
  %or.cond.i.i19 = select i1 %tobool.not.i.i16, i1 true, i1 %tobool2.not.i.i18
  br i1 %or.cond.i.i19, label %aaci_pcm_capture_start.exit25, label %do.body.i.i20.do.body.i.i20_crit_edge

do.body.i.i20.do.body.i.i20_crit_edge:            ; preds = %do.body.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i20

aaci_pcm_capture_start.exit25:                    ; preds = %do.body.i.i20
  call void @__sanitizer_cov_trace_pc() #11
  %cr.i21 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %cr.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cr.i21, align 4
  %or.i22 = or i32 %29, 1
  store i32 %or.i22, ptr %cr.i21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  tail call void @arm_heavy_mb() #9
  %30 = ptrtoint ptr %cr.i21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cr.i21, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #9, !srcloc !118
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add.ptr3.i23 = getelementptr i8, ptr %36, i32 16
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i23) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !169
  %38 = or i32 %37, 402653184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %add.ptr10.i24 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i24, i32 %38) #9, !srcloc !118
  br label %sw.epilog

do.body.i.i32:                                    ; preds = %do.body.i.i32.do.body.i.i32_crit_edge, %entry.do.body.i.i32_crit_edge
  %timeout.0.i.i26 = phi i32 [ %dec.i.i29, %do.body.i.i32.do.body.i.i32_crit_edge ], [ 5000, %entry.do.body.i.i32_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748) #9
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %43, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %45 = and i32 %44, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i.i28 = icmp eq i32 %45, 0
  %dec.i.i29 = add nsw i32 %timeout.0.i.i26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i26)
  %tobool2.not.i.i30 = icmp eq i32 %timeout.0.i.i26, 0
  %or.cond.i.i31 = select i1 %tobool.not.i.i28, i1 true, i1 %tobool2.not.i.i30
  br i1 %or.cond.i.i31, label %aaci_pcm_capture_stop.exit, label %do.body.i.i32.do.body.i.i32_crit_edge

do.body.i.i32.do.body.i.i32_crit_edge:            ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i32

aaci_pcm_capture_stop.exit:                       ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %49 = and i32 %48, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add.ptr3.i33 = getelementptr i8, ptr %51, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i33, i32 %49) #9, !srcloc !118
  %cr.i34 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %52 = ptrtoint ptr %cr.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cr.i34, align 4
  %and4.i = and i32 %53, -2
  store i32 %and4.i, ptr %cr.i34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %54 = ptrtoint ptr %cr.i34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cr.i34, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #9
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #9, !srcloc !118
  br label %sw.epilog

do.body.i.i41:                                    ; preds = %do.body.i.i41.do.body.i.i41_crit_edge, %entry.do.body.i.i41_crit_edge
  %timeout.0.i.i35 = phi i32 [ %dec.i.i38, %do.body.i.i41.do.body.i.i41_crit_edge ], [ 5000, %entry.do.body.i.i41_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748) #9
  %60 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %3, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %61, i32 8
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  %63 = and i32 %62, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i.i37 = icmp eq i32 %63, 0
  %dec.i.i38 = add nsw i32 %timeout.0.i.i35, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i35)
  %tobool2.not.i.i39 = icmp eq i32 %timeout.0.i.i35, 0
  %or.cond.i.i40 = select i1 %tobool.not.i.i37, i1 true, i1 %tobool2.not.i.i39
  br i1 %or.cond.i.i40, label %aaci_pcm_capture_stop.exit46, label %do.body.i.i41.do.body.i.i41_crit_edge

do.body.i.i41.do.body.i.i41_crit_edge:            ; preds = %do.body.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i41

aaci_pcm_capture_stop.exit46:                     ; preds = %do.body.i.i41
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %3, align 4
  %add.ptr.i42 = getelementptr i8, ptr %65, i32 16
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #9, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  %67 = and i32 %66, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %add.ptr3.i43 = getelementptr i8, ptr %69, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i43, i32 %67) #9, !srcloc !118
  %cr.i44 = getelementptr inbounds %struct.aaci_runtime, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %cr.i44 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cr.i44, align 4
  %and4.i45 = and i32 %71, -2
  store i32 %and4.i45, ptr %cr.i44, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %72 = ptrtoint ptr %cr.i44 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cr.i44, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #9
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #9, !srcloc !118
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %aaci_pcm_capture_stop.exit46, %aaci_pcm_capture_stop.exit, %aaci_pcm_capture_start.exit25, %aaci_pcm_capture_start.exit, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge47
  %ret.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge47 ], [ 0, %aaci_pcm_capture_stop.exit46 ], [ 0, %aaci_pcm_capture_stop.exit ], [ 0, %aaci_pcm_capture_start.exit25 ], [ 0, %aaci_pcm_capture_start.exit ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !41, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_snd_aaci__295_1091_aaci_driver_init6, !1, !"__initcall__kmod_snd_aaci__295_1091_aaci_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/arm/aaci.c", i32 1091, i32 1}
!2 = !{ptr @__exitcall_aaci_driver_exit, !1, !"__exitcall_aaci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file296, !4, !"__UNIQUE_ID_file296", i1 false, i1 false}
!4 = !{!"../sound/arm/aaci.c", i32 1093, i32 1}
!5 = !{ptr @__UNIQUE_ID_license297, !4, !"__UNIQUE_ID_license297", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description298, !7, !"__UNIQUE_ID_description298", i1 false, i1 false}
!7 = !{!"../sound/arm/aaci.c", i32 1094, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/arm/aaci.c", i32 1083, i32 11}
!10 = !{ptr @aaci_driver, !11, !"aaci_driver", i1 false, i1 false}
!11 = !{!"../sound/arm/aaci.c", i32 1081, i32 27}
!12 = !{ptr @aaci_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/arm/aaci.c", i32 997, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @aaci_probe.__key.2, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/arm/aaci.c", i32 1004, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/arm/aaci.c", i32 1033, i32 3}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @aaci_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @aaci_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/arm/aaci.c", i32 1045, i32 3}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @aaci_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @aaci_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/arm/aaci.c", i32 1046, i32 3}
!32 = !{ptr @aaci_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @aaci_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/arm/aaci.c", i32 894, i32 27}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/arm/aaci.c", i32 896, i32 4}
!38 = !{ptr @aaci_init_card.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/arm/aaci.c", i32 901, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aaci_init_card.__key.18, !42, !"__key", i1 false, i1 false}
!42 = !{!"../sound/arm/aaci.c", i32 902, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @aaci_bus_ops, !45, !"aaci_bus_ops", i1 false, i1 false}
!45 = !{!"../sound/arm/aaci.c", i32 814, i32 38}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/arm/aaci.c", i32 98, i32 3}
!48 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aaci_ac97_write._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @aaci_ac97_write._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/arm/aaci.c", i32 136, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @aaci_ac97_read._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @aaci_ac97_read._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/arm/aaci.c", i32 153, i32 3}
!59 = !{ptr @aaci_ac97_read._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @aaci_ac97_read._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/arm/aaci.c", i32 164, i32 4}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @aaci_ac97_read._entry.28, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @aaci_ac97_read._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/arm/aaci.c", i32 168, i32 4}
!68 = !{ptr @aaci_ac97_read._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @aaci_ac97_read._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ac97_defs, !71, !"ac97_defs", i1 false, i1 false}
!71 = !{!"../sound/arm/aaci.c", i32 773, i32 30}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/arm/aaci.c", i32 918, i32 32}
!74 = !{ptr @aaci_playback_ops, !75, !"aaci_playback_ops", i1 false, i1 false}
!75 = !{!"../sound/arm/aaci.c", i32 625, i32 33}
!76 = !{ptr @aaci_hw_info, !77, !"aaci_hw_info", i1 false, i1 false}
!77 = !{!"../sound/arm/aaci.c", i32 348, i32 38}
!78 = !{ptr @aaci_rule_channels.channel_list, !79, !"channel_list", i1 false, i1 false}
!79 = !{!"../sound/arm/aaci.c", i32 383, i32 28}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/arm/aaci.c", i32 199, i32 3}
!82 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @aaci_fifo_irq._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @aaci_fifo_irq._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/arm/aaci.c", i32 204, i32 3}
!87 = !{ptr @aaci_fifo_irq._entry.38, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @aaci_fifo_irq._entry_ptr.40, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/arm/aaci.c", i32 214, i32 4}
!91 = !{ptr @aaci_fifo_irq._entry.41, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @aaci_fifo_irq._entry_ptr.43, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/arm/aaci.c", i32 264, i32 3}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @aaci_fifo_irq.__UNIQUE_ID_ddebug294, !94, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/arm/aaci.c", i32 274, i32 4}
!99 = !{ptr @aaci_fifo_irq._entry.46, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @aaci_fifo_irq._entry_ptr.48, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @channels_to_slotmask, !102, !"channels_to_slotmask", i1 false, i1 false}
!102 = !{!"../sound/arm/aaci.c", i32 490, i32 18}
!103 = !{ptr @aaci_capture_ops, !104, !"aaci_capture_ops", i1 false, i1 false}
!104 = !{!"../sound/arm/aaci.c", i32 727, i32 33}
!105 = !{ptr @aaci_ids, !106, !"aaci_ids", i1 false, i1 false}
!106 = !{!"../sound/arm/aaci.c", i32 1071, i32 23}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
!117 = !{i64 2155259728}
!118 = !{i64 4889420}
!119 = !{i64 2155260105}
!120 = !{i64 2155260482}
!121 = !{i64 2155260870}
!122 = !{i64 2155261285}
!123 = !{i64 4889838}
!124 = !{i64 2155261984}
!125 = !{i64 2155252583}
!126 = !{i64 2155253524}
!127 = !{i64 2155255533}
!128 = !{i64 2155256307}
!129 = !{i64 2155256524}
!130 = !{i64 2155256911}
!131 = !{i64 2155257336}
!132 = !{i64 2155258074}
!133 = !{i64 2155258840}
!134 = !{i64 2155266785}
!135 = !{i64 2155215049}
!136 = !{i64 2155215467}
!137 = !{i64 2155217241}
!138 = !{i64 2155219289}
!139 = !{i64 2155221105}
!140 = !{i64 2155224422}
!141 = !{i64 2155226539}
!142 = !{i64 2155227035}
!143 = !{i64 2155211833}
!144 = !{i64 2155212338}
!145 = !{i64 2155212843}
!146 = !{i64 2155213339}
!147 = !{i64 2155213563}
!148 = !{i64 2155214244}
!149 = !{!"branch_weights", i32 2000, i32 1}
!150 = !{i64 2155231669}
!151 = !{i64 2155247962}
!152 = !{i64 2155248203}
!153 = !{i64 2155248611}
!154 = !{i64 2155246566}
!155 = !{i64 2155246807}
!156 = !{i64 2155247233}
!157 = !{i64 2155244068}
!158 = !{i64 2155233531}
!159 = !{i64 2155235617}
!160 = !{i64 2155238299}
!161 = !{i64 5578, i64 5607}
!162 = !{i64 2155237609}
!163 = !{i64 2148976432, i64 2148976437, i64 2148976450, i64 2148976494, i64 2148976528, i64 2148976549}
!164 = !{i64 2155240872}
!165 = !{i64 2155242864}
!166 = !{i64 2155243554}
!167 = !{i64 6851, i64 6881}
!168 = !{i64 2155250815}
!169 = !{i64 2155251526}
!170 = !{i64 2155251767}
!171 = !{i64 2155249706}
!172 = !{i64 2155249946}
!173 = !{i64 2155250362}
