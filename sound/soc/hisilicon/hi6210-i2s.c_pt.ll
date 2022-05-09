; ModuleID = '/llk/IR_all_yes/sound/soc/hisilicon/hi6210-i2s.c_pt.bc'
source_filename = "../sound/soc/hisilicon/hi6210-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hi6210_i2s = type { ptr, ptr, [8 x ptr], i32, %struct.snd_soc_dai_driver, ptr, ptr, i32, [2 x %struct.snd_dmaengine_dai_dma_data], i32, %struct.spinlock, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_hi6210_i2s__241_607_hi6210_i2s_driver_init6 = internal global ptr @hi6210_i2s_driver_init, section ".initcall6.init", align 4
@hi6210_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi6210_i2s_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi6210_i2s_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi6210_i2s_driver_exit = internal global ptr @hi6210_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [51 x i8] c"hi6210_i2s.description=Hisilicon HI6210 I2S driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [53 x i8] c"hi6210_i2s.author=Andy Green <andy.green@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [47 x i8] c"hi6210_i2s.file=sound/soc/hisilicon/hi6210-i2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [23 x i8] c"hi6210_i2s.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi6210_i2s\00", [21 x i8] zeroinitializer }, align 32
@hi6210_i2s_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6210-i2s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hi6210_i2s_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2s->lock\00", [21 x i8] zeroinitializer }, align 32
@hi6210_i2s_dai_init = internal constant { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @hi6210_i2s_dai_probe, ptr null, ptr null, ptr null, ptr @hi6210_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 20, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 20, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hisilicon,sysctrl-syscon\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dacodec\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2s-base\00", [23 x i8] zeroinitializer }, align 32
@hi6210_i2s_i2s_comp = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.24, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@hi6210_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @hi6210_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hi6210_i2s_startup, ptr @hi6210_i2s_shutdown, ptr @hi6210_i2s_hw_params, ptr null, ptr null, ptr @hi6210_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@hi6210_i2s_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 112, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: setting 49.152MHz base rate failed %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hi6210_i2s_startup\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/hisilicon/hi6210-i2s.c\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hi6210_i2s_startup._entry_ptr = internal global ptr @hi6210_i2s_startup._entry, section ".printk_index", align 4
@hi6210_i2s_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 277, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bad format\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hi6210_i2s_hw_params\00", [43 x i8] zeroinitializer }, align 32
@hi6210_i2s_hw_params._entry_ptr = internal global ptr @hi6210_i2s_hw_params._entry, section ".printk_index", align 4
@hi6210_i2s_hw_params._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.7, i32 302, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bad rate: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@hi6210_i2s_hw_params._entry_ptr.14 = internal global ptr @hi6210_i2s_hw_params._entry.12, section ".printk_index", align 4
@hi6210_i2s_hw_params._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.7, i32 307, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Bad channels\0A\00", [18 x i8] zeroinitializer }, align 32
@hi6210_i2s_hw_params._entry_ptr.17 = internal global ptr @hi6210_i2s_hw_params._entry.15, section ".printk_index", align 4
@hi6210_i2s_hw_params.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid i2s->fmt MASTER_MASK. This shouldn't happen\0A\00", [43 x i8] zeroinitializer }, align 32
@hi6210_i2s_hw_params.__already_done.19 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Invalid i2s->fmt FORMAT_MASK. This shouldn't happen\0A\00", [43 x i8] zeroinitializer }, align 32
@hi6210_i2s_trigger.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.7, ptr @.str.22, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hi6210_i2s_trigger\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@hi6210_i2s_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.7, i32 495, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown cmd\0A\00", [19 x i8] zeroinitializer }, align 32
@hi6210_i2s_trigger._entry_ptr = internal global ptr @hi6210_i2s_trigger._entry, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hi6210_i2s-i2s\00", [17 x i8] zeroinitializer }, align 32
@switch.table.hi6210_i2s_hw_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 262144, i32 196608], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 32, i64 8000, i64 16000, i64 32000, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.28 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"hi6210_i2s_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 599, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 602, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"hi6210_i2s_dt_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 592, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 557, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"hi6210_i2s_dai_init\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 521, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 569, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 573, i32 44 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 578, i32 45 }
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c"hi6210_i2s_i2s_comp\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 540, i32 46 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"hi6210_i2s_dai_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 513, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 111, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 277, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 302, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 307, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 392, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 407, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 478, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 495, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [36 x i8] c"../sound/soc/hisilicon/hi6210-i2s.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 541, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant [34 x i8] c"switch.table.hi6210_i2s_hw_params\00", align 1
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_hi6210_i2s_driver_exit, ptr @__initcall__kmod_hi6210_i2s__241_607_hi6210_i2s_driver_init6, ptr @hi6210_i2s_driver_exit, ptr @hi6210_i2s_hw_params._entry, ptr @hi6210_i2s_hw_params._entry.12, ptr @hi6210_i2s_hw_params._entry.15, ptr @hi6210_i2s_hw_params._entry_ptr, ptr @hi6210_i2s_hw_params._entry_ptr.14, ptr @hi6210_i2s_hw_params._entry_ptr.17, ptr @hi6210_i2s_startup._entry, ptr @hi6210_i2s_startup._entry_ptr, ptr @hi6210_i2s_trigger._entry, ptr @hi6210_i2s_trigger._entry_ptr, ptr @hi6210_i2s_driver, ptr @.str, ptr @hi6210_i2s_dt_ids, ptr @hi6210_i2s_probe.__key, ptr @.str.1, ptr @hi6210_i2s_dai_init, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @hi6210_i2s_i2s_comp, ptr @hi6210_i2s_dai_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.hi6210_i2s_hw_params], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_dai_init to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_i2s_comp to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_hw_params._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_hw_params._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi6210_i2s_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hi6210_i2s_hw_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6210_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi6210_i2s_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi6210_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi6210_i2s_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6210_i2s_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %2 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !77
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 368, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 8
  %lock = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hi6210_i2s_probe.__key, i16 noundef signext 3) #7
  %call5 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %base = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %base, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %res, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %base_phys = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %base_phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %base_phys, align 8
  %dai = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %dai, ptr @hi6210_i2s_dai_init, i32 168)
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call12 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %sysctrl = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %sysctrl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %sysctrl, align 4
  %cmp.i81 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %clk = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call19, ptr %clk, align 8
  %cmp.i82 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %clocks = getelementptr inbounds %struct.hi6210_i2s, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clocks, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %clocks, align 8
  %call28 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  %arrayidx30 = getelementptr %struct.hi6210_i2s, ptr %call.i, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %arrayidx30, align 4
  %cmp.i83 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %21 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clocks, align 8
  %inc40 = add i32 %22, 1
  store i32 %inc40, ptr %clocks, align 8
  %call41 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @hi6210_i2s_i2s_comp, ptr noundef %dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end38.cleanup_crit_edge, %if.then34, %if.then23, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %14, %if.then15 ], [ %16, %if.then23 ], [ %20, %if.then34 ], [ %call46, %if.end44 ], [ -12, %entry.cleanup_crit_edge ], [ %call41, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hi6210_i2s_dai_probe(ptr nocapture noundef %dai) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dma_data = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 8
  %arrayidx2 = getelementptr %struct.hi6210_i2s, ptr %3, i32 0, i32 8, i32 1
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %4 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_data, ptr %playback_dma_data.i, align 4
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %5 = ptrtoint ptr %capture_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx2, ptr %capture_dma_data.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hi6210_i2s_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %and = and i32 %fmt, 61440
  %trunc = trunc i32 %and to i16
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %entry.sw.epilog_crit_edge11
  ]

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge11
  %and1 = and i32 %fmt, 15
  %and1.off = add nsw i32 %and1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.off)
  %switch = icmp ult i32 %and1.off, 3
  br i1 %switch, label %sw.epilog4, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog4:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %format = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %fmt, ptr %format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp = icmp eq i32 %and, 16384
  %master = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 18
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %master, align 1
  %bf.shl = select i1 %cmp, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %master, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog4, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6210_i2s_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !77
  %sysctrl = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sysctrl, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 808, ptr noundef nonnull %val) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysctrl, align 4
  %call3 = call i32 @regmap_write(ptr noundef %10, i32 noundef 804, i32 noundef 16) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clocks = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %clocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp99 = icmp sgt i32 %12, 0
  br i1 %cmp99, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.0100 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hi6210_i2s, ptr %3, i32 0, i32 2, i32 %n.0100
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call.i = call i32 @clk_prepare(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.err_unprepare_clk_crit_edge

for.body.err_unprepare_clk_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unprepare_clk

if.end.i:                                         ; preds = %for.body
  %call1.i = call i32 @clk_enable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.inc, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %14) #7
  br label %err_unprepare_clk

for.inc:                                          ; preds = %if.end.i
  %inc = add nuw nsw i32 %n.0100, 1
  %15 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clocks, align 8
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %arrayidx9 = getelementptr %struct.hi6210_i2s, ptr %3, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx9, align 4
  %call10 = call i32 @clk_set_rate(ptr noundef %18, i32 noundef 49152000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call10) #10
  br label %err_unprepare_clk

if.end14:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sysctrl, align 4
  %call16 = call i32 @regmap_write(ptr noundef %22, i32 noundef 624, i32 noundef 512) #7
  %23 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sysctrl, align 4
  %call18 = call i32 @regmap_write(ptr noundef %24, i32 noundef 528, i32 noundef 32) #7
  %25 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sysctrl, align 4
  %call20 = call i32 @regmap_write(ptr noundef %26, i32 noundef 784, i32 noundef 32) #7
  %27 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sysctrl, align 4
  %call22 = call i32 @regmap_write(ptr noundef %28, i32 noundef 788, i32 noundef 32) #7
  %base.i = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 5
  %29 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 68
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %32 = or i32 %31, 1056964608
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i75 = getelementptr i8, ptr %36, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 %32) #7, !srcloc !81
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i77 = getelementptr i8, ptr %38, i32 48
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i77) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %40 = or i32 %39, 805306368
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i79 = getelementptr i8, ptr %44, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %40) #7, !srcloc !81
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 8
  %add.ptr.i81 = getelementptr i8, ptr %46, i32 48
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %48 = and i32 %47, -805306369
  %49 = call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 8
  %add.ptr.i83 = getelementptr i8, ptr %52, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %48) #7, !srcloc !81
  %53 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i, align 8
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %56 = and i32 %55, -12289
  %57 = call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #7, !srcloc !81
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 8
  %add.ptr.i87 = getelementptr i8, ptr %62, i32 96
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %64 = and i32 %63, -469762049
  %65 = or i32 %64, 201326592
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base.i, align 8
  %add.ptr.i89 = getelementptr i8, ptr %69, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %65) #7, !srcloc !81
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 8
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #7, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %73 = or i32 %72, 16777216
  %74 = call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  call void @arm_heavy_mb() #7
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %73) #7, !srcloc !81
  br label %cleanup

err_unprepare_clk:                                ; preds = %do.end, %if.then3.i, %for.body.err_unprepare_clk_crit_edge
  %n.096 = phi i32 [ %n.0.lcssa, %do.end ], [ %n.0100, %if.then3.i ], [ %n.0100, %for.body.err_unprepare_clk_crit_edge ]
  %ret.0 = phi i32 [ %call10, %do.end ], [ %call1.i, %if.then3.i ], [ %call.i, %for.body.err_unprepare_clk_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.096)
  %tobool39.not101 = icmp eq i32 %n.096, 0
  br i1 %tobool39.not101, label %err_unprepare_clk.cleanup_crit_edge, label %err_unprepare_clk.while.body_crit_edge

err_unprepare_clk.while.body_crit_edge:           ; preds = %err_unprepare_clk
  br label %while.body

err_unprepare_clk.cleanup_crit_edge:              ; preds = %err_unprepare_clk
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_unprepare_clk.while.body_crit_edge
  %n.1102 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %n.096, %err_unprepare_clk.while.body_crit_edge ]
  %dec = add nsw i32 %n.1102, -1
  %arrayidx41 = getelementptr %struct.hi6210_i2s, ptr %3, i32 0, i32 2, i32 %dec
  %78 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx41, align 4
  call void @clk_disable(ptr noundef %79) #7
  call void @clk_unprepare(ptr noundef %79) #7
  %tobool39.not = icmp eq i32 %dec, 0
  br i1 %tobool39.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_unprepare_clk.cleanup_crit_edge, %if.end14
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %ret.0, %err_unprepare_clk.cleanup_crit_edge ], [ %ret.0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi6210_i2s_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clocks = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clocks, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp sgt i32 %5, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %n.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.hi6210_i2s, ptr %3, i32 0, i32 2, i32 %n.07
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %inc = add nuw nsw i32 %n.07, 1
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clocks, align 8
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %sysctrl = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %sysctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sysctrl, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 784, i32 noundef 32) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6210_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %5, %entry.params_format.exit_crit_edge ], [ %7, %for.inc.i.i.params_format.exit_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !82
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  %9 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %add.i.i, label %params_format.exit.do.end_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 8, label %sw.bb3
    i32 6, label %params_format.exit.sw.bb4_crit_edge
  ]

params_format.exit.sw.bb4_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.do.end_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb:                                            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb3, %params_format.exit.sw.bb4_crit_edge
  %signed_data.1 = phi i32 [ 0, %params_format.exit.sw.bb4_crit_edge ], [ 524288, %sw.bb3 ]
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %params_format.exit.sw.epilog_crit_edge
  %signed_data.2 = phi i32 [ %signed_data.1, %sw.bb4 ], [ 0, %params_format.exit.sw.epilog_crit_edge ], [ 524288, %sw.bb ]
  %cond = phi i1 [ true, %sw.bb4 ], [ false, %params_format.exit.sw.epilog_crit_edge ], [ false, %sw.bb ]
  %bits.0 = phi i32 [ 50331648, %sw.bb4 ], [ 0, %params_format.exit.sw.epilog_crit_edge ], [ 0, %sw.bb ]
  %arrayidx.i.i314 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i314, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %11, label %do.end16 [
    i32 8000, label %sw.epilog.sw.epilog19_crit_edge
    i32 16000, label %sw.bb8
    i32 32000, label %sw.bb9
    i32 48000, label %sw.bb10
    i32 96000, label %sw.bb11
    i32 192000, label %sw.bb12
  ]

sw.epilog.sw.epilog19_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog19

do.end16:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %11) #10
  br label %cleanup

sw.epilog19:                                      ; preds = %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.epilog.sw.epilog19_crit_edge
  %rate.0 = phi i32 [ 6, %sw.bb12 ], [ 5, %sw.bb11 ], [ 4, %sw.bb10 ], [ 2, %sw.bb9 ], [ 1, %sw.bb8 ], [ 0, %sw.epilog.sw.epilog19_crit_edge ]
  %arrayidx.i.i316 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i316 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i316, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %do.end23, label %if.end

do.end23:                                         ; preds = %sw.epilog19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end:                                           ; preds = %sw.epilog19
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %15 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %17 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %spec.select = select i1 %cond, i8 32, i8 16
  %spec.select371 = select i1 %cond, i32 3, i32 2
  %18 = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 13
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select371, ptr %20, align 4
  %22 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i314, align 4
  %rate33 = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 11
  %24 = ptrtoint ptr %rate33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %rate33, align 4
  %25 = ptrtoint ptr %arrayidx.i.i316 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i316, align 4
  %conv = trunc i32 %26 to i8
  %channels = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 14
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %channels, align 1
  %28 = load i8, ptr %18, align 4
  %conv39 = mul i8 %28, %conv
  %channel_length = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 16
  %29 = ptrtoint ptr %channel_length to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv39, ptr %channel_length, align 1
  %base.i = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 8
  %add.ptr.i = getelementptr i8, ptr %31, i32 56
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %33 = and i32 %32, -522133280
  %34 = or i32 %33, 504372752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 8
  %add.ptr.i320 = getelementptr i8, ptr %36, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i320, i32 %34) #7, !srcloc !81
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 8
  %add.ptr.i322 = getelementptr i8, ptr %38, i32 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %40 = or i32 %39, 817893120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i, align 8
  %add.ptr.i324 = getelementptr i8, ptr %42, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i324, i32 %40) #7, !srcloc !81
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 8
  %add.ptr.i326 = getelementptr i8, ptr %44, i32 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %46 = and i32 %45, -21332
  %47 = or i32 %46, 514
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 8
  %add.ptr.i328 = getelementptr i8, ptr %49, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i328, i32 %47) #7, !srcloc !81
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 8
  %add.ptr.i330 = getelementptr i8, ptr %51, i32 20
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i330) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %53 = and i32 %52, -515
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 8
  %add.ptr.i332 = getelementptr i8, ptr %55, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i332, i32 %53) #7, !srcloc !81
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 8
  %add.ptr.i334 = getelementptr i8, ptr %57, i32 24
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %59 = and i32 %58, -3342337
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 8
  %add.ptr.i336 = getelementptr i8, ptr %61, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i336, i32 %59) #7, !srcloc !81
  %format = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 12
  %62 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %format, align 8
  %64 = trunc i32 %63 to i16
  %trunc = and i16 %64, -4096
  %65 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %trunc, label %land.end [
    i16 4096, label %sw.bb51
    i16 16384, label %sw.bb54
  ]

sw.bb51:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %master = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 18
  %66 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %master, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %master, align 1
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 8
  %add.ptr.i338 = getelementptr i8, ptr %68, i32 16
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i338) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %70 = or i32 %69, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 8
  %add.ptr.i340 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i340, i32 %70) #7, !srcloc !81
  br label %sw.epilog101

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %master55 = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 18
  %73 = ptrtoint ptr %master55 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load56 = load i8, ptr %master55, align 1
  %bf.set58 = or i8 %bf.load56, -128
  store i8 %bf.set58, ptr %master55, align 1
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 8
  %add.ptr.i342 = getelementptr i8, ptr %75, i32 16
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %77 = and i32 %76, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 8
  %add.ptr.i344 = getelementptr i8, ptr %79, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344, i32 %77) #7, !srcloc !81
  br label %sw.epilog101

land.end:                                         ; preds = %if.end
  %.b313 = load i1, ptr @hi6210_i2s_hw_params.__already_done, align 1
  br i1 %.b313, label %land.end.cleanup_crit_edge, label %if.then68, !prof !83

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then68:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @hi6210_i2s_hw_params.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef nonnull @.str.18) #7
  br label %cleanup

sw.epilog101:                                     ; preds = %sw.bb54, %sw.bb51
  %80 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %format, align 8
  %and103 = and i32 %81, 15
  %switch.tableidx = add nsw i32 %and103, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 3
  br i1 %82, label %switch.lookup, label %land.end115

land.end115:                                      ; preds = %sw.epilog101
  %.b311312 = load i1, ptr @hi6210_i2s_hw_params.__already_done.19, align 1
  br i1 %.b311312, label %land.end115.cleanup_crit_edge, label %if.then122, !prof !83

land.end115.cleanup_crit_edge:                    ; preds = %land.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then122:                                       ; preds = %land.end115
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @hi6210_i2s_hw_params.__already_done.19, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 407, i32 noundef 9, ptr noundef nonnull @.str.20) #7
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog101
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.hi6210_i2s_hw_params, i32 0, i32 %switch.tableidx
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  %84 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i, align 8
  %add.ptr.i346 = getelementptr i8, ptr %85, i32 16
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i346) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %87 = and i32 %86, -1793
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %or160 = or i32 %88, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %89 = tail call i32 @llvm.bswap.i32(i32 %or160) #7
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 8
  %add.ptr.i348 = getelementptr i8, ptr %91, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348, i32 %89) #7, !srcloc !81
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 8
  %add.ptr.i350 = getelementptr i8, ptr %93, i32 136
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %95 = and i32 %94, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 8
  %add.ptr.i352 = getelementptr i8, ptr %97, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352, i32 %95) #7, !srcloc !81
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %cond.i, i32 0, i32 2
  %98 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %maxburst, align 4
  %99 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp = icmp eq i32 %100, 0
  %base_phys = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 7
  %101 = ptrtoint ptr %base_phys to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %base_phys, align 8
  %. = select i1 %cmp, i32 244, i32 248
  %add166 = add i32 %102, %.
  %103 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add166, ptr %cond.i, align 4
  %104 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %channels, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %105)
  %cond209 = icmp eq i8 %105, 1
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 8
  %add.ptr.i354 = getelementptr i8, ptr %107, i32 16
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i354) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cond209, label %sw.bb171, label %sw.default174

sw.bb171:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %109 = or i32 %108, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 8
  %add.ptr.i356 = getelementptr i8, ptr %111, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %109) #7, !srcloc !81
  br label %sw.epilog177

sw.default174:                                    ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %112 = and i32 %108, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 8
  %add.ptr.i360 = getelementptr i8, ptr %114, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360, i32 %112) #7, !srcloc !81
  br label %sw.epilog177

sw.epilog177:                                     ; preds = %sw.default174, %sw.bb171
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 8
  %add.ptr.i362 = getelementptr i8, ptr %116, i32 16
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i362) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %118 = and i32 %117, -51204
  %119 = tail call i32 @llvm.bswap.i32(i32 %118)
  %or182 = or i32 %bits.0, %signed_data.2
  %or184 = or i32 %or182, %119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %120 = tail call i32 @llvm.bswap.i32(i32 %or184) #7
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 8
  %add.ptr.i364 = getelementptr i8, ptr %122, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 %120) #7, !srcloc !81
  %master185 = getelementptr inbounds %struct.hi6210_i2s, ptr %3, i32 0, i32 18
  %123 = ptrtoint ptr %master185 to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load186 = load i8, ptr %master185, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load186)
  %tobool187.not = icmp sgt i8 %bf.load186, -1
  br i1 %tobool187.not, label %sw.epilog177.cleanup_crit_edge, label %if.end189

sw.epilog177.cleanup_crit_edge:                   ; preds = %sw.epilog177
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end189:                                        ; preds = %sw.epilog177
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i, align 8
  %add.ptr.i366 = getelementptr i8, ptr %125, i32 12
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i366) #7, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  %127 = and i32 %126, -1879508849
  %128 = tail call i32 @llvm.bswap.i32(i32 %127)
  %shl195 = shl nuw nsw i32 %rate.0, 28
  %or196 = or i32 %128, %shl195
  %shl197 = shl nuw nsw i32 %rate.0, 16
  %or198 = or i32 %or196, %shl197
  %shl199 = shl nuw nsw i32 %rate.0, 8
  %or200 = or i32 %or198, %shl199
  %shl201 = shl nuw nsw i32 %rate.0, 4
  %or202 = or i32 %or200, %shl201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %129 = tail call i32 @llvm.bswap.i32(i32 %or202) #7
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 8
  %add.ptr.i368 = getelementptr i8, ptr %131, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368, i32 %129) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %if.end189, %sw.epilog177.cleanup_crit_edge, %if.then122, %land.end115.cleanup_crit_edge, %if.then68, %land.end.cleanup_crit_edge, %do.end23, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ 0, %if.end189 ], [ -22, %do.end23 ], [ -22, %if.then68 ], [ -22, %land.end.cleanup_crit_edge ], [ -22, %if.then122 ], [ -22, %land.end115.cleanup_crit_edge ], [ 0, %sw.epilog177.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi6210_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hi6210_i2s_trigger.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hi6210_i2s_trigger, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hi6210_i2s_trigger.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %do.end12 [
    i32 1, label %do.end.sw.bb_crit_edge
    i32 4, label %do.end.sw.bb_crit_edge36
    i32 0, label %do.end.sw.bb5_crit_edge
    i32 3, label %do.end.sw.bb5_crit_edge37
  ]

do.end.sw.bb5_crit_edge37:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

do.end.sw.bb5_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

do.end.sw.bb_crit_edge36:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge36
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %1 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %lock.i = getelementptr inbounds %struct.hi6210_i2s, ptr %6, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %base.i14.i = getelementptr inbounds %struct.hi6210_i2s, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i14.i, align 8
  %add.ptr.i15.i = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i32 %9, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i14.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %10) #7, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %return

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i32 %9, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %base.i14.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i14.i, align 8
  %add.ptr.i13.i23 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i23, i32 %13) #7, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %return

sw.bb5:                                           ; preds = %do.end.sw.bb5_crit_edge, %do.end.sw.bb5_crit_edge37
  %stream6 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %16 = ptrtoint ptr %stream6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp7 = icmp eq i32 %17, 1
  %dev.i24 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i24, align 4
  %driver_data.i.i25 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i25, align 4
  %lock.i26 = getelementptr inbounds %struct.hi6210_i2s, ptr %21, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock.i26) #7
  %base.i14.i27 = getelementptr inbounds %struct.hi6210_i2s, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %base.i14.i27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i14.i27, align 8
  %add.ptr.i15.i28 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i28) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %25 = and i32 %24, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %base.i14.i27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i14.i27, align 8
  %add.ptr.i17.i = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %25) #7, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %lock.i26) #7
  br label %return

if.else9:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %28 = and i32 %24, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %base.i14.i27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i14.i27, align 8
  %add.ptr.i17.i34 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i34, i32 %28) #7, !srcloc !81
  tail call void @_raw_spin_unlock(ptr noundef %lock.i26) #7
  br label %return

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.23) #10
  br label %return

return:                                           ; preds = %do.end12, %if.else9, %if.then8, %if.else, %if.then3
  %retval.0 = phi i32 [ -22, %do.end12 ], [ 0, %if.then8 ], [ 0, %if.else9 ], [ 0, %if.then3 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_hi6210_i2s__241_607_hi6210_i2s_driver_init6, !1, !"__initcall__kmod_hi6210_i2s__241_607_hi6210_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 607, i32 1}
!2 = !{ptr @__exitcall_hi6210_i2s_driver_exit, !1, !"__exitcall_hi6210_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 609, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 611, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 602, i32 11}
!12 = !{ptr @hi6210_i2s_driver, !13, !"hi6210_i2s_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 599, i32 31}
!14 = !{ptr @hi6210_i2s_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 557, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 569, i32 7}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 573, i32 44}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 578, i32 45}
!23 = !{ptr @hi6210_i2s_dai_init, !24, !"hi6210_i2s_dai_init", i1 false, i1 false}
!24 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 521, i32 40}
!25 = !{ptr @hi6210_i2s_dai_ops, !26, !"hi6210_i2s_dai_ops", i1 false, i1 false}
!26 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 513, i32 37}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 111, i32 3}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hi6210_i2s_startup._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @hi6210_i2s_startup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 277, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @hi6210_i2s_hw_params._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @hi6210_i2s_hw_params._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 302, i32 3}
!42 = !{ptr @hi6210_i2s_hw_params._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @hi6210_i2s_hw_params._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 307, i32 3}
!46 = !{ptr @hi6210_i2s_hw_params._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hi6210_i2s_hw_params._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 392, i32 3}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 407, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 478, i32 2}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hi6210_i2s_trigger.__UNIQUE_ID_ddebug240, !55, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 495, i32 3}
!60 = !{ptr @hi6210_i2s_trigger._entry, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hi6210_i2s_trigger._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 541, i32 10}
!64 = !{ptr @hi6210_i2s_i2s_comp, !65, !"hi6210_i2s_i2s_comp", i1 false, i1 false}
!65 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 540, i32 46}
!66 = !{ptr @hi6210_i2s_dt_ids, !67, !"hi6210_i2s_dt_ids", i1 false, i1 false}
!67 = !{!"../sound/soc/hisilicon/hi6210-i2s.c", i32 592, i32 34}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 4824905}
!79 = !{i64 2155123398}
!80 = !{i64 2155122578}
!81 = !{i64 4824487}
!82 = !{i32 0, i32 33}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2148967926, i64 2148967931, i64 2148967944, i64 2148967988, i64 2148968022, i64 2148968043}
