; ModuleID = '/llk/IR_all_yes/sound/pci/cs46xx/dsp_spos.c_pt.bc'
source_filename = "../sound/pci/cs46xx/dsp_spos.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dsp_spos_control_block = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.dsp_generic_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_basic_dma_req = type { i32, i32, i32, i32 }
%struct.dsp_scatter_gather_ext = type { i32, i32, i32, i32, i32 }
%struct.dsp_volume_control = type { i16, i16, i16, i16 }
%struct.dsp_task_tree_control_block = type { %struct.dsp_hf_save_area, %struct.dsp_tree_link, %struct.dsp_task_tree_data, %struct.dsp_task_tree_context_block, %struct.dsp_interval_timer_data }
%struct.dsp_hf_save_area = type { i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i16, i16 }
%struct.dsp_tree_link = type { i16, i16, i16, i16 }
%struct.dsp_task_tree_data = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.dsp_task_tree_context_block = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dsp_interval_timer_data = type { i16, i16, i16, i16 }
%struct.dsp_mix2_ostream_spb = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dsp_symbol_desc = type { i32, ptr, i32 }
%struct.dsp_spos_instance = type { %struct.dsp_symbol_desc, i32, ptr, %struct.dsp_segment_desc, ptr, i16, i16, ptr, ptr, i32, i32, [32 x %struct.dsp_pcm_channel_descriptor], [14 x i32], ptr, ptr, ptr, ptr, i32, i32, [200 x %struct.dsp_scb_descriptor], ptr, i32, [50 x %struct.dsp_task_descriptor], i32, i32, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dsp_segment_desc = type { i32, i32, i32, ptr }
%struct.dsp_pcm_channel_descriptor = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.dsp_scb_descriptor = type { [60 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [2 x i16], i8 }
%struct.dsp_task_descriptor = type { [60 x i8], i32, i32, i32, ptr }
%struct.snd_cs46xx = type { i32, i32, i32, %union.anon.73, i32, %struct.anon.75, i32, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.mutex, ptr, ptr, ptr, ptr, [5 x ptr], ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region }
%struct.snd_cs46xx_region = type { [24 x i8], i32, ptr, i32 }
%struct.anon.75 = type { %struct.snd_dma_buffer, i32, i32, %struct.snd_pcm_indirect, ptr }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dsp_module_desc = type { ptr, %struct.dsp_symbol_desc, i32, ptr, i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dsp_symbol_entry = type { i32, [100 x i8], i32, ptr, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.dsp_spdifoscb = type { i32, [4 x i32], i32, i32, i16, i16, i32, i16, i16, i16, i16, [2 x i32], i16, i16, i16, i16, i32 }
%struct.dsp_spdifiscb = type { i16, i16, i32, i32, i16, i16, i32, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32 }
%struct.dsp_async_codec_input_scb = type { i32, i32, i32, i16, i16, i16, i16, i32, i32, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/pci/cs46xx/dsp_spos.c\00", [36 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dsp_spos: to many modules loaded into DSP\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cs46xx_dsp_load_module\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry_ptr = internal global ptr @cs46xx_dsp_load_module._entry, section ".printk_index", align 4
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.6, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cs46xx\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dsp_spos: loading module %s into DSP\0A\00", [58 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.7, i8 0, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsp_spos: clearing parameter area\0A\00", [61 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.8, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dsp_spos: clearing sample area\0A\00", [32 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.9, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsp_spos: clearing code area\0A\00", [34 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.10, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dsp_spos: module got no code segment\0A\00", [58 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dsp_spos: no space available in DSP\0A\00", [59 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry_ptr.13 = internal global ptr @cs46xx_dsp_load_module._entry.11, section ".printk_index", align 4
@cs46xx_dsp_load_module._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: failed to load symbol table\0A\00", [57 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry_ptr.16 = internal global ptr @cs46xx_dsp_load_module._entry.14, section ".printk_index", align 4
@cs46xx_dsp_load_module.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.2, ptr @.str, ptr @.str.17, i8 0, i8 105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"dsp_spos: downloading code to chip (%08x-%08x)\0A\00", [48 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dsp_spos: failed to download code to DSP\0A\00", [54 x i8] zeroinitializer }, align 32
@cs46xx_dsp_load_module._entry_ptr.20 = internal global ptr @cs46xx_dsp_load_module._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spos_symbols\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spos_modules\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"parameter\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sample\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"task_tree\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scb_info\00", [23 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 991, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dsp_spos: failed to map SCB\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs46xx_dsp_create_scb\00", [42 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_scb._entry_ptr = internal global ptr @cs46xx_dsp_create_scb._entry, section ".printk_index", align 4
@cs46xx_dsp_scb_and_task_init.sposcb = internal constant { %struct.dsp_spos_control_block, [32 x i8] } { %struct.dsp_spos_control_block { i16 2976, i16 1642, i16 112, i16 1589, i16 2989, i16 0, i16 2989, i16 2989, i16 0, i16 0, i16 -8531, i16 0, i16 1536, i16 0, i16 0, i16 0, i16 -8531, i16 2989, i32 0, i16 0, i16 1, i16 -8531, i16 -8531, i32 195890093, i32 195890093, i32 195890093, i32 195890093 }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sposCB\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NULLALGORITHM\00", [18 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str, i32 1066, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dsp_spos: symbol NULLALGORITHM not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs46xx_dsp_scb_and_task_init\00", [35 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr = internal global ptr @cs46xx_dsp_scb_and_task_init._entry, section ".printk_index", align 4
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FGTASKTREEHEADERCODE\00", [43 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str, i32 1073, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"dsp_spos: symbol FGTASKTREEHEADERCODE not found\0A\00", [47 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr.37 = internal global ptr @cs46xx_dsp_scb_and_task_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"TASKTREEHEADERCODE\00", [45 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str, i32 1080, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dsp_spos: symbol TASKTREEHEADERCODE not found\0A\00", [49 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr.41 = internal global ptr @cs46xx_dsp_scb_and_task_init._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TASKTREETHREAD\00", [17 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dsp_spos: symbol TASKTREETHREAD not found\0A\00", [53 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr.45 = internal global ptr @cs46xx_dsp_scb_and_task_init._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAGICSNOOPTASK\00", [17 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.33, ptr @.str, i32 1094, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dsp_spos: symbol MAGICSNOOPTASK not found\0A\00", [53 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr.49 = internal global ptr @cs46xx_dsp_scb_and_task_init._entry.47, section ".printk_index", align 4
@cs46xx_dsp_scb_and_task_init.null_scb = internal global { %struct.dsp_generic_scb, [32 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nullSCB\00", [24 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr = internal global { %struct.dsp_task_tree_control_block, [44 x i8] } { %struct.dsp_task_tree_control_block { %struct.dsp_hf_save_area { i32 195888640, i32 195890093, i32 195890093, i16 0, i16 2989, i16 2989, i16 2989, i32 195890093, i32 195890093, i32 195890093, i16 2989, i16 2989 }, %struct.dsp_tree_link { i16 1589, i16 16, i16 0, i16 1547 }, %struct.dsp_task_tree_data { i16 4, i16 0, i16 1, i16 0, i16 2, i16 122, i16 0, i16 0, i16 1552, i16 1646 }, %struct.dsp_task_tree_context_block { i16 2989, i16 0, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i32 195949008, i16 -8531, i16 1, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008 }, %struct.dsp_interval_timer_data { i16 81, i16 -8531, i16 0, i16 0 } }, [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"FGtaskTreeHdr\00", [18 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr = internal global { %struct.dsp_task_tree_control_block, [44 x i8] } { %struct.dsp_task_tree_control_block { %struct.dsp_hf_save_area { i32 195890093, i32 195890093, i32 195890093, i16 2989, i16 2989, i16 2989, i16 2989, i32 195890093, i32 195890093, i32 195890093, i16 2989, i16 2989 }, %struct.dsp_tree_link { i16 0, i16 0, i16 0, i16 1600 }, %struct.dsp_task_tree_data { i16 9999, i16 0, i16 0, i16 1, i16 0, i16 122, i16 0, i16 0, i16 1605, i16 1678 }, %struct.dsp_task_tree_context_block { i16 2989, i16 0, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i16 2989, i32 195949008, i16 -8531, i16 1, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008, i32 195949008 }, %struct.dsp_interval_timer_data { i16 256, i16 -8531, i16 0, i16 0 } }, [44 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BGtaskTreeHdr\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CodecOutSCB_I\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MasterMixSCB\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CodecInSCB\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WriteBackSCB\00", [19 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init.mix2_ostream_spb = internal global { %struct.dsp_mix2_ostream_spb, [24 x i8] } { %struct.dsp_mix2_ostream_spb { i32 131072, i32 65535 }, [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VariDecimateSCB\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RecordMixerSCB\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CodecOutSCB_Rear\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RearMixerSCB\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CodecOutSCB_CLFE\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLFEMixerSCB\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MagicSnoopSCB_I\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPIOWriteSCB\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SrcTaskSCB_SPDIFI\00", [46 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.33, ptr @.str, i32 1441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dsp_spos: failed to setup SCB's in DSP\0A\00", [56 x i8] zeroinitializer }, align 32
@cs46xx_dsp_scb_and_task_init._entry_ptr.68 = internal global ptr @cs46xx_dsp_scb_and_task_init._entry.66, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AsynchFGRxSCB\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCMSerialInput_Wave\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCMSerialInput_ADC\00", [45 x i8] zeroinitializer }, align 32
@cs46xx_poke_via_dsp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str, i32 1852, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dsp_spos: SPIOWriteTask not responding\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cs46xx_poke_via_dsp\00", [44 x i8] zeroinitializer }, align 32
@cs46xx_poke_via_dsp._entry_ptr = internal global ptr @cs46xx_poke_via_dsp._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dsp_load_parameter.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str, ptr @.str.75, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsp_load_parameter\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dsp_spos: module got no parameter segment\0A\00", [53 x i8] zeroinitializer }, align 32
@dsp_load_parameter.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.74, ptr @.str, ptr @.str.76, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"dsp_spos: downloading parameter data to chip (%08x-%08x)\0A\00", [38 x i8] zeroinitializer }, align 32
@dsp_load_parameter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.74, ptr @.str, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dsp_spos: failed to download parameter data to DSP\0A\00", [44 x i8] zeroinitializer }, align 32
@dsp_load_parameter._entry_ptr = internal global ptr @dsp_load_parameter._entry, section ".printk_index", align 4
@dsp_load_sample.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str, ptr @.str.79, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dsp_load_sample\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dsp_spos: module got no sample segment\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_load_sample.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.78, ptr @.str, ptr @.str.80, i8 0, i8 86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"dsp_spos: downloading sample data to chip (%08x-%08x)\0A\00", [41 x i8] zeroinitializer }, align 32
@dsp_load_sample._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.78, ptr @.str, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"dsp_spos: failed to sample data to DSP\0A\00", [56 x i8] zeroinitializer }, align 32
@dsp_load_sample._entry_ptr = internal global ptr @dsp_load_sample._entry, section ".printk_index", align 4
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OVERLAYBEGINADDRESS\00", [44 x i8] zeroinitializer }, align 32
@add_symbols._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str, i32 154, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dsp_spos: symbol table is full\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"add_symbols\00", [20 x i8] zeroinitializer }, align 32
@add_symbols._entry_ptr = internal global ptr @add_symbols._entry, section ".printk_index", align 4
@wide_opcodes = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 32, i32 33, i32 48, i32 49, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119], [48 x i8] zeroinitializer }, align 32
@shadow_and_reallocate_code.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str, ptr @.str.86, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shadow_and_reallocate_code\00", [37 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"handle_wideop[1]: %05x:%05x addr %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@shadow_and_reallocate_code.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str, ptr @.str.87, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"handle_wideop[1]: ROM symbol not reallocated\0A\00", [50 x i8] zeroinitializer }, align 32
@shadow_and_reallocate_code.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str, ptr @.str.88, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"handle_wideop:[2] %05x:%05x addr %04x\0A\00", [57 x i8] zeroinitializer }, align 32
@shadow_and_reallocate_code.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.85, ptr @.str, ptr @.str.89, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: %d instructions reallocated\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYMBOLS:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"system\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%04X <%02X> %s [%s]\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODULES:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A%s:\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   %d symbols\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   %d fixups\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"   segment %02x offset %08x size %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04X \00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08X \00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PCMREADER:\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\0AMIX_SAMPLE_BUF1:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0ASRC_TASK_SCB1:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0ASPDIFO_BUFFER:\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\0A...\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0AOUTPUT_SNOOP:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\0ACODEC_INPUT_BUF1: \0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\0ASPDIFI_IP_OUTPUT_BUFFER1: \0A\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TASK TREES:\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\0A%04x %s:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SCB's:\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A%04x %s:\0A\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parent [%s:%04x] \00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parent [none] \00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sub_list_ptr [%s:%04x]\0Anext_scb_ptr [%s:%04x]  task_entry [%s:%04x]\0A\00", [59 x i8] zeroinitializer }, align 32
@_map_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str, i32 919, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dsp_spos: got no place for other SCB\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_map_scb\00", [23 x i8] zeroinitializer }, align 32
@_map_scb._entry_ptr = internal global ptr @_map_scb._entry, section ".printk_index", align 4
@add_symbol._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.119, ptr @.str, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"add_symbol\00", [21 x i8] zeroinitializer }, align 32
@add_symbol._entry_ptr = internal global ptr @add_symbol._entry, section ".printk_index", align 4
@add_symbol._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dsp_spos: symbol <%s> duplicated\0A\00", [62 x i8] zeroinitializer }, align 32
@add_symbol._entry_ptr.122 = internal global ptr @add_symbol._entry.120, section ".printk_index", align 4
@_dsp_create_scb.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.123, ptr @.str, ptr @.str.124, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_dsp_create_scb\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"addr %p, val %08x\0A\00", [45 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_task_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str, i32 1012, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dsp_spos: failed to map TASK\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs46xx_dsp_create_task_tree\00", [36 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_task_tree._entry_ptr = internal global ptr @cs46xx_dsp_create_task_tree._entry, section ".printk_index", align 4
@_map_task_tree._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str, i32 951, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: got no place for other TASK\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_map_task_tree\00", [17 x i8] zeroinitializer }, align 32
@_map_task_tree._entry_ptr = internal global ptr @_map_task_tree._entry, section ".printk_index", align 4
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(NULL)\00", [25 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"S16_ASYNCCODECINPUTTASK\00", [40 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str, i32 1457, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"dsp_spos: symbol S16_ASYNCCODECINPUTTASK not found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs46xx_dsp_async_init\00", [42 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry_ptr = internal global ptr @cs46xx_dsp_async_init._entry, section ".printk_index", align 4
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPDIFOTASK\00", [21 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.132, ptr @.str, i32 1463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: symbol SPDIFOTASK not found\0A\00", [57 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry_ptr.136 = internal global ptr @cs46xx_dsp_async_init._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPDIFITASK\00", [21 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.132, ptr @.str, i32 1470, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: symbol SPDIFITASK not found\0A\00", [57 x i8] zeroinitializer }, align 32
@cs46xx_dsp_async_init._entry_ptr.140 = internal global ptr @cs46xx_dsp_async_init._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIFOSCB\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPDIFISCB\00", [22 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AsynCodecInputSCB\00", [46 x i8] zeroinitializer }, align 32
@_dsp_create_task_tree.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.144, ptr @.str, ptr @.str.124, i8 0, i8 -37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_dsp_create_task_tree\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 283, i32 6 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 362, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 367, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 371, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 381, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 391, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 396, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 400, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 413, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 420, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 427, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 790, i32 43 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 798, i32 43 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 804, i32 43 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 810, i32 43 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 816, i32 43 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 822, i32 43 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 828, i32 43 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 991, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant [7 x i8] c"sposcb\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1042, i32 45 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1061, i32 36 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1063, i32 51 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1065, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1070, i32 60 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1072, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1077, i32 57 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1079, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1084, i32 52 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1086, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1091, i32 52 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1093, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [9 x i8] c"null_scb\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1100, i32 33 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1112, i32 51 }
@___asan_gen_.299 = private unnamed_addr constant [17 x i8] c"fg_task_tree_hdr\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1122, i32 45 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1192, i32 36 }
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"bg_task_tree_hdr\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1198, i32 45 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1268, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1275, i32 55 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1282, i32 55 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1291, i32 53 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1299, i32 61 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"mix2_ostream_spb\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1307, i32 38 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1319, i32 63 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1328, i32 55 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1360, i32 60 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1368, i32 53 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1379, i32 61 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1388, i32 65 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1406, i32 60 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1417, i32 45 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1423, i32 53 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1441, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1696, i32 63 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1768, i32 51 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1800, i32 9 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1851, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 309, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 317, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 321, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 334, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 342, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 347, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 145, i32 60 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 153, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant [13 x i8] c"wide_opcodes\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 30, i32 31 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 75, i32 7 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 82, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 95, i32 7 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 108, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 500, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 502, i32 22 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 512, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 529, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 531, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 532, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 533, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 537, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 616, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 627, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 630, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 641, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 655, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 671, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 687, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 702, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 719, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 734, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 765, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 553, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 555, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 564, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 580, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 584, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 587, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 590, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 592, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 918, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 192, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 199, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 890, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1012, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 950, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 958, i32 44 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1454, i32 62 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1456, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1460, i32 47 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1462, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1467, i32 47 }
@___asan_gen_.590 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1469, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1581, i32 48 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1585, i32 48 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 1588, i32 53 }
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private constant [31 x i8] c"../sound/pci/cs46xx/dsp_spos.c\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 876, i32 3 }
@llvm.compiler.used = appending global [175 x ptr] [ptr @_map_scb._entry, ptr @_map_scb._entry_ptr, ptr @_map_task_tree._entry, ptr @_map_task_tree._entry_ptr, ptr @add_symbol._entry, ptr @add_symbol._entry.120, ptr @add_symbol._entry_ptr, ptr @add_symbol._entry_ptr.122, ptr @add_symbols._entry, ptr @add_symbols._entry_ptr, ptr @cs46xx_dsp_async_init._entry, ptr @cs46xx_dsp_async_init._entry.134, ptr @cs46xx_dsp_async_init._entry.138, ptr @cs46xx_dsp_async_init._entry_ptr, ptr @cs46xx_dsp_async_init._entry_ptr.136, ptr @cs46xx_dsp_async_init._entry_ptr.140, ptr @cs46xx_dsp_create_scb._entry, ptr @cs46xx_dsp_create_scb._entry_ptr, ptr @cs46xx_dsp_create_task_tree._entry, ptr @cs46xx_dsp_create_task_tree._entry_ptr, ptr @cs46xx_dsp_load_module._entry, ptr @cs46xx_dsp_load_module._entry.11, ptr @cs46xx_dsp_load_module._entry.14, ptr @cs46xx_dsp_load_module._entry.18, ptr @cs46xx_dsp_load_module._entry_ptr, ptr @cs46xx_dsp_load_module._entry_ptr.13, ptr @cs46xx_dsp_load_module._entry_ptr.16, ptr @cs46xx_dsp_load_module._entry_ptr.20, ptr @cs46xx_dsp_scb_and_task_init._entry, ptr @cs46xx_dsp_scb_and_task_init._entry.35, ptr @cs46xx_dsp_scb_and_task_init._entry.39, ptr @cs46xx_dsp_scb_and_task_init._entry.43, ptr @cs46xx_dsp_scb_and_task_init._entry.47, ptr @cs46xx_dsp_scb_and_task_init._entry.66, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.37, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.41, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.45, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.49, ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.68, ptr @cs46xx_poke_via_dsp._entry, ptr @cs46xx_poke_via_dsp._entry_ptr, ptr @dsp_load_parameter._entry, ptr @dsp_load_parameter._entry_ptr, ptr @dsp_load_sample._entry, ptr @dsp_load_sample._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @cs46xx_dsp_scb_and_task_init.sposcb, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @cs46xx_dsp_scb_and_task_init.null_scb, ptr @.str.50, ptr @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr, ptr @.str.51, ptr @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @cs46xx_dsp_scb_and_task_init.mix2_ostream_spb, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @wide_opcodes, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], section "llvm.metadata"
@0 = internal global [152 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_load_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_load_module._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_load_module._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_load_module._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init.sposcb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init.null_scb to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init.mix2_ostream_spb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_scb_and_task_init._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_poke_via_dsp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_load_parameter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_load_sample._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_symbols._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wide_opcodes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_map_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_symbol._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_symbol._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_task_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_map_task_tree._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_async_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_async_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_async_init._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_spos_create(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 26760, i32 noundef 3520, i32 noundef 3) #13
  %cmp = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @vmalloc(i32 noundef 118784) #13
  %symbols = getelementptr inbounds %struct.dsp_symbol_desc, ptr %call1.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %symbols to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %symbols, align 4
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 28672, i32 noundef 3264, i32 noundef 3) #13
  %data = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1.i.i, ptr %data, align 32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2304) #14
  %modules = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %modules to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %modules, align 16
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.if.then13_crit_edge, label %lor.lhs.false

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 32
  %tobool9.not = icmp eq ptr %5, null
  %tobool12.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %lor.lhs.false.if.then13_crit_edge, label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end.if.then13_crit_edge
  tail call void @cs46xx_dsp_spos_destroy(ptr noundef %chip)
  %6 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modules, align 16
  tail call void @kfree(ptr noundef %7) #10
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 32
  tail call void @kfree(ptr noundef %9) #10
  %10 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %symbols, align 4
  tail call void @vfree(ptr noundef %11) #10
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %call1.i.i.i, align 4096
  %highest_frag_index = getelementptr inbounds %struct.dsp_symbol_desc, ptr %call1.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %highest_frag_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %highest_frag_index, align 8
  %offset = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 8
  %size = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size, align 4
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 17
  %16 = ptrtoint ptr %nscb to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nscb, align 4
  %ntask = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 21
  %17 = ptrtoint ptr %ntask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %ntask, align 16
  %nmodules = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nmodules to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %nmodules, align 4
  %spdif_in_sample_rate = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 38
  %19 = ptrtoint ptr %spdif_in_sample_rate to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 48000, ptr %spdif_in_sample_rate, align 4
  %dac_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %dac_volume_right to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -32768, ptr %dac_volume_right, align 8
  %dac_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %dac_volume_left to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -32768, ptr %dac_volume_left, align 2
  %spdif_input_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 25
  %22 = ptrtoint ptr %spdif_input_volume_right to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -32768, ptr %spdif_input_volume_right, align 4
  %spdif_input_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 26
  %23 = ptrtoint ptr %spdif_input_volume_left to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 -32768, ptr %spdif_input_volume_left, align 2
  %spdif_csuv_stream = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 28
  %24 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4272192, ptr %spdif_csuv_stream, align 4
  %spdif_csuv_default = getelementptr inbounds %struct.dsp_spos_instance, ptr %call1.i.i.i, i32 0, i32 27
  %25 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4272192, ptr %spdif_csuv_default, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1.i.i.i, %if.end14 ], [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs46xx_dsp_spos_destroy(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !313

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 283, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp48 = icmp sgt i32 %3, 0
  br i1 %cmp48, label %for.body.lr.ph, label %if.end23.for.end_crit_edge

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end23
  %scbs = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.049, i32 12
  %4 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool24.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool24.not, label %if.end26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end26:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.dsp_scb_descriptor, ptr %scbs, i32 %i.049
  tail call void @cs46xx_dsp_proc_free_scb_desc(ptr noundef %add.ptr) #10
  %data = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.049, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %6) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.049, 1
  %7 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nscb, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge
  %data30 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data30, align 4
  tail call void @kfree(ptr noundef %10) #10
  %symbols = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %symbols, align 4
  tail call void @vfree(ptr noundef %12) #10
  %modules = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %modules, align 4
  tail call void @kfree(ptr noundef %14) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cs46xx_dsp_proc_free_scb_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_load_module(ptr noundef %chip, ptr noundef %module) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %nsegments.i = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 2
  %2 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp8.i = icmp sgt i32 %3, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %entry.get_segment_desc.exit_crit_edge

entry.get_segment_desc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %segments.i = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 3
  %4 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %segments.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.cond.i.get_segment_desc.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.get_segment_desc.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dsp_segment_desc, ptr %5, i32 %i.09.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1.i = icmp eq i32 %7, 1
  br i1 %cmp1.i, label %for.body.i.get_segment_desc.exit_crit_edge, label %for.cond.i

for.body.i.get_segment_desc.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

get_segment_desc.exit:                            ; preds = %for.body.i.get_segment_desc.exit_crit_edge, %for.cond.i.get_segment_desc.exit_crit_edge, %entry.get_segment_desc.exit_crit_edge
  %retval.0.i288 = phi ptr [ null, %entry.get_segment_desc.exit_crit_edge ], [ %arrayidx.i, %for.body.i.get_segment_desc.exit_crit_edge ], [ null, %for.cond.i.get_segment_desc.exit_crit_edge ]
  %nmodules = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %9)
  %cmp = icmp eq i32 %9, 63
  br i1 %cmp, label %do.end, label %do.body1

do.end:                                           ; preds = %get_segment_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.1) #15
  br label %cleanup

do.body1:                                         ; preds = %get_segment_desc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then5)) #10
          to label %do.end10 [label %if.then5], !srcloc !314

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  %card6 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %14 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card6, align 4
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 8
  %18 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug246, ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef %19) #10
  br label %do.end10

do.end10:                                         ; preds = %if.then5, %do.body1
  %20 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12 = icmp eq i32 %21, 0
  br i1 %cmp12, label %do.body14, label %do.end10.if.end33_crit_edge

do.end10.if.end33_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.body14:                                        ; preds = %do.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then26)) #10
          to label %do.end31 [label %if.then26], !srcloc !314

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %card27 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %22 = ptrtoint ptr %card27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card27, align 4
  %dev28 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug247, ptr noundef %25, ptr noundef nonnull @.str.7) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %do.body14
  %call32 = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 0, i32 noundef 12288) #10
  br label %if.end33

if.end33:                                         ; preds = %do.end31, %do.end10.if.end33_crit_edge
  %26 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp8.i290 = icmp sgt i32 %27, 0
  br i1 %cmp8.i290, label %for.body.lr.ph.i292, label %if.end33.get_segment_desc.exit301_crit_edge

if.end33.get_segment_desc.exit301_crit_edge:      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit301

for.body.lr.ph.i292:                              ; preds = %if.end33
  %segments.i291 = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 3
  %28 = ptrtoint ptr %segments.i291 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %segments.i291, align 4
  br label %for.body.i299

for.cond.i295:                                    ; preds = %for.body.i299
  %inc.i293 = add nuw nsw i32 %i.09.i296, 1
  %exitcond.not.i294 = icmp eq i32 %inc.i293, %27
  br i1 %exitcond.not.i294, label %for.cond.i295.get_segment_desc.exit301_crit_edge, label %for.cond.i295.for.body.i299_crit_edge

for.cond.i295.for.body.i299_crit_edge:            ; preds = %for.cond.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i299

for.cond.i295.get_segment_desc.exit301_crit_edge: ; preds = %for.cond.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit301

for.body.i299:                                    ; preds = %for.cond.i295.for.body.i299_crit_edge, %for.body.lr.ph.i292
  %i.09.i296 = phi i32 [ 0, %for.body.lr.ph.i292 ], [ %inc.i293, %for.cond.i295.for.body.i299_crit_edge ]
  %arrayidx.i297 = getelementptr %struct.dsp_segment_desc, ptr %29, i32 %i.09.i296
  %30 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp1.i298 = icmp eq i32 %31, 2
  br i1 %cmp1.i298, label %for.body.i299.get_segment_desc.exit301_crit_edge, label %for.cond.i295

for.body.i299.get_segment_desc.exit301_crit_edge: ; preds = %for.body.i299
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit301

get_segment_desc.exit301:                         ; preds = %for.body.i299.get_segment_desc.exit301_crit_edge, %for.cond.i295.get_segment_desc.exit301_crit_edge, %if.end33.get_segment_desc.exit301_crit_edge
  %retval.0.i300 = phi ptr [ null, %if.end33.get_segment_desc.exit301_crit_edge ], [ %arrayidx.i297, %for.body.i299.get_segment_desc.exit301_crit_edge ], [ null, %for.cond.i295.get_segment_desc.exit301_crit_edge ]
  %call35 = tail call fastcc i32 @dsp_load_parameter(ptr noundef %chip, ptr noundef %retval.0.i300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %get_segment_desc.exit301.cleanup_crit_edge, label %if.end38

get_segment_desc.exit301.cleanup_crit_edge:       ; preds = %get_segment_desc.exit301
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end38:                                         ; preds = %get_segment_desc.exit301
  %32 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp40 = icmp eq i32 %33, 0
  br i1 %cmp40, label %do.body42, label %if.end38.if.end61_crit_edge

if.end38.if.end61_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

do.body42:                                        ; preds = %if.end38
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then54)) #10
          to label %do.end59 [label %if.then54], !srcloc !314

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #12
  %card55 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %34 = ptrtoint ptr %card55 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card55, align 4
  %dev56 = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev56, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug248, ptr noundef %37, ptr noundef nonnull @.str.8) #10
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body42
  %call60 = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 65536, i32 noundef 14336) #10
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end38.if.end61_crit_edge
  %38 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp8.i303 = icmp sgt i32 %39, 0
  br i1 %cmp8.i303, label %for.body.lr.ph.i305, label %if.end61.get_segment_desc.exit314_crit_edge

if.end61.get_segment_desc.exit314_crit_edge:      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit314

for.body.lr.ph.i305:                              ; preds = %if.end61
  %segments.i304 = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 3
  %40 = ptrtoint ptr %segments.i304 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %segments.i304, align 4
  br label %for.body.i312

for.cond.i308:                                    ; preds = %for.body.i312
  %inc.i306 = add nuw nsw i32 %i.09.i309, 1
  %exitcond.not.i307 = icmp eq i32 %inc.i306, %39
  br i1 %exitcond.not.i307, label %for.cond.i308.get_segment_desc.exit314_crit_edge, label %for.cond.i308.for.body.i312_crit_edge

for.cond.i308.for.body.i312_crit_edge:            ; preds = %for.cond.i308
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i312

for.cond.i308.get_segment_desc.exit314_crit_edge: ; preds = %for.cond.i308
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit314

for.body.i312:                                    ; preds = %for.cond.i308.for.body.i312_crit_edge, %for.body.lr.ph.i305
  %i.09.i309 = phi i32 [ 0, %for.body.lr.ph.i305 ], [ %inc.i306, %for.cond.i308.for.body.i312_crit_edge ]
  %arrayidx.i310 = getelementptr %struct.dsp_segment_desc, ptr %41, i32 %i.09.i309
  %42 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %43)
  %cmp1.i311 = icmp eq i32 %43, 3
  br i1 %cmp1.i311, label %for.body.i312.get_segment_desc.exit314_crit_edge, label %for.cond.i308

for.body.i312.get_segment_desc.exit314_crit_edge: ; preds = %for.body.i312
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit314

get_segment_desc.exit314:                         ; preds = %for.body.i312.get_segment_desc.exit314_crit_edge, %for.cond.i308.get_segment_desc.exit314_crit_edge, %if.end61.get_segment_desc.exit314_crit_edge
  %retval.0.i313 = phi ptr [ null, %if.end61.get_segment_desc.exit314_crit_edge ], [ %arrayidx.i310, %for.body.i312.get_segment_desc.exit314_crit_edge ], [ null, %for.cond.i308.get_segment_desc.exit314_crit_edge ]
  %call63 = tail call fastcc i32 @dsp_load_sample(ptr noundef %chip, ptr noundef %retval.0.i313)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %get_segment_desc.exit314.cleanup_crit_edge, label %if.end66

get_segment_desc.exit314.cleanup_crit_edge:       ; preds = %get_segment_desc.exit314
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end66:                                         ; preds = %get_segment_desc.exit314
  %44 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp68 = icmp eq i32 %45, 0
  br i1 %cmp68, label %do.body70, label %if.end66.if.end89_crit_edge

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89

do.body70:                                        ; preds = %if.end66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then82)) #10
          to label %do.end87 [label %if.then82], !srcloc !314

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #12
  %card83 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %46 = ptrtoint ptr %card83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card83, align 4
  %dev84 = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev84, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug249, ptr noundef %49, ptr noundef nonnull @.str.9) #10
  br label %do.end87

do.end87:                                         ; preds = %if.then82, %do.body70
  %call88 = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 131072, i32 noundef 28672) #10
  br label %if.end89

if.end89:                                         ; preds = %do.end87, %if.end66.if.end89_crit_edge
  %cmp90 = icmp eq ptr %retval.0.i288, null
  br i1 %cmp90, label %do.body92, label %if.else

do.body92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then104)) #10
          to label %if.end212 [label %if.then104], !srcloc !314

if.then104:                                       ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #12
  %card105 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %50 = ptrtoint ptr %card105 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card105, align 4
  %dev106 = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev106, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug250, ptr noundef %53, ptr noundef nonnull @.str.10) #10
  br label %if.end212

if.else:                                          ; preds = %if.end89
  %offset = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 1
  %54 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %offset, align 4
  %size = getelementptr inbounds %struct.dsp_segment_desc, ptr %retval.0.i288, i32 0, i32 2
  %56 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size, align 4
  %add = add i32 %57, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 28672, i32 %add)
  %cmp111 = icmp ugt i32 %add, 28672
  br i1 %cmp111, label %do.end115, label %if.end118

do.end115:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %card116 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %58 = ptrtoint ptr %card116 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %card116, align 4
  %dev117 = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 27
  %60 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev117, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.12) #15
  br label %cleanup

if.end118:                                        ; preds = %if.else
  %load_address = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 5
  %62 = ptrtoint ptr %load_address to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %55, ptr %load_address, align 4
  %overlay_begin_address = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 4
  %63 = ptrtoint ptr %overlay_begin_address to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %overlay_begin_address, align 4
  %symbols = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %symbols, align 4
  %tobool121.not = icmp eq ptr %65, null
  br i1 %tobool121.not, label %do.end139, label %if.end155, !prof !313

do.end139:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 410, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end155:                                        ; preds = %if.end118
  %66 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dsp_spos_instance, align 4
  %symbol_table.i = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 1
  %68 = ptrtoint ptr %symbol_table.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %symbol_table.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i = icmp sgt i32 %69, 0
  br i1 %cmp.i, label %if.then.i, label %if.end155.if.end164_crit_edge

if.end155.if.end164_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

if.then.i:                                        ; preds = %if.end155
  %symbol_name.i = getelementptr inbounds %struct.dsp_symbol_entry, ptr %65, i32 0, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %symbol_name.i, ptr noundef nonnull dereferenceable(20) @.str.82) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.for.body.lr.ph.i315_crit_edge

if.then.i.for.body.lr.ph.i315_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i315

land.lhs.true.i:                                  ; preds = %if.then.i
  %symbol_type.i = getelementptr inbounds %struct.dsp_symbol_entry, ptr %65, i32 0, i32 2
  %70 = ptrtoint ptr %symbol_type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %symbol_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp5.i = icmp eq i32 %71, 0
  br i1 %cmp5.i, label %if.then6.i, label %land.lhs.true.i.for.body.lr.ph.i315_crit_edge

land.lhs.true.i.for.body.lr.ph.i315_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i315

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %65, align 4
  %74 = ptrtoint ptr %overlay_begin_address to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %overlay_begin_address, align 4
  br label %for.body.lr.ph.i315

for.body.lr.ph.i315:                              ; preds = %if.then6.i, %land.lhs.true.i.for.body.lr.ph.i315_crit_edge, %if.then.i.for.body.lr.ph.i315_crit_edge
  %symbols32.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %67, i32 0, i32 1
  %offset.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %67, i32 0, i32 3, i32 1
  %highest_frag_index.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %67, i32 0, i32 2
  br label %for.body.i316

for.body.i316:                                    ; preds = %for.inc.i.for.body.i316_crit_edge, %for.body.lr.ph.i315
  %i.0107.i = phi i32 [ 0, %for.body.lr.ph.i315 ], [ %inc70.i, %for.inc.i.for.body.i316_crit_edge ]
  %75 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %76)
  %cmp16.i = icmp eq i32 %76, 1023
  br i1 %cmp16.i, label %do.end161, label %if.end18.i

if.end18.i:                                       ; preds = %for.body.i316
  %77 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %symbols, align 4
  %symbol_name22.i = getelementptr %struct.dsp_symbol_entry, ptr %78, i32 %i.0107.i, i32 1
  %symbol_type27.i = getelementptr %struct.dsp_symbol_entry, ptr %78, i32 %i.0107.i, i32 2
  %79 = ptrtoint ptr %symbol_type27.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %symbol_type27.i, align 4
  %81 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dsp_spos_instance, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp28.i.i = icmp sgt i32 %84, 0
  br i1 %cmp28.i.i, label %for.body.lr.ph.i.i, label %if.end18.i.if.then30.i_crit_edge

if.end18.i.if.then30.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

for.body.lr.ph.i.i:                               ; preds = %if.end18.i
  %symbols.i.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %symbols.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %symbols.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %deleted.i.i = getelementptr %struct.dsp_symbol_entry, ptr %86, i32 %i.029.i.i, i32 4
  %87 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %deleted.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i.i = icmp eq i32 %88, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %symbol_name5.i.i = getelementptr %struct.dsp_symbol_entry, ptr %86, i32 %i.029.i.i, i32 1
  %call.i.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i.i, ptr noundef %symbol_name22.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %symbol_type10.i.i = getelementptr %struct.dsp_symbol_entry, ptr %86, i32 %i.029.i.i, i32 2
  %89 = ptrtoint ptr %symbol_type10.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %symbol_type10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %80)
  %cmp11.i.i = icmp eq i32 %90, %80
  br i1 %cmp11.i.i, label %cs46xx_dsp_lookup_symbol.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %84
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then30.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.then30.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

cs46xx_dsp_lookup_symbol.exit.i:                  ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.dsp_symbol_entry, ptr %86, i32 %i.029.i.i
  %cmp29.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %cmp29.i, label %cs46xx_dsp_lookup_symbol.exit.i.if.then30.i_crit_edge, label %cs46xx_dsp_lookup_symbol.exit.i.for.inc.i_crit_edge

cs46xx_dsp_lookup_symbol.exit.i.for.inc.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

cs46xx_dsp_lookup_symbol.exit.i.if.then30.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30.i

if.then30.i:                                      ; preds = %cs46xx_dsp_lookup_symbol.exit.i.if.then30.i_crit_edge, %for.inc.i.i.if.then30.i_crit_edge, %if.end18.i.if.then30.i_crit_edge
  %91 = ptrtoint ptr %symbols32.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %symbols32.i, align 4
  %arrayidx35.i = getelementptr %struct.dsp_symbol_entry, ptr %92, i32 %76
  %arrayidx38.i = getelementptr %struct.dsp_symbol_entry, ptr %78, i32 %i.0107.i
  %93 = call ptr @memcpy(ptr %arrayidx35.i, ptr %arrayidx38.i, i32 116)
  %94 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset.i, align 4
  %div102.i = lshr i32 %95, 1
  %96 = ptrtoint ptr %overlay_begin_address to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %overlay_begin_address, align 4
  %sub.i = sub i32 %div102.i, %97
  %98 = load ptr, ptr %symbols32.i, align 4
  %99 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %67, align 4
  %arrayidx44.i = getelementptr %struct.dsp_symbol_entry, ptr %98, i32 %100
  %101 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx44.i, align 4
  %add.i = add i32 %sub.i, %102
  store i32 %add.i, ptr %arrayidx44.i, align 4
  %103 = load ptr, ptr %symbols32.i, align 4
  %104 = load i32, ptr %67, align 4
  %module51.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %104, i32 3
  %105 = ptrtoint ptr %module51.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %module, ptr %module51.i, align 4
  %106 = load ptr, ptr %symbols32.i, align 4
  %107 = load i32, ptr %67, align 4
  %deleted.i = getelementptr %struct.dsp_symbol_entry, ptr %106, i32 %107, i32 4
  %108 = ptrtoint ptr %deleted.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %deleted.i, align 4
  %109 = load i32, ptr %67, align 4
  %110 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %highest_frag_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %111)
  %cmp60.i = icmp sgt i32 %109, %111
  br i1 %cmp60.i, label %if.then61.i, label %if.then30.i.if.end66.i_crit_edge

if.then30.i.if.end66.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then61.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  %112 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %109, ptr %highest_frag_index.i, align 4
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then61.i, %if.then30.i.if.end66.i_crit_edge
  %inc.i317 = add i32 %109, 1
  %113 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %inc.i317, ptr %67, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end66.i, %cs46xx_dsp_lookup_symbol.exit.i.for.inc.i_crit_edge
  %inc70.i = add nuw nsw i32 %i.0107.i, 1
  %114 = ptrtoint ptr %symbol_table.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %symbol_table.i, align 4
  %cmp13.i = icmp slt i32 %inc70.i, %115
  br i1 %cmp13.i, label %for.inc.i.for.body.i316_crit_edge, label %for.inc.i.if.end164_crit_edge

for.inc.i.if.end164_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end164

for.inc.i.for.body.i316_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i316

do.end161:                                        ; preds = %for.body.i316
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %116 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %117, i32 0, i32 27
  %118 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.83) #15
  %120 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %card.i, align 4
  %dev163 = getelementptr inbounds %struct.snd_card, ptr %121, i32 0, i32 27
  %122 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev163, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.15) #15
  br label %cleanup

if.end164:                                        ; preds = %for.inc.i.if.end164_crit_edge, %if.end155.if.end164_crit_edge
  %offset165 = getelementptr inbounds %struct.dsp_segment_desc, ptr %retval.0.i288, i32 0, i32 1
  %124 = ptrtoint ptr %offset165 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offset165, align 4
  %126 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %offset, align 4
  %mul272 = add i32 %127, %125
  %add169 = shl i32 %mul272, 2
  %add170 = add i32 %add169, 131072
  %128 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %size, align 4
  %mul172 = shl i32 %129, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_load_module, %if.then185)) #10
          to label %do.end191 [label %if.then185], !srcloc !314

if.then185:                                       ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  %card186 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %130 = ptrtoint ptr %card186 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %card186, align 4
  %dev187 = getelementptr inbounds %struct.snd_card, ptr %131, i32 0, i32 27
  %132 = ptrtoint ptr %dev187 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev187, align 8
  %add188 = add i32 %add170, %mul172
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug251, ptr noundef %133, ptr noundef nonnull @.str.17, i32 noundef %add170, i32 noundef %add188) #10
  br label %do.end191

do.end191:                                        ; preds = %if.then185, %if.end164
  %data = getelementptr inbounds %struct.dsp_segment_desc, ptr %retval.0.i288, i32 0, i32 3
  %134 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data, align 4
  %136 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %size, align 4
  %138 = ptrtoint ptr %overlay_begin_address to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %overlay_begin_address, align 4
  %call194 = tail call fastcc i32 @shadow_and_reallocate_code(ptr noundef %chip, ptr noundef %135, i32 noundef %137, i32 noundef %139)
  %nfixups = getelementptr inbounds %struct.dsp_module_desc, ptr %module, i32 0, i32 6
  %140 = ptrtoint ptr %nfixups to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %call194, ptr %nfixups, align 4
  %data196 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 3
  %141 = ptrtoint ptr %data196 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %data196, align 4
  %143 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i32, ptr %142, i32 %144
  %call199 = tail call i32 @snd_cs46xx_download(ptr noundef %chip, ptr noundef %add.ptr, i32 noundef %add170, i32 noundef %mul172) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end207, label %do.end204

do.end204:                                        ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #12
  %card205 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %145 = ptrtoint ptr %card205 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %card205, align 4
  %dev206 = getelementptr inbounds %struct.snd_card, ptr %146, i32 0, i32 27
  %147 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev206, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.19) #15
  br label %cleanup

if.end207:                                        ; preds = %do.end191
  call void @__sanitizer_cov_trace_pc() #12
  %149 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %size, align 4
  %151 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %offset, align 4
  %add211 = add i32 %152, %150
  store i32 %add211, ptr %offset, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.end207, %if.then104, %do.body92
  %modules = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 2
  %153 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %modules, align 4
  %155 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %nmodules, align 4
  %arrayidx = getelementptr %struct.dsp_module_desc, ptr %154, i32 %156
  %157 = call ptr @memcpy(ptr %arrayidx, ptr %module, i32 36)
  %158 = load i32, ptr %nmodules, align 4
  %inc = add i32 %158, 1
  store i32 %inc, ptr %nmodules, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end212, %do.end204, %do.end161, %do.end139, %do.end115, %get_segment_desc.exit314.cleanup_crit_edge, %get_segment_desc.exit301.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end212 ], [ -12, %do.end115 ], [ -12, %do.end139 ], [ -12, %do.end161 ], [ -22, %do.end204 ], [ %call35, %get_segment_desc.exit301.cleanup_crit_edge ], [ %call63, %get_segment_desc.exit314.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_clear_BA1(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsp_load_parameter(ptr noundef %chip, ptr noundef readonly %parameter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parameter, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsp_load_parameter.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsp_load_parameter, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !314

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsp_load_parameter.__UNIQUE_ID_ddebug242, ptr noundef %3, ptr noundef nonnull @.str.75) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.dsp_segment_desc, ptr %parameter, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %mul = shl i32 %5, 2
  %size = getelementptr inbounds %struct.dsp_segment_desc, ptr %parameter, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %mul6 = shl i32 %7, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsp_load_parameter.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsp_load_parameter, %if.then19)) #10
          to label %do.end25 [label %if.then19], !srcloc !314

if.then19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %card20 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %8 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card20, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 8
  %add22 = add i32 %mul6, %mul
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsp_load_parameter.__UNIQUE_ID_ddebug243, ptr noundef %11, ptr noundef nonnull @.str.76, i32 noundef %mul, i32 noundef %add22) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %if.end5
  %data = getelementptr inbounds %struct.dsp_segment_desc, ptr %parameter, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call26 = tail call i32 @snd_cs46xx_download(ptr noundef %chip, ptr noundef %13, i32 noundef %mul, i32 noundef %mul6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end25.cleanup_crit_edge, label %do.end31

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %card32 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %14 = ptrtoint ptr %card32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card32, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.77) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end25.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %do.end31 ], [ 0, %if.then4 ], [ 0, %do.end25.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dsp_load_sample(ptr noundef %chip, ptr noundef readonly %sample) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sample, null
  br i1 %tobool.not, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsp_load_sample.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsp_load_sample, %if.then4)) #10
          to label %cleanup [label %if.then4], !srcloc !314

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsp_load_sample.__UNIQUE_ID_ddebug244, ptr noundef %3, ptr noundef nonnull @.str.79) #10
  br label %cleanup

if.end5:                                          ; preds = %entry
  %offset = getelementptr inbounds %struct.dsp_segment_desc, ptr %sample, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 65536
  %size = getelementptr inbounds %struct.dsp_segment_desc, ptr %sample, i32 0, i32 2
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %mul6 = shl i32 %7, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsp_load_sample.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsp_load_sample, %if.then19)) #10
          to label %do.end25 [label %if.then19], !srcloc !314

if.then19:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %card20 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %8 = ptrtoint ptr %card20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card20, align 4
  %dev21 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev21, align 8
  %add22 = add i32 %add, %mul6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dsp_load_sample.__UNIQUE_ID_ddebug245, ptr noundef %11, ptr noundef nonnull @.str.80, i32 noundef %add, i32 noundef %add22) #10
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %if.end5
  %data = getelementptr inbounds %struct.dsp_segment_desc, ptr %sample, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call26 = tail call i32 @snd_cs46xx_download(ptr noundef %chip, ptr noundef %13, i32 noundef %add, i32 noundef %mul6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.end25.cleanup_crit_edge, label %do.end31

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end31:                                         ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #12
  %card32 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %14 = ptrtoint ptr %card32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card32, align 4
  %dev33 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev33, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.81) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end31, %do.end25.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %do.end31 ], [ 0, %if.then4 ], [ 0, %do.end25.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @shadow_and_reallocate_code(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %data, i32 noundef %size, i32 noundef %overlay_begin_address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %rem = and i32 %size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %while.cond.preheader, label %do.end, !prof !315

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp214.not = icmp eq i32 %size, 0
  br i1 %cmp214.not, label %while.cond.preheader.do.body126_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body126_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %offset = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 1
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %data115 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 3
  %size117 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 2
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

while.body:                                       ; preds = %if.end113.while.body_crit_edge, %while.body.lr.ph
  %i.0216 = phi i32 [ 0, %while.body.lr.ph ], [ %inc23, %if.end113.while.body_crit_edge ]
  %nreallocated.0215 = phi i32 [ 0, %while.body.lr.ph ], [ %nreallocated.3, %if.end113.while.body_crit_edge ]
  %inc = or i32 %i.0216, 1
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0216
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %inc23 = add i32 %i.0216, 2
  %arrayidx24 = getelementptr i32, ptr %data, i32 %inc
  %4 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx24, align 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not = icmp eq i32 %7, 0
  %8 = and i32 %5, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp28 = icmp ne i32 %8, 0
  %or.cond = select i1 %cmp25.not, i1 true, i1 %cmp28
  %9 = and i32 %5, 57344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp30 = icmp ne i32 %9, 0
  %or.cond195 = select i1 %or.cond, i1 true, i1 %cmp30
  %10 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp33.not = icmp eq i32 %10, 0
  %or.cond196 = select i1 %or.cond195, i1 true, i1 %cmp33.not
  br i1 %or.cond196, label %while.body.if.end113_crit_edge, label %if.then34

while.body.if.end113_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.then34:                                        ; preds = %while.body
  %and35 = and i32 %3, 127
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then34
  %j.0213 = phi i32 [ 0, %if.then34 ], [ %inc111, %for.inc.for.body_crit_edge ]
  %nreallocated.1212 = phi i32 [ %nreallocated.0215, %if.then34 ], [ %nreallocated.2, %for.inc.for.body_crit_edge ]
  %hival.0211 = phi i32 [ %5, %if.then34 ], [ %hival.1, %for.inc.for.body_crit_edge ]
  %loval.0210 = phi i32 [ %3, %if.then34 ], [ %loval.1, %for.inc.for.body_crit_edge ]
  %arrayidx37 = getelementptr [12 x i32], ptr @wide_opcodes, i32 0, i32 %j.0213
  %11 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %and35)
  %cmp38 = icmp eq i32 %12, %and35
  br i1 %cmp38, label %if.then39, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then39:                                        ; preds = %for.body
  %and40 = shl i32 %hival.0211, 5
  %shl = and i32 %and40, 131040
  %shr41 = lshr i32 %loval.0210, 15
  %or = or i32 %shl, %shr41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_and_reallocate_code, %if.then51)) #10
          to label %do.end54 [label %if.then51], !srcloc !314

if.then51:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shadow_and_reallocate_code.__UNIQUE_ID_ddebug238, ptr noundef %16, ptr noundef nonnull @.str.86, i32 noundef %hival.0211, i32 noundef %loval.0210, i32 noundef %or) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %if.then39
  %and55 = and i32 %or, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.then57, label %do.body60

if.then57:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  %div194 = lshr i32 %18, 1
  %sub = sub i32 %or, %overlay_begin_address
  %add = add i32 %sub, %div194
  br label %if.end78

do.body60:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_and_reallocate_code, %if.then72)) #10
          to label %if.end78 [label %if.then72], !srcloc !314

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card, align 4
  %dev74 = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev74, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shadow_and_reallocate_code.__UNIQUE_ID_ddebug239, ptr noundef %22, ptr noundef nonnull @.str.87) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then72, %do.body60, %if.then57
  %address.0 = phi i32 [ %or, %if.then72 ], [ %add, %if.then57 ], [ %or, %do.body60 ]
  %and79 = and i32 %hival.0211, 1044480
  %and80 = and i32 %loval.0210, 32767
  %shr81 = lshr i32 %address.0, 5
  %and82 = and i32 %shr81, 4095
  %or83 = or i32 %and82, %and79
  %shl84 = shl i32 %address.0, 15
  %and85 = and i32 %shl84, 1015808
  %or86 = or i32 %and85, %and80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_and_reallocate_code, %if.then103)) #10
          to label %do.end108 [label %if.then103], !srcloc !314

if.then103:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  %shl88 = shl nuw nsw i32 %and82, 5
  %shr89 = lshr exact i32 %and85, 15
  %or90 = or i32 %shl88, %shr89
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card, align 4
  %dev105 = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev105, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shadow_and_reallocate_code.__UNIQUE_ID_ddebug240, ptr noundef %26, ptr noundef nonnull @.str.88, i32 noundef %or83, i32 noundef %or86, i32 noundef %or90) #10
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %if.end78
  %inc109 = add i32 %nreallocated.1212, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end108, %for.body.for.inc_crit_edge
  %loval.1 = phi i32 [ %or86, %do.end108 ], [ %loval.0210, %for.body.for.inc_crit_edge ]
  %hival.1 = phi i32 [ %or83, %do.end108 ], [ %hival.0211, %for.body.for.inc_crit_edge ]
  %nreallocated.2 = phi i32 [ %inc109, %do.end108 ], [ %nreallocated.1212, %for.body.for.inc_crit_edge ]
  %inc111 = add nuw nsw i32 %j.0213, 1
  %exitcond.not = icmp eq i32 %inc111, 12
  br i1 %exitcond.not, label %for.inc.if.end113_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end113_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end113

if.end113:                                        ; preds = %for.inc.if.end113_crit_edge, %while.body.if.end113_crit_edge
  %loval.2 = phi i32 [ %3, %while.body.if.end113_crit_edge ], [ %loval.1, %for.inc.if.end113_crit_edge ]
  %hival.2 = phi i32 [ %5, %while.body.if.end113_crit_edge ], [ %hival.1, %for.inc.if.end113_crit_edge ]
  %nreallocated.3 = phi i32 [ %nreallocated.0215, %while.body.if.end113_crit_edge ], [ %nreallocated.2, %for.inc.if.end113_crit_edge ]
  %27 = ptrtoint ptr %data115 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data115, align 4
  %29 = ptrtoint ptr %size117 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size117, align 4
  %inc118 = add i32 %30, 1
  store i32 %inc118, ptr %size117, align 4
  %arrayidx119 = getelementptr i32, ptr %28, i32 %30
  %31 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %loval.2, ptr %arrayidx119, align 4
  %32 = load ptr, ptr %data115, align 4
  %33 = load i32, ptr %size117, align 4
  %inc124 = add i32 %33, 1
  store i32 %inc124, ptr %size117, align 4
  %arrayidx125 = getelementptr i32, ptr %32, i32 %33
  %34 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %hival.2, ptr %arrayidx125, align 4
  %cmp = icmp ult i32 %inc23, %size
  br i1 %cmp, label %if.end113.while.body_crit_edge, label %if.end113.do.body126_crit_edge

if.end113.do.body126_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body126

if.end113.while.body_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.body126:                                       ; preds = %if.end113.do.body126_crit_edge, %while.cond.preheader.do.body126_crit_edge
  %nreallocated.0.lcssa = phi i32 [ 0, %while.cond.preheader.do.body126_crit_edge ], [ %nreallocated.3, %if.end113.do.body126_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shadow_and_reallocate_code, %if.then138)) #10
          to label %cleanup [label %if.then138], !srcloc !314

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  %card139 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %35 = ptrtoint ptr %card139 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card139, align 4
  %dev140 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev140, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shadow_and_reallocate_code.__UNIQUE_ID_ddebug241, ptr noundef %38, ptr noundef nonnull @.str.89, i32 noundef %nreallocated.0.lcssa) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then138, %do.body126, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %nreallocated.0.lcssa, %if.then138 ], [ %nreallocated.0.lcssa, %do.body126 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_cs46xx_download(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_lookup_symbol(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %symbol_name, i32 noundef %symbol_type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28 = icmp sgt i32 %3, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %symbols = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %symbols, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %deleted = getelementptr %struct.dsp_symbol_entry, ptr %5, i32 %i.029, i32 4
  %6 = ptrtoint ptr %deleted to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %symbol_name5 = getelementptr %struct.dsp_symbol_entry, ptr %5, i32 %i.029, i32 1
  %call = tail call i32 @strcmp(ptr noundef %symbol_name5, ptr noundef %symbol_name) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %symbol_type10 = getelementptr %struct.dsp_symbol_entry, ptr %5, i32 %i.029, i32 2
  %8 = ptrtoint ptr %symbol_type10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %symbol_type10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %symbol_type)
  %cmp11 = icmp eq i32 %9, %symbol_type
  br i1 %cmp11, label %cleanup.split.loop.exit26, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.split.loop.exit26:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.le = getelementptr %struct.dsp_symbol_entry, ptr %5, i32 %i.029
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit26, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx.le, %cleanup.split.loop.exit26 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_proc_init(ptr noundef %card, ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %snd_card = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %snd_card, align 4
  %proc_root = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 20
  %3 = ptrtoint ptr %proc_root to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proc_root, align 8
  %call = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.21, ptr noundef %4) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.thread, label %if.end5

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %proc_dsp_dir98 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %proc_dsp_dir98 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %proc_dsp_dir98, align 4
  br label %cleanup

if.end5:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 16749, ptr %mode, align 4
  %proc_dsp_dir = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %proc_dsp_dir, align 4
  %call7 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.22, ptr noundef nonnull %call) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call7, i32 0, i32 7
  %8 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chip, ptr %private_data2.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call7, i32 0, i32 4
  %9 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cs46xx_dsp_proc_symbol_table_read, ptr %c.i, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %10 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_dsp_dir, align 4
  %call12 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.23, ptr noundef %11) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i88 = getelementptr inbounds %struct.snd_info_entry, ptr %call12, i32 0, i32 7
  %12 = ptrtoint ptr %private_data2.i88 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %chip, ptr %private_data2.i88, align 4
  %c.i89 = getelementptr inbounds %struct.snd_info_entry, ptr %call12, i32 0, i32 4
  %13 = ptrtoint ptr %c.i89 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cs46xx_dsp_proc_modules_read, ptr %c.i89, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %14 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %proc_dsp_dir, align 4
  %call17 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.24, ptr noundef %15) #10
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.if.end20_crit_edge, label %if.then19

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i90 = getelementptr inbounds %struct.snd_info_entry, ptr %call17, i32 0, i32 7
  %16 = ptrtoint ptr %private_data2.i90 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chip, ptr %private_data2.i90, align 4
  %c.i91 = getelementptr inbounds %struct.snd_info_entry, ptr %call17, i32 0, i32 4
  %17 = ptrtoint ptr %c.i91 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cs46xx_dsp_proc_parameter_dump_read, ptr %c.i91, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15.if.end20_crit_edge
  %18 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %proc_dsp_dir, align 4
  %call22 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.25, ptr noundef %19) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i92 = getelementptr inbounds %struct.snd_info_entry, ptr %call22, i32 0, i32 7
  %20 = ptrtoint ptr %private_data2.i92 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %chip, ptr %private_data2.i92, align 4
  %c.i93 = getelementptr inbounds %struct.snd_info_entry, ptr %call22, i32 0, i32 4
  %21 = ptrtoint ptr %c.i93 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cs46xx_dsp_proc_sample_dump_read, ptr %c.i93, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end20.if.end25_crit_edge
  %22 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %proc_dsp_dir, align 4
  %call27 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.26, ptr noundef %23) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.if.end30_crit_edge, label %if.then29

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i94 = getelementptr inbounds %struct.snd_info_entry, ptr %call27, i32 0, i32 7
  %24 = ptrtoint ptr %private_data2.i94 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %chip, ptr %private_data2.i94, align 4
  %c.i95 = getelementptr inbounds %struct.snd_info_entry, ptr %call27, i32 0, i32 4
  %25 = ptrtoint ptr %c.i95 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @cs46xx_dsp_proc_task_tree_read, ptr %c.i95, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end25.if.end30_crit_edge
  %26 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %proc_dsp_dir, align 4
  %call32 = tail call ptr @snd_info_create_card_entry(ptr noundef %card, ptr noundef nonnull @.str.27, ptr noundef %27) #10
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.end30.if.end35_crit_edge, label %if.then34

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %private_data2.i96 = getelementptr inbounds %struct.snd_info_entry, ptr %call32, i32 0, i32 7
  %28 = ptrtoint ptr %private_data2.i96 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %chip, ptr %private_data2.i96, align 4
  %c.i97 = getelementptr inbounds %struct.snd_info_entry, ptr %call32, i32 0, i32 4
  %29 = ptrtoint ptr %c.i97 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @cs46xx_dsp_proc_scb_read, ptr %c.i97, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end30.if.end35_crit_edge
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %30 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp99 = icmp sgt i32 %31, 0
  br i1 %cmp99, label %for.body.lr.ph, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %scbs = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.0100, i32 12
  %32 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool36.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool36.not, label %if.end38, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end38:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.dsp_scb_descriptor, ptr %scbs, i32 %i.0100
  tail call void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef %add.ptr) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0100, 1
  %33 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nscb, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_symbol_table_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.90) #10
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp38 = icmp sgt i32 %7, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %symbols = getelementptr inbounds %struct.dsp_symbol_desc, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %8 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %symbols, align 4
  %deleted = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.039, i32 4
  %10 = ptrtoint ptr %deleted to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %module = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.039, i32 3
  %12 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module, align 4
  %cmp7.not = icmp eq ptr %13, null
  br i1 %cmp7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %module_str.0 = phi ptr [ %15, %if.then8 ], [ @.str.91, %if.end.if.end13_crit_edge ]
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %arrayidx17 = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.039
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx17, align 4
  %symbol_type = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.039, i32 2
  %20 = ptrtoint ptr %symbol_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %symbol_type, align 4
  %symbol_name = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.039, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.92, i32 noundef %19, i32 noundef %21, ptr noundef %symbol_name, ptr noundef %module_str.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.039, 1
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_modules_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.93) #10
  %nmodules = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp46 = icmp sgt i32 %7, 0
  br i1 %cmp46, label %for.body.lr.ph, label %entry.for.end20_crit_edge

entry.for.end20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.body.lr.ph:                                   ; preds = %entry
  %modules = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %for.body.lr.ph
  %i.047 = phi i32 [ 0, %for.body.lr.ph ], [ %inc19, %for.inc18.for.body_crit_edge ]
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modules, align 4
  %arrayidx = getelementptr %struct.dsp_module_desc, ptr %11, i32 %i.047
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.94, ptr noundef %13) #10
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %modules, align 4
  %symbol_table = getelementptr %struct.dsp_module_desc, ptr %17, i32 %i.047, i32 1
  %18 = ptrtoint ptr %symbol_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %symbol_table, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.95, i32 noundef %19) #10
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %22 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %modules, align 4
  %nfixups = getelementptr %struct.dsp_module_desc, ptr %23, i32 %i.047, i32 6
  %24 = ptrtoint ptr %nfixups to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nfixups, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.96, i32 noundef %25) #10
  %26 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %modules, align 4
  %nsegments43 = getelementptr %struct.dsp_module_desc, ptr %27, i32 %i.047, i32 2
  %28 = ptrtoint ptr %nsegments43 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nsegments43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp1344 = icmp sgt i32 %29, 0
  br i1 %cmp1344, label %for.body.for.body14_crit_edge, label %for.body.for.inc18_crit_edge

for.body.for.inc18_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

for.body.for.body14_crit_edge:                    ; preds = %for.body
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body.for.body14_crit_edge
  %30 = phi ptr [ %42, %for.body14.for.body14_crit_edge ], [ %27, %for.body.for.body14_crit_edge ]
  %j.045 = phi i32 [ %inc, %for.body14.for.body14_crit_edge ], [ 0, %for.body.for.body14_crit_edge ]
  %segments = getelementptr %struct.dsp_module_desc, ptr %30, i32 %i.047, i32 3
  %31 = ptrtoint ptr %segments to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %segments, align 4
  %add.ptr = getelementptr %struct.dsp_segment_desc, ptr %32, i32 %j.045
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr, align 4
  %offset = getelementptr %struct.dsp_segment_desc, ptr %32, i32 %j.045, i32 1
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %size = getelementptr %struct.dsp_segment_desc, ptr %32, i32 %j.045, i32 2
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.97, i32 noundef %36, i32 noundef %38, i32 noundef %40) #10
  %inc = add nuw nsw i32 %j.045, 1
  %41 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %modules, align 4
  %nsegments = getelementptr %struct.dsp_module_desc, ptr %42, i32 %i.047, i32 2
  %43 = ptrtoint ptr %nsegments to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nsegments, align 4
  %cmp13 = icmp slt i32 %inc, %44
  br i1 %cmp13, label %for.body14.for.body14_crit_edge, label %for.body14.for.inc18_crit_edge

for.body14.for.inc18_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc18

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.inc18:                                        ; preds = %for.body14.for.inc18_crit_edge, %for.body.for.inc18_crit_edge
  %inc19 = add nuw nsw i32 %i.047, 1
  %45 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nmodules, align 4
  %cmp = icmp slt i32 %inc19, %46
  br i1 %cmp, label %for.inc18.for.body_crit_edge, label %for.inc18.for.end20_crit_edge

for.inc18.for.end20_crit_edge:                    ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end20

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end20:                                        ; preds = %for.inc18.for.end20_crit_edge, %entry.for.end20_crit_edge
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_parameter_dump_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %dsp_spos_instance.i = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.037 = phi i32 [ 0, %entry ], [ %add, %if.end11.for.body_crit_edge ]
  %col.036 = phi i32 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %col.036)
  %cmp2 = icmp eq i32 %col.036, 4
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.98) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %col.1 = phi i32 [ 0, %if.then ], [ %col.036, %for.body.if.end_crit_edge ]
  %div27 = lshr exact i32 %i.037, 2
  %6 = ptrtoint ptr %dsp_spos_instance.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsp_spos_instance.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1.i = icmp sgt i32 %9, 0
  br i1 %cmp1.i, label %for.body.lr.ph.i, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

for.body.lr.ph.i:                                 ; preds = %if.end
  %symbols.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dsp_symbol_entry, ptr %11, i32 %i.02.i
  %deleted.i = getelementptr %struct.dsp_symbol_entry, ptr %11, i32 %i.02.i, i32 4
  %12 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %deleted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div27)
  %cmp6.i = icmp eq i32 %15, %div27
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %symbol_type10.i = getelementptr %struct.dsp_symbol_entry, ptr %11, i32 %i.02.i, i32 2
  %16 = ptrtoint ptr %symbol_type10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %symbol_type10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp11.i = icmp eq i32 %17, 2
  br i1 %cmp11.i, label %cs46xx_dsp_lookup_symbol_addr.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.if.end6_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

cs46xx_dsp_lookup_symbol_addr.exit:               ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %cs46xx_dsp_lookup_symbol_addr.exit.if.end6_crit_edge, label %if.end6.thread

cs46xx_dsp_lookup_symbol_addr.exit.if.end6_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6.thread:                                   ; preds = %cs46xx_dsp_lookup_symbol_addr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %symbol_name = getelementptr %struct.dsp_symbol_entry, ptr %11, i32 %i.02.i, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.94, ptr noundef %symbol_name) #10
  br label %if.then8

if.end6:                                          ; preds = %cs46xx_dsp_lookup_symbol_addr.exit.if.end6_crit_edge, %for.inc.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %col.1)
  %cmp7 = icmp eq i32 %col.1, 0
  br i1 %cmp7, label %if.end6.if.then8_crit_edge, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.end6.thread
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.99, i32 noundef %div27) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %col.232 = phi i32 [ 0, %if.then8 ], [ %col.1, %if.end6.if.end11_crit_edge ]
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %add.ptr13 = getelementptr i8, ptr %3, i32 %i.037
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #10, !srcloc !316
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !317
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.100, i32 noundef %25) #10
  %add = add nuw nsw i32 %i.037, 4
  %inc = add i32 %col.232, 1
  %cmp = icmp ult i32 %i.037, 12284
  br i1 %cmp, label %if.end11.for.body_crit_edge, label %for.end

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_sample_dump_read(ptr nocapture noundef readonly %entry1, ptr noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %remap_addr = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr, align 4
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.101) #10
  br label %for.body

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry
  %i.0299 = phi i32 [ 1536, %entry ], [ %add, %if.end8.for.body_crit_edge ]
  %col.0298 = phi i32 [ 0, %entry ], [ %inc, %if.end8.for.body_crit_edge ]
  %6 = zext i32 %col.0298 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %col.0298, label %for.body.if.end8_crit_edge [
    i32 4, label %if.end.thread
    i32 0, label %for.body.if.then6_crit_edge
  ]

for.body.if.then6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.98) #10
  br label %if.then6

if.then6:                                         ; preds = %if.end.thread, %for.body.if.then6_crit_edge
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.99, i32 noundef %i.0299) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %col.1268 = phi i32 [ 0, %if.then6 ], [ %col.0298, %for.body.if.end8_crit_edge ]
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %i.0299
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !316
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !318
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.100, i32 noundef %14) #10
  %add = add nuw nsw i32 %i.0299, 4
  %inc = add i32 %col.1268, 1
  %cmp = icmp ult i32 %i.0299, 1580
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %for.end

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end8
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.102) #10
  br label %for.body14

for.body14:                                       ; preds = %if.end22.for.body14_crit_edge, %for.end
  %i.1302 = phi i32 [ 5120, %for.end ], [ %add31, %if.end22.for.body14_crit_edge ]
  %col.2301 = phi i32 [ 0, %for.end ], [ %inc32, %if.end22.for.body14_crit_edge ]
  %17 = zext i32 %col.2301 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %col.2301, label %for.body14.if.end22_crit_edge [
    i32 4, label %if.end18.thread
    i32 0, label %for.body14.if.then20_crit_edge
  ]

for.body14.if.then20_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then20

for.body14.if.end22_crit_edge:                    ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end18.thread:                                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %19, ptr noundef nonnull @.str.98) #10
  br label %if.then20

if.then20:                                        ; preds = %if.end18.thread, %for.body14.if.then20_crit_edge
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.99, i32 noundef %i.1302) #10
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body14.if.end22_crit_edge
  %col.3272 = phi i32 [ 0, %if.then20 ], [ %col.2301, %for.body14.if.end22_crit_edge ]
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %add.ptr26 = getelementptr i8, ptr %3, i32 %i.1302
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #10, !srcloc !316
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !319
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.100, i32 noundef %25) #10
  %add31 = add nuw nsw i32 %i.1302, 4
  %inc32 = add i32 %col.3272, 1
  %cmp13 = icmp ult i32 %i.1302, 5180
  br i1 %cmp13, label %if.end22.for.body14_crit_edge, label %for.end33

if.end22.for.body14_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

for.end33:                                        ; preds = %if.end22
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef nonnull @.str.103) #10
  br label %for.body37

for.body37:                                       ; preds = %if.end45.for.body37_crit_edge, %for.end33
  %i.2305 = phi i32 [ 9344, %for.end33 ], [ %add54, %if.end45.for.body37_crit_edge ]
  %col.4304 = phi i32 [ 0, %for.end33 ], [ %inc55, %if.end45.for.body37_crit_edge ]
  %28 = zext i32 %col.4304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %col.4304, label %for.body37.if.end45_crit_edge [
    i32 4, label %if.end41.thread
    i32 0, label %for.body37.if.then43_crit_edge
  ]

for.body37.if.then43_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

for.body37.if.end45_crit_edge:                    ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.end41.thread:                                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %30, ptr noundef nonnull @.str.98) #10
  br label %if.then43

if.then43:                                        ; preds = %if.end41.thread, %for.body37.if.then43_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.99, i32 noundef %i.2305) #10
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %for.body37.if.end45_crit_edge
  %col.5276 = phi i32 [ 0, %if.then43 ], [ %col.4304, %for.body37.if.end45_crit_edge ]
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 4
  %add.ptr49 = getelementptr i8, ptr %3, i32 %i.2305
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #10, !srcloc !316
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !320
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %34, ptr noundef nonnull @.str.100, i32 noundef %36) #10
  %add54 = add nuw nsw i32 %i.2305, 4
  %inc55 = add i32 %col.5276, 1
  %cmp36 = icmp ult i32 %i.2305, 9404
  br i1 %cmp36, label %if.end45.for.body37_crit_edge, label %for.end56

if.end45.for.body37_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body37

for.end56:                                        ; preds = %if.end45
  %37 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef nonnull @.str.104) #10
  br label %for.body60

for.body60:                                       ; preds = %if.end68.for.body60_crit_edge, %for.end56
  %i.3308 = phi i32 [ 4096, %for.end56 ], [ %add77, %if.end68.for.body60_crit_edge ]
  %col.6307 = phi i32 [ 0, %for.end56 ], [ %inc78, %if.end68.for.body60_crit_edge ]
  %39 = zext i32 %col.6307 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %col.6307, label %for.body60.if.end68_crit_edge [
    i32 4, label %if.end64.thread
    i32 0, label %for.body60.if.then66_crit_edge
  ]

for.body60.if.then66_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66

for.body60.if.end68_crit_edge:                    ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end64.thread:                                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %41, ptr noundef nonnull @.str.98) #10
  br label %if.then66

if.then66:                                        ; preds = %if.end64.thread, %for.body60.if.then66_crit_edge
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.99, i32 noundef %i.3308) #10
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.body60.if.end68_crit_edge
  %col.7280 = phi i32 [ 0, %if.then66 ], [ %col.6307, %for.body60.if.end68_crit_edge ]
  %44 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buffer, align 4
  %add.ptr72 = getelementptr i8, ptr %3, i32 %i.3308
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #10, !srcloc !316
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !321
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %45, ptr noundef nonnull @.str.100, i32 noundef %47) #10
  %add77 = add nuw nsw i32 %i.3308, 4
  %inc78 = add i32 %col.7280, 1
  %cmp59 = icmp ult i32 %i.3308, 4140
  br i1 %cmp59, label %if.end68.for.body60_crit_edge, label %for.end79

if.end68.for.body60_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body60

for.end79:                                        ; preds = %if.end68
  %48 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %49, ptr noundef nonnull @.str.105) #10
  br label %for.body83

for.body83:                                       ; preds = %if.end91.for.body83_crit_edge, %for.end79
  %i.4311 = phi i32 [ 4304, %for.end79 ], [ %add100, %if.end91.for.body83_crit_edge ]
  %col.8310 = phi i32 [ 0, %for.end79 ], [ %inc101, %if.end91.for.body83_crit_edge ]
  %50 = zext i32 %col.8310 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %col.8310, label %for.body83.if.end91_crit_edge [
    i32 4, label %if.end87.thread
    i32 0, label %for.body83.if.then89_crit_edge
  ]

for.body83.if.then89_crit_edge:                   ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

for.body83.if.end91_crit_edge:                    ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

if.end87.thread:                                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.98) #10
  br label %if.then89

if.then89:                                        ; preds = %if.end87.thread, %for.body83.if.then89_crit_edge
  %53 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %54, ptr noundef nonnull @.str.99, i32 noundef %i.4311) #10
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.body83.if.end91_crit_edge
  %col.9284 = phi i32 [ 0, %if.then89 ], [ %col.8310, %for.body83.if.end91_crit_edge ]
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  %add.ptr95 = getelementptr i8, ptr %3, i32 %i.4311
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95) #10, !srcloc !316
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.100, i32 noundef %58) #10
  %add100 = add nuw nsw i32 %i.4311, 4
  %inc101 = add i32 %col.9284, 1
  %cmp82 = icmp ult i32 %i.4311, 4364
  br i1 %cmp82, label %if.end91.for.body83_crit_edge, label %for.end102

if.end91.for.body83_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body83

for.end102:                                       ; preds = %if.end91
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.106) #10
  br label %for.body106

for.body106:                                      ; preds = %if.end114.for.body106_crit_edge, %for.end102
  %i.5314 = phi i32 [ 2816, %for.end102 ], [ %add123, %if.end114.for.body106_crit_edge ]
  %col.10313 = phi i32 [ 0, %for.end102 ], [ %inc124, %if.end114.for.body106_crit_edge ]
  %61 = zext i32 %col.10313 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %col.10313, label %for.body106.if.end114_crit_edge [
    i32 4, label %if.end110.thread
    i32 0, label %for.body106.if.then112_crit_edge
  ]

for.body106.if.then112_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then112

for.body106.if.end114_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.end110.thread:                                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %63, ptr noundef nonnull @.str.98) #10
  br label %if.then112

if.then112:                                       ; preds = %if.end110.thread, %for.body106.if.then112_crit_edge
  %64 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %65, ptr noundef nonnull @.str.99, i32 noundef %i.5314) #10
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %for.body106.if.end114_crit_edge
  %col.11288 = phi i32 [ 0, %if.then112 ], [ %col.10313, %for.body106.if.end114_crit_edge ]
  %66 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buffer, align 4
  %add.ptr118 = getelementptr i8, ptr %3, i32 %i.5314
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #10, !srcloc !316
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !323
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %67, ptr noundef nonnull @.str.100, i32 noundef %69) #10
  %add123 = add nuw nsw i32 %i.5314, 4
  %inc124 = add i32 %col.11288, 1
  %cmp105 = icmp ult i32 %i.5314, 2876
  br i1 %cmp105, label %if.end114.for.body106_crit_edge, label %for.end125

if.end114.for.body106_crit_edge:                  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body106

for.end125:                                       ; preds = %if.end114
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %71, ptr noundef nonnull @.str.107) #10
  br label %for.body129

for.body129:                                      ; preds = %if.end137.for.body129_crit_edge, %for.end125
  %i.6317 = phi i32 [ 1280, %for.end125 ], [ %add146, %if.end137.for.body129_crit_edge ]
  %col.12316 = phi i32 [ 0, %for.end125 ], [ %inc147, %if.end137.for.body129_crit_edge ]
  %72 = zext i32 %col.12316 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %col.12316, label %for.body129.if.end137_crit_edge [
    i32 4, label %if.end133.thread
    i32 0, label %for.body129.if.then135_crit_edge
  ]

for.body129.if.then135_crit_edge:                 ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then135

for.body129.if.end137_crit_edge:                  ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end137

if.end133.thread:                                 ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %74, ptr noundef nonnull @.str.98) #10
  br label %if.then135

if.then135:                                       ; preds = %if.end133.thread, %for.body129.if.then135_crit_edge
  %75 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %76, ptr noundef nonnull @.str.99, i32 noundef %i.6317) #10
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %for.body129.if.end137_crit_edge
  %col.13292 = phi i32 [ 0, %if.then135 ], [ %col.12316, %for.body129.if.end137_crit_edge ]
  %77 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buffer, align 4
  %add.ptr141 = getelementptr i8, ptr %3, i32 %i.6317
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #10, !srcloc !316
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !324
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %78, ptr noundef nonnull @.str.100, i32 noundef %80) #10
  %add146 = add nuw nsw i32 %i.6317, 4
  %inc147 = add i32 %col.13292, 1
  %cmp128 = icmp ult i32 %i.6317, 1340
  br i1 %cmp128, label %if.end137.for.body129_crit_edge, label %for.end148

if.end137.for.body129_crit_edge:                  ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body129

for.end148:                                       ; preds = %if.end137
  %81 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %82, ptr noundef nonnull @.str.108) #10
  br label %for.body152

for.body152:                                      ; preds = %if.end160.for.body152_crit_edge, %for.end148
  %i.7320 = phi i32 [ 3584, %for.end148 ], [ %add169, %if.end160.for.body152_crit_edge ]
  %col.14319 = phi i32 [ 0, %for.end148 ], [ %inc170, %if.end160.for.body152_crit_edge ]
  %83 = zext i32 %col.14319 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %col.14319, label %for.body152.if.end160_crit_edge [
    i32 4, label %if.end156.thread
    i32 0, label %for.body152.if.then158_crit_edge
  ]

for.body152.if.then158_crit_edge:                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then158

for.body152.if.end160_crit_edge:                  ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

if.end156.thread:                                 ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  %84 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %85, ptr noundef nonnull @.str.98) #10
  br label %if.then158

if.then158:                                       ; preds = %if.end156.thread, %for.body152.if.then158_crit_edge
  %86 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %87, ptr noundef nonnull @.str.99, i32 noundef %i.7320) #10
  br label %if.end160

if.end160:                                        ; preds = %if.then158, %for.body152.if.end160_crit_edge
  %col.15296 = phi i32 [ 0, %if.then158 ], [ %col.14319, %for.body152.if.end160_crit_edge ]
  %88 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %buffer, align 4
  %add.ptr164 = getelementptr i8, ptr %3, i32 %i.7320
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr164) #10, !srcloc !316
  %91 = tail call i32 @llvm.bswap.i32(i32 %90)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !325
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %89, ptr noundef nonnull @.str.100, i32 noundef %91) #10
  %add169 = add nuw nsw i32 %i.7320, 4
  %inc170 = add i32 %col.15296, 1
  %cmp151 = icmp ult i32 %i.7320, 3708
  br i1 %cmp151, label %if.end160.for.body152_crit_edge, label %for.end171

if.end160.for.body152_crit_edge:                  ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body152

for.end171:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %93, ptr noundef nonnull @.str.98) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_task_tree_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %remap_addr = getelementptr %struct.snd_cs46xx, ptr %1, i32 0, i32 3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %7, ptr noundef nonnull @.str.109) #10
  %ntask = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 21
  %8 = ptrtoint ptr %ntask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp48 = icmp sgt i32 %9, 0
  br i1 %cmp48, label %entry.for.body_crit_edge, label %entry.for.end23_crit_edge

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc21.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc22, %for.inc21.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  %arrayidx4 = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 22, i32 %i.049
  %address = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 22, i32 %i.049, i32 2
  %12 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef nonnull @.str.110, i32 noundef %13, ptr noundef %arrayidx4) #10
  %size = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 22, i32 %i.049, i32 1
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1045 = icmp sgt i32 %15, 0
  br i1 %cmp1045, label %for.body.for.body11_crit_edge, label %for.body.for.inc21_crit_edge

for.body.for.inc21_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

for.body.for.body11_crit_edge:                    ; preds = %for.body
  br label %for.body11

for.body11:                                       ; preds = %if.end.for.body11_crit_edge, %for.body.for.body11_crit_edge
  %j.047 = phi i32 [ %inc, %if.end.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  %col.046 = phi i32 [ %inc20, %if.end.for.body11_crit_edge ], [ 0, %for.body.for.body11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %col.046)
  %cmp12 = icmp eq i32 %col.046, 4
  br i1 %cmp12, label %if.then, label %for.body11.if.end_crit_edge

for.body11.if.end_crit_edge:                      ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.98) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body11.if.end_crit_edge
  %col.1 = phi i32 [ 0, %if.then ], [ %col.046, %for.body11.if.end_crit_edge ]
  %18 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %address, align 4
  %add = add i32 %19, %j.047
  %mul = shl i32 %add, 2
  %add.ptr17 = getelementptr i8, ptr %5, i32 %mul
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !316
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !326
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %23, ptr noundef nonnull @.str.111, i32 noundef %21) #10
  %inc = add nuw nsw i32 %j.047, 1
  %inc20 = add i32 %col.1, 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %cmp10 = icmp slt i32 %inc, %25
  br i1 %cmp10, label %if.end.for.body11_crit_edge, label %if.end.for.inc21_crit_edge

if.end.for.inc21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc21

if.end.for.body11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body11

for.inc21:                                        ; preds = %if.end.for.inc21_crit_edge, %for.body.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.049, 1
  %26 = ptrtoint ptr %ntask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ntask, align 4
  %cmp = icmp slt i32 %inc22, %27
  br i1 %cmp, label %for.inc21.for.body_crit_edge, label %for.inc21.for.end23_crit_edge

for.inc21.for.end23_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end23

for.inc21.for.body_crit_edge:                     ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end23:                                        ; preds = %for.inc21.for.end23_crit_edge, %entry.for.end23_crit_edge
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.98) #10
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_scb_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %1, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.112) #10
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 17
  %6 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp82 = icmp sgt i32 %7, 0
  br i1 %cmp82, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 12
  %8 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %address = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 1
  %11 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %10, ptr noundef nonnull @.str.113, i32 noundef %12, ptr noundef %arrayidx) #10
  %parent_scb_ptr = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 6
  %13 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_scb_ptr, align 4
  %cmp10.not = icmp eq ptr %14, null
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  br i1 %cmp10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %address21 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %address21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address21, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.114, ptr noundef nonnull %14, i32 noundef %18) #10
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.115) #10
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then11
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %sub_list_ptr = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 4
  %21 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sub_list_ptr, align 4
  %address32 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %address32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %address32, align 4
  %next_scb_ptr = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 5
  %25 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %next_scb_ptr, align 4
  %address40 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %address40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %address40, align 4
  %task_entry = getelementptr %struct.dsp_spos_instance, ptr %3, i32 0, i32 19, i32 %i.083, i32 7
  %29 = ptrtoint ptr %task_entry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %task_entry, align 4
  %symbol_name = getelementptr inbounds %struct.dsp_symbol_entry, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.116, ptr noundef %22, i32 noundef %24, ptr noundef %26, i32 noundef %28, ptr noundef %symbol_name, i32 noundef %32) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %33 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nscb, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.98) #10
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cs46xx_dsp_proc_register_scb_desc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_proc_done(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp18 = icmp sgt i32 %3, 0
  br i1 %cmp18, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %scbs = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.019, i32 12
  %4 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.dsp_scb_descriptor, ptr %scbs, i32 %i.019
  tail call void @cs46xx_dsp_proc_free_scb_desc(ptr noundef %add.ptr) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %5 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nscb, align 4
  %cmp = icmp slt i32 %inc, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  %proc_dsp_dir = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proc_dsp_dir, align 4
  tail call void @snd_info_free_entry(ptr noundef %8) #10
  %9 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %proc_dsp_dir, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_scb(ptr nocapture noundef readonly %chip, ptr noundef %name, ptr noundef %scb_data, i32 noundef %dest) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %scb_data, i32 noundef 64, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dsp_spos_instance.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance.i, align 4
  %nscb.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %nscb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nscb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %3)
  %cmp.i = icmp eq i32 %3, 199
  br i1 %cmp.i, label %_map_scb.exit.thread, label %if.end.i

_map_scb.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.117) #15
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %scb_highest_frag_index.i.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %scb_highest_frag_index.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scb_highest_frag_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp8.i.i = icmp slt i32 %9, %3
  br i1 %cmp8.i.i, label %if.end.i.for.body.i.i_crit_edge, label %if.end.i.find_free_scb_index.exit.i_crit_edge

if.end.i.find_free_scb_index.exit.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_scb_index.exit.i

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %9, %if.end.i.for.body.i.i_crit_edge ]
  %deleted.i.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.09.i.i, i32 12
  %10 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %deleted.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.body.i.i.find_free_scb_index.exit.i_crit_edge

for.body.i.i.find_free_scb_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_scb_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.find_free_scb_index.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.find_free_scb_index.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_scb_index.exit.i

find_free_scb_index.exit.i:                       ; preds = %for.inc.i.i.find_free_scb_index.exit.i_crit_edge, %for.body.i.i.find_free_scb_index.exit.i_crit_edge, %if.end.i.find_free_scb_index.exit.i_crit_edge
  %index.0.i.i = phi i32 [ %3, %if.end.i.find_free_scb_index.exit.i_crit_edge ], [ %i.09.i.i, %for.body.i.i.find_free_scb_index.exit.i_crit_edge ], [ %3, %for.inc.i.i.find_free_scb_index.exit.i_crit_edge ]
  %scbs.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 19
  %arrayidx.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %index.0.i.i
  %11 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 108)
  %call3.i = tail call ptr @strcpy(ptr noundef %arrayidx.i, ptr noundef %name) #16
  %address.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %index.0.i.i, i32 1
  %12 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dest, ptr %address.i, align 4
  %index8.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %index.0.i.i, i32 2
  %13 = ptrtoint ptr %index8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %index.0.i.i, ptr %index8.i, align 4
  %ref_count.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %index.0.i.i, i32 10
  %14 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %ref_count.i, align 4
  %add.ptr.i = getelementptr %struct.dsp_scb_descriptor, ptr %scbs.i, i32 %index.0.i.i
  %call13.i = tail call fastcc ptr @add_symbol(ptr noundef %chip, ptr noundef %name, i32 noundef %dest) #10
  %scb_symbol.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %index.0.i.i, i32 8
  %15 = ptrtoint ptr %scb_symbol.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13.i, ptr %scb_symbol.i, align 4
  %16 = ptrtoint ptr %scb_highest_frag_index.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scb_highest_frag_index.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i.i, i32 %17)
  %cmp16.i = icmp sgt i32 %index.0.i.i, %17
  br i1 %cmp16.i, label %if.then17.i, label %find_free_scb_index.exit.i.if.end19.i_crit_edge

find_free_scb_index.exit.i.if.end19.i_crit_edge:  ; preds = %find_free_scb_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19.i

if.then17.i:                                      ; preds = %find_free_scb_index.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %scb_highest_frag_index.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %index.0.i.i, ptr %scb_highest_frag_index.i.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %find_free_scb_index.exit.i.if.end19.i_crit_edge
  %19 = ptrtoint ptr %nscb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nscb.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i.i, i32 %20)
  %cmp21.i = icmp eq i32 %index.0.i.i, %20
  br i1 %cmp21.i, label %if.then22.i, label %if.end19.i._map_scb.exit_crit_edge

if.end19.i._map_scb.exit_crit_edge:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_map_scb.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %index.0.i.i, 1
  %21 = ptrtoint ptr %nscb.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.i, ptr %nscb.i, align 4
  br label %_map_scb.exit

_map_scb.exit:                                    ; preds = %if.then22.i, %if.end19.i._map_scb.exit_crit_edge
  %tobool2.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool2.not, label %_map_scb.exit.do.end_crit_edge, label %if.then3

_map_scb.exit.do.end_crit_edge:                   ; preds = %_map_scb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then3:                                         ; preds = %_map_scb.exit
  %data = getelementptr %struct.dsp_scb_descriptor, ptr %scbs.i, i32 %index.0.i.i, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %data, align 4
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr.i, align 4
  %mul.i = shl i32 %dest, 2
  %add.ptr1.i = getelementptr i8, ptr %24, i32 %mul.i
  %card.i14 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body5.i.do.body.i_crit_edge, %if.then3
  %spdst.020.i = phi ptr [ %add.ptr1.i, %if.then3 ], [ %add.ptr9.i, %do.body5.i.do.body.i_crit_edge ]
  %i.018.i = phi i32 [ 0, %if.then3 ], [ %inc.i16, %do.body5.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dsp_create_scb.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_scb, %if.then.i)) #10
          to label %do.body5.i [label %if.then.i], !srcloc !314

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %card.i14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card.i14, align 4
  %dev.i15 = getelementptr inbounds %struct.snd_card, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %dev.i15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i15, align 8
  %arrayidx4.i = getelementptr i32, ptr %call, i32 %i.018.i
  %29 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dsp_create_scb.__UNIQUE_ID_ddebug253, ptr noundef %28, ptr noundef nonnull @.str.124, ptr noundef %spdst.020.i, i32 noundef %30) #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i = getelementptr i32, ptr %call, i32 %i.018.i
  %31 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spdst.020.i, i32 %33) #10, !srcloc !328
  %add.ptr9.i = getelementptr i8, ptr %spdst.020.i, i32 4
  %inc.i16 = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i16, 16
  br i1 %exitcond.not.i, label %do.body5.i.cleanup_crit_edge, label %do.body5.i.do.body.i_crit_edge

do.body5.i.do.body.i_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body5.i.cleanup_crit_edge:                     ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %_map_scb.exit.do.end_crit_edge, %_map_scb.exit.thread
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.28) #15
  tail call void @kfree(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body5.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %do.end ], [ %add.ptr.i, %do.body5.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_scb_and_task_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %spdifo_scb.i = alloca %struct.dsp_spdifoscb, align 4
  %spdifi_scb.i = alloca %struct.dsp_spdifiscb, align 4
  %async_codec_input_scb.i = alloca %struct.dsp_async_codec_input_scb, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %call = tail call fastcc ptr @cs46xx_dsp_create_task_tree(ptr noundef %chip, ptr noundef nonnull @.str.30, ptr noundef nonnull @cs46xx_dsp_scb_and_task_init.sposcb, i32 noundef 112, i32 noundef 16)
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28.i = icmp sgt i32 %5, 0
  br i1 %cmp28.i, label %for.body.lr.ph.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %symbols.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %deleted.i = getelementptr %struct.dsp_symbol_entry, ptr %7, i32 %i.029.i, i32 4
  %8 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %deleted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %symbol_name5.i = getelementptr %struct.dsp_symbol_entry, ptr %7, i32 %i.029.i, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i, ptr noundef nonnull dereferenceable(14) @.str.31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %symbol_type10.i = getelementptr %struct.dsp_symbol_entry, ptr %7, i32 %i.029.i, i32 2
  %10 = ptrtoint ptr %symbol_type10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %symbol_type10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp11.i = icmp eq i32 %11, 3
  br i1 %cmp11.i, label %cs46xx_dsp_lookup_symbol.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

cs46xx_dsp_lookup_symbol.exit:                    ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.dsp_symbol_entry, ptr %7, i32 %i.029.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %cs46xx_dsp_lookup_symbol.exit.do.end_crit_edge, label %for.body.lr.ph.i284

cs46xx_dsp_lookup_symbol.exit.do.end_crit_edge:   ; preds = %cs46xx_dsp_lookup_symbol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %cs46xx_dsp_lookup_symbol.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.32) #15
  br label %cleanup

for.body.lr.ph.i284:                              ; preds = %cs46xx_dsp_lookup_symbol.exit
  %16 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i288

for.body.i288:                                    ; preds = %for.inc.i298.for.body.i288_crit_edge, %for.body.lr.ph.i284
  %i.029.i285 = phi i32 [ 0, %for.body.lr.ph.i284 ], [ %inc.i296, %for.inc.i298.for.body.i288_crit_edge ]
  %deleted.i286 = getelementptr %struct.dsp_symbol_entry, ptr %17, i32 %i.029.i285, i32 4
  %18 = ptrtoint ptr %deleted.i286 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %deleted.i286, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i287 = icmp eq i32 %19, 0
  br i1 %tobool.not.i287, label %if.end.i292, label %for.body.i288.for.inc.i298_crit_edge

for.body.i288.for.inc.i298_crit_edge:             ; preds = %for.body.i288
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i298

if.end.i292:                                      ; preds = %for.body.i288
  %symbol_name5.i289 = getelementptr %struct.dsp_symbol_entry, ptr %17, i32 %i.029.i285, i32 1
  %call.i290 = tail call i32 @strcmp(ptr noundef %symbol_name5.i289, ptr noundef nonnull dereferenceable(21) @.str.34) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %tobool6.not.i291 = icmp eq i32 %call.i290, 0
  br i1 %tobool6.not.i291, label %land.lhs.true.i295, label %if.end.i292.for.inc.i298_crit_edge

if.end.i292.for.inc.i298_crit_edge:               ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i298

land.lhs.true.i295:                               ; preds = %if.end.i292
  %symbol_type10.i293 = getelementptr %struct.dsp_symbol_entry, ptr %17, i32 %i.029.i285, i32 2
  %20 = ptrtoint ptr %symbol_type10.i293 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %symbol_type10.i293, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp11.i294 = icmp eq i32 %21, 3
  br i1 %cmp11.i294, label %cs46xx_dsp_lookup_symbol.exit302, label %land.lhs.true.i295.for.inc.i298_crit_edge

land.lhs.true.i295.for.inc.i298_crit_edge:        ; preds = %land.lhs.true.i295
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i298

for.inc.i298:                                     ; preds = %land.lhs.true.i295.for.inc.i298_crit_edge, %if.end.i292.for.inc.i298_crit_edge, %for.body.i288.for.inc.i298_crit_edge
  %inc.i296 = add nuw nsw i32 %i.029.i285, 1
  %exitcond.not.i297 = icmp eq i32 %inc.i296, %5
  br i1 %exitcond.not.i297, label %for.inc.i298.do.end7_crit_edge, label %for.inc.i298.for.body.i288_crit_edge

for.inc.i298.for.body.i288_crit_edge:             ; preds = %for.inc.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i288

for.inc.i298.do.end7_crit_edge:                   ; preds = %for.inc.i298
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

cs46xx_dsp_lookup_symbol.exit302:                 ; preds = %land.lhs.true.i295
  %arrayidx.le.i299 = getelementptr %struct.dsp_symbol_entry, ptr %17, i32 %i.029.i285
  %cmp3 = icmp eq ptr %arrayidx.le.i299, null
  br i1 %cmp3, label %cs46xx_dsp_lookup_symbol.exit302.do.end7_crit_edge, label %for.body.lr.ph.i306

cs46xx_dsp_lookup_symbol.exit302.do.end7_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit302
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

do.end7:                                          ; preds = %cs46xx_dsp_lookup_symbol.exit302.do.end7_crit_edge, %for.inc.i298.do.end7_crit_edge
  %card8 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %22 = ptrtoint ptr %card8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card8, align 4
  %dev9 = getelementptr inbounds %struct.snd_card, ptr %23, i32 0, i32 27
  %24 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.36) #15
  br label %cleanup

for.body.lr.ph.i306:                              ; preds = %cs46xx_dsp_lookup_symbol.exit302
  %26 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i310

for.body.i310:                                    ; preds = %for.inc.i320.for.body.i310_crit_edge, %for.body.lr.ph.i306
  %i.029.i307 = phi i32 [ 0, %for.body.lr.ph.i306 ], [ %inc.i318, %for.inc.i320.for.body.i310_crit_edge ]
  %deleted.i308 = getelementptr %struct.dsp_symbol_entry, ptr %27, i32 %i.029.i307, i32 4
  %28 = ptrtoint ptr %deleted.i308 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %deleted.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i309 = icmp eq i32 %29, 0
  br i1 %tobool.not.i309, label %if.end.i314, label %for.body.i310.for.inc.i320_crit_edge

for.body.i310.for.inc.i320_crit_edge:             ; preds = %for.body.i310
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i320

if.end.i314:                                      ; preds = %for.body.i310
  %symbol_name5.i311 = getelementptr %struct.dsp_symbol_entry, ptr %27, i32 %i.029.i307, i32 1
  %call.i312 = tail call i32 @strcmp(ptr noundef %symbol_name5.i311, ptr noundef nonnull dereferenceable(19) @.str.38) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i312)
  %tobool6.not.i313 = icmp eq i32 %call.i312, 0
  br i1 %tobool6.not.i313, label %land.lhs.true.i317, label %if.end.i314.for.inc.i320_crit_edge

if.end.i314.for.inc.i320_crit_edge:               ; preds = %if.end.i314
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i320

land.lhs.true.i317:                               ; preds = %if.end.i314
  %symbol_type10.i315 = getelementptr %struct.dsp_symbol_entry, ptr %27, i32 %i.029.i307, i32 2
  %30 = ptrtoint ptr %symbol_type10.i315 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %symbol_type10.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp11.i316 = icmp eq i32 %31, 3
  br i1 %cmp11.i316, label %cs46xx_dsp_lookup_symbol.exit324, label %land.lhs.true.i317.for.inc.i320_crit_edge

land.lhs.true.i317.for.inc.i320_crit_edge:        ; preds = %land.lhs.true.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i320

for.inc.i320:                                     ; preds = %land.lhs.true.i317.for.inc.i320_crit_edge, %if.end.i314.for.inc.i320_crit_edge, %for.body.i310.for.inc.i320_crit_edge
  %inc.i318 = add nuw nsw i32 %i.029.i307, 1
  %exitcond.not.i319 = icmp eq i32 %inc.i318, %5
  br i1 %exitcond.not.i319, label %for.inc.i320.do.end16_crit_edge, label %for.inc.i320.for.body.i310_crit_edge

for.inc.i320.for.body.i310_crit_edge:             ; preds = %for.inc.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i310

for.inc.i320.do.end16_crit_edge:                  ; preds = %for.inc.i320
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

cs46xx_dsp_lookup_symbol.exit324:                 ; preds = %land.lhs.true.i317
  %arrayidx.le.i321 = getelementptr %struct.dsp_symbol_entry, ptr %27, i32 %i.029.i307
  %cmp12 = icmp eq ptr %arrayidx.le.i321, null
  br i1 %cmp12, label %cs46xx_dsp_lookup_symbol.exit324.do.end16_crit_edge, label %for.body.lr.ph.i328

cs46xx_dsp_lookup_symbol.exit324.do.end16_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit324
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end16:                                         ; preds = %cs46xx_dsp_lookup_symbol.exit324.do.end16_crit_edge, %for.inc.i320.do.end16_crit_edge
  %card17 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %32 = ptrtoint ptr %card17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card17, align 4
  %dev18 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %34 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev18, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.40) #15
  br label %cleanup

for.body.lr.ph.i328:                              ; preds = %cs46xx_dsp_lookup_symbol.exit324
  %36 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i332

for.body.i332:                                    ; preds = %for.inc.i342.for.body.i332_crit_edge, %for.body.lr.ph.i328
  %i.029.i329 = phi i32 [ 0, %for.body.lr.ph.i328 ], [ %inc.i340, %for.inc.i342.for.body.i332_crit_edge ]
  %deleted.i330 = getelementptr %struct.dsp_symbol_entry, ptr %37, i32 %i.029.i329, i32 4
  %38 = ptrtoint ptr %deleted.i330 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %deleted.i330, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i331 = icmp eq i32 %39, 0
  br i1 %tobool.not.i331, label %if.end.i336, label %for.body.i332.for.inc.i342_crit_edge

for.body.i332.for.inc.i342_crit_edge:             ; preds = %for.body.i332
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i342

if.end.i336:                                      ; preds = %for.body.i332
  %symbol_name5.i333 = getelementptr %struct.dsp_symbol_entry, ptr %37, i32 %i.029.i329, i32 1
  %call.i334 = tail call i32 @strcmp(ptr noundef %symbol_name5.i333, ptr noundef nonnull dereferenceable(15) @.str.42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool6.not.i335 = icmp eq i32 %call.i334, 0
  br i1 %tobool6.not.i335, label %land.lhs.true.i339, label %if.end.i336.for.inc.i342_crit_edge

if.end.i336.for.inc.i342_crit_edge:               ; preds = %if.end.i336
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i342

land.lhs.true.i339:                               ; preds = %if.end.i336
  %symbol_type10.i337 = getelementptr %struct.dsp_symbol_entry, ptr %37, i32 %i.029.i329, i32 2
  %40 = ptrtoint ptr %symbol_type10.i337 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %symbol_type10.i337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp11.i338 = icmp eq i32 %41, 3
  br i1 %cmp11.i338, label %cs46xx_dsp_lookup_symbol.exit346, label %land.lhs.true.i339.for.inc.i342_crit_edge

land.lhs.true.i339.for.inc.i342_crit_edge:        ; preds = %land.lhs.true.i339
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i342

for.inc.i342:                                     ; preds = %land.lhs.true.i339.for.inc.i342_crit_edge, %if.end.i336.for.inc.i342_crit_edge, %for.body.i332.for.inc.i342_crit_edge
  %inc.i340 = add nuw nsw i32 %i.029.i329, 1
  %exitcond.not.i341 = icmp eq i32 %inc.i340, %5
  br i1 %exitcond.not.i341, label %for.inc.i342.do.end25_crit_edge, label %for.inc.i342.for.body.i332_crit_edge

for.inc.i342.for.body.i332_crit_edge:             ; preds = %for.inc.i342
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i332

for.inc.i342.do.end25_crit_edge:                  ; preds = %for.inc.i342
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

cs46xx_dsp_lookup_symbol.exit346:                 ; preds = %land.lhs.true.i339
  %arrayidx.le.i343 = getelementptr %struct.dsp_symbol_entry, ptr %37, i32 %i.029.i329
  %cmp21 = icmp eq ptr %arrayidx.le.i343, null
  br i1 %cmp21, label %cs46xx_dsp_lookup_symbol.exit346.do.end25_crit_edge, label %for.body.lr.ph.i350

cs46xx_dsp_lookup_symbol.exit346.do.end25_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit346
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end25:                                         ; preds = %cs46xx_dsp_lookup_symbol.exit346.do.end25_crit_edge, %for.inc.i342.do.end25_crit_edge
  %card26 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %42 = ptrtoint ptr %card26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card26, align 4
  %dev27 = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.44) #15
  br label %cleanup

for.body.lr.ph.i350:                              ; preds = %cs46xx_dsp_lookup_symbol.exit346
  %46 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i354

for.body.i354:                                    ; preds = %for.inc.i364.for.body.i354_crit_edge, %for.body.lr.ph.i350
  %i.029.i351 = phi i32 [ 0, %for.body.lr.ph.i350 ], [ %inc.i362, %for.inc.i364.for.body.i354_crit_edge ]
  %deleted.i352 = getelementptr %struct.dsp_symbol_entry, ptr %47, i32 %i.029.i351, i32 4
  %48 = ptrtoint ptr %deleted.i352 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %deleted.i352, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i353 = icmp eq i32 %49, 0
  br i1 %tobool.not.i353, label %if.end.i358, label %for.body.i354.for.inc.i364_crit_edge

for.body.i354.for.inc.i364_crit_edge:             ; preds = %for.body.i354
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i364

if.end.i358:                                      ; preds = %for.body.i354
  %symbol_name5.i355 = getelementptr %struct.dsp_symbol_entry, ptr %47, i32 %i.029.i351, i32 1
  %call.i356 = tail call i32 @strcmp(ptr noundef %symbol_name5.i355, ptr noundef nonnull dereferenceable(15) @.str.46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool6.not.i357 = icmp eq i32 %call.i356, 0
  br i1 %tobool6.not.i357, label %land.lhs.true.i361, label %if.end.i358.for.inc.i364_crit_edge

if.end.i358.for.inc.i364_crit_edge:               ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i364

land.lhs.true.i361:                               ; preds = %if.end.i358
  %symbol_type10.i359 = getelementptr %struct.dsp_symbol_entry, ptr %47, i32 %i.029.i351, i32 2
  %50 = ptrtoint ptr %symbol_type10.i359 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %symbol_type10.i359, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp11.i360 = icmp eq i32 %51, 3
  br i1 %cmp11.i360, label %cs46xx_dsp_lookup_symbol.exit368, label %land.lhs.true.i361.for.inc.i364_crit_edge

land.lhs.true.i361.for.inc.i364_crit_edge:        ; preds = %land.lhs.true.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i364

for.inc.i364:                                     ; preds = %land.lhs.true.i361.for.inc.i364_crit_edge, %if.end.i358.for.inc.i364_crit_edge, %for.body.i354.for.inc.i364_crit_edge
  %inc.i362 = add nuw nsw i32 %i.029.i351, 1
  %exitcond.not.i363 = icmp eq i32 %inc.i362, %5
  br i1 %exitcond.not.i363, label %for.inc.i364.do.end34_crit_edge, label %for.inc.i364.for.body.i354_crit_edge

for.inc.i364.for.body.i354_crit_edge:             ; preds = %for.inc.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i354

for.inc.i364.do.end34_crit_edge:                  ; preds = %for.inc.i364
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

cs46xx_dsp_lookup_symbol.exit368:                 ; preds = %land.lhs.true.i361
  %arrayidx.le.i365 = getelementptr %struct.dsp_symbol_entry, ptr %47, i32 %i.029.i351
  %cmp30 = icmp eq ptr %arrayidx.le.i365, null
  br i1 %cmp30, label %cs46xx_dsp_lookup_symbol.exit368.do.end34_crit_edge, label %if.end37

cs46xx_dsp_lookup_symbol.exit368.do.end34_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit368
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end34:                                         ; preds = %cs46xx_dsp_lookup_symbol.exit368.do.end34_crit_edge, %for.inc.i364.do.end34_crit_edge
  %card35 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %52 = ptrtoint ptr %card35 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %card35, align 4
  %dev36 = getelementptr inbounds %struct.snd_card, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev36, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.48) #15
  br label %cleanup

if.end37:                                         ; preds = %cs46xx_dsp_lookup_symbol.exit368
  %56 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.le.i, align 4
  %conv = trunc i32 %57 to i16
  store i16 %conv, ptr getelementptr inbounds (%struct.dsp_generic_scb, ptr @cs46xx_dsp_scb_and_task_init.null_scb, i32 0, i32 5), align 2
  %call38 = tail call ptr @cs46xx_dsp_create_scb(ptr noundef %chip, ptr noundef nonnull @.str.50, ptr noundef nonnull @cs46xx_dsp_scb_and_task_init.null_scb, i32 noundef 0)
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %58 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call38, ptr %the_null_scb, align 4
  %task_entry = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call38, i32 0, i32 7
  %59 = ptrtoint ptr %task_entry to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %arrayidx.le.i, ptr %task_entry, align 4
  %60 = load ptr, ptr %the_null_scb, align 4
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %sub_list_ptr, align 4
  %62 = load ptr, ptr %the_null_scb, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %next_scb_ptr, align 4
  %64 = load ptr, ptr %the_null_scb, align 4
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %parent_scb_ptr, align 4
  %66 = load ptr, ptr %the_null_scb, align 4
  tail call void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef %66) #10
  %67 = ptrtoint ptr %arrayidx.le.i299 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.le.i299, align 4
  %conv47 = trunc i32 %68 to i16
  store i16 %conv47, ptr getelementptr inbounds (%struct.dsp_task_tree_control_block, ptr @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr, i32 0, i32 1, i32 3), align 2
  %69 = ptrtoint ptr %arrayidx.le.i343 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.le.i343, align 4
  %conv49 = trunc i32 %70 to i16
  store i16 %conv49, ptr getelementptr inbounds (%struct.dsp_task_tree_control_block, ptr @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr, i32 0, i32 3), align 4
  %call50 = tail call fastcc ptr @cs46xx_dsp_create_task_tree(ptr noundef %chip, ptr noundef nonnull @.str.51, ptr noundef nonnull @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr, i32 noundef 1536, i32 noundef 53)
  %71 = ptrtoint ptr %arrayidx.le.i321 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.le.i321, align 4
  %conv52 = trunc i32 %72 to i16
  store i16 %conv52, ptr getelementptr inbounds (%struct.dsp_task_tree_control_block, ptr @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr, i32 0, i32 1, i32 3), align 2
  %73 = ptrtoint ptr %arrayidx.le.i343 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.le.i343, align 4
  %conv54 = trunc i32 %74 to i16
  store i16 %conv54, ptr getelementptr inbounds (%struct.dsp_task_tree_control_block, ptr @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr, i32 0, i32 3), align 4
  %call55 = tail call fastcc ptr @cs46xx_dsp_create_task_tree(ptr noundef %chip, ptr noundef nonnull @.str.52, ptr noundef nonnull @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr, i32 noundef 1589, i32 noundef 53)
  %call56 = tail call ptr @cs46xx_dsp_create_timing_master_scb(ptr noundef %chip) #10
  %call57 = tail call ptr @cs46xx_dsp_create_codec_out_scb(ptr noundef %chip, ptr noundef nonnull @.str.53, i16 noundef zeroext 16, i16 noundef zeroext 0, i16 noundef zeroext 144, i32 noundef 32, ptr noundef %call56, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call57, null
  br i1 %tobool.not, label %if.end37.do.end169_crit_edge, label %if.end59

if.end37.do.end169_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end59:                                         ; preds = %if.end37
  %call60 = tail call ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef %chip, ptr noundef nonnull @.str.54, i16 noundef zeroext 5120, i32 noundef 144, ptr noundef nonnull %call57, i32 noundef 2) #10
  %master_mix_scb61 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %75 = ptrtoint ptr %master_mix_scb61 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call60, ptr %master_mix_scb61, align 4
  %tobool62.not = icmp eq ptr %call60, null
  br i1 %tobool62.not, label %if.end59.do.end169_crit_edge, label %if.end64

if.end59.do.end169_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end64:                                         ; preds = %if.end59
  %call65 = tail call ptr @cs46xx_dsp_create_codec_in_scb(ptr noundef %chip, ptr noundef nonnull @.str.55, i16 noundef zeroext 16, i16 noundef zeroext 160, i16 noundef zeroext 1280, i32 noundef 128, ptr noundef nonnull %call57, i32 noundef 1) #10
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.do.end169_crit_edge, label %if.end68

if.end64.do.end169_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end68:                                         ; preds = %if.end64
  %codec_in_scb69 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 32
  %76 = ptrtoint ptr %codec_in_scb69 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call65, ptr %codec_in_scb69, align 4
  %call70 = tail call ptr @cs46xx_dsp_create_mix_to_ostream_scb(ptr noundef %chip, ptr noundef nonnull @.str.56, i16 noundef zeroext 1024, i16 noundef zeroext 208, i32 noundef 64, ptr noundef %call56, i32 noundef 1) #10
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end68.do.end169_crit_edge, label %if.end73

if.end68.do.end169_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end73:                                         ; preds = %if.end68
  %call74 = tail call fastcc ptr @cs46xx_dsp_create_task_tree(ptr noundef %chip, ptr noundef null, ptr noundef nonnull @cs46xx_dsp_scb_and_task_init.mix2_ostream_spb, i32 noundef 208, i32 noundef 2)
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end73.do.end169_crit_edge, label %if.end77

if.end73.do.end169_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end77:                                         ; preds = %if.end73
  %call78 = tail call ptr @cs46xx_dsp_create_vari_decimate_scb(ptr noundef %chip, ptr noundef nonnull @.str.57, i16 noundef zeroext 1920, i16 noundef zeroext 0, i32 noundef 176, ptr noundef nonnull %call70, i32 noundef 2) #10
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.do.end169_crit_edge, label %if.end81

if.end77.do.end169_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end81:                                         ; preds = %if.end77
  %call82 = tail call ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef %chip, ptr noundef nonnull @.str.58, i16 noundef zeroext 11904, i32 noundef 368, ptr noundef nonnull %call78, i32 noundef 2) #10
  %record_mixer_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 31
  %77 = ptrtoint ptr %record_mixer_scb to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call82, ptr %record_mixer_scb, align 4
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end81.do.end169_crit_edge, label %if.end85

if.end81.do.end169_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end85:                                         ; preds = %if.end81
  %remap_addr.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %78 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %79, i32 1128
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !329
  %nr_ac97_codecs = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 6
  %81 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_ac97_codecs, align 4
  %83 = add i32 %82, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %83)
  %84 = icmp ult i32 %83, -2
  br i1 %84, label %do.end103, label %if.end118.critedge, !prof !313

do.end103:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1339, i32 noundef 9, ptr noundef null) #10
  br label %do.end169

if.end118.critedge:                               ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp87.not = icmp eq i32 %82, 1
  %85 = tail call i32 @llvm.bswap.i32(i32 %80) #10
  %fifo_addr.0 = select i1 %cmp87.not, i16 32, i16 64
  %fifo_span.0 = select i1 %cmp87.not, i16 96, i16 16
  %valid_slots.0.v = select i1 %cmp87.not, i32 260, i32 48
  %valid_slots.0 = or i32 %valid_slots.0.v, %85
  %call127 = tail call ptr @cs46xx_dsp_create_codec_out_scb(ptr noundef %chip, ptr noundef nonnull @.str.59, i16 noundef zeroext %fifo_span.0, i16 noundef zeroext %fifo_addr.0, i16 noundef zeroext 384, i32 noundef 320, ptr noundef nonnull %call65, i32 noundef 1) #10
  %tobool128.not = icmp eq ptr %call127, null
  br i1 %tobool128.not, label %if.end118.critedge.do.end169_crit_edge, label %if.end130

if.end118.critedge.do.end169_crit_edge:           ; preds = %if.end118.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end130:                                        ; preds = %if.end118.critedge
  %call131 = tail call ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef %chip, ptr noundef nonnull @.str.60, i16 noundef zeroext 12032, i32 noundef 384, ptr noundef nonnull %call127, i32 noundef 2) #10
  %rear_mix_scb132 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 7
  %86 = ptrtoint ptr %rear_mix_scb132 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call131, ptr %rear_mix_scb132, align 4
  %tobool133.not = icmp eq ptr %call131, null
  br i1 %tobool133.not, label %if.end130.do.end169_crit_edge, label %if.end135

if.end130.do.end169_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end135:                                        ; preds = %if.end130
  %87 = ptrtoint ptr %nr_ac97_codecs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr_ac97_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp137 = icmp eq i32 %88, 2
  br i1 %cmp137, label %if.then139, label %if.else150

if.then139:                                       ; preds = %if.end135
  %call140 = tail call ptr @cs46xx_dsp_create_codec_out_scb(ptr noundef %chip, ptr noundef nonnull @.str.61, i16 noundef zeroext 48, i16 noundef zeroext 48, i16 noundef zeroext 400, i32 noundef 416, ptr noundef nonnull %call127, i32 noundef 1) #10
  %tobool141.not = icmp eq ptr %call140, null
  br i1 %tobool141.not, label %if.then139.do.end169_crit_edge, label %if.end143

if.then139.do.end169_crit_edge:                   ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end143:                                        ; preds = %if.then139
  %call144 = tail call ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef %chip, ptr noundef nonnull @.str.62, i16 noundef zeroext 12160, i32 noundef 400, ptr noundef nonnull %call140, i32 noundef 2) #10
  %center_lfe_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 8
  %89 = ptrtoint ptr %center_lfe_mix_scb to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call144, ptr %center_lfe_mix_scb, align 4
  %tobool146.not = icmp eq ptr %call144, null
  br i1 %tobool146.not, label %if.end143.do.end169_crit_edge, label %if.end148

if.end143.do.end169_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end148:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %or149 = or i32 %valid_slots.0, 72
  br label %if.end152

if.else150:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #12
  %center_lfe_mix_scb151 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 8
  %90 = ptrtoint ptr %center_lfe_mix_scb151 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call131, ptr %center_lfe_mix_scb151, align 4
  br label %if.end152

if.end152:                                        ; preds = %if.else150, %if.end148
  %clfe_codec_out_scb.0 = phi ptr [ %call140, %if.end148 ], [ %call127, %if.else150 ]
  %valid_slots.1 = phi i32 [ %or149, %if.end148 ], [ %valid_slots.0, %if.else150 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %91 = tail call i32 @llvm.bswap.i32(i32 %valid_slots.1) #10
  %92 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i370 = getelementptr i8, ptr %93, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 %91) #10, !srcloc !328
  %call153 = tail call ptr @cs46xx_dsp_create_magic_snoop_scb(ptr noundef %chip, ptr noundef nonnull @.str.63, i32 noundef 272, i16 noundef zeroext 2816, ptr noundef nonnull %call57, ptr noundef nonnull %clfe_codec_out_scb.0, i32 noundef 1) #10
  %tobool154.not = icmp eq ptr %call153, null
  br i1 %tobool154.not, label %if.end152.do.end169_crit_edge, label %if.end156

if.end152.do.end169_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end156:                                        ; preds = %if.end152
  %ref_snoop_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 33
  %94 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call153, ptr %ref_snoop_scb, align 4
  %call157 = tail call ptr @cs46xx_dsp_create_spio_write_scb(ptr noundef %chip, ptr noundef nonnull @.str.64, i32 noundef 304, ptr noundef nonnull %call153, i32 noundef 1) #10
  %tobool158.not = icmp eq ptr %call157, null
  br i1 %tobool158.not, label %if.end156.do.end169_crit_edge, label %if.end160

if.end156.do.end169_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end160:                                        ; preds = %if.end156
  %spdif_in_sample_rate = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 38
  %95 = ptrtoint ptr %spdif_in_sample_rate to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %spdif_in_sample_rate, align 4
  %call161 = tail call ptr @cs46xx_dsp_create_src_task_scb(ptr noundef %chip, ptr noundef nonnull @.str.65, i32 noundef %96, i16 noundef zeroext 1952, i16 noundef zeroext 1664, i32 noundef 160, ptr noundef nonnull %call60, i32 noundef 2, i32 noundef 1) #10
  %tobool162.not = icmp eq ptr %call161, null
  br i1 %tobool162.not, label %if.end160.do.end169_crit_edge, label %if.end164

if.end160.do.end169_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end169

if.end164:                                        ; preds = %if.end160
  %call165 = tail call i32 @cs46xx_src_unlink(ptr noundef %chip, ptr noundef nonnull %call161) #10
  %spdif_in_src = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 29
  %97 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call161, ptr %spdif_in_src, align 4
  %98 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dsp_spos_instance, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp28.i.i = icmp sgt i32 %101, 0
  br i1 %cmp28.i.i, label %for.body.lr.ph.i.i, label %if.end164.do.end.i_crit_edge

if.end164.do.end.i_crit_edge:                     ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end164
  %symbols.i.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %symbols.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %symbols.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %deleted.i.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i.i, i32 4
  %104 = ptrtoint ptr %deleted.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %deleted.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not.i.i = icmp eq i32 %105, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %symbol_name5.i.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i.i, i32 1
  %call.i.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i.i, ptr noundef nonnull dereferenceable(24) @.str.130) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %symbol_type10.i.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i.i, i32 2
  %106 = ptrtoint ptr %symbol_type10.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %symbol_type10.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp11.i.i = icmp eq i32 %107, 3
  br i1 %cmp11.i.i, label %cs46xx_dsp_lookup_symbol.exit.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.029.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %101
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.end.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

cs46xx_dsp_lookup_symbol.exit.i:                  ; preds = %land.lhs.true.i.i
  %arrayidx.le.i.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i.i
  %cmp.i = icmp eq ptr %arrayidx.le.i.i, null
  br i1 %cmp.i, label %cs46xx_dsp_lookup_symbol.exit.i.do.end.i_crit_edge, label %cs46xx_dsp_lookup_symbol.exit.i.for.body.i8.i_crit_edge

cs46xx_dsp_lookup_symbol.exit.i.for.body.i8.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit.i
  br label %for.body.i8.i

cs46xx_dsp_lookup_symbol.exit.i.do.end.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %cs46xx_dsp_lookup_symbol.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end164.do.end.i_crit_edge
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %108 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %109, i32 0, i32 27
  %110 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.131) #15
  br label %cleanup

for.body.i8.i:                                    ; preds = %for.inc.i18.i.for.body.i8.i_crit_edge, %cs46xx_dsp_lookup_symbol.exit.i.for.body.i8.i_crit_edge
  %i.029.i5.i = phi i32 [ %inc.i16.i, %for.inc.i18.i.for.body.i8.i_crit_edge ], [ 0, %cs46xx_dsp_lookup_symbol.exit.i.for.body.i8.i_crit_edge ]
  %deleted.i6.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i5.i, i32 4
  %112 = ptrtoint ptr %deleted.i6.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %deleted.i6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i7.i = icmp eq i32 %113, 0
  br i1 %tobool.not.i7.i, label %if.end.i12.i, label %for.body.i8.i.for.inc.i18.i_crit_edge

for.body.i8.i.for.inc.i18.i_crit_edge:            ; preds = %for.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18.i

if.end.i12.i:                                     ; preds = %for.body.i8.i
  %symbol_name5.i9.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i5.i, i32 1
  %call.i10.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i9.i, ptr noundef nonnull dereferenceable(11) @.str.133) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool6.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool6.not.i11.i, label %land.lhs.true.i15.i, label %if.end.i12.i.for.inc.i18.i_crit_edge

if.end.i12.i.for.inc.i18.i_crit_edge:             ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18.i

land.lhs.true.i15.i:                              ; preds = %if.end.i12.i
  %symbol_type10.i13.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i5.i, i32 2
  %114 = ptrtoint ptr %symbol_type10.i13.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %symbol_type10.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp11.i14.i = icmp eq i32 %115, 3
  br i1 %cmp11.i14.i, label %cs46xx_dsp_lookup_symbol.exit22.i, label %land.lhs.true.i15.i.for.inc.i18.i_crit_edge

land.lhs.true.i15.i.for.inc.i18.i_crit_edge:      ; preds = %land.lhs.true.i15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i18.i

for.inc.i18.i:                                    ; preds = %land.lhs.true.i15.i.for.inc.i18.i_crit_edge, %if.end.i12.i.for.inc.i18.i_crit_edge, %for.body.i8.i.for.inc.i18.i_crit_edge
  %inc.i16.i = add nuw nsw i32 %i.029.i5.i, 1
  %exitcond.not.i17.i = icmp eq i32 %inc.i16.i, %101
  br i1 %exitcond.not.i17.i, label %for.inc.i18.i.do.end6.i_crit_edge, label %for.inc.i18.i.for.body.i8.i_crit_edge

for.inc.i18.i.for.body.i8.i_crit_edge:            ; preds = %for.inc.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i8.i

for.inc.i18.i.do.end6.i_crit_edge:                ; preds = %for.inc.i18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

cs46xx_dsp_lookup_symbol.exit22.i:                ; preds = %land.lhs.true.i15.i
  %arrayidx.le.i19.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i5.i
  %cmp2.i = icmp eq ptr %arrayidx.le.i19.i, null
  br i1 %cmp2.i, label %cs46xx_dsp_lookup_symbol.exit22.i.do.end6.i_crit_edge, label %cs46xx_dsp_lookup_symbol.exit22.i.for.body.i30.i_crit_edge

cs46xx_dsp_lookup_symbol.exit22.i.for.body.i30.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit22.i
  br label %for.body.i30.i

cs46xx_dsp_lookup_symbol.exit22.i.do.end6.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %cs46xx_dsp_lookup_symbol.exit22.i.do.end6.i_crit_edge, %for.inc.i18.i.do.end6.i_crit_edge
  %card7.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %116 = ptrtoint ptr %card7.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %card7.i, align 4
  %dev8.i = getelementptr inbounds %struct.snd_card, ptr %117, i32 0, i32 27
  %118 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev8.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.135) #15
  br label %cleanup

for.body.i30.i:                                   ; preds = %for.inc.i40.i.for.body.i30.i_crit_edge, %cs46xx_dsp_lookup_symbol.exit22.i.for.body.i30.i_crit_edge
  %i.029.i27.i = phi i32 [ %inc.i38.i, %for.inc.i40.i.for.body.i30.i_crit_edge ], [ 0, %cs46xx_dsp_lookup_symbol.exit22.i.for.body.i30.i_crit_edge ]
  %deleted.i28.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i27.i, i32 4
  %120 = ptrtoint ptr %deleted.i28.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %deleted.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i29.i = icmp eq i32 %121, 0
  br i1 %tobool.not.i29.i, label %if.end.i34.i, label %for.body.i30.i.for.inc.i40.i_crit_edge

for.body.i30.i.for.inc.i40.i_crit_edge:           ; preds = %for.body.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i40.i

if.end.i34.i:                                     ; preds = %for.body.i30.i
  %symbol_name5.i31.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i27.i, i32 1
  %call.i32.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i31.i, ptr noundef nonnull dereferenceable(11) @.str.137) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32.i)
  %tobool6.not.i33.i = icmp eq i32 %call.i32.i, 0
  br i1 %tobool6.not.i33.i, label %land.lhs.true.i37.i, label %if.end.i34.i.for.inc.i40.i_crit_edge

if.end.i34.i.for.inc.i40.i_crit_edge:             ; preds = %if.end.i34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i40.i

land.lhs.true.i37.i:                              ; preds = %if.end.i34.i
  %symbol_type10.i35.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i27.i, i32 2
  %122 = ptrtoint ptr %symbol_type10.i35.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %symbol_type10.i35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %123)
  %cmp11.i36.i = icmp eq i32 %123, 3
  br i1 %cmp11.i36.i, label %cs46xx_dsp_lookup_symbol.exit44.i, label %land.lhs.true.i37.i.for.inc.i40.i_crit_edge

land.lhs.true.i37.i.for.inc.i40.i_crit_edge:      ; preds = %land.lhs.true.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i40.i

for.inc.i40.i:                                    ; preds = %land.lhs.true.i37.i.for.inc.i40.i_crit_edge, %if.end.i34.i.for.inc.i40.i_crit_edge, %for.body.i30.i.for.inc.i40.i_crit_edge
  %inc.i38.i = add nuw nsw i32 %i.029.i27.i, 1
  %exitcond.not.i39.i = icmp eq i32 %inc.i38.i, %101
  br i1 %exitcond.not.i39.i, label %for.inc.i40.i.do.end15.i_crit_edge, label %for.inc.i40.i.for.body.i30.i_crit_edge

for.inc.i40.i.for.body.i30.i_crit_edge:           ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i30.i

for.inc.i40.i.do.end15.i_crit_edge:               ; preds = %for.inc.i40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

cs46xx_dsp_lookup_symbol.exit44.i:                ; preds = %land.lhs.true.i37.i
  %arrayidx.le.i41.i = getelementptr %struct.dsp_symbol_entry, ptr %103, i32 %i.029.i27.i
  %cmp11.i372 = icmp eq ptr %arrayidx.le.i41.i, null
  br i1 %cmp11.i372, label %cs46xx_dsp_lookup_symbol.exit44.i.do.end15.i_crit_edge, label %if.end18.i

cs46xx_dsp_lookup_symbol.exit44.i.do.end15.i_crit_edge: ; preds = %cs46xx_dsp_lookup_symbol.exit44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15.i

do.end15.i:                                       ; preds = %cs46xx_dsp_lookup_symbol.exit44.i.do.end15.i_crit_edge, %for.inc.i40.i.do.end15.i_crit_edge
  %card16.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %124 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %card16.i, align 4
  %dev17.i = getelementptr inbounds %struct.snd_card, ptr %125, i32 0, i32 27
  %126 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev17.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.139) #15
  br label %cleanup

if.end18.i:                                       ; preds = %cs46xx_dsp_lookup_symbol.exit44.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spdifo_scb.i) #10
  %128 = getelementptr inbounds i8, ptr %spdifo_scb.i, i32 40
  %129 = call ptr @memset(ptr %128, i32 255, i32 24)
  %130 = ptrtoint ptr %spdifo_scb.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -559038227, ptr %spdifo_scb.i, align 4
  %free3.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 1
  %131 = ptrtoint ptr %free3.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 176, ptr %free3.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 1, i32 1
  %132 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %arrayinit.element.i, align 4
  %arrayinit.element19.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 1, i32 2
  %133 = ptrtoint ptr %arrayinit.element19.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %arrayinit.element19.i, align 4
  %arrayinit.element20.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %arrayinit.element20.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %arrayinit.element20.i, align 4
  %strm_rs_config.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 2
  %135 = ptrtoint ptr %strm_rs_config.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 133, ptr %strm_rs_config.i, align 4
  %strm_buf_ptr.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 3
  %136 = ptrtoint ptr %strm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 268500988, ptr %strm_buf_ptr.i, align 4
  %free5.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 4
  %sub_list_ptr.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 7
  %137 = ptrtoint ptr %free5.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 8)
  store i64 0, ptr %free5.i, align 4
  %138 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 1536, ptr %sub_list_ptr.i, align 4
  %next_scb.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 8
  %139 = ptrtoint ptr %next_scb.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 0, ptr %next_scb.i, align 2
  %140 = ptrtoint ptr %arrayidx.le.i19.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.le.i19.i, align 4
  %conv.i = trunc i32 %141 to i16
  %142 = ptrtoint ptr %128 to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %conv.i, ptr %128, align 4
  %entry_point.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 10
  %143 = ptrtoint ptr %entry_point.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 3021, ptr %entry_point.i, align 2
  %free6.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 11
  %144 = ptrtoint ptr %free6.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 64, ptr %free6.i, align 4
  %arrayinit.element22.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 11, i32 1
  %145 = ptrtoint ptr %arrayinit.element22.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8447, ptr %arrayinit.element22.i, align 4
  %fifo_pointer.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 12
  %146 = ptrtoint ptr %fifo_pointer.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -32692, ptr %fifo_pointer.i, align 4
  %stat_reg_addr.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 13
  %147 = ptrtoint ptr %stat_reg_addr.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 0, ptr %stat_reg_addr.i, align 2
  %st_mo_format.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 14
  %148 = ptrtoint ptr %st_mo_format.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 264, ptr %st_mo_format.i, align 4
  %fifo_base_addr.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 15
  %149 = ptrtoint ptr %fifo_base_addr.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 1, ptr %fifo_base_addr.i, align 2
  %free1.i = getelementptr inbounds %struct.dsp_spdifoscb, ptr %spdifo_scb.i, i32 0, i32 16
  %150 = ptrtoint ptr %free1.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 -559038227, ptr %free1.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spdifi_scb.i) #10
  %151 = getelementptr inbounds i8, ptr %spdifi_scb.i, i32 40
  %152 = call ptr @memset(ptr %151, i32 255, i32 24)
  %153 = ptrtoint ptr %spdifi_scb.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -16147, ptr %spdifi_scb.i, align 4
  %status_ptr.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 1
  %154 = ptrtoint ptr %status_ptr.i to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 -8531, ptr %status_ptr.i, align 2
  %current_total.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 2
  %155 = ptrtoint ptr %current_total.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %current_total.i, align 4
  %previous_total.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 3
  %156 = ptrtoint ptr %previous_total.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %previous_total.i, align 4
  %count_limit.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 4
  %157 = ptrtoint ptr %count_limit.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %count_limit.i, align 4
  %count.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 5
  %158 = ptrtoint ptr %count.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 4000, ptr %count.i, align 2
  %status_data.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 6
  %159 = ptrtoint ptr %status_data.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -559038227, ptr %status_data.i, align 4
  %free423.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 7
  %160 = ptrtoint ptr %free423.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %free423.i, align 4
  %status24.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 8
  %161 = ptrtoint ptr %status24.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -8531, ptr %status24.i, align 2
  %free325.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 9
  %162 = ptrtoint ptr %free325.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 -559038227, ptr %free325.i, align 4
  %bit_count.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 10
  %163 = ptrtoint ptr %bit_count.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 -8531, ptr %bit_count.i, align 4
  %free226.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 11
  %164 = ptrtoint ptr %free226.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 2989, ptr %free226.i, align 2
  %temp_status.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 12
  %165 = ptrtoint ptr %temp_status.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 -559038227, ptr %temp_status.i, align 4
  %sub_list_ptr27.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 13
  %166 = ptrtoint ptr %sub_list_ptr27.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 3008, ptr %sub_list_ptr27.i, align 4
  %next_SCB.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 14
  %167 = ptrtoint ptr %next_SCB.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 0, ptr %next_SCB.i, align 2
  %168 = ptrtoint ptr %arrayidx.le.i41.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.le.i41.i, align 4
  %conv30.i = trunc i32 %169 to i16
  %170 = ptrtoint ptr %151 to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv30.i, ptr %151, align 4
  %entry_point31.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 16
  %171 = ptrtoint ptr %entry_point31.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 3005, ptr %entry_point31.i, align 2
  %strm_rs_config32.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 17
  %172 = ptrtoint ptr %strm_rs_config32.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 132, ptr %strm_rs_config32.i, align 4
  %strm_buf_ptr33.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 18
  %173 = ptrtoint ptr %strm_buf_ptr33.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 234946556, ptr %strm_buf_ptr33.i, align 4
  %fifo_pointer34.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 19
  %174 = ptrtoint ptr %fifo_pointer34.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 -32696, ptr %fifo_pointer34.i, align 4
  %stat_reg_addr35.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 20
  %175 = ptrtoint ptr %stat_reg_addr35.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %stat_reg_addr35.i, align 2
  %st_mo_format36.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 21
  %176 = ptrtoint ptr %st_mo_format36.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 496, ptr %st_mo_format36.i, align 4
  %fifo_base_addr37.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 22
  %177 = ptrtoint ptr %fifo_base_addr37.i to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 1, ptr %fifo_base_addr37.i, align 2
  %free138.i = getelementptr inbounds %struct.dsp_spdifiscb, ptr %spdifi_scb.i, i32 0, i32 23
  %178 = ptrtoint ptr %free138.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 -559038227, ptr %free138.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %async_codec_input_scb.i) #10
  %179 = getelementptr inbounds i8, ptr %async_codec_input_scb.i, i32 40
  %180 = call ptr @memset(ptr %179, i32 255, i32 24)
  %181 = ptrtoint ptr %async_codec_input_scb.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 -559038227, ptr %async_codec_input_scb.i, align 4
  %io_current_total.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 1
  %182 = ptrtoint ptr %io_current_total.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %io_current_total.i, align 4
  %io_previous_total.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 2
  %183 = ptrtoint ptr %io_previous_total.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %io_previous_total.i, align 4
  %io_count.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 3
  %184 = ptrtoint ptr %io_count.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 1, ptr %io_count.i, align 4
  %io_count_limit.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 4
  %185 = ptrtoint ptr %io_count_limit.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 4000, ptr %io_count_limit.i, align 2
  %o_fifo_base_addr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 5
  %186 = ptrtoint ptr %o_fifo_base_addr.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 280, ptr %o_fifo_base_addr.i, align 4
  %ost_mo_format.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 6
  %187 = ptrtoint ptr %ost_mo_format.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 1, ptr %ost_mo_format.i, align 2
  %ostrm_rs_config.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 7
  %188 = ptrtoint ptr %ostrm_rs_config.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 131, ptr %ostrm_rs_config.i, align 4
  %ostrm_buf_ptr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 8
  %189 = ptrtoint ptr %ostrm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 167837692, ptr %ostrm_buf_ptr.i, align 4
  %io_io_enable.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 9
  %190 = ptrtoint ptr %io_io_enable.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 -8531, ptr %io_io_enable.i, align 4
  %io_sclks_per_lr_clk.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 10
  %191 = ptrtoint ptr %io_sclks_per_lr_clk.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 3, ptr %io_sclks_per_lr_clk.i, align 2
  %io_free4.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 11
  %192 = ptrtoint ptr %io_free4.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 -559038227, ptr %io_free4.i, align 4
  %io_sub_list_ptr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 12
  %193 = ptrtoint ptr %io_sub_list_ptr.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 2992, ptr %io_sub_list_ptr.i, align 4
  %io_next_scb.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 13
  %194 = ptrtoint ptr %io_next_scb.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %io_next_scb.i, align 2
  %195 = ptrtoint ptr %arrayidx.le.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx.le.i.i, align 4
  %conv40.i = trunc i32 %196 to i16
  %197 = ptrtoint ptr %179 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv40.i, ptr %179, align 4
  %io_entry_point.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 15
  %198 = ptrtoint ptr %io_entry_point.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 2989, ptr %io_entry_point.i, align 2
  %istrm_rs_config.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 16
  %199 = ptrtoint ptr %istrm_rs_config.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 195, ptr %istrm_rs_config.i, align 4
  %istrm_buf_ptr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 17
  %200 = ptrtoint ptr %istrm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 167772160, ptr %istrm_buf_ptr.i, align 4
  %iofifo_pointer.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 18
  %201 = ptrtoint ptr %iofifo_pointer.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 -32702, ptr %iofifo_pointer.i, align 4
  %io_stat_reg_addr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 19
  %202 = ptrtoint ptr %io_stat_reg_addr.i to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 0, ptr %io_stat_reg_addr.i, align 2
  %ist_mo_format.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 20
  %203 = ptrtoint ptr %ist_mo_format.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 256, ptr %ist_mo_format.i, align 4
  %ififo_base_addr.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 21
  %204 = ptrtoint ptr %ififo_base_addr.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 1, ptr %ififo_base_addr.i, align 2
  %i_free.i = getelementptr inbounds %struct.dsp_async_codec_input_scb, ptr %async_codec_input_scb.i, i32 0, i32 22
  %205 = ptrtoint ptr %i_free.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 0, ptr %i_free.i, align 4
  %call41.i = call ptr @cs46xx_dsp_create_scb(ptr noundef %chip, ptr noundef nonnull @.str.141, ptr noundef nonnull %spdifo_scb.i, i32 noundef 3008) #10
  %tobool.not.i373 = icmp eq ptr %call41.i, null
  br i1 %tobool.not.i373, label %if.end18.i.cleanup.i_crit_edge, label %if.end69.i, !prof !313

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end69.i:                                       ; preds = %if.end18.i
  %call70.i = call ptr @cs46xx_dsp_create_scb(ptr noundef %chip, ptr noundef nonnull @.str.142, ptr noundef nonnull %spdifi_scb.i, i32 noundef 2992) #10
  %tobool72.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool72.not.i, label %if.end69.i.cleanup.i_crit_edge, label %if.end106.i, !prof !313

if.end69.i.cleanup.i_crit_edge:                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end106.i:                                      ; preds = %if.end69.i
  %call107.i = call ptr @cs46xx_dsp_create_scb(ptr noundef %chip, ptr noundef nonnull @.str.143, ptr noundef nonnull %async_codec_input_scb.i, i32 noundef 2976) #10
  %tobool109.not.i = icmp eq ptr %call107.i, null
  br i1 %tobool109.not.i, label %if.end106.i.cleanup.i_crit_edge, label %if.end143.i, !prof !313

if.end106.i.cleanup.i_crit_edge:                  ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end143.i:                                      ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call107.i, i32 0, i32 6
  %206 = ptrtoint ptr %parent_scb_ptr.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %parent_scb_ptr.i, align 4
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call107.i, i32 0, i32 5
  %207 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %call70.i, ptr %next_scb_ptr.i, align 4
  %the_null_scb.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %99, i32 0, i32 20
  %208 = ptrtoint ptr %the_null_scb.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %the_null_scb.i, align 4
  %sub_list_ptr144.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call107.i, i32 0, i32 4
  %210 = ptrtoint ptr %sub_list_ptr144.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %sub_list_ptr144.i, align 4
  %task_entry.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call107.i, i32 0, i32 7
  %211 = ptrtoint ptr %task_entry.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %arrayidx.le.i.i, ptr %task_entry.i, align 4
  %parent_scb_ptr145.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call70.i, i32 0, i32 6
  %212 = ptrtoint ptr %parent_scb_ptr145.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call107.i, ptr %parent_scb_ptr145.i, align 4
  %next_scb_ptr146.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call70.i, i32 0, i32 5
  %213 = ptrtoint ptr %next_scb_ptr146.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call41.i, ptr %next_scb_ptr146.i, align 4
  %214 = load ptr, ptr %the_null_scb.i, align 4
  %sub_list_ptr148.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call70.i, i32 0, i32 4
  %215 = ptrtoint ptr %sub_list_ptr148.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %214, ptr %sub_list_ptr148.i, align 4
  %task_entry149.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call70.i, i32 0, i32 7
  %216 = ptrtoint ptr %task_entry149.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %arrayidx.le.i41.i, ptr %task_entry149.i, align 4
  %parent_scb_ptr150.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call41.i, i32 0, i32 6
  %217 = ptrtoint ptr %parent_scb_ptr150.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %call70.i, ptr %parent_scb_ptr150.i, align 4
  %next_scb_ptr151.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call41.i, i32 0, i32 5
  %218 = ptrtoint ptr %next_scb_ptr151.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call56, ptr %next_scb_ptr151.i, align 4
  %219 = load ptr, ptr %the_null_scb.i, align 4
  %sub_list_ptr153.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call41.i, i32 0, i32 4
  %220 = ptrtoint ptr %sub_list_ptr153.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %219, ptr %sub_list_ptr153.i, align 4
  %task_entry154.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call41.i, i32 0, i32 7
  %221 = ptrtoint ptr %task_entry154.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %arrayidx.le.i19.i, ptr %task_entry154.i, align 4
  %parent_scb_ptr155.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call56, i32 0, i32 6
  %222 = ptrtoint ptr %parent_scb_ptr155.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %call41.i, ptr %parent_scb_ptr155.i, align 4
  call void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef nonnull %call41.i) #10
  call void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef nonnull %call70.i) #10
  call void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef nonnull %call107.i) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  call void @arm_heavy_mb() #10
  %223 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %224, i32 1188
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #10, !srcloc !328
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %async_codec_input_scb.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spdifi_scb.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spdifo_scb.i) #10
  br label %cleanup

cleanup.i:                                        ; preds = %if.end106.i.cleanup.i_crit_edge, %if.end69.i.cleanup.i_crit_edge, %if.end18.i.cleanup.i_crit_edge
  %.sink.i = phi i32 [ 1583, %if.end18.i.cleanup.i_crit_edge ], [ 1586, %if.end69.i.cleanup.i_crit_edge ], [ 1589, %if.end106.i.cleanup.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %async_codec_input_scb.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spdifi_scb.i) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spdifo_scb.i) #10
  br label %cleanup

do.end169:                                        ; preds = %if.end160.do.end169_crit_edge, %if.end156.do.end169_crit_edge, %if.end152.do.end169_crit_edge, %if.end143.do.end169_crit_edge, %if.then139.do.end169_crit_edge, %if.end130.do.end169_crit_edge, %if.end118.critedge.do.end169_crit_edge, %do.end103, %if.end81.do.end169_crit_edge, %if.end77.do.end169_crit_edge, %if.end73.do.end169_crit_edge, %if.end68.do.end169_crit_edge, %if.end64.do.end169_crit_edge, %if.end59.do.end169_crit_edge, %if.end37.do.end169_crit_edge
  %card170 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %225 = ptrtoint ptr %card170 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %card170, align 4
  %dev171 = getelementptr inbounds %struct.snd_card, ptr %226, i32 0, i32 27
  %227 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev171, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %228, ptr noundef nonnull @.str.67) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end169, %cleanup.i, %if.end143.i, %do.end15.i, %do.end6.i, %do.end.i, %do.end34, %do.end25, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end7 ], [ -5, %do.end16 ], [ -5, %do.end25 ], [ -5, %do.end34 ], [ -22, %do.end169 ], [ 0, %do.end.i ], [ 0, %do.end6.i ], [ 0, %do.end15.i ], [ 0, %if.end143.i ], [ 0, %cleanup.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cs46xx_dsp_create_task_tree(ptr nocapture noundef readonly %chip, ptr noundef %name, ptr noundef %task_data, i32 noundef %dest, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance.i, align 4
  %ntask.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %ntask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ntask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %3)
  %cmp.i = icmp eq i32 %3, 49
  br i1 %cmp.i, label %_map_task_tree.exit.thread, label %if.end.i

_map_task_tree.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %4 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.127) #15
  br label %do.end

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %name, null
  %arrayidx5.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %3
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @strcpy(ptr noundef %arrayidx5.i, ptr noundef nonnull %name) #16
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = call ptr @memcpy(ptr %arrayidx5.i, ptr @.str.129, i32 7)
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %if.then1.i
  %tasks10.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 22
  %9 = ptrtoint ptr %ntask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ntask.i, align 4
  %address.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %10, i32 2
  %11 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dest, ptr %address.i, align 4
  %12 = load i32, ptr %ntask.i, align 4
  %size16.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %12, i32 1
  %13 = ptrtoint ptr %size16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %size, ptr %size16.i, align 4
  %14 = load i32, ptr %ntask.i, align 4
  %index.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %14, i32 3
  %15 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %index.i, align 4
  %16 = load i32, ptr %ntask.i, align 4
  %add.ptr.i = getelementptr %struct.dsp_task_descriptor, ptr %tasks10.i, i32 %16
  %inc.i = add i32 %16, 1
  store i32 %inc.i, ptr %ntask.i, align 4
  br i1 %tobool.not.i, label %if.end9.i._map_task_tree.exit_crit_edge, label %if.then26.i

if.end9.i._map_task_tree.exit_crit_edge:          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_map_task_tree.exit

if.then26.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call fastcc ptr @add_symbol(ptr noundef %chip, ptr noundef nonnull %name, i32 noundef %dest) #10
  br label %_map_task_tree.exit

_map_task_tree.exit:                              ; preds = %if.then26.i, %if.end9.i._map_task_tree.exit_crit_edge
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %_map_task_tree.exit.do.end_crit_edge, label %if.then

_map_task_tree.exit.do.end_crit_edge:             ; preds = %_map_task_tree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %_map_task_tree.exit
  %data = getelementptr %struct.dsp_task_descriptor, ptr %tasks10.i, i32 %16, i32 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %task_data, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp18.i = icmp sgt i32 %size, 0
  br i1 %cmp18.i, label %do.body.lr.ph.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.lr.ph.i:                                  ; preds = %if.then
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i, align 4
  %mul.i = shl i32 %dest, 2
  %add.ptr1.i = getelementptr i8, ptr %20, i32 %mul.i
  %card.i8 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  br label %do.body.i

do.body.i:                                        ; preds = %do.body5.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %spdst.021.i = phi ptr [ %add.ptr1.i, %do.body.lr.ph.i ], [ %add.ptr9.i, %do.body5.i.do.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i10, %do.body5.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dsp_create_task_tree.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_task_tree, %if.then.i)) #10
          to label %do.body5.i [label %if.then.i], !srcloc !314

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %card.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card.i8, align 4
  %dev.i9 = getelementptr inbounds %struct.snd_card, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i9, align 8
  %arrayidx4.i = getelementptr i32, ptr %task_data, i32 %i.019.i
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dsp_create_task_tree.__UNIQUE_ID_ddebug252, ptr noundef %24, ptr noundef nonnull @.str.124, ptr noundef %spdst.021.i, i32 noundef %26) #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i = getelementptr i32, ptr %task_data, i32 %i.019.i
  %27 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx8.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spdst.021.i, i32 %29) #10, !srcloc !328
  %add.ptr9.i = getelementptr i8, ptr %spdst.021.i, i32 4
  %inc.i10 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i10, %size
  br i1 %exitcond.not.i, label %do.body5.i.if.end_crit_edge, label %do.body5.i.do.body.i_crit_edge

do.body5.i.do.body.i_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body5.i.if.end_crit_edge:                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %_map_task_tree.exit.do.end_crit_edge, %_map_task_tree.exit.thread
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.125) #15
  br label %if.end

if.end:                                           ; preds = %do.end, %do.body5.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %retval.0.i13 = phi ptr [ null, %do.end ], [ %add.ptr.i, %if.then.if.end_crit_edge ], [ %add.ptr.i, %do.body5.i.if.end_crit_edge ]
  ret ptr %retval.0.i13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_timing_master_scb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_codec_out_scb(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_codec_in_scb(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_mix_to_ostream_scb(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_vari_decimate_scb(ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_magic_snoop_scb(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_spio_write_scb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_src_task_scb(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_src_unlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_enable_spdif_hw(ptr nocapture noundef readonly %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %remap_addr.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #10, !srcloc !328
  %call.i = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32845, i32 noundef 0) #10
  %call1.i = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32910, i32 noundef 0) #10
  %call2.i = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32842, i32 noundef 0) #10
  %spdif_status_out.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %spdif_status_out.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_status_out.i, align 4
  %and.i = and i32 %5, -5
  store i32 %and.i, ptr %spdif_status_out.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 10737400) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !330
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 8454144) #10, !srcloc !328
  %call = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32845, i32 noundef -2147483648)
  %spdif_csuv_default = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %spdif_csuv_default, align 4
  %call1 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32910, i32 noundef %10)
  %11 = ptrtoint ptr %spdif_status_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spdif_status_out.i, align 4
  %or = or i32 %12, 4
  store i32 %or, ptr %spdif_status_out.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_poke_via_dsp(ptr nocapture noundef readonly %chip, i32 noundef %address, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %address, -36864
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %0)
  %1 = icmp ult i32 %0, -4096
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl nuw i32 %address, 16
  %or = or i32 %shl, %address
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %2 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #10, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %5 = tail call i32 @llvm.bswap.i32(i32 %data) #10
  %6 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %7, i32 1220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %5) #10, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %9, i32 1224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %5) #10, !srcloc !328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %11, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 12289) #10, !srcloc !328
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.035 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 26843500) #10
  %13 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %14, i32 1240
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #10, !srcloc !316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !333
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %16 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.72) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_enable_spdif_in(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_ctrl, align 4
  tail call void %3(ptr noundef %chip, i32 noundef 1) #10
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 19
  %4 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %amplifier_ctrl, align 4
  tail call void %5(ptr noundef %chip, i32 noundef 1) #10
  %asynch_rx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 30
  %6 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asynch_rx_scb, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !315

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1675, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %spdif_in_src = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 29
  %8 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spdif_in_src, align 4
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %do.end42, label %if.end58, !prof !313

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1677, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end63_crit_edge

if.end58.if.end63_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32832, i32 noundef -2147483643)
  %call61 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32841, i32 noundef -2147482625)
  %12 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spdif_status_out, align 4
  %or = or i32 %13, 8
  store i32 %or, ptr %spdif_status_out, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end58.if.end63_crit_edge
  %14 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spdif_in_src, align 4
  %call65 = tail call ptr @cs46xx_dsp_create_asynch_fg_rx_scb(ptr noundef %chip, ptr noundef nonnull @.str.69, i32 noundef 240, i16 noundef zeroext 2992, i16 noundef zeroext 3584, ptr noundef %15, i32 noundef 2) #10
  %16 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call65, ptr %asynch_rx_scb, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #10
  %17 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %spdif_in_src, align 4
  %call68 = tail call i32 @cs46xx_src_link(ptr noundef %chip, ptr noundef %18) #10
  %19 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spdif_in_src, align 4
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %22, 2
  %shl3.i = add i32 %add.i, 56
  %shr.i.i = lshr i32 %shl3.i, 16
  %and.i.i = and i32 %shl3.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %23 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 8388736) #10, !srcloc !328
  %25 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %address.i, align 4
  %add6.i = shl i32 %26, 2
  %shl7.i = add i32 %add6.i, 60
  %shr.i18.i = lshr i32 %shl7.i, 16
  %and.i19.i = and i32 %shl7.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i21.i = add nuw nsw i32 %shr.i18.i, 1
  %remap_addr.i22.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i21.i, i32 2
  %27 = ptrtoint ptr %remap_addr.i22.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remap_addr.i22.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %28, i32 %and.i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 8388736) #10, !srcloc !328
  %volume_set.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %20, i32 0, i32 12
  %29 = ptrtoint ptr %volume_set.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %volume_set.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %volume_set.i, align 4
  %volume.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %20, i32 0, i32 11
  %30 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 32767, ptr %volume.i, align 4
  %arrayidx9.i = getelementptr %struct.dsp_scb_descriptor, ptr %20, i32 0, i32 11, i32 1
  %31 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 32767, ptr %arrayidx9.i, align 2
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #10
  %spdif_status_in = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 24
  %32 = ptrtoint ptr %spdif_status_in to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %spdif_status_in, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %if.end63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_asynch_fg_rx_scb(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_src_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_disable_spdif_in(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %asynch_rx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asynch_rx_scb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !313

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1733, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  %spdif_in_src = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 29
  %4 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spdif_in_src, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %do.end43, label %if.end59, !prof !313

do.end43:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1735, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asynch_rx_scb, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %7) #10
  %8 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %asynch_rx_scb, align 4
  %9 = ptrtoint ptr %spdif_in_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spdif_in_src, align 4
  %call = tail call i32 @cs46xx_src_unlink(ptr noundef %chip, ptr noundef %10) #10
  %spdif_status_in = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %spdif_status_in to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %spdif_status_in, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  %active_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 20
  %12 = ptrtoint ptr %active_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %active_ctrl, align 4
  tail call void %13(ptr noundef %chip, i32 noundef -1) #10
  %amplifier_ctrl = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 19
  %14 = ptrtoint ptr %amplifier_ctrl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %amplifier_ctrl, align 4
  tail call void %15(ptr noundef %chip, i32 noundef -1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end43 ], [ 0, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cs46xx_dsp_remove_scb(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_enable_pcm_capture(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %pcm_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %pcm_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm_input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !315

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1761, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %ref_snoop_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 33
  %4 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ref_snoop_scb, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end42, label %if.end58, !prof !313

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1763, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ref_snoop_scb, align 4
  %call = tail call ptr @cs46xx_add_record_source(ptr noundef %chip, ptr noundef %7, i16 noundef zeroext 352, ptr noundef nonnull @.str.70) #10
  %8 = ptrtoint ptr %pcm_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %pcm_input, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_add_record_source(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_disable_pcm_capture(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %pcm_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %pcm_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcm_input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !313

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1778, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %pcm_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm_input, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %5) #10
  %6 = ptrtoint ptr %pcm_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pcm_input, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_enable_adc_capture(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %adc_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %adc_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc_input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !315

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1793, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end22:                                         ; preds = %entry
  %codec_in_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %codec_in_scb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %codec_in_scb, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end42, label %if.end58, !prof !313

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1795, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %6 = ptrtoint ptr %codec_in_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %codec_in_scb, align 4
  %call = tail call ptr @cs46xx_add_record_source(ptr noundef %chip, ptr noundef %7, i16 noundef zeroext 192, ptr noundef nonnull @.str.71) #10
  %8 = ptrtoint ptr %adc_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %adc_input, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %if.end58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_disable_adc_capture(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %adc_input = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 37
  %2 = ptrtoint ptr %adc_input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc_input, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !313

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1810, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %4 = ptrtoint ptr %adc_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adc_input, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %5) #10
  %6 = ptrtoint ptr %adc_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %adc_input, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_set_dac_volume(ptr noundef %chip, i16 noundef zeroext %left, i16 noundef zeroext %right) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master_mix_scb, align 4
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %scb.052 = load ptr, ptr %sub_list_ptr, align 4
  %5 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %the_null_scb, align 4
  %cmp.not53 = icmp eq ptr %scb.052, %6
  br i1 %cmp.not53, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %7 = xor i16 %left, -1
  %sub.i = zext i16 %7 to i32
  %shl.i = shl nuw i32 %sub.i, 16
  %8 = xor i16 %right, -1
  %sub2.i = zext i16 %8 to i32
  %or.i = or i32 %shl.i, %sub2.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %scb.054 = phi ptr [ %scb.052, %while.body.lr.ph ], [ %scb.0, %while.body.while.body_crit_edge ]
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.054, i32 0, i32 1
  %10 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %11, 2
  %shl3.i = add i32 %add.i, 56
  %shr.i.i = lshr i32 %shl3.i, 16
  %and.i.i = and i32 %shl3.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %12 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #10, !srcloc !328
  %14 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address.i, align 4
  %add6.i = shl i32 %15, 2
  %shl7.i = add i32 %add6.i, 60
  %shr.i18.i = lshr i32 %shl7.i, 16
  %and.i19.i = and i32 %shl7.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i21.i = add nuw nsw i32 %shr.i18.i, 1
  %remap_addr.i22.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i21.i, i32 2
  %16 = ptrtoint ptr %remap_addr.i22.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remap_addr.i22.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %17, i32 %and.i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %9) #10, !srcloc !328
  %volume_set.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.054, i32 0, i32 12
  %18 = ptrtoint ptr %volume_set.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i = load i8, ptr %volume_set.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %volume_set.i, align 4
  %volume.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.054, i32 0, i32 11
  %19 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %left, ptr %volume.i, align 4
  %arrayidx9.i = getelementptr %struct.dsp_scb_descriptor, ptr %scb.054, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %right, ptr %arrayidx9.i, align 2
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.054, i32 0, i32 5
  %21 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %scb.0 = load ptr, ptr %next_scb_ptr, align 4
  %22 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %the_null_scb, align 4
  %cmp.not = icmp eq ptr %scb.0, %23
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %rear_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %rear_mix_scb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rear_mix_scb, align 4
  %sub_list_ptr1 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %sub_list_ptr1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %scb.155 = load ptr, ptr %sub_list_ptr1, align 4
  %27 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %the_null_scb, align 4
  %cmp4.not56 = icmp eq ptr %scb.155, %28
  br i1 %cmp4.not56, label %while.end.while.end7_crit_edge, label %while.body5.lr.ph

while.end.while.end7_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end7

while.body5.lr.ph:                                ; preds = %while.end
  %29 = xor i16 %left, -1
  %sub.i27 = zext i16 %29 to i32
  %shl.i28 = shl nuw i32 %sub.i27, 16
  %30 = xor i16 %right, -1
  %sub2.i29 = zext i16 %30 to i32
  %or.i30 = or i32 %shl.i28, %sub2.i29
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i30) #10
  %region.i.i36 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  br label %while.body5

while.body5:                                      ; preds = %while.body5.while.body5_crit_edge, %while.body5.lr.ph
  %scb.157 = phi ptr [ %scb.155, %while.body5.lr.ph ], [ %scb.1, %while.body5.while.body5_crit_edge ]
  %address.i31 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.157, i32 0, i32 1
  %32 = ptrtoint ptr %address.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address.i31, align 4
  %add.i32 = shl i32 %33, 2
  %shl3.i33 = add i32 %add.i32, 56
  %shr.i.i34 = lshr i32 %shl3.i33, 16
  %and.i.i35 = and i32 %shl3.i33, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i.i37 = add nuw nsw i32 %shr.i.i34, 1
  %remap_addr.i.i38 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i36, i32 0, i32 %add.i.i37, i32 2
  %34 = ptrtoint ptr %remap_addr.i.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %remap_addr.i.i38, align 4
  %add.ptr.i.i39 = getelementptr i8, ptr %35, i32 %and.i.i35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39, i32 %31) #10, !srcloc !328
  %36 = ptrtoint ptr %address.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address.i31, align 4
  %add6.i40 = shl i32 %37, 2
  %shl7.i41 = add i32 %add6.i40, 60
  %shr.i18.i42 = lshr i32 %shl7.i41, 16
  %and.i19.i43 = and i32 %shl7.i41, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i21.i44 = add nuw nsw i32 %shr.i18.i42, 1
  %remap_addr.i22.i45 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i36, i32 0, i32 %add.i21.i44, i32 2
  %38 = ptrtoint ptr %remap_addr.i22.i45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i22.i45, align 4
  %add.ptr.i23.i46 = getelementptr i8, ptr %39, i32 %and.i19.i43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i46, i32 %31) #10, !srcloc !328
  %volume_set.i47 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.157, i32 0, i32 12
  %40 = ptrtoint ptr %volume_set.i47 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i48 = load i8, ptr %volume_set.i47, align 4
  %bf.set.i49 = or i8 %bf.load.i48, 32
  store i8 %bf.set.i49, ptr %volume_set.i47, align 4
  %volume.i50 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.157, i32 0, i32 11
  %41 = ptrtoint ptr %volume.i50 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %left, ptr %volume.i50, align 4
  %arrayidx9.i51 = getelementptr %struct.dsp_scb_descriptor, ptr %scb.157, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx9.i51 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %right, ptr %arrayidx9.i51, align 2
  %next_scb_ptr6 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.157, i32 0, i32 5
  %43 = ptrtoint ptr %next_scb_ptr6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %scb.1 = load ptr, ptr %next_scb_ptr6, align 4
  %44 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %the_null_scb, align 4
  %cmp4.not = icmp eq ptr %scb.1, %45
  br i1 %cmp4.not, label %while.body5.while.end7_crit_edge, label %while.body5.while.body5_crit_edge

while.body5.while.body5_crit_edge:                ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body5

while.body5.while.end7_crit_edge:                 ; preds = %while.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end7

while.end7:                                       ; preds = %while.body5.while.end7_crit_edge, %while.end.while.end7_crit_edge
  %dac_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %dac_volume_left to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %left, ptr %dac_volume_left, align 2
  %dac_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %dac_volume_right to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %right, ptr %dac_volume_right, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_set_iec958_volume(ptr noundef %chip, i16 noundef zeroext %left, i16 noundef zeroext %right) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #10
  %asynch_rx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %asynch_rx_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asynch_rx_scb, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = xor i16 %left, -1
  %sub.i = zext i16 %4 to i32
  %shl.i = shl nuw i32 %sub.i, 16
  %5 = xor i16 %right, -1
  %sub2.i = zext i16 %5 to i32
  %or.i = or i32 %shl.i, %sub2.i
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %7, 2
  %shl3.i = add i32 %add.i, 56
  %shr.i.i = lshr i32 %shl3.i, 16
  %and.i.i = and i32 %shl3.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %9 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #10, !srcloc !328
  %11 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %address.i, align 4
  %add6.i = shl i32 %12, 2
  %shl7.i = add i32 %add6.i, 60
  %shr.i18.i = lshr i32 %shl7.i, 16
  %and.i19.i = and i32 %shl7.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i21.i = add nuw nsw i32 %shr.i18.i, 1
  %remap_addr.i22.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i21.i, i32 2
  %13 = ptrtoint ptr %remap_addr.i22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remap_addr.i22.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %14, i32 %and.i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %8) #10, !srcloc !328
  %volume_set.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 12
  %15 = ptrtoint ptr %volume_set.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %volume_set.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %volume_set.i, align 4
  %volume.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %left, ptr %volume.i, align 4
  %arrayidx9.i = getelementptr %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 11, i32 1
  %17 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %right, ptr %arrayidx9.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spdif_input_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 26
  %18 = ptrtoint ptr %spdif_input_volume_left to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %left, ptr %spdif_input_volume_left, align 2
  %spdif_input_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 25
  %19 = ptrtoint ptr %spdif_input_volume_right to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %right, ptr %spdif_input_volume_right, align 4
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_resume(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %call = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 0, i32 noundef 12288) #10
  %call1 = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 65536, i32 noundef 14336) #10
  %call2 = tail call i32 @snd_cs46xx_clear_BA1(ptr noundef %chip, i32 noundef 131072, i32 noundef 28672) #10
  %nmodules = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nmodules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp230 = icmp sgt i32 %3, 0
  br i1 %cmp230, label %for.body.lr.ph, label %entry.for.cond25.preheader_crit_edge

entry.for.cond25.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond25.preheader

for.body.lr.ph:                                   ; preds = %entry
  %modules = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 2
  %data = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 3, i32 3
  br label %for.body

for.cond25.preheader:                             ; preds = %for.inc.for.cond25.preheader_crit_edge, %entry.for.cond25.preheader_crit_edge
  %ntask = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %ntask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ntask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26235 = icmp sgt i32 %5, 0
  br i1 %cmp26235, label %for.body27.lr.ph, label %for.cond25.preheader.for.cond34.preheader_crit_edge

for.cond25.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

for.body27.lr.ph:                                 ; preds = %for.cond25.preheader
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  br label %for.body27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0231 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %modules to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %modules, align 4
  %nsegments.i = getelementptr %struct.dsp_module_desc, ptr %7, i32 %i.0231, i32 2
  %8 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.i = icmp sgt i32 %9, 0
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %for.body.get_segment_desc.exit_crit_edge

for.body.get_segment_desc.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

for.body.lr.ph.i:                                 ; preds = %for.body
  %segments.i = getelementptr %struct.dsp_module_desc, ptr %7, i32 %i.0231, i32 3
  %10 = ptrtoint ptr %segments.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %segments.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.get_segment_desc.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond.i.get_segment_desc.exit_crit_edge:       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dsp_segment_desc, ptr %11, i32 %i.09.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.i = icmp eq i32 %13, 2
  br i1 %cmp1.i, label %for.body.i.get_segment_desc.exit_crit_edge, label %for.cond.i

for.body.i.get_segment_desc.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit

get_segment_desc.exit:                            ; preds = %for.body.i.get_segment_desc.exit_crit_edge, %for.cond.i.get_segment_desc.exit_crit_edge, %for.body.get_segment_desc.exit_crit_edge
  %retval.0.i = phi ptr [ null, %for.body.get_segment_desc.exit_crit_edge ], [ %arrayidx.i, %for.body.i.get_segment_desc.exit_crit_edge ], [ null, %for.cond.i.get_segment_desc.exit_crit_edge ]
  %call4 = tail call fastcc i32 @dsp_load_parameter(ptr noundef %chip, ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %get_segment_desc.exit.cleanup103_crit_edge, label %if.end

get_segment_desc.exit.cleanup103_crit_edge:       ; preds = %get_segment_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end:                                           ; preds = %get_segment_desc.exit
  %14 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i170 = icmp sgt i32 %15, 0
  br i1 %cmp8.i170, label %for.body.lr.ph.i172, label %if.end.get_segment_desc.exit181_crit_edge

if.end.get_segment_desc.exit181_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit181

for.body.lr.ph.i172:                              ; preds = %if.end
  %segments.i171 = getelementptr %struct.dsp_module_desc, ptr %7, i32 %i.0231, i32 3
  %16 = ptrtoint ptr %segments.i171 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %segments.i171, align 4
  br label %for.body.i179

for.cond.i175:                                    ; preds = %for.body.i179
  %inc.i173 = add nuw nsw i32 %i.09.i176, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i173, %15
  br i1 %exitcond.not.i174, label %for.cond.i175.get_segment_desc.exit181_crit_edge, label %for.cond.i175.for.body.i179_crit_edge

for.cond.i175.for.body.i179_crit_edge:            ; preds = %for.cond.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i179

for.cond.i175.get_segment_desc.exit181_crit_edge: ; preds = %for.cond.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit181

for.body.i179:                                    ; preds = %for.cond.i175.for.body.i179_crit_edge, %for.body.lr.ph.i172
  %i.09.i176 = phi i32 [ 0, %for.body.lr.ph.i172 ], [ %inc.i173, %for.cond.i175.for.body.i179_crit_edge ]
  %arrayidx.i177 = getelementptr %struct.dsp_segment_desc, ptr %17, i32 %i.09.i176
  %18 = ptrtoint ptr %arrayidx.i177 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i177, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp1.i178 = icmp eq i32 %19, 3
  br i1 %cmp1.i178, label %for.body.i179.get_segment_desc.exit181_crit_edge, label %for.cond.i175

for.body.i179.get_segment_desc.exit181_crit_edge: ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_segment_desc.exit181

get_segment_desc.exit181:                         ; preds = %for.body.i179.get_segment_desc.exit181_crit_edge, %for.cond.i175.get_segment_desc.exit181_crit_edge, %if.end.get_segment_desc.exit181_crit_edge
  %retval.0.i180 = phi ptr [ null, %if.end.get_segment_desc.exit181_crit_edge ], [ %arrayidx.i177, %for.body.i179.get_segment_desc.exit181_crit_edge ], [ null, %for.cond.i175.get_segment_desc.exit181_crit_edge ]
  %call7 = tail call fastcc i32 @dsp_load_sample(ptr noundef %chip, ptr noundef %retval.0.i180)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %get_segment_desc.exit181.cleanup103_crit_edge, label %if.end10

get_segment_desc.exit181.cleanup103_crit_edge:    ; preds = %get_segment_desc.exit181
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.end10:                                         ; preds = %get_segment_desc.exit181
  %20 = ptrtoint ptr %nsegments.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nsegments.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.i183 = icmp sgt i32 %21, 0
  br i1 %cmp8.i183, label %for.body.lr.ph.i185, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.lr.ph.i185:                              ; preds = %if.end10
  %segments.i184 = getelementptr %struct.dsp_module_desc, ptr %7, i32 %i.0231, i32 3
  %22 = ptrtoint ptr %segments.i184 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %segments.i184, align 4
  br label %for.body.i192

for.cond.i188:                                    ; preds = %for.body.i192
  %inc.i186 = add nuw nsw i32 %i.09.i189, 1
  %exitcond.not.i187 = icmp eq i32 %inc.i186, %21
  br i1 %exitcond.not.i187, label %for.cond.i188.for.inc_crit_edge, label %for.cond.i188.for.body.i192_crit_edge

for.cond.i188.for.body.i192_crit_edge:            ; preds = %for.cond.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i192

for.cond.i188.for.inc_crit_edge:                  ; preds = %for.cond.i188
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i192:                                    ; preds = %for.cond.i188.for.body.i192_crit_edge, %for.body.lr.ph.i185
  %i.09.i189 = phi i32 [ 0, %for.body.lr.ph.i185 ], [ %inc.i186, %for.cond.i188.for.body.i192_crit_edge ]
  %arrayidx.i190 = getelementptr %struct.dsp_segment_desc, ptr %23, i32 %i.09.i189
  %24 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp1.i191 = icmp eq i32 %25, 1
  br i1 %cmp1.i191, label %get_segment_desc.exit194, label %for.cond.i188

get_segment_desc.exit194:                         ; preds = %for.body.i192
  %tobool.not = icmp eq ptr %arrayidx.i190, null
  br i1 %tobool.not, label %get_segment_desc.exit194.for.inc_crit_edge, label %if.end13

get_segment_desc.exit194.for.inc_crit_edge:       ; preds = %get_segment_desc.exit194
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %get_segment_desc.exit194
  %offset = getelementptr %struct.dsp_segment_desc, ptr %23, i32 %i.09.i189, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %load_address = getelementptr %struct.dsp_module_desc, ptr %7, i32 %i.0231, i32 5
  %28 = ptrtoint ptr %load_address to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %load_address, align 4
  %mul168 = add i32 %29, %27
  %add = shl i32 %mul168, 2
  %add15 = add i32 %add, 131072
  %size = getelementptr %struct.dsp_segment_desc, ptr %23, i32 %i.09.i189, i32 2
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %mul16 = shl i32 %31, 2
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i32, ptr %33, i32 %29
  %call18 = tail call i32 @snd_cs46xx_download(ptr noundef %chip, ptr noundef %add.ptr, i32 noundef %add15, i32 noundef %mul16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end13.cleanup103_crit_edge, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13.cleanup103_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %get_segment_desc.exit194.for.inc_crit_edge, %for.cond.i188.for.inc_crit_edge, %if.end10.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0231, 1
  %34 = ptrtoint ptr %nmodules to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nmodules, align 4
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond25.preheader_crit_edge

for.inc.for.cond25.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond25.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond34.preheader:                             ; preds = %_dsp_create_task_tree.exit.for.cond34.preheader_crit_edge, %for.cond25.preheader.for.cond34.preheader_crit_edge
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %36 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp35238 = icmp sgt i32 %37, 0
  br i1 %cmp35238, label %for.body36.lr.ph, label %for.cond34.preheader.for.end84_crit_edge

for.cond34.preheader.for.end84_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end84

for.body36.lr.ph:                                 ; preds = %for.cond34.preheader
  %remap_addr.i197 = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %card.i200 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  br label %for.body36

for.body27:                                       ; preds = %_dsp_create_task_tree.exit.for.body27_crit_edge, %for.body27.lr.ph
  %i.1236 = phi i32 [ 0, %for.body27.lr.ph ], [ %inc32, %_dsp_create_task_tree.exit.for.body27_crit_edge ]
  %data29 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %i.1236, i32 4
  %38 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data29, align 4
  %size30 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %i.1236, i32 1
  %40 = ptrtoint ptr %size30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp18.i = icmp sgt i32 %41, 0
  br i1 %cmp18.i, label %do.body.lr.ph.i, label %for.body27._dsp_create_task_tree.exit_crit_edge

for.body27._dsp_create_task_tree.exit_crit_edge:  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #12
  br label %_dsp_create_task_tree.exit

do.body.lr.ph.i:                                  ; preds = %for.body27
  %address = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 22, i32 %i.1236, i32 2
  %42 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %address, align 4
  %44 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %remap_addr.i, align 4
  %mul.i = shl i32 %43, 2
  %add.ptr1.i = getelementptr i8, ptr %45, i32 %mul.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.body5.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %spdst.021.i = phi ptr [ %add.ptr1.i, %do.body.lr.ph.i ], [ %add.ptr9.i, %do.body5.i.do.body.i_crit_edge ]
  %i.019.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i195, %do.body5.i.do.body.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dsp_create_task_tree.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_resume, %if.then.i)) #10
          to label %do.body5.i [label %if.then.i], !srcloc !314

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %47, i32 0, i32 27
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 8
  %arrayidx4.i = getelementptr i32, ptr %39, i32 %i.019.i
  %50 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dsp_create_task_tree.__UNIQUE_ID_ddebug252, ptr noundef %49, ptr noundef nonnull @.str.124, ptr noundef %spdst.021.i, i32 noundef %51) #10
  br label %do.body5.i

do.body5.i:                                       ; preds = %if.then.i, %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !331
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i = getelementptr i32, ptr %39, i32 %i.019.i
  %52 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx8.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spdst.021.i, i32 %54) #10, !srcloc !328
  %add.ptr9.i = getelementptr i8, ptr %spdst.021.i, i32 4
  %inc.i195 = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i196 = icmp eq i32 %inc.i195, %41
  br i1 %exitcond.not.i196, label %do.body5.i._dsp_create_task_tree.exit_crit_edge, label %do.body5.i.do.body.i_crit_edge

do.body5.i.do.body.i_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body5.i._dsp_create_task_tree.exit_crit_edge:  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_dsp_create_task_tree.exit

_dsp_create_task_tree.exit:                       ; preds = %do.body5.i._dsp_create_task_tree.exit_crit_edge, %for.body27._dsp_create_task_tree.exit_crit_edge
  %inc32 = add nuw nsw i32 %i.1236, 1
  %55 = ptrtoint ptr %ntask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ntask, align 4
  %cmp26 = icmp slt i32 %inc32, %56
  br i1 %cmp26, label %_dsp_create_task_tree.exit.for.body27_crit_edge, label %_dsp_create_task_tree.exit.for.cond34.preheader_crit_edge

_dsp_create_task_tree.exit.for.cond34.preheader_crit_edge: ; preds = %_dsp_create_task_tree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond34.preheader

_dsp_create_task_tree.exit.for.body27_crit_edge:  ; preds = %_dsp_create_task_tree.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body27

for.cond49.preheader:                             ; preds = %cleanup43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp51241 = icmp sgt i32 %74, 0
  br i1 %cmp51241, label %for.body52.lr.ph, label %for.cond49.preheader.for.end84_crit_edge

for.cond49.preheader.for.end84_crit_edge:         ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end84

for.body52.lr.ph:                                 ; preds = %for.cond49.preheader
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  br label %for.body52

for.body36:                                       ; preds = %cleanup43.for.body36_crit_edge, %for.body36.lr.ph
  %i.2239 = phi i32 [ 0, %for.body36.lr.ph ], [ %inc47, %cleanup43.for.body36_crit_edge ]
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.2239, i32 12
  %57 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %deleted, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool38.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool38.not, label %if.end40, label %for.body36.cleanup43_crit_edge

for.body36.cleanup43_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

if.end40:                                         ; preds = %for.body36
  %data41 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.2239, i32 3
  %58 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data41, align 4
  %address42 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.2239, i32 1
  %60 = ptrtoint ptr %address42 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %address42, align 4
  %62 = ptrtoint ptr %remap_addr.i197 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr.i197, align 4
  %mul.i198 = shl i32 %61, 2
  %add.ptr1.i199 = getelementptr i8, ptr %63, i32 %mul.i198
  br label %do.body.i201

do.body.i201:                                     ; preds = %do.body5.i209.do.body.i201_crit_edge, %if.end40
  %spdst.020.i = phi ptr [ %add.ptr1.i199, %if.end40 ], [ %add.ptr9.i206, %do.body5.i209.do.body.i201_crit_edge ]
  %i.018.i = phi i32 [ 0, %if.end40 ], [ %inc.i207, %do.body5.i209.do.body.i201_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dsp_create_scb.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_resume, %if.then.i204)) #10
          to label %do.body5.i209 [label %if.then.i204], !srcloc !314

if.then.i204:                                     ; preds = %do.body.i201
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %card.i200 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %card.i200, align 4
  %dev.i202 = getelementptr inbounds %struct.snd_card, ptr %65, i32 0, i32 27
  %66 = ptrtoint ptr %dev.i202 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i202, align 8
  %arrayidx4.i203 = getelementptr i32, ptr %59, i32 %i.018.i
  %68 = ptrtoint ptr %arrayidx4.i203 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx4.i203, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dsp_create_scb.__UNIQUE_ID_ddebug253, ptr noundef %67, ptr noundef nonnull @.str.124, ptr noundef %spdst.020.i, i32 noundef %69) #10
  br label %do.body5.i209

do.body5.i209:                                    ; preds = %if.then.i204, %do.body.i201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !327
  tail call void @arm_heavy_mb() #10
  %arrayidx8.i205 = getelementptr i32, ptr %59, i32 %i.018.i
  %70 = ptrtoint ptr %arrayidx8.i205 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx8.i205, align 4
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spdst.020.i, i32 %72) #10, !srcloc !328
  %add.ptr9.i206 = getelementptr i8, ptr %spdst.020.i, i32 4
  %inc.i207 = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i208 = icmp eq i32 %inc.i207, 16
  br i1 %exitcond.not.i208, label %do.body5.i209.cleanup43_crit_edge, label %do.body5.i209.do.body.i201_crit_edge

do.body5.i209.do.body.i201_crit_edge:             ; preds = %do.body5.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i201

do.body5.i209.cleanup43_crit_edge:                ; preds = %do.body5.i209
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup43

cleanup43:                                        ; preds = %do.body5.i209.cleanup43_crit_edge, %for.body36.cleanup43_crit_edge
  %inc47 = add nuw nsw i32 %i.2239, 1
  %73 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nscb, align 4
  %cmp35 = icmp slt i32 %inc47, %74
  br i1 %cmp35, label %cleanup43.for.body36_crit_edge, label %for.cond49.preheader

cleanup43.for.body36_crit_edge:                   ; preds = %cleanup43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body36

for.body52:                                       ; preds = %cleanup79.for.body52_crit_edge, %for.body52.lr.ph
  %i.3242 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc83, %cleanup79.for.body52_crit_edge ]
  %deleted56 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 12
  %75 = ptrtoint ptr %deleted56 to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load57 = load i8, ptr %deleted56, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57)
  %tobool60.not = icmp sgt i8 %bf.load57, -1
  br i1 %tobool60.not, label %if.end62, label %for.body52.cleanup79_crit_edge

for.body52.cleanup79_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.end62:                                         ; preds = %for.body52
  %76 = and i8 %bf.load57, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool66.not = icmp eq i8 %76, 0
  br i1 %tobool66.not, label %if.end62.if.end68_crit_edge, label %if.then67

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  %address.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 1
  %77 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %78, 2
  %shl.i = add i32 %add.i, 36
  %sub_list_ptr.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 4
  %79 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sub_list_ptr.i, align 4
  %address1.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %address1.i, align 4
  %shl2.i = shl i32 %82, 16
  %next_scb_ptr.i = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 5
  %83 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %next_scb_ptr.i, align 4
  %address3.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %address3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %address3.i, align 4
  %or.i = or i32 %86, %shl2.i
  %shr.i.i = lshr i32 %shl.i, 16
  %and.i.i = and i32 %shl.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %88 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %89, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %87) #10, !srcloc !328
  %90 = ptrtoint ptr %deleted56 to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i = load i8, ptr %deleted56, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %deleted56, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end62.if.end68_crit_edge
  %91 = ptrtoint ptr %deleted56 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load69 = load i8, ptr %deleted56, align 4
  %92 = and i8 %bf.load69, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool73.not = icmp eq i8 %92, 0
  br i1 %tobool73.not, label %if.end68.cleanup79_crit_edge, label %if.then74

if.end68.cleanup79_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup79

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %volume = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 11
  %93 = ptrtoint ptr %volume to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %volume, align 4
  %arrayidx77 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 11, i32 1
  %95 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx77, align 2
  %97 = xor i16 %94, -1
  %sub.i = zext i16 %97 to i32
  %shl.i210 = shl nuw i32 %sub.i, 16
  %98 = xor i16 %96, -1
  %sub2.i = zext i16 %98 to i32
  %or.i211 = or i32 %shl.i210, %sub2.i
  %address.i212 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %i.3242, i32 1
  %99 = ptrtoint ptr %address.i212 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %address.i212, align 4
  %add.i213 = shl i32 %100, 2
  %shl3.i = add i32 %add.i213, 56
  %shr.i.i214 = lshr i32 %shl3.i, 16
  %and.i.i215 = and i32 %shl3.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %101 = tail call i32 @llvm.bswap.i32(i32 %or.i211) #10
  %add.i.i217 = add nuw nsw i32 %shr.i.i214, 1
  %remap_addr.i.i218 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i217, i32 2
  %102 = ptrtoint ptr %remap_addr.i.i218 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %remap_addr.i.i218, align 4
  %add.ptr.i.i219 = getelementptr i8, ptr %103, i32 %and.i.i215
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i219, i32 %101) #10, !srcloc !328
  %104 = ptrtoint ptr %address.i212 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %address.i212, align 4
  %add6.i = shl i32 %105, 2
  %shl7.i = add i32 %add6.i, 60
  %shr.i18.i = lshr i32 %shl7.i, 16
  %and.i19.i = and i32 %shl7.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %add.i21.i = add nuw nsw i32 %shr.i18.i, 1
  %remap_addr.i22.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i21.i, i32 2
  %106 = ptrtoint ptr %remap_addr.i22.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %remap_addr.i22.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %107, i32 %and.i19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %101) #10, !srcloc !328
  %108 = ptrtoint ptr %deleted56 to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load.i220 = load i8, ptr %deleted56, align 4
  %bf.set.i221 = or i8 %bf.load.i220, 32
  store i8 %bf.set.i221, ptr %deleted56, align 4
  %109 = ptrtoint ptr %volume to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %94, ptr %volume, align 4
  %110 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %96, ptr %arrayidx77, align 2
  br label %cleanup79

cleanup79:                                        ; preds = %if.then74, %if.end68.cleanup79_crit_edge, %for.body52.cleanup79_crit_edge
  %inc83 = add nuw nsw i32 %i.3242, 1
  %111 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %nscb, align 4
  %cmp51 = icmp slt i32 %inc83, %112
  br i1 %cmp51, label %cleanup79.for.body52_crit_edge, label %cleanup79.for.end84_crit_edge

cleanup79.for.end84_crit_edge:                    ; preds = %cleanup79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end84

cleanup79.for.body52_crit_edge:                   ; preds = %cleanup79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body52

for.end84:                                        ; preds = %cleanup79.for.end84_crit_edge, %for.cond49.preheader.for.end84_crit_edge, %for.cond34.preheader.for.end84_crit_edge
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %113 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %114, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %for.end84.if.end96_crit_edge, label %if.then86

for.end84.if.end96_crit_edge:                     ; preds = %for.end84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then86:                                        ; preds = %for.end84
  %call87 = tail call i32 @cs46xx_dsp_enable_spdif_hw(ptr noundef %chip)
  %ref_snoop_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 33
  %115 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %ref_snoop_scb, align 4
  %address88 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %address88 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %address88, align 4
  %add89 = shl i32 %118, 2
  %shl = add i32 %add89, 8
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !332
  tail call void @arm_heavy_mb() #10
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i222 = add nuw nsw i32 %shr.i, 1
  %remap_addr.i223 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i222, i32 2
  %119 = ptrtoint ptr %remap_addr.i223 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %remap_addr.i223, align 4
  %add.ptr.i = getelementptr i8, ptr %120, i32 %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4107) #10, !srcloc !328
  %121 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %spdif_status_out, align 4
  %and91 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then86.if.end96_crit_edge, label %if.then93

if.then86.if.end96_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then93:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %spdif_csuv_stream = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 28
  %123 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %spdif_csuv_stream, align 4
  %call94 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32910, i32 noundef %124)
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then86.if.end96_crit_edge, %for.end84.if.end96_crit_edge
  %125 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_in = getelementptr inbounds %struct.dsp_spos_instance, ptr %126, i32 0, i32 24
  %127 = ptrtoint ptr %spdif_status_in to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %spdif_status_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool98.not = icmp eq i32 %128, 0
  br i1 %tobool98.not, label %if.end96.cleanup103_crit_edge, label %if.then99

if.end96.cleanup103_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup103

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %call100 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32832, i32 noundef -2147483643)
  %call101 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32841, i32 noundef -2147482625)
  br label %cleanup103

cleanup103:                                       ; preds = %if.then99, %if.end96.cleanup103_crit_edge, %if.end13.cleanup103_crit_edge, %get_segment_desc.exit181.cleanup103_crit_edge, %get_segment_desc.exit.cleanup103_crit_edge
  %retval.2 = phi i32 [ 0, %if.then99 ], [ 0, %if.end96.cleanup103_crit_edge ], [ %call18, %if.end13.cleanup103_crit_edge ], [ %call4, %get_segment_desc.exit.cleanup103_crit_edge ], [ %call7, %get_segment_desc.exit181.cleanup103_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @add_symbol(ptr nocapture noundef readonly %chip, ptr noundef %symbol_name, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %3)
  %cmp = icmp eq i32 %3, 1023
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.83) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.i = icmp sgt i32 %3, 0
  br i1 %cmp28.i, label %for.body.lr.ph.i, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %if.end
  %symbols.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %symbols.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %deleted.i = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.029.i, i32 4
  %10 = ptrtoint ptr %deleted.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %deleted.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %symbol_name5.i = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.029.i, i32 1
  %call.i = tail call i32 @strcmp(ptr noundef %symbol_name5.i, ptr noundef %symbol_name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %symbol_type10.i = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.029.i, i32 2
  %12 = ptrtoint ptr %symbol_type10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %symbol_type10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11.i = icmp eq i32 %13, 2
  br i1 %cmp11.i, label %cs46xx_dsp_lookup_symbol.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end8_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end8_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cs46xx_dsp_lookup_symbol.exit:                    ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.dsp_symbol_entry, ptr %9, i32 %i.029.i
  %cmp1.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp1.not, label %cs46xx_dsp_lookup_symbol.exit.if.end8_crit_edge, label %do.end5

cs46xx_dsp_lookup_symbol.exit.if.end8_crit_edge:  ; preds = %cs46xx_dsp_lookup_symbol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end5:                                          ; preds = %cs46xx_dsp_lookup_symbol.exit
  call void @__sanitizer_cov_trace_pc() #12
  %card6 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %14 = ptrtoint ptr %card6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card6, align 4
  %dev7 = getelementptr inbounds %struct.snd_card, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.121, ptr noundef %symbol_name) #15
  br label %cleanup

if.end8:                                          ; preds = %cs46xx_dsp_lookup_symbol.exit.if.end8_crit_edge, %for.inc.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %highest_frag_index.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %highest_frag_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp11.i1 = icmp slt i32 %19, %3
  br i1 %cmp11.i1, label %for.body.lr.ph.i3, label %if.end8.find_free_symbol_index.exit_crit_edge

if.end8.find_free_symbol_index.exit_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_symbol_index.exit

for.body.lr.ph.i3:                                ; preds = %if.end8
  %symbols.i2 = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %symbols.i2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %symbols.i2, align 4
  br label %for.body.i6

for.body.i6:                                      ; preds = %for.inc.i9.for.body.i6_crit_edge, %for.body.lr.ph.i3
  %i.012.i = phi i32 [ %19, %for.body.lr.ph.i3 ], [ %inc.i7, %for.inc.i9.for.body.i6_crit_edge ]
  %deleted.i4 = getelementptr %struct.dsp_symbol_entry, ptr %21, i32 %i.012.i, i32 4
  %22 = ptrtoint ptr %deleted.i4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %deleted.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i5 = icmp eq i32 %23, 0
  br i1 %tobool.not.i5, label %for.inc.i9, label %for.body.i6.find_free_symbol_index.exit_crit_edge

for.body.i6.find_free_symbol_index.exit_crit_edge: ; preds = %for.body.i6
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_symbol_index.exit

for.inc.i9:                                       ; preds = %for.body.i6
  %inc.i7 = add i32 %i.012.i, 1
  %exitcond.not.i8 = icmp eq i32 %inc.i7, %3
  br i1 %exitcond.not.i8, label %for.inc.i9.find_free_symbol_index.exit_crit_edge, label %for.inc.i9.for.body.i6_crit_edge

for.inc.i9.for.body.i6_crit_edge:                 ; preds = %for.inc.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i6

for.inc.i9.find_free_symbol_index.exit_crit_edge: ; preds = %for.inc.i9
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_free_symbol_index.exit

find_free_symbol_index.exit:                      ; preds = %for.inc.i9.find_free_symbol_index.exit_crit_edge, %for.body.i6.find_free_symbol_index.exit_crit_edge, %if.end8.find_free_symbol_index.exit_crit_edge
  %index.0.i = phi i32 [ %3, %if.end8.find_free_symbol_index.exit_crit_edge ], [ %3, %for.inc.i9.find_free_symbol_index.exit_crit_edge ], [ %i.012.i, %for.body.i6.find_free_symbol_index.exit_crit_edge ]
  %symbols = getelementptr inbounds %struct.dsp_symbol_desc, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %symbols, align 4
  %symbol_name11 = getelementptr %struct.dsp_symbol_entry, ptr %25, i32 %index.0.i, i32 1
  %call12 = tail call ptr @strcpy(ptr noundef %symbol_name11, ptr noundef %symbol_name) #17
  %26 = ptrtoint ptr %symbols to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %symbols, align 4
  %arrayidx15 = getelementptr %struct.dsp_symbol_entry, ptr %27, i32 %index.0.i
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %address, ptr %arrayidx15, align 4
  %29 = load ptr, ptr %symbols, align 4
  %symbol_type = getelementptr %struct.dsp_symbol_entry, ptr %29, i32 %index.0.i, i32 2
  %30 = ptrtoint ptr %symbol_type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %symbol_type, align 4
  %31 = load ptr, ptr %symbols, align 4
  %module = getelementptr %struct.dsp_symbol_entry, ptr %31, i32 %index.0.i, i32 3
  %32 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %module, align 4
  %33 = load ptr, ptr %symbols, align 4
  %deleted = getelementptr %struct.dsp_symbol_entry, ptr %33, i32 %index.0.i, i32 4
  %34 = ptrtoint ptr %deleted to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %deleted, align 4
  %35 = load ptr, ptr %symbols, align 4
  %add.ptr = getelementptr %struct.dsp_symbol_entry, ptr %35, i32 %index.0.i
  %36 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %highest_frag_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i, i32 %37)
  %cmp29 = icmp sgt i32 %index.0.i, %37
  br i1 %cmp29, label %if.then30, label %find_free_symbol_index.exit.if.end33_crit_edge

find_free_symbol_index.exit.if.end33_crit_edge:   ; preds = %find_free_symbol_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then30:                                        ; preds = %find_free_symbol_index.exit
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %index.0.i, ptr %highest_frag_index.i, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %find_free_symbol_index.exit.if.end33_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i, i32 %40)
  %cmp36 = icmp eq i32 %index.0.i, %40
  br i1 %cmp36, label %if.then37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add i32 %index.0.i, 1
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %inc, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end33.cleanup_crit_edge, %do.end5, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end5 ], [ %add.ptr, %if.then37 ], [ %add.ptr, %if.end33.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 152)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !187, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !269, !271, !272, !273, !274, !276, !278, !280, !281, !282, !283, !285, !287, !288, !289, !291, !293, !294, !295, !297, !299, !301, !303}
!llvm.module.flags = !{!304, !305, !306, !307, !308, !309, !310, !311}
!llvm.ident = !{!312}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 283, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 362, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cs46xx_dsp_load_module._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @cs46xx_dsp_load_module._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 367, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug246, !10, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 371, i32 3}
!15 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug247, !14, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 381, i32 3}
!18 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug248, !17, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 391, i32 3}
!21 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug249, !20, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 396, i32 3}
!24 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug250, !23, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 400, i32 4}
!27 = !{ptr @cs46xx_dsp_load_module._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs46xx_dsp_load_module._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 413, i32 4}
!31 = !{ptr @cs46xx_dsp_load_module._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cs46xx_dsp_load_module._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 420, i32 3}
!35 = !{ptr @cs46xx_dsp_load_module.__UNIQUE_ID_ddebug251, !34, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 427, i32 4}
!38 = !{ptr @cs46xx_dsp_load_module._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cs46xx_dsp_load_module._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 790, i32 43}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 798, i32 43}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 804, i32 43}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 810, i32 43}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 816, i32 43}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 822, i32 43}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 828, i32 43}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 991, i32 3}
!56 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @cs46xx_dsp_create_scb._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @cs46xx_dsp_create_scb._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cs46xx_dsp_scb_and_task_init.sposcb, !60, !"sposcb", i1 false, i1 false}
!60 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1042, i32 45}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1061, i32 36}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1063, i32 51}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1065, i32 3}
!67 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @cs46xx_dsp_scb_and_task_init._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1070, i32 60}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1072, i32 3}
!74 = !{ptr @cs46xx_dsp_scb_and_task_init._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1077, i32 57}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1079, i32 3}
!80 = !{ptr @cs46xx_dsp_scb_and_task_init._entry.39, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1084, i32 52}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1086, i32 3}
!86 = !{ptr @cs46xx_dsp_scb_and_task_init._entry.43, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.45, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1091, i32 52}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1093, i32 3}
!92 = !{ptr @cs46xx_dsp_scb_and_task_init._entry.47, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.49, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @cs46xx_dsp_scb_and_task_init.null_scb, !95, !"null_scb", i1 false, i1 false}
!95 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1100, i32 33}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1112, i32 51}
!98 = !{ptr @cs46xx_dsp_scb_and_task_init.fg_task_tree_hdr, !99, !"fg_task_tree_hdr", i1 false, i1 false}
!99 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1122, i32 45}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1192, i32 36}
!102 = !{ptr @cs46xx_dsp_scb_and_task_init.bg_task_tree_hdr, !103, !"bg_task_tree_hdr", i1 false, i1 false}
!103 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1198, i32 45}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1268, i32 36}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1275, i32 55}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1282, i32 55}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1291, i32 53}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1299, i32 61}
!114 = !{ptr @cs46xx_dsp_scb_and_task_init.mix2_ostream_spb, !115, !"mix2_ostream_spb", i1 false, i1 false}
!115 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1307, i32 38}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1319, i32 63}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1328, i32 55}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1360, i32 60}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1368, i32 53}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1379, i32 61}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1388, i32 65}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1406, i32 60}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1417, i32 45}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1423, i32 53}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1441, i32 2}
!136 = !{ptr @cs46xx_dsp_scb_and_task_init._entry.66, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @cs46xx_dsp_scb_and_task_init._entry_ptr.68, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1696, i32 63}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1768, i32 51}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1800, i32 9}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1851, i32 3}
!146 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @cs46xx_poke_via_dsp._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @cs46xx_poke_via_dsp._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 309, i32 3}
!151 = !{ptr @.str.75, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @dsp_load_parameter.__UNIQUE_ID_ddebug242, !150, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!153 = !{ptr @.str.76, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 317, i32 2}
!155 = !{ptr @dsp_load_parameter.__UNIQUE_ID_ddebug243, !154, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 321, i32 3}
!158 = !{ptr @dsp_load_parameter._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dsp_load_parameter._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 334, i32 3}
!162 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dsp_load_sample.__UNIQUE_ID_ddebug244, !161, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 342, i32 2}
!166 = !{ptr @dsp_load_sample.__UNIQUE_ID_ddebug245, !165, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 347, i32 3}
!169 = !{ptr @dsp_load_sample._entry, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @dsp_load_sample._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.82, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 145, i32 60}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 153, i32 4}
!175 = !{ptr @.str.84, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @add_symbols._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @add_symbols._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 75, i32 7}
!180 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug238, !179, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 82, i32 8}
!184 = !{ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug239, !183, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!185 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 95, i32 7}
!187 = !{ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug240, !186, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 108, i32 2}
!190 = !{ptr @shadow_and_reallocate_code.__UNIQUE_ID_ddebug241, !189, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!191 = !{ptr @wide_opcodes, !192, !"wide_opcodes", i1 false, i1 false}
!192 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 30, i32 31}
!193 = !{ptr @.str.90, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 500, i32 2}
!195 = !{ptr @.str.91, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 502, i32 22}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 512, i32 3}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 529, i32 2}
!201 = !{ptr @.str.94, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 531, i32 3}
!203 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 532, i32 3}
!205 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 533, i32 3}
!207 = !{ptr @.str.97, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 537, i32 4}
!209 = !{ptr @.str.98, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 616, i32 4}
!211 = !{ptr @.str.99, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 627, i32 4}
!213 = !{ptr @.str.100, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 630, i32 3}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 641, i32 2}
!217 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 655, i32 2}
!219 = !{ptr @.str.103, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 671, i32 2}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 687, i32 2}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 702, i32 2}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 719, i32 2}
!227 = !{ptr @.str.107, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 734, i32 2}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 765, i32 2}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 553, i32 2}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 555, i32 3}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 564, i32 4}
!237 = !{ptr @.str.112, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 580, i32 2}
!239 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 584, i32 3}
!241 = !{ptr @.str.114, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 587, i32 4}
!243 = !{ptr @.str.115, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 590, i32 10}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 592, i32 3}
!247 = !{ptr @.str.117, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 918, i32 3}
!249 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @_map_scb._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @_map_scb._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 192, i32 3}
!254 = !{ptr @add_symbol._entry, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @add_symbol._entry_ptr, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 199, i32 3}
!258 = !{ptr @add_symbol._entry.120, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @add_symbol._entry_ptr.122, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 890, i32 3}
!262 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @_dsp_create_scb.__UNIQUE_ID_ddebug253, !261, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1012, i32 3}
!266 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @cs46xx_dsp_create_task_tree._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @cs46xx_dsp_create_task_tree._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.127, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 950, i32 3}
!271 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @_map_task_tree._entry, !270, !"_entry", i1 false, i1 false}
!273 = !{ptr @_map_task_tree._entry_ptr, !270, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.129, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 958, i32 44}
!276 = !{ptr @.str.130, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1454, i32 62}
!278 = !{ptr @.str.131, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1456, i32 3}
!280 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @cs46xx_dsp_async_init._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @cs46xx_dsp_async_init._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1460, i32 47}
!285 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1462, i32 3}
!287 = !{ptr @cs46xx_dsp_async_init._entry.134, !286, !"_entry", i1 false, i1 false}
!288 = !{ptr @cs46xx_dsp_async_init._entry_ptr.136, !286, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.137, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1467, i32 47}
!291 = !{ptr @.str.139, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1469, i32 3}
!293 = !{ptr @cs46xx_dsp_async_init._entry.138, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @cs46xx_dsp_async_init._entry_ptr.140, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.141, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1581, i32 48}
!297 = !{ptr @.str.142, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1585, i32 48}
!299 = !{ptr @.str.143, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 1588, i32 53}
!301 = !{ptr @.str.144, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/pci/cs46xx/dsp_spos.c", i32 876, i32 3}
!303 = !{ptr @_dsp_create_task_tree.__UNIQUE_ID_ddebug252, !302, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!304 = !{i32 1, !"wchar_size", i32 2}
!305 = !{i32 1, !"min_enum_size", i32 4}
!306 = !{i32 8, !"branch-target-enforcement", i32 0}
!307 = !{i32 8, !"sign-return-address", i32 0}
!308 = !{i32 8, !"sign-return-address-all", i32 0}
!309 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!310 = !{i32 7, !"uwtable", i32 1}
!311 = !{i32 7, !"frame-pointer", i32 2}
!312 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!313 = !{!"branch_weights", i32 1, i32 2000}
!314 = !{i64 2148204610, i64 2148204615, i64 2148204628, i64 2148204672, i64 2148204706, i64 2148204727}
!315 = !{!"branch_weights", i32 2000, i32 1}
!316 = !{i64 737871}
!317 = !{i64 2154571606}
!318 = !{i64 2154572379}
!319 = !{i64 2154573160}
!320 = !{i64 2154573925}
!321 = !{i64 2154574704}
!322 = !{i64 2154575472}
!323 = !{i64 2154576250}
!324 = !{i64 2154577033}
!325 = !{i64 2154577824}
!326 = !{i64 2154569658}
!327 = !{i64 2154583272}
!328 = !{i64 737453}
!329 = !{i64 2154506235}
!330 = !{i64 2154505285}
!331 = !{i64 2154580547}
!332 = !{i64 2154503913}
!333 = !{i64 2154504878}
