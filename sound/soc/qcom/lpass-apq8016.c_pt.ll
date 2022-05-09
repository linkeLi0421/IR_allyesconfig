; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/lpass-apq8016.c_pt.bc'
source_filename = "../sound/soc/qcom/lpass-apq8016.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lpass_variant = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, %struct.reg_field, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.lpass_data = type { ptr, [8 x ptr], [8 x ptr], [8 x i32], [8 x i32], [8 x i8], i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, [8 x ptr], [4 x ptr], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], ptr, ptr, [4 x ptr], ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_snd_soc_lpass_apq8016__239_308_apq8016_lpass_cpu_platform_driver_init6 = internal global ptr @apq8016_lpass_cpu_platform_driver_init, section ".initcall6.init", align 4
@apq8016_lpass_cpu_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_qcom_lpass_cpu_platform_probe, ptr @asoc_qcom_lpass_cpu_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @apq8016_lpass_cpu_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_apq8016_lpass_cpu_platform_driver_exit = internal global ptr @apq8016_lpass_cpu_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description240 = internal constant [59 x i8] c"snd_soc_lpass_apq8016.description=APQ8016 LPASS CPU Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [64 x i8] c"snd_soc_lpass_apq8016.file=sound/soc/qcom/snd-soc-lpass-apq8016\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [37 x i8] c"snd_soc_lpass_apq8016.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apq8016-lpass-cpu\00", [46 x i8] zeroinitializer }, align 32
@apq8016_lpass_cpu_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,lpass-cpu-apq8016\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @apq8016_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@apq8016_data = internal global { %struct.lpass_variant, [328 x i8] } { %struct.lpass_variant { i32 24576, i32 4096, i32 3, i32 33792, i32 4096, i32 2, i32 0, i32 0, i32 0, i32 45056, i32 4096, i32 2, i32 4096, i32 4096, i32 4, %struct.reg_field { i32 4096, i32 15, i32 15, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 14, i32 14, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 10, i32 13, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 9, i32 9, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 8, i32 8, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 4, i32 7, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 3, i32 3, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 2, i32 2, i32 4, i32 4096 }, %struct.reg_field { i32 4096, i32 0, i32 1, i32 4, i32 4096 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field zeroinitializer, %struct.reg_field { i32 33792, i32 4, i32 7, i32 2, i32 4096 }, %struct.reg_field { i32 33792, i32 11, i32 11, i32 2, i32 4096 }, %struct.reg_field { i32 33792, i32 8, i32 10, i32 2, i32 4096 }, %struct.reg_field { i32 33792, i32 1, i32 3, i32 2, i32 4096 }, %struct.reg_field { i32 33792, i32 0, i32 0, i32 2, i32 4096 }, %struct.reg_field { i32 33792, i32 12, i32 12, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 4, i32 7, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 11, i32 11, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 8, i32 10, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 1, i32 3, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 0, i32 0, i32 2, i32 4096 }, %struct.reg_field { i32 45056, i32 12, i32 12, i32 2, i32 4096 }, i32 1, i32 5, ptr @apq8016_lpass_init, ptr @apq8016_lpass_exit, ptr @apq8016_lpass_alloc_dma_channel, ptr @apq8016_lpass_free_dma_channel, ptr @apq8016_lpass_cpu_dai_driver, i32 4, ptr @.compoundliteral, ptr @.compoundliteral.9, ptr @.compoundliteral.12, i32 2 }, [328 x i8] zeroinitializer }, align 32
@apq8016_lpass_cpu_dai_driver = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } { [4 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.33, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 2184, i32 1194, i32 8000, i32 96000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.35, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.36, i64 2184, i32 1194, i32 8000, i32 96000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.37, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.38, i64 2184, i32 1194, i32 8000, i32 96000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.39, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr @asoc_qcom_lpass_cpu_dai_probe, ptr null, ptr null, ptr null, ptr @asoc_qcom_lpass_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.40, i64 2184, i32 1194, i32 8000, i32 96000, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.41, i64 2184, i32 1194, i32 8000, i32 96000, i32 1, i32 8, i32 0 }, i8 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-osr-clk0\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-osr-clk1\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-osr-clk2\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-osr-clk3\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk0\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk1\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk2\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mi2s-bit-clk3\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcnoc-mport-clk\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcnoc-sway-clk\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.10, ptr @.str.11], [24 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 180, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get clocks %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apq8016_lpass_init\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/qcom/lpass-apq8016.c\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry_ptr = internal global ptr @apq8016_lpass_init._entry, section ".printk_index", align 4
@apq8016_lpass_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.15, i32 186, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"apq8016 clk_enable failed\0A\00", [37 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry_ptr.20 = internal global ptr @apq8016_lpass_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ahbix-clk\00", [22 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.15, i32 193, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error getting ahbix-clk: %ld\0A\00", [34 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry_ptr.24 = internal global ptr @apq8016_lpass_init._entry.22, section ".printk_index", align 4
@apq8016_lpass_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.15, i32 200, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error setting rate on ahbix_clk: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry_ptr.27 = internal global ptr @apq8016_lpass_init._entry.25, section ".printk_index", align 4
@apq8016_lpass_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.14, ptr @.str.15, ptr @.str.29, i8 0, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_lpass_apq8016\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set ahbix_clk rate to %lu\0A\00", [37 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.15, i32 208, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error enabling ahbix_clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@apq8016_lpass_init._entry_ptr.32 = internal global ptr @apq8016_lpass_init._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Primary MI2S\00", [19 x i8] zeroinitializer }, align 32
@asoc_qcom_lpass_cpu_dai_ops = external dso_local constant %struct.snd_soc_dai_ops, align 4
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Primary Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Secondary MI2S\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Secondary Playback\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Tertiary MI2S\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Tertiary Capture\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Quatenary MI2S\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Quatenary Capture\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Quatenary Playback\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.42 = private unnamed_addr constant [34 x i8] c"apq8016_lpass_cpu_platform_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 300, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 302, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [28 x i8] c"apq8016_lpass_cpu_device_id\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 294, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"apq8016_data\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 230, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [29 x i8] c"apq8016_lpass_cpu_dai_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 25, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 277, i32 5 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 278, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 279, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 280, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 283, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 284, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 285, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 286, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 270, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 271, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 180, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 186, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 190, i32 41 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 192, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 200, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 203, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 208, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 28, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 30, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 49, i32 11 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 51, i32 19 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 70, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 72, i32 19 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 91, i32 11 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 108, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [34 x i8] c"../sound/soc/qcom/lpass-apq8016.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 93, i32 19 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_apq8016_lpass_cpu_platform_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_apq8016__239_308_apq8016_lpass_cpu_platform_driver_init6, ptr @apq8016_lpass_cpu_platform_driver_exit, ptr @apq8016_lpass_init._entry, ptr @apq8016_lpass_init._entry.18, ptr @apq8016_lpass_init._entry.22, ptr @apq8016_lpass_init._entry.25, ptr @apq8016_lpass_init._entry.30, ptr @apq8016_lpass_init._entry_ptr, ptr @apq8016_lpass_init._entry_ptr.20, ptr @apq8016_lpass_init._entry_ptr.24, ptr @apq8016_lpass_init._entry_ptr.27, ptr @apq8016_lpass_init._entry_ptr.32, ptr @apq8016_lpass_cpu_platform_driver, ptr @.str, ptr @apq8016_lpass_cpu_device_id, ptr @apq8016_data, ptr @apq8016_lpass_cpu_dai_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.compoundliteral, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_cpu_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_cpu_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_data to i32), i32 1304, i32 1632, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_cpu_dai_driver to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apq8016_lpass_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8016_lpass_cpu_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @apq8016_lpass_cpu_platform_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @apq8016_lpass_cpu_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @apq8016_lpass_cpu_platform_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_platform_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_platform_remove(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8016_lpass_init(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %variant1 = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %variant1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %variant1, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %num_clks = getelementptr inbounds %struct.lpass_variant, ptr %3, i32 0, i32 97
  %4 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_clks, align 4
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 8) #5
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !95

devm_kcalloc.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %clks120 = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %clks120 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %clks120, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %9 = extractvalue { i32, i1 } %6, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef %9, i32 noundef 3520) #5
  %clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %clks, align 4
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %devm_kcalloc.exit
  %11 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_clks, align 4
  %num_clks6 = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %num_clks6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %num_clks6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp129 = icmp sgt i32 %12, 0
  br i1 %cmp129, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %clk_name = getelementptr inbounds %struct.lpass_variant, ptr %3, i32 0, i32 96
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_name, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0130
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clks, align 4
  %arrayidx9 = getelementptr %struct.clk_bulk_data, ptr %19, i32 %i.0130
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.0130, 1
  %21 = ptrtoint ptr %num_clks6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_clks6, align 4
  %cmp = icmp slt i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi i32 [ %12, %if.end.for.end_crit_edge ], [ %22, %for.body.for.end_crit_edge ]
  %23 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clks, align 4
  %call12 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev2, i32 noundef %.lcssa, ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.13, i32 noundef %call12) #8
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %25 = ptrtoint ptr %num_clks6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_clks6, align 4
  %27 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clks, align 4
  %call.i = tail call i32 @clk_bulk_prepare(i32 noundef %26, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.do.end23_crit_edge

if.end15.do.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef %26, ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_bulk_unprepare(i32 noundef %26, ptr noundef %28) #5
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i, %if.end15.do.end23_crit_edge
  %retval.0.i111.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end15.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end.i
  %call25 = tail call ptr @devm_clk_get(ptr noundef %dev2, ptr noundef nonnull @.str.21) #5
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call25, ptr %1, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %30) #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %err_ahbix_clk

if.end36:                                         ; preds = %if.end24
  %call38 = tail call i32 @clk_set_rate(ptr noundef %call25, i32 noundef 131072000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body45, label %do.end43

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.26, i32 noundef %call38) #8
  br label %err_ahbix_clk

do.body45:                                        ; preds = %if.end36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @apq8016_lpass_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@apq8016_lpass_init, %if.then50)) #5
          to label %do.end55 [label %if.then50], !srcloc !96

if.then50:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call52 = tail call i32 @clk_get_rate(ptr noundef %35) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @apq8016_lpass_init.__UNIQUE_ID_ddebug238, ptr noundef %dev2, ptr noundef nonnull @.str.29, i32 noundef %call52) #5
  br label %do.end55

do.end55:                                         ; preds = %if.then50, %do.body45
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call.i112 = tail call i32 @clk_prepare(ptr noundef %37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool.not.i113 = icmp eq i32 %call.i112, 0
  br i1 %tobool.not.i113, label %if.end.i116, label %do.end55.do.end62_crit_edge

do.end55.do.end62_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end62

if.end.i116:                                      ; preds = %do.end55
  %call1.i114 = tail call i32 @clk_enable(ptr noundef %37) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i114)
  %tobool2.not.i115 = icmp eq i32 %call1.i114, 0
  br i1 %tobool2.not.i115, label %if.end.i116.cleanup_crit_edge, label %if.then3.i117

if.end.i116.cleanup_crit_edge:                    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3.i117:                                    ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %37) #5
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i117, %do.end55.do.end62_crit_edge
  %retval.0.i118.ph = phi i32 [ %call1.i114, %if.then3.i117 ], [ %call.i112, %do.end55.do.end62_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.31, i32 noundef %retval.0.i118.ph) #8
  br label %err_ahbix_clk

err_ahbix_clk:                                    ; preds = %do.end62, %do.end43, %do.end31
  %ret.0 = phi i32 [ %33, %do.end31 ], [ %call38, %do.end43 ], [ %retval.0.i118.ph, %do.end62 ]
  %38 = ptrtoint ptr %num_clks6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_clks6, align 4
  %40 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %39, ptr noundef %41) #5
  tail call void @clk_bulk_unprepare(i32 noundef %39, ptr noundef %41) #5
  br label %cleanup

cleanup:                                          ; preds = %err_ahbix_clk, %if.end.i116.cleanup_crit_edge, %do.end23, %do.end, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread
  %retval.0 = phi i32 [ %call12, %do.end ], [ %retval.0.i111.ph, %do.end23 ], [ %ret.0, %err_ahbix_clk ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ 0, %if.end.i116.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8016_lpass_exit(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %num_clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %num_clks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_clks, align 4
  %clks = getelementptr inbounds %struct.lpass_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clks, align 4
  tail call void @clk_bulk_disable(i32 noundef %3, ptr noundef %5) #5
  tail call void @clk_bulk_unprepare(i32 noundef %3, ptr noundef %5) #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8016_lpass_alloc_dma_channel(ptr noundef %drvdata, i32 noundef %direction, i32 noundef %dai_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 13
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rdma_channels = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %rdma_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdma_channels, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %dma_ch_bit_map, i32 noundef %3) #5
  %4 = ptrtoint ptr %rdma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rdma_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp2.not = icmp ult i32 %call, %5
  br i1 %cmp2.not, label %if.then.if.end13_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.else:                                          ; preds = %entry
  %wrdma_channel_start = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 87
  %6 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wrdma_channel_start, align 4
  %wrdma_channels = getelementptr inbounds %struct.lpass_variant, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %wrdma_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wrdma_channels, align 4
  %add = add i32 %9, %7
  %call6 = tail call i32 @_find_next_zero_bit_be(ptr noundef %dma_ch_bit_map, i32 noundef %add, i32 noundef %7) #5
  %10 = ptrtoint ptr %wrdma_channel_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wrdma_channel_start, align 4
  %12 = ptrtoint ptr %wrdma_channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wrdma_channels, align 4
  %add9 = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %add9)
  %cmp10.not = icmp ult i32 %call6, %add9
  br i1 %cmp10.not, label %if.else.if.end13_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %chan.0 = phi i32 [ %call, %if.then.if.end13_crit_edge ], [ %call6, %if.else.if.end13_crit_edge ]
  %dma_ch_bit_map14 = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  tail call void @_set_bit(i32 noundef %chan.0, ptr noundef %dma_ch_bit_map14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %chan.0, %if.end13 ], [ -16, %if.then.cleanup_crit_edge ], [ -16, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apq8016_lpass_free_dma_channel(ptr noundef %drvdata, i32 noundef %chan, i32 noundef %dai_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_ch_bit_map = getelementptr inbounds %struct.lpass_data, ptr %drvdata, i32 0, i32 14
  tail call void @_clear_bit(i32 noundef %chan, ptr noundef %dma_ch_bit_map) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_qcom_lpass_cpu_dai_probe(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_snd_soc_lpass_apq8016__239_308_apq8016_lpass_cpu_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_lpass_apq8016__239_308_apq8016_lpass_cpu_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 308, i32 1}
!2 = !{ptr @__exitcall_apq8016_lpass_cpu_platform_driver_exit, !1, !"__exitcall_apq8016_lpass_cpu_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description240, !4, !"__UNIQUE_ID_description240", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 310, i32 1}
!5 = !{ptr @__UNIQUE_ID_file241, !6, !"__UNIQUE_ID_file241", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 311, i32 1}
!7 = !{ptr @__UNIQUE_ID_license242, !6, !"__UNIQUE_ID_license242", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 302, i32 12}
!10 = !{ptr @apq8016_lpass_cpu_platform_driver, !11, !"apq8016_lpass_cpu_platform_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 300, i32 31}
!12 = !{ptr @apq8016_lpass_cpu_device_id, !13, !"apq8016_lpass_cpu_device_id", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 294, i32 34}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 277, i32 5}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 278, i32 5}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 279, i32 5}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 280, i32 5}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 283, i32 5}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 284, i32 5}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 285, i32 5}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 286, i32 5}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 270, i32 8}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 271, i32 8}
!34 = !{ptr @apq8016_data, !35, !"apq8016_data", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 230, i32 29}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 180, i32 3}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @apq8016_lpass_init._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @apq8016_lpass_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 186, i32 3}
!46 = !{ptr @apq8016_lpass_init._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @apq8016_lpass_init._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 190, i32 41}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 192, i32 3}
!52 = !{ptr @apq8016_lpass_init._entry.22, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @apq8016_lpass_init._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 200, i32 3}
!56 = !{ptr @apq8016_lpass_init._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @apq8016_lpass_init._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 203, i32 2}
!60 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @apq8016_lpass_init.__UNIQUE_ID_ddebug238, !59, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 208, i32 3}
!64 = !{ptr @apq8016_lpass_init._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @apq8016_lpass_init._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 28, i32 11}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 30, i32 19}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 49, i32 11}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 51, i32 19}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 70, i32 11}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 72, i32 19}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 91, i32 11}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 108, i32 19}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 93, i32 19}
!84 = !{ptr @apq8016_lpass_cpu_dai_driver, !85, !"apq8016_lpass_cpu_dai_driver", i1 false, i1 false}
!85 = !{!"../sound/soc/qcom/lpass-apq8016.c", i32 25, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{!"branch_weights", i32 1, i32 2000}
!96 = !{i64 2148728585, i64 2148728590, i64 2148728603, i64 2148728647, i64 2148728681, i64 2148728702}
