; ModuleID = '/llk/IR_all_yes/sound/soc/mxs/mxs-saif.c_pt.bc'
source_filename = "../sound/soc/mxs/mxs-saif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mxs_saif_put_mclk\22, \22a\22\09"
module asm "\09.weak\09__crc_mxs_saif_put_mclk\09\09\09\09"
module asm "\09.long\09__crc_mxs_saif_put_mclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxs_saif_put_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22mxs_saif_put_mclk\22\09\09\09\09\09"
module asm "__kstrtabns_mxs_saif_put_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mxs_saif_get_mclk\22, \22a\22\09"
module asm "\09.weak\09__crc_mxs_saif_get_mclk\09\09\09\09"
module asm "\09.long\09__crc_mxs_saif_get_mclk\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxs_saif_get_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22mxs_saif_get_mclk\22\09\09\09\09\09"
module asm "__kstrtabns_mxs_saif_get_mclk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.92, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.92 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mxs_saif = type { ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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

@mxs_saif = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@mxs_saif_put_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"error: busy\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs_saif_put_mclk\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/mxs/mxs-saif.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_saif_put_mclk._entry_ptr = internal global ptr @mxs_saif_put_mclk._entry, section ".printk_index", align 4
@__kstrtab_mxs_saif_put_mclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxs_saif_put_mclk = external dso_local constant [0 x i8], align 1
@__ksymtab_mxs_saif_put_mclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxs_saif_put_mclk to i32), ptr @__kstrtab_mxs_saif_put_mclk, ptr @__kstrtabns_mxs_saif_put_mclk }, section "___ksymtab_gpl+mxs_saif_put_mclk", align 4
@mxs_saif_get_mclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"can not get mclk from a non-master saif\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mxs_saif_get_mclk\00", [46 x i8] zeroinitializer }, align 32
@mxs_saif_get_mclk._entry_ptr = internal global ptr @mxs_saif_get_mclk._entry, section ".printk_index", align 4
@mxs_saif_get_mclk._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mxs_saif_get_mclk._entry_ptr.8 = internal global ptr @mxs_saif_get_mclk._entry.7, section ".printk_index", align 4
@__kstrtab_mxs_saif_get_mclk = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxs_saif_get_mclk = external dso_local constant [0 x i8], align 1
@__ksymtab_mxs_saif_get_mclk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxs_saif_get_mclk to i32), ptr @__kstrtab_mxs_saif_get_mclk, ptr @__kstrtabns_mxs_saif_get_mclk }, section "___ksymtab_gpl+mxs_saif_get_mclk", align 4
@__initcall__kmod_snd_soc_mxs__249_831_mxs_saif_driver_init6 = internal global ptr @mxs_saif_driver_init, section ".initcall6.init", align 4
@mxs_saif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_saif_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_saif_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_saif_driver_exit = internal global ptr @mxs_saif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [49 x i8] c"snd_soc_mxs.author=Freescale Semiconductor, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [45 x i8] c"snd_soc_mxs.description=MXS ASoC SAIF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [43 x i8] c"snd_soc_mxs.file=sound/soc/mxs/snd-soc-mxs\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"snd_soc_mxs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [36 x i8] c"snd_soc_mxs.alias=platform:mxs-saif\00", section ".modinfo", align 1
@mxs_saif_set_clk.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_soc_mxs\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_saif_set_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mclk %d rate %d\0A\00", [47 x i8] zeroinitializer }, align 32
@mxs_saif_set_clk.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"master saif%d\0A\00", [17 x i8] zeroinitializer }, align 32
@mxs_saif_set_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"can not change clock, master saif%d(rate %d) is ongoing\0A\00", [39 x i8] zeroinitializer }, align 32
@mxs_saif_set_clk._entry_ptr = internal global ptr @mxs_saif_set_clk._entry, section ".printk_index", align 4
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mxs-saif\00", [23 x i8] zeroinitializer }, align 32
@mxs_saif_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-saif\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"saif\00", [27 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 740, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get wrong saif id\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mxs_saif_probe\00", [17 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr = internal global ptr @mxs_saif_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,saif-master\00", [16 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get wrong master id\0A\00", [43 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.21 = internal global ptr @mxs_saif_probe._entry.19, section ".printk_index", align 4
@mxs_saif_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 771, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get the clock: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.24 = internal global ptr @mxs_saif_probe._entry.22, section ".printk_index", align 4
@mxs_saif_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.17, ptr @.str.2, i32 787, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.27 = internal global ptr @mxs_saif_probe._entry.25, section ".printk_index", align 4
@mxs_saif_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.17, ptr @.str.2, i32 797, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to init clocks\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.31 = internal global ptr @mxs_saif_probe._entry.28, section ".printk_index", align 4
@mxs_saif_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.14, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mxs_saif_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.14, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mxs_saif_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68719476804, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68719476804, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.17, ptr @.str.2, i32 803, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"register DAI failed\0A\00", [43 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.34 = internal global ptr @mxs_saif_probe._entry.32, section ".printk_index", align 4
@mxs_saif_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.2, i32 809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"register PCM failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mxs_saif_probe._entry_ptr.37 = internal global ptr @mxs_saif_probe._entry.35, section ".printk_index", align 4
@mxs_saif_irq.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mxs_saif_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"underrun!!! %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mxs_saif_irq.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"overrun!!! %d\0A\00", [17 x i8] zeroinitializer }, align 32
@mxs_saif_irq.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SAIF_CTRL %x SAIF_STAT %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_saif_mclk\00", [18 x i8] zeroinitializer }, align 32
@mxs_saif_mclk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register mclk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_saif_mclk_init\00", [45 x i8] zeroinitializer }, align 32
@mxs_saif_mclk_init._entry_ptr = internal global ptr @mxs_saif_mclk_init._entry, section ".printk_index", align 4
@mxs_saif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @mxs_saif_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @mxs_saif_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mxs_saif_startup, ptr @mxs_saif_shutdown, ptr @mxs_saif_hw_params, ptr null, ptr @mxs_saif_prepare, ptr @mxs_saif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mxs_saif_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.45, ptr @.str.2, i32 298, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxs_saif_set_dai_fmt\00", [43 x i8] zeroinitializer }, align 32
@mxs_saif_set_dai_fmt._entry_ptr = internal global ptr @mxs_saif_set_dai_fmt._entry, section ".printk_index", align 4
@mxs_saif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set mclk first\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_saif_hw_params\00", [45 x i8] zeroinitializer }, align 32
@mxs_saif_hw_params._entry_ptr = internal global ptr @mxs_saif_hw_params._entry, section ".printk_index", align 4
@mxs_saif_hw_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.47, ptr @.str.2, i32 435, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mxs_saif_hw_params._entry_ptr.49 = internal global ptr @mxs_saif_hw_params._entry.48, section ".printk_index", align 4
@mxs_saif_hw_params._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.2, i32 446, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to get proper clk\0A\00", [38 x i8] zeroinitializer }, align 32
@mxs_saif_hw_params._entry_ptr.52 = internal global ptr @mxs_saif_hw_params._entry.50, section ".printk_index", align 4
@mxs_saif_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_saif_trigger\00", [47 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"start\0A\00", [25 x i8] zeroinitializer }, align 32
@mxs_saif_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 537, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable master clock\0A\00", [33 x i8] zeroinitializer }, align 32
@mxs_saif_trigger._entry_ptr = internal global ptr @mxs_saif_trigger._entry, section ".printk_index", align 4
@mxs_saif_trigger._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.2, i32 548, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mxs_saif_trigger._entry_ptr.57 = internal global ptr @mxs_saif_trigger._entry.56, section ".printk_index", align 4
@mxs_saif_trigger.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.2, ptr @.str.58, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CTRL 0x%x STAT 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@mxs_saif_trigger.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.2, ptr @.str.58, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mxs_saif_trigger.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.53, ptr @.str.2, ptr @.str.59, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stop\0A\00", [26 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.60 = internal global [11 x i64] [i64 9, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 36]
@__sancov_gen_cov_switch_values.64 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"mxs_saif\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 28, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 215, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 259, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 265, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"mxs_saif_driver\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 822, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 85, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 92, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 96, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 826, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"mxs_saif_dt_ids\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 816, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 733, i32 28 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 740, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 749, i32 32 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 760, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 770, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 787, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 797, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [19 x i8] c"mxs_saif_component\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 662, i32 46 }
@___asan_gen_.170 = private unnamed_addr constant [13 x i8] c"mxs_saif_dai\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 645, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 803, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 809, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 677, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 683, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 688, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 702, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 711, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"mxs_saif_dai_ops\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 635, i32 37 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 298, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 429, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 435, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 446, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 533, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 537, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 548, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 586, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.255 = private constant [28 x i8] c"../sound/soc/mxs/mxs-saif.c\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.255, i32 600, i32 3 }
@llvm.compiler.used = appending global [92 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_mxs_saif_driver_exit, ptr @__initcall__kmod_snd_soc_mxs__249_831_mxs_saif_driver_init6, ptr @__ksymtab_mxs_saif_get_mclk, ptr @__ksymtab_mxs_saif_put_mclk, ptr @mxs_saif_driver_exit, ptr @mxs_saif_get_mclk._entry, ptr @mxs_saif_get_mclk._entry.7, ptr @mxs_saif_get_mclk._entry_ptr, ptr @mxs_saif_get_mclk._entry_ptr.8, ptr @mxs_saif_hw_params._entry, ptr @mxs_saif_hw_params._entry.48, ptr @mxs_saif_hw_params._entry.50, ptr @mxs_saif_hw_params._entry_ptr, ptr @mxs_saif_hw_params._entry_ptr.49, ptr @mxs_saif_hw_params._entry_ptr.52, ptr @mxs_saif_mclk_init._entry, ptr @mxs_saif_mclk_init._entry_ptr, ptr @mxs_saif_probe._entry, ptr @mxs_saif_probe._entry.19, ptr @mxs_saif_probe._entry.22, ptr @mxs_saif_probe._entry.25, ptr @mxs_saif_probe._entry.28, ptr @mxs_saif_probe._entry.32, ptr @mxs_saif_probe._entry.35, ptr @mxs_saif_probe._entry_ptr, ptr @mxs_saif_probe._entry_ptr.21, ptr @mxs_saif_probe._entry_ptr.24, ptr @mxs_saif_probe._entry_ptr.27, ptr @mxs_saif_probe._entry_ptr.31, ptr @mxs_saif_probe._entry_ptr.34, ptr @mxs_saif_probe._entry_ptr.37, ptr @mxs_saif_put_mclk._entry, ptr @mxs_saif_put_mclk._entry_ptr, ptr @mxs_saif_set_clk._entry, ptr @mxs_saif_set_clk._entry_ptr, ptr @mxs_saif_set_dai_fmt._entry, ptr @mxs_saif_set_dai_fmt._entry_ptr, ptr @mxs_saif_trigger._entry, ptr @mxs_saif_trigger._entry.56, ptr @mxs_saif_trigger._entry_ptr, ptr @mxs_saif_trigger._entry_ptr.57, ptr @mxs_saif, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mxs_saif_driver, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mxs_saif_dt_ids, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @mxs_saif_component, ptr @mxs_saif_dai, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @mxs_saif_dai_ops, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_put_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_get_mclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_get_mclk._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_set_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_mclk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_hw_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_hw_params._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_saif_trigger._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxs_saif_put_mclk(i32 noundef %saif_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %saif_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1073741824) #7, !srcloc !154
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 1) #7, !srcloc !154
  %mclk_in_use = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mclk_in_use, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxs_saif_get_mclk(i32 noundef %saif_id, i32 noundef %mclk, i32 noundef %rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %saif_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -2147483648) #7, !srcloc !154
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1073741824) #7, !srcloc !154
  %master_id.i = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %master_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %master_id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not = icmp eq ptr %1, %9
  br i1 %cmp.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !153
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  %mclk_in_use = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %mclk_in_use, align 4
  %call17 = tail call fastcc i32 @mxs_saif_set_clk(ptr noundef nonnull %1, i32 noundef %mclk, i32 noundef %rate)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end24, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %cleanup

if.end24:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 1) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then3.i, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -16, %do.end14 ], [ 0, %if.end24 ], [ -22, %entry.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_saif_set_clk(ptr nocapture noundef readonly %saif, i32 noundef %mclk, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_set_clk.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_set_clk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !155

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %saif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %saif, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_set_clk.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %mclk, i32 noundef %rate) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %master_id.i = getelementptr inbounds %struct.mxs_saif, ptr %saif, i32 0, i32 6
  %2 = ptrtoint ptr %master_id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %master_id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %do.body7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_set_clk.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_set_clk, %if.then19)) #7
          to label %do.end23 [label %if.then19], !srcloc !155

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %saif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %saif, align 4
  %id = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_set_clk.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %9) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body7
  %ongoing = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %ongoing to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ongoing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool24.not = icmp eq i32 %11, 0
  br i1 %tobool24.not, label %do.end23.if.end32_crit_edge, label %land.lhs.true

do.end23.if.end32_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

land.lhs.true:                                    ; preds = %do.end23
  %cur_rate = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 7
  %12 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rate)
  %cmp.not = icmp eq i32 %13, %rate
  br i1 %cmp.not, label %land.lhs.true.if.end32_crit_edge, label %do.end28

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end28:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %saif to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %saif, align 4
  %id30 = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %id30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %13) #10
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %do.end23.if.end32_crit_edge
  %base = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !153
  %and34 = and i32 %20, -1006632961
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %22) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %mclk_in_use = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mclk_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool39.not = icmp eq i32 %24, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end38
  %div = udiv i32 %mclk, %rate
  %25 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div, label %sw.default [
    i32 32, label %if.then40.sw.bb_crit_edge
    i32 64, label %if.then40.sw.bb_crit_edge145
    i32 128, label %if.then40.sw.bb_crit_edge146
    i32 256, label %if.then40.sw.bb_crit_edge147
    i32 512, label %if.then40.sw.bb_crit_edge148
    i32 48, label %if.then40.sw.bb44_crit_edge
    i32 96, label %if.then40.sw.bb44_crit_edge149
    i32 192, label %if.then40.sw.bb44_crit_edge150
    i32 384, label %if.then40.sw.bb44_crit_edge151
  ]

if.then40.sw.bb44_crit_edge151:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then40.sw.bb44_crit_edge150:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then40.sw.bb44_crit_edge149:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then40.sw.bb44_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb44

if.then40.sw.bb_crit_edge148:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then40.sw.bb_crit_edge147:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then40.sw.bb_crit_edge146:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then40.sw.bb_crit_edge145:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then40.sw.bb_crit_edge:                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.then40.sw.bb_crit_edge, %if.then40.sw.bb_crit_edge145, %if.then40.sw.bb_crit_edge146, %if.then40.sw.bb_crit_edge147, %if.then40.sw.bb_crit_edge148
  %26 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk, align 4
  %mul = shl i32 %rate, 9
  %call43 = tail call i32 @clk_set_rate(ptr noundef %27, i32 noundef %mul) #7
  br label %if.end53

sw.bb44:                                          ; preds = %if.then40.sw.bb44_crit_edge, %if.then40.sw.bb44_crit_edge149, %if.then40.sw.bb44_crit_edge150, %if.then40.sw.bb44_crit_edge151
  %or = or i32 %and34, 67108864
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  %mul46 = mul i32 %rate, 384
  %call47 = tail call i32 @clk_set_rate(ptr noundef %29, i32 noundef %mul46) #7
  br label %if.end53

sw.default:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  tail call void @clk_unprepare(ptr noundef %31) #7
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  %mul50 = shl i32 %rate, 9
  %call51 = tail call i32 @clk_set_rate(ptr noundef %33, i32 noundef %mul50) #7
  br label %if.end53

if.end53:                                         ; preds = %if.else, %sw.bb44, %sw.bb
  %ret.0 = phi i32 [ %call47, %sw.bb44 ], [ %call43, %sw.bb ], [ %call51, %if.else ]
  %scr.0 = phi i32 [ %or, %sw.bb44 ], [ %and34, %sw.bb ], [ %and34, %if.else ]
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %35) #7
  tail call void @clk_unprepare(ptr noundef %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool55.not = icmp eq i32 %ret.0, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %cur_rate58 = getelementptr inbounds %struct.mxs_saif, ptr %5, i32 0, i32 7
  %36 = ptrtoint ptr %cur_rate58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %rate, ptr %cur_rate58, align 4
  %37 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mclk_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool60.not = icmp eq i32 %38, 0
  br i1 %tobool60.not, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %scr.0) #7, !srcloc !154
  br label %cleanup

if.end64:                                         ; preds = %if.end57
  %div65 = udiv i32 %mclk, %rate
  %41 = zext i32 %div65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %div65, label %if.end64.cleanup_crit_edge [
    i32 32, label %sw.bb66
    i32 64, label %sw.bb68
    i32 128, label %sw.bb70
    i32 256, label %sw.bb72
    i32 512, label %if.end64.sw.epilog85_crit_edge
    i32 48, label %sw.bb76
    i32 96, label %sw.bb78
    i32 192, label %sw.bb80
    i32 384, label %if.end64.sw.epilog85_crit_edge152
  ]

if.end64.sw.epilog85_crit_edge152:                ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog85

if.end64.sw.epilog85_crit_edge:                   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog85

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb66:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or67 = or i32 %scr.0, 536870912
  br label %sw.epilog85

sw.bb68:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or69 = or i32 %scr.0, 402653184
  br label %sw.epilog85

sw.bb70:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or71 = or i32 %scr.0, 268435456
  br label %sw.epilog85

sw.bb72:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or73 = or i32 %scr.0, 134217728
  br label %sw.epilog85

sw.bb76:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or77 = or i32 %scr.0, 402653184
  br label %sw.epilog85

sw.bb78:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or79 = or i32 %scr.0, 268435456
  br label %sw.epilog85

sw.bb80:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %or81 = or i32 %scr.0, 134217728
  br label %sw.epilog85

sw.epilog85:                                      ; preds = %sw.bb80, %sw.bb78, %sw.bb76, %sw.bb72, %sw.bb70, %sw.bb68, %sw.bb66, %if.end64.sw.epilog85_crit_edge, %if.end64.sw.epilog85_crit_edge152
  %scr.1 = phi i32 [ %or81, %sw.bb80 ], [ %or79, %sw.bb78 ], [ %or77, %sw.bb76 ], [ %or73, %sw.bb72 ], [ %or71, %sw.bb70 ], [ %or69, %sw.bb68 ], [ %or67, %sw.bb66 ], [ %scr.0, %if.end64.sw.epilog85_crit_edge ], [ %scr.0, %if.end64.sw.epilog85_crit_edge152 ]
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %scr.1) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog85, %if.end64.cleanup_crit_edge, %if.then61, %if.end53.cleanup_crit_edge, %sw.default, %if.then3.i, %if.end32.cleanup_crit_edge, %do.end28, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ -22, %sw.default ], [ 0, %sw.epilog85 ], [ 0, %if.then61 ], [ -22, %do.end.cleanup_crit_edge ], [ %ret.0, %if.end53.cleanup_crit_edge ], [ -22, %if.end64.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_saif_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_saif_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_saif_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.mxs_saif, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp6 = icmp ugt i32 %call2, 1
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end9:                                          ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i156 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.then12

of_parse_phandle.exit:                            ; preds = %if.end9
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %of_parse_phandle.exit.if.then12_crit_edge, label %if.else14

of_parse_phandle.exit.if.then12_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %of_parse_phandle.exit.if.then12_crit_edge, %of_parse_phandle.exit.thread
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %master_id = getelementptr inbounds %struct.mxs_saif, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %master_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %master_id, align 4
  br label %if.end29

if.else14:                                        ; preds = %of_parse_phandle.exit
  %call15 = call i32 @of_alias_get_id(ptr noundef nonnull %5, ptr noundef nonnull @.str.15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.else14.cleanup_crit_edge, label %if.else18

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else18:                                        ; preds = %if.else14
  %master_id19 = getelementptr inbounds %struct.mxs_saif, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %master_id19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call15, ptr %master_id19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call15)
  %cmp22 = icmp ugt i32 %call15, 1
  br i1 %cmp22, label %do.end26, label %if.else18.if.end29_crit_edge

if.else18.if.end29_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end26:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end29:                                         ; preds = %if.else18.if.end29_crit_edge, %if.then12
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %arrayidx, align 4
  %call32 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call32, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %14) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end29
  %call43 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.mxs_saif, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call43, ptr %base, align 4
  %cmp.i157 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %call50 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end49.cleanup_crit_edge, label %if.end53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %if.end49
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i158 = icmp eq ptr %19, null
  br i1 %tobool.not.i158, label %if.end.i159, label %if.end53.dev_name.exit_crit_edge

if.end53.dev_name.exit_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i159:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i159, %if.end53.dev_name.exit_crit_edge
  %retval.0.i160 = phi ptr [ %21, %if.end.i159 ], [ %19, %if.end53.dev_name.exit_crit_edge ]
  %call.i161 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call50, ptr noundef nonnull @mxs_saif_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i160, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool60.not = icmp eq i32 %call.i161, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end66:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp68 = icmp eq i32 %24, 0
  br i1 %cmp68, label %if.then69, label %if.end66.if.end78_crit_edge

if.end66.if.end78_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then69:                                        ; preds = %if.end66
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call3.i = call ptr @__clk_get_name(ptr noundef %28) #7
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %call4.i = call ptr @clk_register_divider_table(ptr noundef %dev, ptr noundef nonnull @.str.42, ptr noundef %call3.i, i32 noundef 0, ptr noundef %30, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end10.i

if.then.i:                                        ; preds = %if.then69
  %cmp.i162 = icmp eq ptr %call4.i, inttoptr (i32 -17 to ptr)
  br i1 %cmp.i162, label %if.then.i.if.end78_crit_edge, label %do.end.i

if.then.i.if.end78_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call4.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %31) #10
  br label %do.end75

if.end10.i:                                       ; preds = %if.then69
  %call11.i = call i32 @of_clk_add_provider(ptr noundef %26, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call4.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %phi.cmp = icmp eq i32 %call11.i, 0
  br i1 %phi.cmp, label %if.end10.i.if.end78_crit_edge, label %if.end10.i.do.end75_crit_edge

if.end10.i.do.end75_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end75

if.end10.i.if.end78_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

do.end75:                                         ; preds = %if.end10.i.do.end75_crit_edge, %do.end.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.29) #10
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %if.end10.i.if.end78_crit_edge, %if.then.i.if.end78_crit_edge, %if.end66.if.end78_crit_edge
  %call80 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mxs_saif_component, ptr noundef nonnull @mxs_saif_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end87:                                         ; preds = %if.end78
  %call89 = call i32 @mxs_pcm_platform_register(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end87.cleanup_crit_edge, label %do.end94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call89) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.end87.cleanup_crit_edge, %do.end85, %do.end64, %if.end49.cleanup_crit_edge, %if.then46, %if.then35, %do.end26, %if.else14.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end26 ], [ %14, %if.then35 ], [ %16, %if.then46 ], [ %call.i161, %do.end64 ], [ %call80, %do.end85 ], [ %call89, %do.end94 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call15, %if.else14.cleanup_crit_edge ], [ %call50, %if.end49.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_irq(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mxs_saif, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %and = and i32 %2, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_irq.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_irq, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !155

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %fifo_underrun = getelementptr inbounds %struct.mxs_saif, ptr %dev_id, i32 0, i32 9
  %5 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fifo_underrun, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %fifo_underrun, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_irq.__UNIQUE_ID_ddebug246, ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef %inc) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 64) #7, !srcloc !154
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %and14 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.do.body39_crit_edge, label %do.body17

if.end13.do.body39_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.body17:                                        ; preds = %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_irq.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_irq, %if.then29)) #7
          to label %do.end34 [label %if.then29], !srcloc !155

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 4
  %fifo_overrun = getelementptr inbounds %struct.mxs_saif, ptr %dev_id, i32 0, i32 10
  %11 = ptrtoint ptr %fifo_overrun to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fifo_overrun, align 4
  %inc31 = add i32 %12, 1
  store i32 %inc31, ptr %fifo_overrun, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_irq.__UNIQUE_ID_ddebug247, ptr noundef %10, ptr noundef nonnull @.str.40, i32 noundef %inc31) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 32) #7, !srcloc !154
  br label %do.body39

do.body39:                                        ; preds = %do.end34, %if.end13.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_irq.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_irq, %if.then51)) #7
          to label %cleanup [label %if.then51], !srcloc !155

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !153
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #7, !srcloc !153
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_irq.__UNIQUE_ID_ddebug248, ptr noundef %16, ptr noundef nonnull @.str.41, i32 noundef %19, i32 noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then51 ], [ 1, %do.body39 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxs_pcm_platform_register(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_saif_set_dai_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %freq, ptr %mclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_set_dai_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %master_id = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %master_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %master_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %if.then2

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 -2147483648) #7, !srcloc !154
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 1073741824) #7, !srcloc !154
  br label %if.end9

if.end9:                                          ; preds = %if.then2, %if.end.if.end9_crit_edge
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #7, !srcloc !153
  %and16 = and i32 %19, -3841
  %and17 = and i32 %fmt, 15
  %20 = zext i32 %and17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and17, label %if.end9.cleanup_crit_edge [
    i32 1, label %if.end9.sw.epilog_crit_edge
    i32 3, label %sw.bb19
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %if.end9.sw.epilog_crit_edge
  %scr.0 = phi i32 [ 0, %sw.bb19 ], [ 2048, %if.end9.sw.epilog_crit_edge ]
  %and23 = lshr i32 %fmt, 8
  %21 = and i32 %and23, 15
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %21, label %sw.epilog.sw.epilog36_crit_edge [
    i32 4, label %sw.bb24
    i32 3, label %sw.bb27
    i32 2, label %sw.bb30
  ]

sw.epilog.sw.epilog36_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog36

sw.bb24:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or26 = or i32 %scr.0, 768
  br label %sw.epilog36

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or28 = or i32 %scr.0, 256
  br label %sw.epilog36

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or32 = or i32 %scr.0, 512
  br label %sw.epilog36

sw.epilog36:                                      ; preds = %sw.bb30, %sw.bb27, %sw.bb24, %sw.epilog.sw.epilog36_crit_edge
  %scr.1 = phi i32 [ %or32, %sw.bb30 ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb24 ], [ %scr.0, %sw.epilog.sw.epilog36_crit_edge ]
  %and37 = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and37)
  %cond = icmp eq i32 %and37, 16384
  br i1 %cond, label %sw.bb38, label %sw.epilog36.cleanup_crit_edge

sw.epilog36.cleanup_crit_edge:                    ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb38:                                          ; preds = %sw.epilog36
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %25 = ptrtoint ptr %master_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %master_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp41 = icmp eq i32 %24, %26
  %and43 = and i32 %scr.1, -5
  %masksel = select i1 %cmp41, i32 0, i32 4
  %scr.2 = or i32 %and43, %and16
  %or46 = or i32 %scr.2, %masksel
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %or46) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %sw.bb38, %sw.epilog36.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %sw.bb38 ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %sw.epilog36.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_startup(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %fifo_underrun = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %fifo_underrun to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fifo_underrun, align 4
  %fifo_overrun = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %fifo_overrun to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %fifo_overrun, align 4
  %base = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -2147483648) #7, !srcloc !154
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1073741824) #7, !srcloc !154
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_prepare(ptr noundef %11) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_saif_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %master_id.i = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %master_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %master_id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %mclk_in_use = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mclk_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %do.end

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.46) #10
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %base = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 16
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %mclk_in_use7 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %mclk_in_use7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mclk_in_use7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp ne i32 %16, 0
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %19 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %call19 = tail call fastcc i32 @mxs_saif_set_clk(ptr noundef %3, i32 noundef %20, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end26, label %do.end24

do.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.51) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end26.if.end40_crit_edge, label %if.then27

if.end26.if.end40_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then27:                                        ; preds = %if.end26
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_enable(ptr noundef %26) #7
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %call30 = tail call i32 @clk_set_rate(ptr noundef %28, i32 noundef 24000000) #7
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.end34, label %if.then27.cleanup_crit_edge

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %if.then27
  %clk35 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 1
  %31 = ptrtoint ptr %clk35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk35, align 4
  %call36 = tail call i32 @clk_prepare(ptr noundef %32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.if.end40_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end40:                                         ; preds = %if.end34.if.end40_crit_edge, %if.end26.if.end40_crit_edge
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #7, !srcloc !153
  %and45 = and i32 %35, -249
  %arrayidx.i.i96 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end40.params_format.exit_crit_edge

if.end40.params_format.exit_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end40
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.1.i.i = icmp eq i32 %39, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end40.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end40.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %37, %if.end40.params_format.exit_crit_edge ], [ %39, %for.inc.i.i.params_format.exit_crit_edge ]
  %40 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !156
  %add.i.i = or i32 %40, %i.09.lcssa.i.i
  %41 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 36, label %sw.bb47
    i32 6, label %sw.bb50
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb47:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or49 = or i32 %and45, 72
  br label %sw.epilog

sw.bb50:                                          ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or52 = or i32 %and45, 136
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb47, %params_format.exit.sw.epilog_crit_edge
  %scr.0 = phi i32 [ %or52, %sw.bb50 ], [ %or49, %sw.bb47 ], [ %and45, %params_format.exit.sw.epilog_crit_edge ]
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %42 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp53 = icmp eq i32 %43, 0
  %and55 = and i32 %scr.0, -3
  %masksel = select i1 %cmp53, i32 0, i32 2
  %scr.1 = or i32 %masksel, %and55
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %scr.1) #7, !srcloc !154
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then27.cleanup_crit_edge, %do.end24, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end24 ], [ 0, %sw.epilog ], [ -16, %do.end14 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call30, %if.then27.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 33554432) #7, !srcloc !154
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_saif_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %master_id.i = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %master_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %master_id.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @mxs_saif, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 6, label %if.end.sw.bb_crit_edge211
    i32 4, label %if.end.sw.bb_crit_edge212
    i32 5, label %if.end.sw.bb98_crit_edge
    i32 0, label %if.end.sw.bb98_crit_edge213
    i32 3, label %if.end.sw.bb98_crit_edge214
  ]

if.end.sw.bb98_crit_edge214:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb98

if.end.sw.bb98_crit_edge213:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb98

if.end.sw.bb98_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb98

if.end.sw.bb_crit_edge212:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge211:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge211, %if.end.sw.bb_crit_edge212
  %state = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %do.body

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_trigger, %if.then8)) #7
          to label %do.end [label %if.then8], !srcloc !155

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_trigger.__UNIQUE_ID_ddebug242, ptr noundef %12, ptr noundef nonnull @.str.54) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %clk = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call10 = tail call i32 @clk_enable(ptr noundef %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.55) #10
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %cmp18.not = icmp eq ptr %3, %7
  br i1 %cmp18.not, label %if.end17.if.end31_crit_edge, label %if.then19

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then19:                                        ; preds = %if.end17
  %clk20 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %clk20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk20, align 4
  %call21 = tail call i32 @clk_enable(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.55) #10
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  br label %cleanup

if.end29:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 1) #7, !srcloc !154
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %if.end17.if.end31_crit_edge
  %mclk_in_use = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 3
  %25 = ptrtoint ptr %mclk_in_use to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mclk_in_use, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %base34 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 4
  %27 = ptrtoint ptr %base34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base34, align 4
  %add.ptr36 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 1) #7, !srcloc !154
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end31.if.end37_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %29 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp38 = icmp eq i32 %30, 0
  %base40 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %31 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base40, align 4
  %add.ptr41 = getelementptr i8, ptr %32, i32 32
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 0) #7, !srcloc !154
  %33 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base40, align 4
  %add.ptr43 = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #7, !srcloc !154
  br label %if.end50

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !153
  %36 = ptrtoint ptr %base40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base40, align 4
  %add.ptr48 = getelementptr i8, ptr %37, i32 32
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !153
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then39
  %ongoing = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 8
  %39 = ptrtoint ptr %ongoing to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %ongoing, align 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_trigger, %if.then64)) #7
          to label %do.body75 [label %if.then64], !srcloc !155

if.then64:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %3, align 4
  %base66 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %base66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base66, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #7, !srcloc !153
  %46 = ptrtoint ptr %base66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base66, align 4
  %add.ptr70 = getelementptr i8, ptr %47, i32 16
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #7, !srcloc !153
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_trigger.__UNIQUE_ID_ddebug243, ptr noundef %42, ptr noundef nonnull @.str.58, i32 noundef %45, i32 noundef %48) #7
  br label %do.body75

do.body75:                                        ; preds = %if.then64, %if.end50
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_trigger, %if.then87)) #7
          to label %cleanup [label %if.then87], !srcloc !155

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 4
  %base89 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 4
  %51 = ptrtoint ptr %base89 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base89, align 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !153
  %54 = ptrtoint ptr %base89 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base89, align 4
  %add.ptr93 = getelementptr i8, ptr %55, i32 16
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #7, !srcloc !153
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_trigger.__UNIQUE_ID_ddebug244, ptr noundef %50, ptr noundef nonnull @.str.58, i32 noundef %53, i32 noundef %56) #7
  br label %cleanup

sw.bb98:                                          ; preds = %if.end.sw.bb98_crit_edge, %if.end.sw.bb98_crit_edge213, %if.end.sw.bb98_crit_edge214
  %state99 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 11
  %57 = ptrtoint ptr %state99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp100 = icmp eq i32 %58, 0
  br i1 %cmp100, label %sw.bb98.cleanup_crit_edge, label %do.body103

sw.bb98.cleanup_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body103:                                       ; preds = %sw.bb98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxs_saif_trigger, %if.then115)) #7
          to label %do.end119 [label %if.then115], !srcloc !155

if.then115:                                       ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_saif_trigger.__UNIQUE_ID_ddebug245, ptr noundef %60, ptr noundef nonnull @.str.59) #7
  br label %do.end119

do.end119:                                        ; preds = %if.then115, %do.body103
  %cur_rate = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 7
  %61 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cur_rate, align 4
  %div = udiv i32 1000000, %62
  %mclk_in_use120 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 3
  %63 = ptrtoint ptr %mclk_in_use120 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mclk_in_use120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool121.not = icmp eq i32 %64, 0
  br i1 %tobool121.not, label %if.then122, label %do.end119.if.end130_crit_edge

do.end119.if.end130_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.then122:                                       ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #9
  %base123 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 4
  %65 = ptrtoint ptr %base123 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base123, align 4
  %add.ptr125 = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 1) #7, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %67(i32 noundef %div) #7
  br label %if.end130

if.end130:                                        ; preds = %if.then122, %do.end119.if.end130_crit_edge
  %clk131 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 1
  %68 = ptrtoint ptr %clk131 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk131, align 4
  tail call void @clk_disable(ptr noundef %69) #7
  %cmp132.not = icmp eq ptr %3, %7
  br i1 %cmp132.not, label %if.end130.if.end146_crit_edge, label %if.then133

if.end130.if.end146_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %base134 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %base134 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base134, align 4
  %add.ptr136 = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 1) #7, !srcloc !154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %div) #7
  %clk145 = getelementptr inbounds %struct.mxs_saif, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %clk145 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk145, align 4
  tail call void @clk_disable(ptr noundef %74) #7
  br label %if.end146

if.end146:                                        ; preds = %if.then133, %if.end130.if.end146_crit_edge
  %ongoing147 = getelementptr inbounds %struct.mxs_saif, ptr %7, i32 0, i32 8
  %75 = ptrtoint ptr %ongoing147 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %ongoing147, align 4
  %76 = ptrtoint ptr %state99 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %state99, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %sw.bb98.cleanup_crit_edge, %if.then87, %do.body75, %do.end26, %do.end15, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %do.end15 ], [ %call21, %do.end26 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb98.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then87 ], [ 0, %if.end146 ], [ 0, %do.body75 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !98, !99, !100, !101, !103, !105, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !139, !141, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/mxs/mxs-saif.c", i32 215, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mxs_saif_put_mclk._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mxs_saif_put_mclk._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_mxs_saif_put_mclk, !9, !"__ksymtab_mxs_saif_put_mclk", i1 false, i1 false}
!9 = !{!"../sound/soc/mxs/mxs-saif.c", i32 230, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/mxs/mxs-saif.c", i32 259, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mxs_saif_get_mclk._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mxs_saif_get_mclk._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @mxs_saif_get_mclk._entry.7, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../sound/soc/mxs/mxs-saif.c", i32 265, i32 3}
!17 = !{ptr @mxs_saif_get_mclk._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_mxs_saif_get_mclk, !19, !"__ksymtab_mxs_saif_get_mclk", i1 false, i1 false}
!19 = !{!"../sound/soc/mxs/mxs-saif.c", i32 284, i32 1}
!20 = !{ptr @__initcall__kmod_snd_soc_mxs__249_831_mxs_saif_driver_init6, !21, !"__initcall__kmod_snd_soc_mxs__249_831_mxs_saif_driver_init6", i1 false, i1 false}
!21 = !{!"../sound/soc/mxs/mxs-saif.c", i32 831, i32 1}
!22 = !{ptr @__exitcall_mxs_saif_driver_exit, !21, !"__exitcall_mxs_saif_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author250, !24, !"__UNIQUE_ID_author250", i1 false, i1 false}
!24 = !{!"../sound/soc/mxs/mxs-saif.c", i32 833, i32 1}
!25 = !{ptr @__UNIQUE_ID_description251, !26, !"__UNIQUE_ID_description251", i1 false, i1 false}
!26 = !{!"../sound/soc/mxs/mxs-saif.c", i32 834, i32 1}
!27 = !{ptr @__UNIQUE_ID_file252, !28, !"__UNIQUE_ID_file252", i1 false, i1 false}
!28 = !{!"../sound/soc/mxs/mxs-saif.c", i32 835, i32 1}
!29 = !{ptr @__UNIQUE_ID_license253, !28, !"__UNIQUE_ID_license253", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias254, !31, !"__UNIQUE_ID_alias254", i1 false, i1 false}
!31 = !{!"../sound/soc/mxs/mxs-saif.c", i32 836, i32 1}
!32 = !{ptr @mxs_saif, !33, !"mxs_saif", i1 false, i1 false}
!33 = !{!"../sound/soc/mxs/mxs-saif.c", i32 28, i32 25}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/mxs/mxs-saif.c", i32 85, i32 2}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mxs_saif_set_clk.__UNIQUE_ID_ddebug240, !35, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/mxs/mxs-saif.c", i32 92, i32 2}
!41 = !{ptr @mxs_saif_set_clk.__UNIQUE_ID_ddebug241, !40, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/mxs/mxs-saif.c", i32 96, i32 3}
!44 = !{ptr @mxs_saif_set_clk._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mxs_saif_set_clk._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/mxs/mxs-saif.c", i32 826, i32 11}
!48 = !{ptr @mxs_saif_driver, !49, !"mxs_saif_driver", i1 false, i1 false}
!49 = !{!"../sound/soc/mxs/mxs-saif.c", i32 822, i32 31}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/mxs/mxs-saif.c", i32 733, i32 28}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/mxs/mxs-saif.c", i32 740, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mxs_saif_probe._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @mxs_saif_probe._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/mxs/mxs-saif.c", i32 749, i32 32}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/mxs/mxs-saif.c", i32 760, i32 4}
!61 = !{ptr @mxs_saif_probe._entry.19, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mxs_saif_probe._entry_ptr.21, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/mxs/mxs-saif.c", i32 770, i32 3}
!65 = !{ptr @mxs_saif_probe._entry.22, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @mxs_saif_probe._entry_ptr.24, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/mxs/mxs-saif.c", i32 787, i32 3}
!69 = !{ptr @mxs_saif_probe._entry.25, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mxs_saif_probe._entry_ptr.27, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/mxs/mxs-saif.c", i32 797, i32 4}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @mxs_saif_probe._entry.28, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @mxs_saif_probe._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/mxs/mxs-saif.c", i32 803, i32 3}
!78 = !{ptr @mxs_saif_probe._entry.32, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mxs_saif_probe._entry_ptr.34, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/mxs/mxs-saif.c", i32 809, i32 3}
!82 = !{ptr @mxs_saif_probe._entry.35, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @mxs_saif_probe._entry_ptr.37, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/mxs/mxs-saif.c", i32 677, i32 3}
!86 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mxs_saif_irq.__UNIQUE_ID_ddebug246, !85, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/mxs/mxs-saif.c", i32 683, i32 3}
!90 = !{ptr @mxs_saif_irq.__UNIQUE_ID_ddebug247, !89, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/mxs/mxs-saif.c", i32 688, i32 2}
!93 = !{ptr @mxs_saif_irq.__UNIQUE_ID_ddebug248, !92, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/mxs/mxs-saif.c", i32 702, i32 8}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/mxs/mxs-saif.c", i32 711, i32 3}
!98 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mxs_saif_mclk_init._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @mxs_saif_mclk_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @mxs_saif_component, !102, !"mxs_saif_component", i1 false, i1 false}
!102 = !{!"../sound/soc/mxs/mxs-saif.c", i32 662, i32 46}
!103 = !{ptr @mxs_saif_dai, !104, !"mxs_saif_dai", i1 false, i1 false}
!104 = !{!"../sound/soc/mxs/mxs-saif.c", i32 645, i32 34}
!105 = !{ptr @mxs_saif_dai_ops, !106, !"mxs_saif_dai_ops", i1 false, i1 false}
!106 = !{!"../sound/soc/mxs/mxs-saif.c", i32 635, i32 37}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/mxs/mxs-saif.c", i32 298, i32 3}
!109 = !{ptr @mxs_saif_set_dai_fmt._entry, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @mxs_saif_set_dai_fmt._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/mxs/mxs-saif.c", i32 429, i32 3}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @mxs_saif_hw_params._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @mxs_saif_hw_params._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @mxs_saif_hw_params._entry.48, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../sound/soc/mxs/mxs-saif.c", i32 435, i32 3}
!118 = !{ptr @mxs_saif_hw_params._entry_ptr.49, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/mxs/mxs-saif.c", i32 446, i32 3}
!121 = !{ptr @mxs_saif_hw_params._entry.50, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @mxs_saif_hw_params._entry_ptr.52, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/mxs/mxs-saif.c", i32 533, i32 3}
!125 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug242, !124, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/mxs/mxs-saif.c", i32 537, i32 4}
!129 = !{ptr @mxs_saif_trigger._entry, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @mxs_saif_trigger._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @mxs_saif_trigger._entry.56, !132, !"_entry", i1 false, i1 false}
!132 = !{!"../sound/soc/mxs/mxs-saif.c", i32 548, i32 5}
!133 = !{ptr @mxs_saif_trigger._entry_ptr.57, !132, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/mxs/mxs-saif.c", i32 586, i32 3}
!136 = !{ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug243, !135, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!137 = !{ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug244, !138, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!138 = !{!"../sound/soc/mxs/mxs-saif.c", i32 590, i32 3}
!139 = !{ptr @.str.59, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/mxs/mxs-saif.c", i32 600, i32 3}
!141 = !{ptr @mxs_saif_trigger.__UNIQUE_ID_ddebug245, !140, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!142 = !{ptr @mxs_saif_dt_ids, !143, !"mxs_saif_dt_ids", i1 false, i1 false}
!143 = !{!"../sound/soc/mxs/mxs-saif.c", i32 816, i32 34}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 6445772}
!154 = !{i64 6445354}
!155 = !{i64 2148971977, i64 2148971982, i64 2148971995, i64 2148972039, i64 2148972073, i64 2148972094}
!156 = !{i32 0, i32 33}
