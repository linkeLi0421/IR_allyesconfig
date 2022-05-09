; ModuleID = '/llk/IR_all_yes/sound/pci/cs5535audio/cs5535audio.c_pt.bc'
source_filename = "../sound/pci/cs5535audio/cs5535audio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ac97_quirk = type { i16, i16, i16, i32, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.72, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.72 = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.cs5535audio = type { ptr, ptr, ptr, i32, ptr, i32, %struct.spinlock, ptr, ptr, [2 x %struct.cs5535audio_dma] }
%struct.cs5535audio_dma = type { ptr, %struct.snd_dma_buffer, ptr, i32, i32, i32, i32, i32, i32 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.75, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.75 = type { i32, [28 x i8] }

@__param_str_ac97_quirk = internal constant [27 x i8] c"snd_cs5535audio.ac97_quirk\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ac97_quirk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_ac97_quirk = internal constant %struct.kernel_param { ptr @__param_str_ac97_quirk, ptr null, ptr @param_ops_charp, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @ac97_quirk } }, section "__param", align 4
@__UNIQUE_ID_ac97_quirktype242 = internal constant [42 x i8] c"snd_cs5535audio.parmtype=ac97_quirk:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_ac97_quirk243 = internal constant [66 x i8] c"snd_cs5535audio.parm=ac97_quirk:AC'97 board specific workarounds.\00", section ".modinfo", align 1
@__param_str_index = internal constant [22 x i8] c"snd_cs5535audio.index\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_index = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @index }, align 4
@__param_index = internal constant %struct.kernel_param { ptr @__param_str_index, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_index } }, section "__param", align 4
@__UNIQUE_ID_indextype244 = internal constant [44 x i8] c"snd_cs5535audio.parmtype=index:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_index245 = internal constant [55 x i8] c"snd_cs5535audio.parm=index:Index value for cs5535audio\00", section ".modinfo", align 1
@__param_str_id = internal constant [19 x i8] c"snd_cs5535audio.id\00", align 1
@__param_arr_id = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_charp, ptr @id }, align 4
@__param_id = internal constant %struct.kernel_param { ptr @__param_str_id, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_id } }, section "__param", align 4
@__UNIQUE_ID_idtype246 = internal constant [43 x i8] c"snd_cs5535audio.parmtype=id:array of charp\00", section ".modinfo", align 1
@__UNIQUE_ID_id247 = internal constant [50 x i8] c"snd_cs5535audio.parm=id:ID string for cs5535audio\00", section ".modinfo", align 1
@__param_str_enable = internal constant [23 x i8] c"snd_cs5535audio.enable\00", align 1
@__param_arr_enable = internal constant %struct.kparam_array { i32 32, i32 1, ptr null, ptr @param_ops_bool, ptr @enable }, align 4
@__param_enable = internal constant %struct.kernel_param { ptr @__param_str_enable, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @__param_arr_enable } }, section "__param", align 4
@__UNIQUE_ID_enabletype248 = internal constant [46 x i8] c"snd_cs5535audio.parmtype=enable:array of bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable249 = internal constant [47 x i8] c"snd_cs5535audio.parm=enable:Enable cs5535audio\00", section ".modinfo", align 1
@__initcall__kmod_snd_cs5535audio__250_345_cs5535audio_driver_init6 = internal global ptr @cs5535audio_driver_init, section ".initcall6.init", align 4
@cs5535audio_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @snd_cs5535audio_ids, ptr @snd_cs5535audio_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_cs5535audio_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cs5535audio_driver_exit = internal global ptr @cs5535audio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author251 = internal constant [34 x i8] c"snd_cs5535audio.author=Jaya Kumar\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [59 x i8] c"snd_cs5535audio.file=sound/pci/cs5535audio/snd-cs5535audio\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [28 x i8] c"snd_cs5535audio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [41 x i8] c"snd_cs5535audio.description=CS5535 Audio\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@index = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@id = internal global { [32 x ptr], [32 x i8] } zeroinitializer, align 32
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable = internal global { [32 x i8], [32 x i8] } { [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_cs5535audio\00", [16 x i8] zeroinitializer }, align 32
@snd_cs5535audio_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4107, i32 46, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 8339, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@snd_cs5535audio_pm = external dso_local constant %struct.dev_pm_ops, align 4
@snd_cs5535audio_probe.dev = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cs5535audio\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CS5535 Audio\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s at 0x%lx, irq %i\00", [41 x i8] zeroinitializer }, align 32
@snd_cs5535audio_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 256, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to get 32bit dma\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_cs5535audio_create\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/pci/cs5535audio/cs5535audio.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_cs5535audio_create._entry_ptr = internal global ptr @snd_cs5535audio_create._entry, section ".printk_index", align 4
@snd_cs5535audio_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cs5535au->reg_lock\00", [44 x i8] zeroinitializer }, align 32
@snd_cs5535audio_create._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 273, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to grab IRQ %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_cs5535audio_create._entry_ptr.13 = internal global ptr @snd_cs5535audio_create._entry.10, section ".printk_index", align 4
@snd_cs5535audio_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 232, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unexpected irq src: 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_cs5535audio_interrupt\00", [38 x i8] zeroinitializer }, align 32
@snd_cs5535audio_interrupt._entry_ptr = internal global ptr @snd_cs5535audio_interrupt._entry, section ".printk_index", align 4
@process_bm0_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 187, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unexpected bm0 irq src, bm_stat=%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"process_bm0_irq\00", [16 x i8] zeroinitializer }, align 32
@process_bm0_irq._entry_ptr = internal global ptr @process_bm0_irq._entry, section ".printk_index", align 4
@snd_cs5535audio_mixer.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @snd_cs5535audio_ac97_codec_write, ptr @snd_cs5535audio_ac97_codec_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@snd_cs5535audio_mixer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.6, i32 161, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mixer failed\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_cs5535audio_mixer\00", [42 x i8] zeroinitializer }, align 32
@snd_cs5535audio_mixer._entry_ptr = internal global ptr @snd_cs5535audio_mixer._entry, section ".printk_index", align 4
@ac97_quirks = internal constant { [1 x %struct.ac97_quirk], [44 x i8] } zeroinitializer, align 32
@snd_cs5535audio_mixer._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.6, i32 169, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"olpc quirks failed\0A\00", [44 x i8] zeroinitializer }, align 32
@snd_cs5535audio_mixer._entry_ptr.22 = internal global ptr @snd_cs5535audio_mixer._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wait_till_cmd_acked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 74, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failure writing to cs5535 codec\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wait_till_cmd_acked\00", [44 x i8] zeroinitializer }, align 32
@wait_till_cmd_acked._entry_ptr = internal global ptr @wait_till_cmd_acked._entry, section ".printk_index", align 4
@snd_cs5535audio_codec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 101, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failure reading codec reg 0x%x, Last value=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"snd_cs5535audio_codec_read\00", [37 x i8] zeroinitializer }, align 32
@snd_cs5535audio_codec_read._entry_ptr = internal global ptr @snd_cs5535audio_codec_read._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 7, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"ac97_quirk\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 28, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"cs5535audio_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 334, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 44, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 45, i32 14 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 46, i32 13 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 345, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"snd_cs5535audio_ids\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 55, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 287, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 318, i32 23 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 320, i32 26 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 321, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 256, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 260, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 273, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 230, i32 5 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 185, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 141, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [12 x i8] c"ac97_quirks\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 32, i32 32 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 169, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 73, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [39 x i8] c"../sound/pci/cs5535audio/cs5535audio.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 99, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_ac97_quirk243, ptr @__UNIQUE_ID_ac97_quirktype242, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_enable249, ptr @__UNIQUE_ID_enabletype248, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_id247, ptr @__UNIQUE_ID_idtype246, ptr @__UNIQUE_ID_index245, ptr @__UNIQUE_ID_indextype244, ptr @__UNIQUE_ID_license253, ptr @__exitcall_cs5535audio_driver_exit, ptr @__initcall__kmod_snd_cs5535audio__250_345_cs5535audio_driver_init6, ptr @__param_ac97_quirk, ptr @__param_enable, ptr @__param_id, ptr @__param_index, ptr @cs5535audio_driver_exit, ptr @process_bm0_irq._entry, ptr @process_bm0_irq._entry_ptr, ptr @snd_cs5535audio_codec_read._entry, ptr @snd_cs5535audio_codec_read._entry_ptr, ptr @snd_cs5535audio_create._entry, ptr @snd_cs5535audio_create._entry.10, ptr @snd_cs5535audio_create._entry_ptr, ptr @snd_cs5535audio_create._entry_ptr.13, ptr @snd_cs5535audio_interrupt._entry, ptr @snd_cs5535audio_interrupt._entry_ptr, ptr @snd_cs5535audio_mixer._entry, ptr @snd_cs5535audio_mixer._entry.20, ptr @snd_cs5535audio_mixer._entry_ptr, ptr @snd_cs5535audio_mixer._entry_ptr.22, ptr @wait_till_cmd_acked._entry, ptr @wait_till_cmd_acked._entry_ptr, ptr @ac97_quirk, ptr @cs5535audio_driver, ptr @index, ptr @id, ptr @enable, ptr @.str, ptr @snd_cs5535audio_ids, ptr @snd_cs5535audio_probe.dev, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_cs5535audio_create.__key, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @snd_cs5535audio_mixer.ops, ptr @.str.18, ptr @.str.19, ptr @ac97_quirks, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs5535audio_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_probe.dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_create._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_bm0_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_mixer.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_mixer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ac97_quirks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_mixer._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_till_cmd_acked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_cs5535audio_codec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs5535audio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @cs5535audio_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs5535audio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @cs5535audio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_probe(ptr noundef %pci, ptr nocapture noundef readnone %pci_id) #2 align 64 {
entry:
  %pbus.i = alloca ptr, align 4
  %ac97.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #8
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !116
  %1 = load i32, ptr @snd_cs5535audio_probe.dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp = icmp sgt i32 %1, 31
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x i8], ptr @enable, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !117
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @snd_cs5535audio_probe.dev, align 4
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44
  %arrayidx3 = getelementptr [32 x i32], ptr @index, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr [32 x ptr], ptr @id, i32 0, i32 %1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %call = call i32 @snd_devm_card_new(ptr noundef %dev, i32 noundef %5, ptr noundef %7, ptr noundef null, i32 noundef 204, ptr noundef nonnull %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end2.cleanup_crit_edge, label %if.end7

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data, align 8
  %private_free = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 10
  %12 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @snd_cs5535audio_free, ptr %private_free, align 4
  %call.i = call i32 @pcim_enable_device(ptr noundef %pci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end7
  %call.i.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %do.body5.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev3.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %13 = ptrtoint ptr %dev3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev3.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.4) #11
  br label %cleanup

do.body5.i:                                       ; preds = %if.end.i
  %call1.i.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #8
  %reg_lock.i = getelementptr inbounds %struct.cs5535audio, ptr %11, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %reg_lock.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_cs5535audio_create.__key, i16 noundef signext 3) #8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %11, align 4
  %pci10.i = getelementptr inbounds %struct.cs5535audio, ptr %11, i32 0, i32 4
  %16 = ptrtoint ptr %pci10.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pci, ptr %pci10.i, align 4
  %irq.i = getelementptr inbounds %struct.cs5535audio, ptr %11, i32 0, i32 3
  %17 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %irq.i, align 4
  %call11.i = call i32 @pci_request_regions(ptr noundef %pci, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %do.body5.i.cleanup_crit_edge, label %if.end14.i

do.body5.i.cleanup_crit_edge:                     ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.i:                                       ; preds = %do.body5.i
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 47
  %18 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource.i, align 8
  %port.i = getelementptr inbounds %struct.cs5535audio, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %port.i, align 4
  %irq16.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 46
  %21 = ptrtoint ptr %irq16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq16.i, align 4
  %call.i53.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @snd_cs5535audio_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53.i)
  %tobool18.not.i = icmp eq i32 %call.i53.i, 0
  br i1 %tobool18.not.i, label %if.end11, label %do.end22.i

do.end22.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev23.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %23 = ptrtoint ptr %dev23.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev23.i, align 8
  %25 = ptrtoint ptr %irq16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq16.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11, i32 noundef %26) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end14.i
  %27 = ptrtoint ptr %irq16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq16.i, align 4
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %irq.i, align 4
  %sync_irq.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  %30 = ptrtoint ptr %sync_irq.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %sync_irq.i, align 4
  call void @pci_set_master(ptr noundef %pci) #8
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pbus.i) #8
  %33 = ptrtoint ptr %pbus.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %pbus.i, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ac97.i) #8
  %call.i50 = call i32 @snd_ac97_bus(ptr noundef %32, i32 noundef 0, ptr noundef nonnull @snd_cs5535audio_mixer.ops, ptr noundef null, ptr noundef nonnull %pbus.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %if.end11.snd_cs5535audio_mixer.exit.thread_crit_edge, label %if.end.i52

if.end11.snd_cs5535audio_mixer.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_cs5535audio_mixer.exit.thread

if.end.i52:                                       ; preds = %if.end11
  %34 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 5
  %35 = getelementptr inbounds %struct.snd_ac97_template, ptr %ac97.i, i32 0, i32 2
  %36 = getelementptr inbounds i8, ptr %ac97.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 20)
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2081, ptr %34, align 4
  %39 = ptrtoint ptr %ac97.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %11, ptr %ac97.i, align 4
  %40 = ptrtoint ptr %pci10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pci10.i, align 4
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %35, align 4
  %43 = ptrtoint ptr %pbus.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pbus.i, align 4
  %ac973.i = getelementptr inbounds %struct.cs5535audio, ptr %11, i32 0, i32 1
  %call4.i = call i32 @snd_ac97_mixer(ptr noundef %44, ptr noundef nonnull %ac97.i, ptr noundef %ac973.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %do.end.i54, label %if.end15

do.end.i54:                                       ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i53 = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %45 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i53, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.18) #11
  br label %snd_cs5535audio_mixer.exit.thread

snd_cs5535audio_mixer.exit.thread:                ; preds = %do.end.i54, %if.end11.snd_cs5535audio_mixer.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ %call.i50, %if.end11.snd_cs5535audio_mixer.exit.thread_crit_edge ], [ %call4.i, %do.end.i54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end.i52
  %47 = ptrtoint ptr %ac973.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ac973.i, align 4
  %49 = load ptr, ptr @ac97_quirk, align 4
  %call9.i = call i32 @snd_ac97_tune_hardware(ptr noundef %48, ptr noundef nonnull @ac97_quirks, ptr noundef %49) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ac97.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pbus.i) #8
  %call16 = call i32 @snd_cs5535audio_pcm(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 2
  %52 = call ptr @memcpy(ptr %driver, ptr @.str.1, i32 12)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 3
  %53 = call ptr @memcpy(ptr %shortname, ptr @.str.2, i32 13)
  %longname = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 4
  %54 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i, align 4
  %56 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq.i, align 4
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.3, ptr noundef %shortname, ptr noundef %driver, i32 noundef %55, i32 noundef %57)
  %58 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card, align 4
  %call29 = call i32 @snd_card_register(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end19.cleanup_crit_edge, label %if.end32

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pci, i32 0, i32 44, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %driver_data.i.i, align 4
  %63 = load i32, ptr @snd_cs5535audio_probe.dev, align 4
  %inc33 = add i32 %63, 1
  store i32 %inc33, ptr @snd_cs5535audio_probe.dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %snd_cs5535audio_mixer.exit.thread, %do.end22.i, %do.body5.i.cleanup_crit_edge, %do.end.i, %if.end7.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ -2, %if.then1 ], [ -19, %entry.cleanup_crit_edge ], [ %call, %if.end2.cleanup_crit_edge ], [ %call16, %if.end15.cleanup_crit_edge ], [ %call29, %if.end19.cleanup_crit_edge ], [ %retval.0.i55.ph, %snd_cs5535audio_mixer.exit.thread ], [ %call11.i, %do.body5.i.cleanup_crit_edge ], [ %call.i, %if.end7.cleanup_crit_edge ], [ -16, %do.end22.i ], [ -6, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_devm_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_cs5535audio_free(ptr nocapture noundef %card) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs5535audio_pcm(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_cs5535audio_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %port = getelementptr inbounds %struct.cs5535audio, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #8, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv7 = zext i16 %4 to i32
  %reg_lock.i47 = getelementptr inbounds %struct.cs5535audio, ptr %dev_id, i32 0, i32 6
  %capture_substream.i = getelementptr inbounds %struct.cs5535audio, ptr %dev_id, i32 0, i32 8
  %playback_substream.i = getelementptr inbounds %struct.cs5535audio, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %count.054 = phi i8 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %indvars.iv
  %and9 = and i32 %shl, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.then11

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %trunc = trunc i8 %count.054 to i7
  %5 = zext i7 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i7 %trunc, label %do.end [
    i7 0, label %sw.bb
    i7 1, label %sw.bb21
    i7 2, label %sw.bb30
    i7 3, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and16 = and i32 %7, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  br label %for.inc

sw.bb21:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %and25 = and i32 %11, 1048575
  %add26 = or i32 %and25, -18874368
  %12 = inttoptr i32 %add26 to ptr
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %12) #8, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  br label %for.inc

sw.bb30:                                          ; preds = %if.then11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i47) #8
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port, align 4
  %add.i = add i32 %15, 33
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %16 = inttoptr i32 %add1.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i47) #8
  %conv.i = zext i8 %17 to i32
  %and4.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %playback_substream.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %playback_substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %19) #8
  br label %for.inc

do.end.i:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16, i32 noundef %conv.i) #11
  br label %for.inc

sw.bb31:                                          ; preds = %if.then11
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i47) #8
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port, align 4
  %add.i49 = add i32 %25, 41
  %and.i50 = and i32 %add.i49, 1048575
  %add1.i51 = or i32 %and.i50, -18874368
  %26 = inttoptr i32 %add1.i51 to ptr
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #8, !srcloc !123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i47) #8
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i52 = icmp eq i8 %28, 0
  br i1 %tobool.not.i52, label %sw.bb31.for.inc_crit_edge, label %if.then.i53

sw.bb31.for.inc_crit_edge:                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then.i53:                                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %capture_substream.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %capture_substream.i, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %30) #8
  br label %for.inc

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_id, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.14, i32 noundef %conv7) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.then.i53, %sw.bb31.for.inc_crit_edge, %do.end.i, %if.then.i, %sw.bb21, %sw.bb, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %inc = add nuw nsw i8 %count.054, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_cs5535audio_ac97_codec_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv.i = zext i16 %reg to i32
  %shl.i = shl i32 %conv.i, 24
  %conv1.i = zext i16 %val to i32
  %shl.masked.i = and i32 %shl.i, 2130706432
  %or2.i = or i32 %shl.masked.i, %conv1.i
  %and3.i = or i32 %or2.i, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %and3.i) #8
  %port.i = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add.i = add i32 %4, 12
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %5 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #8, !srcloc !127
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %timeout.addr.0.i.i = phi i32 [ 50, %entry ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %7, 12
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.snd_cs5535audio_codec_write.exit_crit_edge, label %if.end.i.i

do.body.i.i.snd_cs5535audio_codec_write.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_cs5535audio_codec_write.exit

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %dec.i.i = add nsw i32 %timeout.addr.0.i.i, -1
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end10.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23) #11
  br label %snd_cs5535audio_codec_write.exit

snd_cs5535audio_codec_write.exit:                 ; preds = %do.end10.i.i, %do.body.i.i.snd_cs5535audio_codec_write.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @snd_cs5535audio_ac97_codec_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %conv.i = zext i16 %reg to i32
  %shl.i = shl i32 %conv.i, 24
  %or1.i = or i32 %shl.i, -2147418112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #8
  %port.i = getelementptr inbounds %struct.cs5535audio, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port.i, align 4
  %add.i = add i32 %4, 12
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %5, i32 %2) #8, !srcloc !127
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %entry
  %timeout.addr.0.i.i = phi i32 [ 50, %entry ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port.i, align 4
  %add.i.i = add i32 %7, 12
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %8 = inttoptr i32 %add1.i.i to ptr
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %8) #8, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.body3.i.preheader_crit_edge, label %if.end.i.i

do.body.i.i.do.body3.i.preheader_crit_edge:       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i.preheader

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748) #8
  %dec.i.i = add nsw i32 %timeout.addr.0.i.i, -1
  %tobool5.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end10.i.i, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.23) #11
  br label %do.body3.i.preheader

do.body3.i.preheader:                             ; preds = %do.end10.i.i, %do.body.i.i.do.body3.i.preheader_crit_edge
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end.i.do.body3.i_crit_edge, %do.body3.i.preheader
  %timeout.0.i = phi i32 [ %dec.i, %if.end.i.do.body3.i_crit_edge ], [ 50, %do.body3.i.preheader ]
  %16 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port.i, align 4
  %add5.i = add i32 %17, 8
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %18 = inttoptr i32 %add7.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #8, !srcloc !120
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %and10.i = and i32 %20, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp ne i32 %and10.i, 0
  %shr.i = lshr i32 %20, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %shr.i, %conv.i
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %do.body3.i.snd_cs5535audio_codec_read.exit_crit_edge, label %if.end.i

do.body3.i.snd_cs5535audio_codec_read.exit_crit_edge: ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_cs5535audio_codec_read.exit

if.end.i:                                         ; preds = %do.body3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #8
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool14.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool14.not.i, label %do.end20.i, label %if.end.i.do.body3.i_crit_edge

if.end.i.do.body3.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %conv.i, i32 noundef %20) #11
  br label %snd_cs5535audio_codec_read.exit

snd_cs5535audio_codec_read.exit:                  ; preds = %do.end20.i, %do.body3.i.snd_cs5535audio_codec_read.exit_crit_edge
  %conv23.i = trunc i32 %20 to i16
  ret i16 %conv23.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_tune_hardware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__param_ac97_quirk, !1, !"__param_ac97_quirk", i1 false, i1 false}
!1 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_ac97_quirktype242, !1, !"__UNIQUE_ID_ac97_quirktype242", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_ac97_quirk243, !4, !"__UNIQUE_ID_ac97_quirk243", i1 false, i1 false}
!4 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 30, i32 1}
!5 = !{ptr @__param_index, !6, !"__param_index", i1 false, i1 false}
!6 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_indextype244, !6, !"__UNIQUE_ID_indextype244", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_index245, !9, !"__UNIQUE_ID_index245", i1 false, i1 false}
!9 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 49, i32 1}
!10 = !{ptr @__param_id, !11, !"__param_id", i1 false, i1 false}
!11 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_idtype246, !11, !"__UNIQUE_ID_idtype246", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_id247, !14, !"__UNIQUE_ID_id247", i1 false, i1 false}
!14 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 51, i32 1}
!15 = !{ptr @__param_enable, !16, !"__param_enable", i1 false, i1 false}
!16 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 52, i32 1}
!17 = !{ptr @__UNIQUE_ID_enabletype248, !16, !"__UNIQUE_ID_enabletype248", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_enable249, !19, !"__UNIQUE_ID_enable249", i1 false, i1 false}
!19 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 53, i32 1}
!20 = !{ptr @__initcall__kmod_snd_cs5535audio__250_345_cs5535audio_driver_init6, !21, !"__initcall__kmod_snd_cs5535audio__250_345_cs5535audio_driver_init6", i1 false, i1 false}
!21 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 345, i32 1}
!22 = !{ptr @__exitcall_cs5535audio_driver_exit, !21, !"__exitcall_cs5535audio_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author251, !24, !"__UNIQUE_ID_author251", i1 false, i1 false}
!24 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 347, i32 1}
!25 = !{ptr @__UNIQUE_ID_file252, !26, !"__UNIQUE_ID_file252", i1 false, i1 false}
!26 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 348, i32 1}
!27 = !{ptr @__UNIQUE_ID_license253, !26, !"__UNIQUE_ID_license253", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_description254, !29, !"__UNIQUE_ID_description254", i1 false, i1 false}
!29 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 349, i32 1}
!30 = !{ptr @ac97_quirk, !31, !"ac97_quirk", i1 false, i1 false}
!31 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 28, i32 14}
!32 = !{ptr @__param_str_ac97_quirk, !1, !"__param_str_ac97_quirk", i1 false, i1 false}
!33 = !{ptr @__param_str_index, !6, !"__param_str_index", i1 false, i1 false}
!34 = !{ptr @__param_arr_index, !6, !"__param_arr_index", i1 false, i1 false}
!35 = !{ptr @index, !36, !"index", i1 false, i1 false}
!36 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 44, i32 12}
!37 = !{ptr @__param_str_id, !11, !"__param_str_id", i1 false, i1 false}
!38 = !{ptr @__param_arr_id, !11, !"__param_arr_id", i1 false, i1 false}
!39 = !{ptr @id, !40, !"id", i1 false, i1 false}
!40 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 45, i32 14}
!41 = !{ptr @__param_str_enable, !16, !"__param_str_enable", i1 false, i1 false}
!42 = !{ptr @__param_arr_enable, !16, !"__param_arr_enable", i1 false, i1 false}
!43 = !{ptr @enable, !44, !"enable", i1 false, i1 false}
!44 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 46, i32 13}
!45 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cs5535audio_driver, !47, !"cs5535audio_driver", i1 false, i1 false}
!47 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 334, i32 26}
!48 = !{ptr @snd_cs5535audio_ids, !49, !"snd_cs5535audio_ids", i1 false, i1 false}
!49 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 55, i32 35}
!50 = !{ptr @snd_cs5535audio_probe.dev, !51, !"dev", i1 false, i1 false}
!51 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 287, i32 13}
!52 = !{ptr @.str.1, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 318, i32 23}
!54 = !{ptr @.str.2, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 320, i32 26}
!56 = !{ptr @.str.3, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 321, i32 26}
!58 = !{ptr @.str.4, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 256, i32 3}
!60 = !{ptr @.str.5, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.6, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @snd_cs5535audio_create._entry, !59, !"_entry", i1 false, i1 false}
!65 = !{ptr @snd_cs5535audio_create._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @snd_cs5535audio_create.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 260, i32 2}
!68 = !{ptr @.str.9, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.11, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 273, i32 3}
!71 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @snd_cs5535audio_create._entry.10, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @snd_cs5535audio_create._entry_ptr.13, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 230, i32 5}
!76 = !{ptr @.str.15, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @snd_cs5535audio_interrupt._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @snd_cs5535audio_interrupt._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.16, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 185, i32 3}
!81 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @process_bm0_irq._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @process_bm0_irq._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @snd_cs5535audio_mixer.ops, !85, !"ops", i1 false, i1 false}
!85 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 141, i32 39}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 161, i32 3}
!88 = !{ptr @.str.19, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @snd_cs5535audio_mixer._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @snd_cs5535audio_mixer._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.21, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 169, i32 3}
!93 = !{ptr @snd_cs5535audio_mixer._entry.20, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @snd_cs5535audio_mixer._entry_ptr.22, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.23, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 73, i32 3}
!97 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @wait_till_cmd_acked._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @wait_till_cmd_acked._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 99, i32 3}
!102 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @snd_cs5535audio_codec_read._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @snd_cs5535audio_codec_read._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @ac97_quirks, !106, !"ac97_quirks", i1 false, i1 false}
!106 = !{!"../sound/pci/cs5535audio/cs5535audio.c", i32 32, i32 32}
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
!117 = !{i8 0, i8 2}
!118 = !{i64 4211697}
!119 = !{i64 2154765823}
!120 = !{i64 4212535}
!121 = !{i64 2154766582}
!122 = !{i64 2154767341}
!123 = !{i64 4212315}
!124 = !{i64 2154762937}
!125 = !{i64 2154765047}
!126 = !{i64 2154759232}
!127 = !{i64 4212117}
!128 = !{i64 2154752867}
!129 = !{i64 2154755464}
!130 = !{i64 2154756458}
