; ModuleID = '/llk/IR_all_yes/sound/pci/cs46xx/dsp_spos_scb_lib.c_pt.bc'
source_filename = "../sound/pci/cs46xx/dsp_spos_scb_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_cs46xx = type { i32, i32, i32, %union.anon, i32, %struct.anon.0, i32, ptr, [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.mutex, ptr, ptr, ptr, ptr, [5 x ptr], ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region, %struct.snd_cs46xx_region }
%struct.snd_cs46xx_region = type { [24 x i8], i32, ptr, i32 }
%struct.anon.0 = type { %struct.snd_dma_buffer, i32, i32, %struct.snd_pcm_indirect, ptr }
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
%struct.dsp_scb_descriptor = type { [60 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [2 x i16], i8 }
%struct.dsp_spos_instance = type { %struct.dsp_symbol_desc, i32, ptr, %struct.dsp_segment_desc, ptr, i16, i16, ptr, ptr, i32, i32, [32 x %struct.dsp_pcm_channel_descriptor], [14 x i32], ptr, ptr, ptr, ptr, i32, i32, [200 x %struct.dsp_scb_descriptor], ptr, i32, [50 x %struct.dsp_task_descriptor], i32, i32, i16, i16, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.dsp_symbol_desc = type { i32, ptr, i32 }
%struct.dsp_segment_desc = type { i32, i32, i32, ptr }
%struct.dsp_pcm_channel_descriptor = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.dsp_task_descriptor = type { [60 x i8], i32, i32, i32, ptr }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.71, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.71 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.proc_scb_info = type { ptr, ptr }
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
%struct.dsp_timing_master_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.dsp_basic_dma_req = type { i32, i32, i32, i32 }
%struct.dsp_scatter_gather_ext = type { i32, i32, i32, i32, i32 }
%struct.dsp_codec_output_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.dsp_codec_input_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i32 }
%struct.dsp_src_task_scb = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_volume_control = type { i16, i16, i16, i16 }
%struct.dsp_mix_only_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_mix2_ostream_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.dsp_vari_decimate_scb = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_asynch_fg_rx_scb = type { i16, i16, i16, i16, i16, i16, i16, i16, [5 x i32], i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16 }
%struct.dsp_spio_write_scb = type { i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, [2 x i32], i16, i16, i16, i16, [5 x i32] }
%struct.dsp_magic_snoop_task = type { i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_generic_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i32, %struct.dsp_volume_control }
%struct.dsp_pcm_serial_input_scb = type { %struct.dsp_basic_dma_req, %struct.dsp_scatter_gather_ext, i16, i16, i16, i16, i32, i32, i16, i16, %struct.dsp_volume_control }
%struct.dsp_asynch_fg_tx_scb = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, [3 x i32], i16, i16, i16, i16, i32, i32, i32, i16, i16, i16, i16 }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sound/pci/cs46xx/dsp_spos_scb_lib.c\00", [60 x i8] zeroinitializer }, align 32
@cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"snd_cs46xx\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cs46xx_dsp_proc_free_scb_desc\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cs46xx_dsp_proc_free_scb_desc: freeing %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TimingMasterSCBInst\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TIMINGMASTER\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S16_CODECOUTPUTTASK\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"S16_CODECINPUTTASK\00", [45 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_src_task_scb.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cs46xx_dsp_create_src_task_scb\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dsp_spos: setting %s rate to %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S16_UPSRC\00", [22 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_src_task_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str, i32 660, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dsp_spos: symbol S16_UPSRC not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_src_task_scb._entry_ptr = internal global ptr @cs46xx_dsp_create_src_task_scb._entry, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMAREADER\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S16_MIX\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"S16_MIX_TO_OSTREAM\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VARIDECIMATE\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASYNCHFGRXCODE\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPIOWRITE\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAGICSNOOPTASK\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BUG?\0A\00", [26 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.23, i8 1, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cs46xx_dsp_create_pcm_channel\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IEC958 pass through\0A\00", [43 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str, i32 1289, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dsp_spos: no free PCM channel\0A\00", [33 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry_ptr = internal global ptr @cs46xx_dsp_create_pcm_channel._entry, section ".printk_index", align 4
@cs46xx_dsp_create_pcm_channel._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str, i32 1296, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dsp_spos: too many SRC instances\0A!\00", [61 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry_ptr.27 = internal global ptr @cs46xx_dsp_create_pcm_channel._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SrcTask_SCB%d\00", [18 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.29, i8 1, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dsp_spos: creating SRC \22%s\22\0A\00", [35 x i8] zeroinitializer }, align 32
@src_output_buffer_addr = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 11136, i32 11168, i32 11200, i32 11232, i32 11520, i32 11552, i32 11584, i32 11616, i32 11648, i32 11680, i32 11712, i32 11744, i32 11776, i32 11808], [40 x i8] zeroinitializer }, align 32
@src_delay_buffer_addr = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 9344, i32 9472, i32 9600, i32 9728, i32 9856, i32 9984, i32 10112, i32 10240, i32 10368, i32 10496, i32 10624, i32 10752, i32 10880, i32 11008], [40 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str, i32 1336, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dsp_spos: failed to create SRCtaskSCB\0A\00", [57 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry_ptr.32 = internal global ptr @cs46xx_dsp_create_pcm_channel._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PCMReader_SCB%d\00", [16 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str, ptr @.str.34, i8 1, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dsp_spos: creating PCM \22%s\22 (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@pcm_reader_buffer_addr = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 1536, i32 5376, i32 5504, i32 5632, i32 5760, i32 5888, i32 6016, i32 6144, i32 6272, i32 6400, i32 6528, i32 6656, i32 6784, i32 6912, i32 7040, i32 7168, i32 7296, i32 7424, i32 7552, i32 7680, i32 7808, i32 7936, i32 8064, i32 8192, i32 8320, i32 8448, i32 8576, i32 8704, i32 8832, i32 8960, i32 9088, i32 9216], [32 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.22, ptr @.str, i32 1363, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"dsp_spos: failed to create PCMreaderSCB\0A\00", [55 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_channel._entry_ptr.37 = internal global ptr @cs46xx_dsp_create_pcm_channel._entry.35, section ".printk_index", align 4
@cs46xx_dsp_pcm_channel_set_period.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.38, ptr @.str, ptr @.str.39, i8 1, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cs46xx_dsp_pcm_channel_set_period\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"period size (%d) not supported by HW\0A\00", [58 x i8] zeroinitializer }, align 32
@cs46xx_dsp_pcm_ostream_set_period.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.40, ptr @.str, ptr @.str.39, i8 1, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cs46xx_dsp_pcm_ostream_set_period\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AsynchFGTxSCB\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCMSerialInput_II\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%04x %s:\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parent [%s:%04x] \00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"parent [none] \00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"sub_list_ptr [%s:%04x]\0Anext_scb_ptr [%s:%04x]  task_entry [%s:%04x]\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"index [%d] ref_count [%d]\0A\00", [37 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_generic_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str, i32 355, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dsp_spos: symbol %s not found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cs46xx_dsp_create_generic_scb\00", [34 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_generic_scb._entry_ptr = internal global ptr @cs46xx_dsp_create_generic_scb._entry, section ".printk_index", align 4
@_dsp_create_generic_scb.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.52, ptr @.str, ptr @.str.53, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_dsp_create_generic_scb\00", [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dsp_spos: creating SCB <%s>\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NULLALGORITHM\00", [18 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_reader_scb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str, i32 570, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"dsp_spos: symbol NULLALGORITHM not found\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cs46xx_dsp_create_pcm_reader_scb\00", [63 x i8] zeroinitializer }, align 32
@cs46xx_dsp_create_pcm_reader_scb._entry_ptr = internal global ptr @cs46xx_dsp_create_pcm_reader_scb._entry, section ".printk_index", align 4
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCMSERIALINPUTTASK\00", [45 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ASYNCHFGTXCODE\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.60 = internal global [9 x i64] [i64 7, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@__sancov_gen_cov_switch_values.61 = internal global [9 x i64] [i64 7, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048]
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 166, i32 6 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 221, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 389, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 391, i32 10 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 429, i32 15 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 474, i32 15 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 600, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 655, i32 50 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 659, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 675, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 774, i32 15 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 827, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 871, i32 15 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1010, i32 15 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1090, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1126, i32 15 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1244, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1255, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1289, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1295, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1320, i32 39 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1322, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [23 x i8] c"src_output_buffer_addr\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1183, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant [22 x i8] c"src_delay_buffer_addr\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1200, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1335, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1346, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1348, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [23 x i8] c"pcm_reader_buffer_addr\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1148, i32 18 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1362, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1413, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1452, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1655, i32 63 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1662, i32 73 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 67, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 71, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 74, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 80, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 83, i32 9 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 85, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 93, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 354, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 285, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 565, i32 57 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 569, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 915, i32 15 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [39 x i8] c"../sound/pci/cs46xx/dsp_spos_scb_lib.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 961, i32 15 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @cs46xx_dsp_create_generic_scb._entry, ptr @cs46xx_dsp_create_generic_scb._entry_ptr, ptr @cs46xx_dsp_create_pcm_channel._entry, ptr @cs46xx_dsp_create_pcm_channel._entry.25, ptr @cs46xx_dsp_create_pcm_channel._entry.30, ptr @cs46xx_dsp_create_pcm_channel._entry.35, ptr @cs46xx_dsp_create_pcm_channel._entry_ptr, ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.27, ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.32, ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.37, ptr @cs46xx_dsp_create_pcm_reader_scb._entry, ptr @cs46xx_dsp_create_pcm_reader_scb._entry_ptr, ptr @cs46xx_dsp_create_src_task_scb._entry, ptr @cs46xx_dsp_create_src_task_scb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @src_output_buffer_addr, ptr @src_delay_buffer_addr, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @pcm_reader_buffer_addr, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_src_task_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_pcm_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_pcm_channel._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_output_buffer_addr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @src_delay_buffer_addr to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_pcm_channel._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_reader_buffer_addr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_pcm_channel._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_generic_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs46xx_dsp_create_pcm_reader_scb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %scb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %index = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %nscb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp slt i32 %3, %5
  br i1 %cmp2.not, label %lor.rhs, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %scbs = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 19
  %add.ptr = getelementptr %struct.dsp_scb_descriptor, ptr %scbs, i32 %3
  %cmp4.not = icmp eq ptr %add.ptr, %scb
  br i1 %cmp4.not, label %do.body27, label %lor.rhs.do.end_crit_edge, !prof !133

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body27:                                        ; preds = %lor.rhs
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  tail call fastcc void @_dsp_unlink_scb(ptr noundef %chip, ptr noundef %scb)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call30) #7
  %proc_info.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 9
  %6 = ptrtoint ptr %proc_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_info.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body27.cs46xx_dsp_proc_free_scb_desc.exit_crit_edge, label %if.then.i

do.body27.cs46xx_dsp_proc_free_scb_desc.exit_crit_edge: ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs46xx_dsp_proc_free_scb_desc.exit

if.then.i:                                        ; preds = %do.body27
  %private_data.i = getelementptr inbounds %struct.snd_info_entry, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %chip2.i = getelementptr inbounds %struct.proc_scb_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %chip2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chip2.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_remove_scb, %if.then6.i)) #7
          to label %do.end.i [label %if.then6.i], !srcloc !134

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef %scb) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.then.i
  %16 = ptrtoint ptr %proc_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %proc_info.i, align 4
  tail call void @snd_info_free_entry(ptr noundef %17) #7
  %18 = ptrtoint ptr %proc_info.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %proc_info.i, align 4
  tail call void @kfree(ptr noundef %9) #7
  br label %cs46xx_dsp_proc_free_scb_desc.exit

cs46xx_dsp_proc_free_scb_desc.exit:               ; preds = %do.end.i, %do.body27.cs46xx_dsp_proc_free_scb_desc.exit_crit_edge
  %scb_symbol = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 8
  %19 = ptrtoint ptr %scb_symbol to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %scb_symbol, align 4
  %tobool37.not = icmp eq ptr %20, null
  br i1 %tobool37.not, label %do.end55, label %if.end71, !prof !135

do.end55:                                         ; preds = %cs46xx_dsp_proc_free_scb_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end71:                                         ; preds = %cs46xx_dsp_proc_free_scb_desc.exit
  %21 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dsp_spos_instance, align 4
  %symbols.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %symbols.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %symbols.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 116
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp.i = icmp slt i32 %26, 1
  br i1 %cmp.i, label %do.end.i139, label %if.end22.i, !prof !135

do.end.i139:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #7
  br label %remove_symbol.exit

if.end22.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub.i)
  %cmp24.i = icmp slt i32 %sub.ptr.sub.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %26)
  %cmp27.i = icmp sge i32 %sub.ptr.div.i, %26
  %or.cond.i = select i1 %cmp24.i, i1 true, i1 %cmp27.i
  br i1 %or.cond.i, label %do.end43.i, label %if.end59.i, !prof !136

do.end43.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #7
  br label %remove_symbol.exit

if.end59.i:                                       ; preds = %if.end22.i
  %deleted.i = getelementptr %struct.dsp_symbol_entry, ptr %24, i32 %sub.ptr.div.i, i32 4
  %27 = ptrtoint ptr %deleted.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %deleted.i, align 4
  %highest_frag_index.i = getelementptr inbounds %struct.dsp_symbol_desc, ptr %22, i32 0, i32 2
  %28 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %highest_frag_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %29)
  %cmp63.i = icmp slt i32 %sub.ptr.div.i, %29
  br i1 %cmp63.i, label %if.then64.i, label %if.end59.i.if.end67.i_crit_edge

if.end59.i.if.end67.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i

if.then64.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.ptr.div.i, ptr %highest_frag_index.i, align 4
  br label %if.end67.i

if.end67.i:                                       ; preds = %if.then64.i, %if.end59.i.if.end67.i_crit_edge
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %22, align 4
  %sub.i = add i32 %32, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %sub.i)
  %cmp70.i = icmp eq i32 %sub.ptr.div.i, %sub.i
  br i1 %cmp70.i, label %if.then71.i, label %if.end67.i.if.end74.i_crit_edge

if.end67.i.if.end74.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74.i

if.then71.i:                                      ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.ptr.div.i, ptr %22, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then71.i, %if.end67.i.if.end74.i_crit_edge
  %34 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %highest_frag_index.i, align 4
  %36 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp79.i = icmp sgt i32 %35, %37
  br i1 %cmp79.i, label %if.then80.i, label %if.end74.i.remove_symbol.exit_crit_edge

if.end74.i.remove_symbol.exit_crit_edge:          ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %remove_symbol.exit

if.then80.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %highest_frag_index.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %highest_frag_index.i, align 4
  br label %remove_symbol.exit

remove_symbol.exit:                               ; preds = %if.then80.i, %if.end74.i.remove_symbol.exit_crit_edge, %do.end43.i, %do.end.i139
  %39 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index, align 4
  %deleted = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %40, i32 12
  %41 = ptrtoint ptr %deleted to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load = load i8, ptr %deleted, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %deleted, align 4
  %42 = load i32, ptr %index, align 4
  %data = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %42, i32 3
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %44) #7
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  %data81 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 19, i32 %46, i32 3
  %47 = ptrtoint ptr %data81 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %data81, align 4
  %48 = load i32, ptr %index, align 4
  %scb_highest_frag_index = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 18
  %49 = ptrtoint ptr %scb_highest_frag_index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scb_highest_frag_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp83 = icmp slt i32 %48, %50
  br i1 %cmp83, label %if.then85, label %remove_symbol.exit.if.end88_crit_edge

remove_symbol.exit.if.end88_crit_edge:            ; preds = %remove_symbol.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then85:                                        ; preds = %remove_symbol.exit
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %scb_highest_frag_index to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %scb_highest_frag_index, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %remove_symbol.exit.if.end88_crit_edge
  %52 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index, align 4
  %54 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nscb, align 4
  %sub = add i32 %55, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub)
  %cmp91 = icmp eq i32 %53, %sub
  br i1 %cmp91, label %if.then93, label %if.end88.if.end95_crit_edge

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %nscb to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %nscb, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %if.end88.if.end95_crit_edge
  %57 = ptrtoint ptr %scb_highest_frag_index to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %scb_highest_frag_index, align 4
  %59 = ptrtoint ptr %nscb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nscb, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp98 = icmp sgt i32 %58, %60
  br i1 %cmp98, label %if.then100, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %scb_highest_frag_index to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %scb_highest_frag_index, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end95.cleanup_crit_edge, %do.end55, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dsp_unlink_scb(ptr nocapture noundef readonly %chip, ptr noundef %scb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 6
  %2 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_scb_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_list_ptr, align 4
  %cmp.not = icmp eq ptr %5, %scb
  br i1 %cmp.not, label %if.then30, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next_scb_ptr, align 4
  %cmp3.not = icmp eq ptr %7, %scb
  br i1 %cmp3.not, label %if.else61, label %do.end, !prof !133

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.then30:                                        ; preds = %if.then
  %next_scb_ptr31 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 5
  %8 = ptrtoint ptr %next_scb_ptr31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_scb_ptr31, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %10 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %the_null_scb, align 4
  %cmp32 = icmp eq ptr %9, %11
  br i1 %cmp32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then30
  %sub_list_ptr34 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 4
  %12 = ptrtoint ptr %sub_list_ptr34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sub_list_ptr34, align 4
  %14 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %sub_list_ptr, align 4
  %15 = load ptr, ptr %sub_list_ptr34, align 4
  %16 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %the_null_scb, align 4
  %cmp39.not = icmp eq ptr %15, %17
  br i1 %cmp39.not, label %if.then33.if.end75_crit_edge, label %if.then33.if.end75.sink.split_crit_edge

if.then33.if.end75.sink.split_crit_edge:          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.sink.split

if.then33.if.end75_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else:                                          ; preds = %if.then30
  %18 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %sub_list_ptr, align 4
  %19 = ptrtoint ptr %next_scb_ptr31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next_scb_ptr31, align 4
  %21 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %the_null_scb, align 4
  %cmp52.not = icmp eq ptr %20, %22
  br i1 %cmp52.not, label %if.else.if.end75_crit_edge, label %if.else.if.end75.sink.split_crit_edge

if.else.if.end75.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.sink.split

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.else61:                                        ; preds = %land.rhs
  %next_scb_ptr62 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 5
  %23 = ptrtoint ptr %next_scb_ptr62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_scb_ptr62, align 4
  %25 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %next_scb_ptr, align 4
  %26 = load ptr, ptr %next_scb_ptr62, align 4
  %the_null_scb66 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %the_null_scb66 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %the_null_scb66, align 4
  %cmp67.not = icmp eq ptr %26, %28
  br i1 %cmp67.not, label %if.else61.if.end75_crit_edge, label %if.else61.if.end75.sink.split_crit_edge

if.else61.if.end75.sink.split_crit_edge:          ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75.sink.split

if.else61.if.end75_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.end75.sink.split:                              ; preds = %if.else61.if.end75.sink.split_crit_edge, %if.else.if.end75.sink.split_crit_edge, %if.then33.if.end75.sink.split_crit_edge
  %.sink138 = phi ptr [ %15, %if.then33.if.end75.sink.split_crit_edge ], [ %20, %if.else.if.end75.sink.split_crit_edge ], [ %26, %if.else61.if.end75.sink.split_crit_edge ]
  %the_null_scb.sink.ph = phi ptr [ %the_null_scb, %if.then33.if.end75.sink.split_crit_edge ], [ %the_null_scb, %if.else.if.end75.sink.split_crit_edge ], [ %the_null_scb66, %if.else61.if.end75.sink.split_crit_edge ]
  %sub_list_ptr34.sink.ph = phi ptr [ %sub_list_ptr34, %if.then33.if.end75.sink.split_crit_edge ], [ %next_scb_ptr31, %if.else.if.end75.sink.split_crit_edge ], [ %next_scb_ptr62, %if.else61.if.end75.sink.split_crit_edge ]
  %29 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent_scb_ptr, align 4
  %parent_scb_ptr71 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %.sink138, i32 0, i32 6
  %31 = ptrtoint ptr %parent_scb_ptr71 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %parent_scb_ptr71, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end75.sink.split, %if.else61.if.end75_crit_edge, %if.else.if.end75_crit_edge, %if.then33.if.end75_crit_edge
  %the_null_scb.sink = phi ptr [ %the_null_scb, %if.then33.if.end75_crit_edge ], [ %the_null_scb, %if.else.if.end75_crit_edge ], [ %the_null_scb66, %if.else61.if.end75_crit_edge ], [ %the_null_scb.sink.ph, %if.end75.sink.split ]
  %sub_list_ptr34.sink = phi ptr [ %sub_list_ptr34, %if.then33.if.end75_crit_edge ], [ %next_scb_ptr31, %if.else.if.end75_crit_edge ], [ %next_scb_ptr62, %if.else61.if.end75_crit_edge ], [ %sub_list_ptr34.sink.ph, %if.end75.sink.split ]
  %32 = ptrtoint ptr %the_null_scb.sink to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %the_null_scb.sink, align 4
  %34 = ptrtoint ptr %sub_list_ptr34.sink to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %sub_list_ptr34.sink, align 4
  %35 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent_scb_ptr, align 4
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %38, 2
  %shl.i = add i32 %add.i, 36
  %sub_list_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %36, i32 0, i32 4
  %39 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sub_list_ptr.i, align 4
  %address1.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %address1.i, align 4
  %shl2.i = shl i32 %42, 16
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %36, i32 0, i32 5
  %43 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %next_scb_ptr.i, align 4
  %address3.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %address3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %address3.i, align 4
  %or.i = or i32 %46, %shl2.i
  %shr.i.i = lshr i32 %shl.i, 16
  %and.i.i = and i32 %shl.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %47 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %48 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %47) #7, !srcloc !138
  %updated.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %36, i32 0, i32 12
  %50 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %updated.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %updated.i, align 4
  %address.i120 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 1
  %51 = ptrtoint ptr %address.i120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %address.i120, align 4
  %add.i121 = shl i32 %52, 2
  %shl.i122 = add i32 %add.i121, 36
  %sub_list_ptr.i123 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 4
  %53 = ptrtoint ptr %sub_list_ptr.i123 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sub_list_ptr.i123, align 4
  %address1.i124 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %address1.i124 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %address1.i124, align 4
  %shl2.i125 = shl i32 %56, 16
  %next_scb_ptr.i126 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 5
  %57 = ptrtoint ptr %next_scb_ptr.i126 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %next_scb_ptr.i126, align 4
  %address3.i127 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %address3.i127 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %address3.i127, align 4
  %or.i128 = or i32 %60, %shl2.i125
  %shr.i.i129 = lshr i32 %shl.i122, 16
  %and.i.i130 = and i32 %shl.i122, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %61 = tail call i32 @llvm.bswap.i32(i32 %or.i128) #7
  %add.i.i132 = add nuw nsw i32 %shr.i.i129, 1
  %remap_addr.i.i133 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i132, i32 2
  %62 = ptrtoint ptr %remap_addr.i.i133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %remap_addr.i.i133, align 4
  %add.ptr.i.i134 = getelementptr i8, ptr %63, i32 %and.i.i130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i134, i32 %61) #7, !srcloc !138
  %updated.i135 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 12
  %64 = ptrtoint ptr %updated.i135 to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i136 = load i8, ptr %updated.i135, align 4
  %bf.set.i137 = or i8 %bf.load.i136, 64
  store i8 %bf.set.i137, ptr %updated.i135, align 4
  %65 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %parent_scb_ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs46xx_dsp_proc_free_scb_desc(ptr noundef %scb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_info = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 9
  %0 = ptrtoint ptr %proc_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_info, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %chip2 = getelementptr inbounds %struct.proc_scb_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_proc_free_scb_desc, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !134

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %scb) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then
  %10 = ptrtoint ptr %proc_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_info, align 4
  tail call void @snd_info_free_entry(ptr noundef %11) #7
  %12 = ptrtoint ptr %proc_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %proc_info, align 4
  tail call void @kfree(ptr noundef %3) #7
  br label %if.end9

if.end9:                                          ; preds = %do.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs46xx_dsp_proc_register_scb_desc(ptr noundef %chip, ptr noundef %scb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %snd_card = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end14_crit_edge, label %land.lhs.true

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %proc_dsp_dir = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %proc_dsp_dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_dsp_dir, align 4
  %cmp2.not = icmp eq ptr %5, null
  br i1 %cmp2.not, label %land.lhs.true.if.end14_crit_edge, label %land.lhs.true3

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

land.lhs.true3:                                   ; preds = %land.lhs.true
  %proc_info = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb, i32 0, i32 9
  %6 = ptrtoint ptr %proc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proc_info, align 4
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then, label %land.lhs.true3.if.end14_crit_edge

land.lhs.true3.if.end14_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true3
  %call = tail call ptr @snd_info_create_card_entry(ptr noundef nonnull %3, ptr noundef %scb, ptr noundef nonnull %5) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.out_crit_edge, label %if.then7

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then7:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 8) #10
  %tobool9.not = icmp eq ptr %call7.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_info_free_entry(ptr noundef nonnull %call) #7
  br label %out

if.end:                                           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %chip11 = getelementptr inbounds %struct.proc_scb_info, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %chip11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %chip, ptr %chip11, align 4
  %10 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %scb, ptr %call7.i, align 8
  %private_data2.i = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %private_data2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %private_data2.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @cs46xx_dsp_proc_scb_info_read, ptr %c.i, align 4
  br label %out

out:                                              ; preds = %if.end, %if.then10, %if.then.out_crit_edge
  %entry1.0 = phi ptr [ %call, %if.end ], [ null, %if.then10 ], [ null, %if.then.out_crit_edge ]
  %13 = ptrtoint ptr %proc_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry1.0, ptr %proc_info, align 4
  br label %if.end14

if.end14:                                         ; preds = %out, %land.lhs.true3.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cs46xx_dsp_proc_scb_info_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip2 = getelementptr inbounds %struct.proc_scb_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip2, align 4
  %remap_addr = getelementptr %struct.snd_cs46xx, ptr %5, i32 0, i32 3, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %remap_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %remap_addr, align 4
  %spos_mutex = getelementptr inbounds %struct.snd_cs46xx, ptr %5, i32 0, i32 27
  tail call void @mutex_lock_nested(ptr noundef %spos_mutex, i32 noundef 0) #7
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef %11, ptr noundef %3) #7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %j.063 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %col.062 = phi i32 [ 0, %entry ], [ %inc10, %if.end.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %col.062)
  %cmp4 = icmp eq i32 %col.062, 4
  br i1 %cmp4, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.44) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %col.1 = phi i32 [ 0, %if.then ], [ %col.062, %for.body.if.end_crit_edge ]
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %16 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %address, align 4
  %add = add i32 %17, %j.063
  %mul = shl i32 %add, 2
  %add.ptr8 = getelementptr i8, ptr %7, i32 %mul
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #7, !srcloc !139
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %15, ptr noundef nonnull @.str.45, i32 noundef %19) #7
  %inc = add nuw nsw i32 %j.063, 1
  %inc10 = add i32 %col.1, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef nonnull @.str.44) #7
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_scb_ptr, align 4
  %cmp12.not = icmp eq ptr %23, null
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  br i1 %cmp12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %address19 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %address19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %address19, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.46, ptr noundef nonnull %23, i32 noundef %27) #7
  br label %if.end21

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %25, ptr noundef nonnull @.str.47) #7
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then13
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buffer, align 4
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sub_list_ptr, align 4
  %address26 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %address26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %address26, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %next_scb_ptr, align 4
  %address30 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %address30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address30, align 4
  %task_entry = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %task_entry to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %task_entry, align 4
  %symbol_name = getelementptr inbounds %struct.dsp_symbol_entry, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %29, ptr noundef nonnull @.str.48, ptr noundef %31, i32 noundef %33, ptr noundef %35, i32 noundef %37, ptr noundef %symbol_name, i32 noundef %41) #7
  %42 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buffer, align 4
  %index = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %index, align 4
  %ref_count = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ref_count, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %43, ptr noundef nonnull @.str.49, i32 noundef %45, i32 noundef %47) #7
  tail call void @mutex_unlock(ptr noundef %spos_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_timing_master_scb(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %timing_master_scb = alloca %struct.dsp_timing_master_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %timing_master_scb) #7
  %0 = call ptr @memset(ptr %timing_master_scb, i32 0, i32 60)
  %1 = getelementptr inbounds %struct.dsp_timing_master_scb, ptr %timing_master_scb, i32 0, i32 10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1, ptr %1, align 4
  %3 = getelementptr inbounds %struct.dsp_timing_master_scb, ptr %timing_master_scb, i32 0, i32 11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -32768, ptr %3, align 2
  %5 = getelementptr inbounds %struct.dsp_timing_master_scb, ptr %timing_master_scb, i32 0, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dsp_timing_master_scb, ptr %timing_master_scb, i32 0, i32 14
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 393216, ptr %7, align 4
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.5, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.5) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef nonnull @.str.4, ptr noundef nonnull %timing_master_scb, i32 noundef 16, ptr noundef nonnull %call.i, ptr noundef null, i32 noundef 0) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %timing_master_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_codec_out_scb(ptr noundef %chip, ptr noundef %codec_name, i16 noundef zeroext %channel_disp, i16 noundef zeroext %fifo_addr, i16 noundef zeroext %child_scb_addr, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %codec_out_scb = alloca %struct.dsp_codec_output_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %codec_out_scb) #7
  %0 = call ptr @memset(ptr %codec_out_scb, i32 0, i32 64)
  %right_chan_IO_disp = getelementptr inbounds %struct.dsp_codec_output_scb, ptr %codec_out_scb, i32 0, i32 8
  %1 = ptrtoint ptr %right_chan_IO_disp to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %channel_disp, ptr %right_chan_IO_disp, align 4
  %left_chan_base_IO_addr = getelementptr inbounds %struct.dsp_codec_output_scb, ptr %codec_out_scb, i32 0, i32 9
  %2 = ptrtoint ptr %left_chan_base_IO_addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %fifo_addr, ptr %left_chan_base_IO_addr, align 2
  %CO_scale_shift_count = getelementptr inbounds %struct.dsp_codec_output_scb, ptr %codec_out_scb, i32 0, i32 11
  %3 = ptrtoint ptr %CO_scale_shift_count to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %CO_scale_shift_count, align 2
  %reserved = getelementptr inbounds %struct.dsp_codec_output_scb, ptr %codec_out_scb, i32 0, i32 13
  %4 = ptrtoint ptr %reserved to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %child_scb_addr, ptr %reserved, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.6, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %5 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %codec_name, ptr noundef nonnull %codec_out_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %codec_out_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_codec_in_scb(ptr noundef %chip, ptr noundef %codec_name, i16 noundef zeroext %channel_disp, i16 noundef zeroext %fifo_addr, i16 noundef zeroext %sample_buffer_addr, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %codec_input_scb = alloca %struct.dsp_codec_input_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %codec_input_scb) #7
  %0 = call ptr @memset(ptr %codec_input_scb, i32 0, i32 60)
  %strm_rs_config = getelementptr inbounds %struct.dsp_codec_input_scb, ptr %codec_input_scb, i32 0, i32 6
  %1 = ptrtoint ptr %strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 195, ptr %strm_rs_config, align 4
  %strm_buf_ptr = getelementptr inbounds %struct.dsp_codec_input_scb, ptr %codec_input_scb, i32 0, i32 7
  %conv = zext i16 %sample_buffer_addr to i32
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %strm_buf_ptr, align 4
  %left_chan_base_IN_addr = getelementptr inbounds %struct.dsp_codec_input_scb, ptr %codec_input_scb, i32 0, i32 8
  %3 = ptrtoint ptr %left_chan_base_IN_addr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %channel_disp, ptr %left_chan_base_IN_addr, align 4
  %rightChanINdisp = getelementptr inbounds %struct.dsp_codec_input_scb, ptr %codec_input_scb, i32 0, i32 9
  %4 = ptrtoint ptr %rightChanINdisp to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %fifo_addr, ptr %rightChanINdisp, align 2
  %reserved2 = getelementptr inbounds %struct.dsp_codec_input_scb, ptr %codec_input_scb, i32 0, i32 12
  %5 = ptrtoint ptr %reserved2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147450880, ptr %reserved2, align 4
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.7, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.7) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %codec_name, ptr noundef nonnull %codec_input_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %codec_input_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_src_task_scb(ptr noundef %chip, ptr noundef %scb_name, i32 noundef %rate, i16 noundef zeroext %src_buffer_addr, i16 noundef zeroext %src_delay_buffer_addr, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type, i32 noundef %pass_through) local_unnamed_addr #0 align 64 {
entry:
  %src_task_scb = alloca %struct.dsp_src_task_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_create_src_task_scb.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_src_task_scb, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_create_src_task_scb.__UNIQUE_ID_ddebug240, ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %scb_name, i32 noundef %rate) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %shl = shl i32 %rate, 16
  %div = udiv i32 %shl, 48000
  %mul.neg = mul i32 %div, 4146304
  %sub = add i32 %mul.neg, %shl
  %shl3 = shl i32 %sub, 10
  %shl4 = shl nuw nsw i32 %div, 10
  %div5 = udiv i32 %shl3, 48000
  %add = add nuw nsw i32 %div5, %shl4
  %mul6.neg = mul i32 %div5, -48000
  %sub7 = add i32 %mul6.neg, %shl3
  %div8 = udiv i32 %sub7, 200
  %mul9.neg = mul i32 %div8, 65336
  %sub10 = add i32 %mul9.neg, %sub7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %src_task_scb) #7
  %6 = getelementptr inbounds i8, ptr %src_task_scb, i32 56
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 -1, ptr %6, align 4, !annotation !141
  %8 = ptrtoint ptr %src_task_scb to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 40, ptr %src_task_scb, align 4
  %frames_left_in_gof = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 1
  %9 = ptrtoint ptr %frames_left_in_gof to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 200, ptr %frames_left_in_gof, align 2
  %num_extra_tnput_samples = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 2
  %10 = ptrtoint ptr %num_extra_tnput_samples to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 21845, ptr %num_extra_tnput_samples, align 4
  %const2_thirds = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 3
  %11 = ptrtoint ptr %const2_thirds to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %const2_thirds, align 2
  %correction_per_sec = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 4
  %12 = ptrtoint ptr %correction_per_sec to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %correction_per_sec, align 4
  %cor_per_gof = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 5
  %13 = ptrtoint ptr %cor_per_gof to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %cor_per_gof, align 2
  %junk_DMA_MID = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 6
  %14 = ptrtoint ptr %junk_DMA_MID to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %src_buffer_addr, ptr %junk_DMA_MID, align 4
  %output_buf_producer_ptr = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 7
  %15 = ptrtoint ptr %output_buf_producer_ptr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %output_buf_producer_ptr, align 2
  %gofs_per_sec = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 8
  %conv = trunc i32 %div8 to i16
  %16 = ptrtoint ptr %gofs_per_sec to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %gofs_per_sec, align 4
  %gof_length = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 9
  %conv11 = trunc i32 %sub10 to i16
  %17 = ptrtoint ptr %gof_length to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv11, ptr %gof_length, align 2
  %input_buf_strm_config = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 10
  %18 = ptrtoint ptr %input_buf_strm_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 194, ptr %input_buf_strm_config, align 4
  %input_buf_consumer_ptr = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 11
  %19 = ptrtoint ptr %input_buf_consumer_ptr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %input_buf_consumer_ptr, align 4
  %reserved_for_SRC_use = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 12
  %20 = ptrtoint ptr %reserved_for_SRC_use to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %src_delay_buffer_addr, ptr %reserved_for_SRC_use, align 2
  %accum_phi = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 13
  %21 = ptrtoint ptr %accum_phi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %accum_phi, align 4
  %input_buf_producer_ptr = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 14
  %22 = ptrtoint ptr %input_buf_producer_ptr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 128, ptr %input_buf_producer_ptr, align 4
  %exp_src_vol_change_rate = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 15
  %conv12 = zext i16 %src_delay_buffer_addr to i32
  %add13 = add i16 %src_delay_buffer_addr, 96
  %23 = ptrtoint ptr %exp_src_vol_change_rate to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %add13, ptr %exp_src_vol_change_rate, align 2
  %src_sub_list_ptr = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 16
  %src_strm_rs_config = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 20
  %24 = ptrtoint ptr %src_sub_list_ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %src_sub_list_ptr, align 4
  %25 = ptrtoint ptr %src_strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 201, ptr %src_strm_rs_config, align 4
  %src_strm_buf_ptr = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 21
  %conv15 = zext i16 %src_buffer_addr to i32
  %shl16 = shl nuw i32 %conv15, 16
  %26 = ptrtoint ptr %src_strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl16, ptr %src_strm_buf_ptr, align 4
  %phiIncr6int_26frac = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 22
  %27 = ptrtoint ptr %phiIncr6int_26frac to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add, ptr %phiIncr6int_26frac, align 4
  %src_vol_ctrl = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 23
  %dac_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %dac_volume_right to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dac_volume_right, align 4
  %30 = xor i16 %29, -1
  %31 = ptrtoint ptr %src_vol_ctrl to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %src_vol_ctrl, align 4
  %rightTarg = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 23, i32 1
  %dac_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %dac_volume_left to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %dac_volume_left, align 2
  %34 = xor i16 %33, -1
  %35 = ptrtoint ptr %rightTarg to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %rightTarg, align 2
  %leftVol = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 23, i32 2
  %36 = load i16, ptr %dac_volume_right, align 4
  %37 = xor i16 %36, -1
  %38 = ptrtoint ptr %leftVol to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %leftVol, align 4
  %rightVol = getelementptr inbounds %struct.dsp_src_task_scb, ptr %src_task_scb, i32 0, i32 23, i32 3
  %39 = load i16, ptr %dac_volume_left, align 2
  %40 = xor i16 %39, -1
  %41 = ptrtoint ptr %rightVol to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %rightVol, align 2
  %s16_up = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 14
  %42 = ptrtoint ptr %s16_up to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s16_up, align 4
  %cmp = icmp eq ptr %43, null
  br i1 %cmp, label %if.then32, label %do.end.if.end45_crit_edge

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then32:                                        ; preds = %do.end
  %call33 = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.10, i32 noundef 3) #7
  %44 = ptrtoint ptr %s16_up to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call33, ptr %s16_up, align 4
  %cmp36 = icmp eq ptr %call33, null
  br i1 %cmp36, label %cleanup, label %if.then32.if.end45_crit_edge

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45:                                         ; preds = %if.then32.if.end45_crit_edge, %do.end.if.end45_crit_edge
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 2, i32 2
  %45 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 %conv15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !138
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #7, !srcloc !138
  %add.ptr1.i.1 = getelementptr i8, ptr %add.ptr1.i, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 0) #7, !srcloc !138
  %add.ptr1.i.2 = getelementptr i8, ptr %add.ptr1.i.1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.2, i32 0) #7, !srcloc !138
  %add.ptr1.i.3 = getelementptr i8, ptr %add.ptr1.i.2, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.3, i32 0) #7, !srcloc !138
  %add.ptr1.i.4 = getelementptr i8, ptr %add.ptr1.i.3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.4, i32 0) #7, !srcloc !138
  %add.ptr1.i.5 = getelementptr i8, ptr %add.ptr1.i.4, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.5, i32 0) #7, !srcloc !138
  %add.ptr1.i.6 = getelementptr i8, ptr %add.ptr1.i.5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.6, i32 0) #7, !srcloc !138
  %47 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %48, i32 %conv12
  br label %do.body.i137

do.body.i137:                                     ; preds = %do.body.i137.do.body.i137_crit_edge, %if.end45
  %i.06.i132 = phi i32 [ %inc.i135, %do.body.i137.do.body.i137_crit_edge ], [ 0, %if.end45 ]
  %dst.05.i133 = phi ptr [ %add.ptr1.i134, %do.body.i137.do.body.i137_crit_edge ], [ %add.ptr.i131, %if.end45 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.05.i133, i32 0) #7, !srcloc !138
  %add.ptr1.i134 = getelementptr i8, ptr %dst.05.i133, i32 4
  %inc.i135 = add nuw nsw i32 %i.06.i132, 1
  %exitcond.not.i136 = icmp eq i32 %inc.i135, 32
  br i1 %exitcond.not.i136, label %_dsp_clear_sample_buffer.exit138, label %do.body.i137.do.body.i137_crit_edge

do.body.i137.do.body.i137_crit_edge:              ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i137

_dsp_clear_sample_buffer.exit138:                 ; preds = %do.body.i137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pass_through)
  %tobool48.not = icmp eq i32 %pass_through, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %_dsp_clear_sample_buffer.exit138
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp50.not = icmp eq i32 %rate, 48000
  br i1 %cmp50.not, label %if.then49.if.end73_crit_edge, label %do.end67, !prof !133

if.then49.if.end73_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73

do.end67:                                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 672, i32 noundef 9, ptr noundef null) #7
  br label %if.end73

if.end73:                                         ; preds = %do.end67, %if.then49.if.end73_crit_edge
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.14, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %49 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %50, i32 0, i32 27
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.14) #11
  br label %59

if.end.i:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %src_task_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %59

if.else:                                          ; preds = %_dsp_clear_sample_buffer.exit138
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %s16_up to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %s16_up, align 4
  %call83 = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %src_task_scb, i32 noundef %dest, ptr noundef %54, ptr noundef %parent_scb, i32 noundef %scb_child_type)
  br label %59

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %card42 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %55 = ptrtoint ptr %card42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %card42, align 4
  %dev43 = getelementptr inbounds %struct.snd_card, ptr %56, i32 0, i32 27
  %57 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev43, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.11) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %src_task_scb) #7
  br label %60

59:                                               ; preds = %if.else, %if.end.i, %do.end.i
  %scb.1.ph = phi ptr [ %call1.i, %if.end.i ], [ null, %do.end.i ], [ %call83, %if.else ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %src_task_scb) #7
  br label %60

60:                                               ; preds = %59, %cleanup
  %61 = phi ptr [ %scb.1.ph, %59 ], [ null, %cleanup ]
  ret ptr %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_lookup_symbol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %name, ptr noundef %scb_data, i32 noundef %dest, ptr noundef %task_entry, ptr noundef %parent_scb, i32 noundef %scb_child_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %the_null_scb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !135

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 275, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %shl = shl i32 %5, 16
  %or = or i32 %shl, %5
  %arrayidx = getelementptr i32, ptr %scb_data, i32 9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %arrayidx, align 4
  %arrayidx27 = getelementptr i32, ptr %scb_data, i32 10
  %7 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx27, align 4
  %and = and i32 %8, -65536
  store i32 %and, ptr %arrayidx27, align 4
  %9 = ptrtoint ptr %task_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %task_entry, align 4
  %or30 = or i32 %10, %and
  store i32 %or30, ptr %arrayidx27, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_dsp_create_generic_scb.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dsp_create_generic_scb, %if.then40)) #7
          to label %do.end43 [label %if.then40], !srcloc !134

if.then40:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_dsp_create_generic_scb.__UNIQUE_ID_ddebug239, ptr noundef %14, ptr noundef nonnull @.str.53, ptr noundef %name) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %if.end23
  %call44 = tail call ptr @cs46xx_dsp_create_scb(ptr noundef %chip, ptr noundef %name, ptr noundef %scb_data, i32 noundef %dest) #7
  %15 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %the_null_scb, align 4
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call44, i32 0, i32 4
  %17 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sub_list_ptr, align 4
  %18 = load ptr, ptr %the_null_scb, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call44, i32 0, i32 5
  %19 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %next_scb_ptr, align 4
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call44, i32 0, i32 6
  %20 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %parent_scb, ptr %parent_scb_ptr, align 4
  %task_entry47 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call44, i32 0, i32 7
  %21 = ptrtoint ptr %task_entry47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %task_entry, ptr %task_entry47, align 4
  %tobool49.not = icmp eq ptr %parent_scb, null
  br i1 %tobool49.not, label %do.end43.if.end173_crit_edge, label %if.then50

do.end43.if.end173_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end173

if.then50:                                        ; preds = %do.end43
  %22 = zext i32 %scb_child_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %scb_child_type, label %do.end145 [
    i32 1, label %if.then51
    i32 2, label %if.then92
  ]

if.then51:                                        ; preds = %if.then50
  %next_scb_ptr54 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb, i32 0, i32 5
  %23 = ptrtoint ptr %next_scb_ptr54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %next_scb_ptr54, align 4
  %25 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %the_null_scb, align 4
  %cmp56.not = icmp eq ptr %24, %26
  br i1 %cmp56.not, label %if.end88, label %do.end72, !prof !133

do.end72:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end88:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %next_scb_ptr54 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call44, ptr %next_scb_ptr54, align 4
  br label %do.body162

if.then92:                                        ; preds = %if.then50
  %sub_list_ptr95 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb, i32 0, i32 4
  %28 = ptrtoint ptr %sub_list_ptr95 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sub_list_ptr95, align 4
  %30 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %the_null_scb, align 4
  %cmp97.not = icmp eq ptr %29, %31
  br i1 %cmp97.not, label %if.end129, label %do.end113, !prof !133

do.end113:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 320, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end129:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %sub_list_ptr95 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call44, ptr %sub_list_ptr95, align 4
  br label %do.body162

do.end145:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef nonnull @.str.21) #7
  br label %do.body162

do.body162:                                       ; preds = %do.end145, %if.end129, %if.end88
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call166 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %33 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent_scb_ptr, align 4
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %36, 2
  %shl.i = add i32 %add.i, 36
  %sub_list_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %34, i32 0, i32 4
  %37 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sub_list_ptr.i, align 4
  %address1.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %address1.i, align 4
  %shl2.i = shl i32 %40, 16
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %34, i32 0, i32 5
  %41 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %next_scb_ptr.i, align 4
  %address3.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %address3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %address3.i, align 4
  %or.i = or i32 %44, %shl2.i
  %shr.i.i = lshr i32 %shl.i, 16
  %and.i.i = and i32 %shl.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %46 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %45) #7, !srcloc !138
  %updated.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %34, i32 0, i32 12
  %48 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %updated.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %updated.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call166) #7
  br label %if.end173

if.end173:                                        ; preds = %do.body162, %do.end43.if.end173_crit_edge
  %49 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dsp_spos_instance, align 4
  %snd_card.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %snd_card.i, align 4
  %cmp.not.i = icmp eq ptr %52, null
  br i1 %cmp.not.i, label %if.end173.cleanup_crit_edge, label %land.lhs.true.i

if.end173.cleanup_crit_edge:                      ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end173
  %proc_dsp_dir.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %50, i32 0, i32 16
  %53 = ptrtoint ptr %proc_dsp_dir.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %proc_dsp_dir.i, align 4
  %cmp2.not.i = icmp eq ptr %54, null
  br i1 %cmp2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %proc_info.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %call44, i32 0, i32 9
  %55 = ptrtoint ptr %proc_info.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %proc_info.i, align 4
  %cmp4.i = icmp eq ptr %56, null
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true3.i.cleanup_crit_edge

land.lhs.true3.i.cleanup_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true3.i
  %call.i = tail call ptr @snd_info_create_card_entry(ptr noundef nonnull %52, ptr noundef %call44, ptr noundef nonnull %54) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.i.out.i_crit_edge, label %if.then7.i

if.then.i.out.i_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 8) #10
  %tobool9.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_info_free_entry(ptr noundef nonnull %call.i) #7
  br label %out.i

if.end.i:                                         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %chip11.i = getelementptr inbounds %struct.proc_scb_info, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %chip11.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %chip, ptr %chip11.i, align 4
  %59 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call44, ptr %call7.i.i, align 8
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 7
  %60 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call7.i.i, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i, i32 0, i32 4
  %61 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @cs46xx_dsp_proc_scb_info_read, ptr %c.i.i, align 4
  br label %out.i

out.i:                                            ; preds = %if.end.i, %if.then10.i, %if.then.i.out.i_crit_edge
  %entry1.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %if.then10.i ], [ null, %if.then.i.out.i_crit_edge ]
  %62 = ptrtoint ptr %proc_info.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %entry1.0.i, ptr %proc_info.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %out.i, %land.lhs.true3.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end173.cleanup_crit_edge, %do.end113, %do.end72, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end72 ], [ null, %do.end113 ], [ %call44, %if.end173.cleanup_crit_edge ], [ %call44, %land.lhs.true.i.cleanup_crit_edge ], [ %call44, %land.lhs.true3.i.cleanup_crit_edge ], [ %call44, %out.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_mix_only_scb(ptr noundef %chip, ptr noundef %scb_name, i16 noundef zeroext %mix_buffer_addr, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %master_mix_scb = alloca %struct.dsp_mix_only_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %master_mix_scb) #7
  %0 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %master_mix_scb, align 4
  %dmw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %master_mix_scb, i32 0, i32 1
  %1 = ptrtoint ptr %dmw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dmw, align 4
  %saw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %master_mix_scb, i32 0, i32 2
  %conv = zext i16 %mix_buffer_addr to i32
  %2 = ptrtoint ptr %saw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %saw, align 4
  %daw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %master_mix_scb, i32 0, i32 3
  %sgaw = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 1, i32 4
  %3 = call ptr @memset(ptr %daw, i32 0, i32 20)
  %4 = ptrtoint ptr %sgaw to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 128, ptr %sgaw, align 4
  %sub_list_ptr = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 2
  %strm_rs_config = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 6
  %5 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %sub_list_ptr, align 4
  %6 = ptrtoint ptr %strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 194, ptr %strm_rs_config, align 4
  %strm_buf_ptr = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 7
  %add = shl nuw i32 %conv, 16
  %shl = add i32 %add, 4194304
  %7 = ptrtoint ptr %strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %strm_buf_ptr, align 4
  %reserved = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 8
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reserved, align 4
  %vol_ctrl = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 9
  %9 = ptrtoint ptr %vol_ctrl to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -32768, ptr %vol_ctrl, align 4
  %rightTarg = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %rightTarg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -32768, ptr %rightTarg, align 2
  %leftVol = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %leftVol to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -32768, ptr %leftVol, align 4
  %rightVol = getelementptr inbounds %struct.dsp_mix_only_scb, ptr %master_mix_scb, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %rightVol to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -32768, ptr %rightVol, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.15, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %13 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.15) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %master_mix_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %master_mix_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_mix_to_ostream_scb(ptr noundef %chip, ptr noundef %scb_name, i16 noundef zeroext %mix_buffer_addr, i16 noundef zeroext %writeback_spb, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %mix2_ostream_scb = alloca %struct.dsp_mix2_ostream_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %mix2_ostream_scb) #7
  %0 = ptrtoint ptr %mix2_ostream_scb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1069547535, ptr %mix2_ostream_scb, align 4
  %dmw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %mix2_ostream_scb, i32 0, i32 1
  %1 = ptrtoint ptr %dmw to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 769, ptr %dmw, align 4
  %saw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %mix2_ostream_scb, i32 0, i32 2
  %conv = zext i16 %mix_buffer_addr to i32
  %add = or i32 %conv, 65536
  %2 = ptrtoint ptr %saw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %add, ptr %saw, align 4
  %daw = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %mix2_ostream_scb, i32 0, i32 3
  %entry_point = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 5
  %3 = call ptr @memset(ptr %daw, i32 0, i32 30)
  %4 = ptrtoint ptr %entry_point to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %writeback_spb, ptr %entry_point, align 2
  %strm_rs_config = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 6
  %5 = shl i32 %dest, 12
  %6 = add i32 %5, 855638016
  %add1 = and i32 %6, -65536
  %add4 = or i32 %add1, 32963
  %7 = ptrtoint ptr %strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add4, ptr %strm_rs_config, align 4
  %strm_buf_ptr = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 7
  %add6 = shl nuw i32 %conv, 16
  %shl7 = add i32 %add6, 8388608
  %8 = ptrtoint ptr %strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl7, ptr %strm_buf_ptr, align 4
  %accum_input_triplets = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 8
  %9 = ptrtoint ptr %accum_input_triplets to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %accum_input_triplets, align 4
  %frames_left_in_group = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 9
  %10 = ptrtoint ptr %frames_left_in_group to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %frames_left_in_group, align 2
  %exp_vol_change_rate = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 10
  %11 = ptrtoint ptr %exp_vol_change_rate to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %exp_vol_change_rate, align 4
  %frame_group_length = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 11
  %12 = ptrtoint ptr %frame_group_length to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 128, ptr %frame_group_length, align 2
  %const_zero = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 12
  %13 = ptrtoint ptr %const_zero to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %const_zero, align 4
  %const_FFFF = getelementptr inbounds %struct.dsp_mix2_ostream_scb, ptr %mix2_ostream_scb, i32 0, i32 13
  %14 = ptrtoint ptr %const_FFFF to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %const_FFFF, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.16, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.16) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %mix2_ostream_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %mix2_ostream_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_vari_decimate_scb(ptr noundef %chip, ptr noundef %scb_name, i16 noundef zeroext %vari_buffer_addr0, i16 noundef zeroext %vari_buffer_addr1, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %vari_decimate_scb = alloca %struct.dsp_vari_decimate_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %vari_decimate_scb) #7
  %0 = ptrtoint ptr %vari_decimate_scb to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 40, ptr %vari_decimate_scb, align 4
  %vdec_frames_left_in_gof = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 1
  %1 = ptrtoint ptr %vdec_frames_left_in_gof to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 200, ptr %vdec_frames_left_in_gof, align 2
  %vdec_extra_in_samples = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 2
  %2 = ptrtoint ptr %vdec_extra_in_samples to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 21845, ptr %vdec_extra_in_samples, align 4
  %vdec_const2_thirds = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 3
  %3 = ptrtoint ptr %vdec_const2_thirds to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %vdec_const2_thirds, align 2
  %vdec_correction_per_sec = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 4
  %4 = ptrtoint ptr %vdec_correction_per_sec to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %vdec_correction_per_sec, align 4
  %vdec_cor_per_gof = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 5
  %5 = ptrtoint ptr %vdec_cor_per_gof to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %vdec_cor_per_gof, align 2
  %vdec_input_buf_consumer_ptr = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 6
  %6 = ptrtoint ptr %vdec_input_buf_consumer_ptr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vari_buffer_addr0, ptr %vdec_input_buf_consumer_ptr, align 4
  %vdec_output_buf_producer_ptr = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 7
  %7 = ptrtoint ptr %vdec_output_buf_producer_ptr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %vari_buffer_addr1, ptr %vdec_output_buf_producer_ptr, align 2
  %vdec_gofs_per_sec = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 8
  %8 = ptrtoint ptr %vdec_gofs_per_sec to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 40, ptr %vdec_gofs_per_sec, align 4
  %vdec_gof_length = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 9
  %9 = ptrtoint ptr %vdec_gof_length to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 200, ptr %vdec_gof_length, align 2
  %vdec_input_buf_strm_config = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 10
  %10 = ptrtoint ptr %vdec_input_buf_strm_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 197, ptr %vdec_input_buf_strm_config, align 4
  %vdec_coef_increment = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 11
  %11 = ptrtoint ptr %vdec_coef_increment to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -8388608, ptr %vdec_coef_increment, align 4
  %vdec_accumphi = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 12
  %12 = ptrtoint ptr %vdec_accumphi to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %vdec_accumphi, align 4
  %vdec_input_buf_producer_ptr = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 13
  %13 = ptrtoint ptr %vdec_input_buf_producer_ptr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 128, ptr %vdec_input_buf_producer_ptr, align 4
  %vdec_exp_vol_change_rate = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 14
  %add = add i16 %vari_buffer_addr1, 100
  %14 = ptrtoint ptr %vdec_exp_vol_change_rate to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %add, ptr %vdec_exp_vol_change_rate, align 2
  %vdec_sub_list_ptr = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 15
  %vdec_strm_rs_config = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 19
  %15 = ptrtoint ptr %vdec_sub_list_ptr to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 0, ptr %vdec_sub_list_ptr, align 4
  %16 = ptrtoint ptr %vdec_strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 201, ptr %vdec_strm_rs_config, align 4
  %vdec_strm_buf_ptr = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 20
  %conv2 = zext i16 %vari_buffer_addr0 to i32
  %shl = shl nuw i32 %conv2, 16
  %17 = ptrtoint ptr %vdec_strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl, ptr %vdec_strm_buf_ptr, align 4
  %vdec_phi_incr_6int_26frac = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 21
  %18 = ptrtoint ptr %vdec_phi_incr_6int_26frac to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 67108864, ptr %vdec_phi_incr_6int_26frac, align 4
  %vdec_vol_ctrl = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 22
  %19 = ptrtoint ptr %vdec_vol_ctrl to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -32768, ptr %vdec_vol_ctrl, align 4
  %rightTarg = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 22, i32 1
  %20 = ptrtoint ptr %rightTarg to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -32768, ptr %rightTarg, align 2
  %leftVol = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 22, i32 2
  %21 = ptrtoint ptr %leftVol to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -1, ptr %leftVol, align 4
  %rightVol = getelementptr inbounds %struct.dsp_vari_decimate_scb, ptr %vari_decimate_scb, i32 0, i32 22, i32 3
  %22 = ptrtoint ptr %rightVol to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %rightVol, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.17, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %23 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.17) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %vari_decimate_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %vari_decimate_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_asynch_fg_rx_scb(ptr noundef %chip, ptr noundef %scb_name, i32 noundef %dest, i16 noundef zeroext %hfg_scb_address, i16 noundef zeroext %asynch_buffer_address, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %asynch_fg_rx_scb = alloca %struct.dsp_asynch_fg_rx_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %asynch_fg_rx_scb) #7
  %2 = ptrtoint ptr %asynch_fg_rx_scb to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -512, ptr %asynch_fg_rx_scb, align 4
  %bot_buf_mask = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 1
  %3 = ptrtoint ptr %bot_buf_mask to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 511, ptr %bot_buf_mask, align 2
  %min = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 2
  %4 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 100, ptr %min, align 4
  %max = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 3
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 28, ptr %max, align 2
  %hfg_scb_ptr = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 4
  %6 = ptrtoint ptr %hfg_scb_ptr to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %hfg_scb_ptr, align 4
  %old_producer_pointer = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 5
  %7 = ptrtoint ptr %old_producer_pointer to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %hfg_scb_address, ptr %old_producer_pointer, align 2
  %adjust_count = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 6
  %code_ptr = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 12
  %conv = trunc i32 %dest to i16
  %8 = call ptr @memset(ptr %adjust_count, i32 0, i32 30)
  %9 = ptrtoint ptr %code_ptr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %code_ptr, align 2
  %strm_rs_config = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 13
  %10 = ptrtoint ptr %strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196, ptr %strm_rs_config, align 4
  %strm_buf_ptr = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 14
  %conv1 = zext i16 %asynch_buffer_address to i32
  %add = shl nuw i32 %conv1, 16
  %shl = add i32 %add, 4194304
  %11 = ptrtoint ptr %strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %strm_buf_ptr, align 4
  %unused_phi_incr = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 15
  %12 = ptrtoint ptr %unused_phi_incr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 402653184, ptr %unused_phi_incr, align 4
  %left_targ = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 16
  %spdif_input_volume_right = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %spdif_input_volume_right to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %spdif_input_volume_right, align 4
  %15 = xor i16 %14, -1
  %16 = ptrtoint ptr %left_targ to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %left_targ, align 4
  %right_targ = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 17
  %spdif_input_volume_left = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 26
  %17 = ptrtoint ptr %spdif_input_volume_left to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %spdif_input_volume_left, align 2
  %19 = xor i16 %18, -1
  %20 = ptrtoint ptr %right_targ to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %right_targ, align 2
  %left_vol = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 18
  %21 = ptrtoint ptr %left_vol to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %15, ptr %left_vol, align 4
  %right_vol = getelementptr inbounds %struct.dsp_asynch_fg_rx_scb, ptr %asynch_fg_rx_scb, i32 0, i32 19
  %22 = ptrtoint ptr %right_vol to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %19, ptr %right_vol, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.18, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %23 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.18) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %asynch_fg_rx_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %asynch_fg_rx_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_spio_write_scb(ptr noundef %chip, ptr noundef %scb_name, i32 noundef %dest, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %spio_write_scb = alloca %struct.dsp_spio_write_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %spio_write_scb) #7
  %0 = call ptr @memset(ptr %spio_write_scb, i32 0, i32 64)
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.19, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %1 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.19) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %spio_write_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %spio_write_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_magic_snoop_scb(ptr noundef %chip, ptr noundef %scb_name, i32 noundef %dest, i16 noundef zeroext %snoop_buffer_address, ptr nocapture noundef readonly %snoop_scb, ptr noundef %parent_scb, i32 noundef %scb_child_type) local_unnamed_addr #0 align 64 {
entry:
  %magic_snoop_scb = alloca %struct.dsp_magic_snoop_task, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %magic_snoop_scb) #7
  %0 = ptrtoint ptr %magic_snoop_scb to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %magic_snoop_scb, align 4
  %i1 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 1
  %1 = ptrtoint ptr %i1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %i1, align 4
  %strm_buf_ptr1 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 2
  %conv = zext i16 %snoop_buffer_address to i32
  %shl = shl nuw i32 %conv, 16
  %2 = ptrtoint ptr %strm_buf_ptr1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %strm_buf_ptr1, align 4
  %i2 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 3
  %3 = ptrtoint ptr %i2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %i2, align 4
  %snoop_scb1 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %snoop_scb, i32 0, i32 1
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %conv2 = trunc i32 %5 to i16
  %6 = ptrtoint ptr %snoop_scb1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv2, ptr %snoop_scb1, align 2
  %i3 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 5
  %strm_buf_config = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 14
  %7 = call ptr @memset(ptr %i3, i32 0, i32 28)
  %8 = ptrtoint ptr %strm_buf_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 195, ptr %strm_buf_config, align 4
  %strm_buf_ptr2 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 15
  %9 = ptrtoint ptr %strm_buf_ptr2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %strm_buf_ptr2, align 4
  %i8 = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 16
  %10 = ptrtoint ptr %i8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %i8, align 4
  %vdec_vol_ctrl = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 17
  %11 = ptrtoint ptr %vdec_vol_ctrl to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 -32768, ptr %vdec_vol_ctrl, align 4
  %rightTarg = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %rightTarg to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -32768, ptr %rightTarg, align 2
  %leftVol = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %leftVol to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %leftVol, align 4
  %rightVol = getelementptr inbounds %struct.dsp_magic_snoop_task, ptr %magic_snoop_scb, i32 0, i32 17, i32 3
  %14 = ptrtoint ptr %rightVol to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %rightVol, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.20, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %15 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.20) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %magic_snoop_scb, i32 noundef %dest, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef %scb_child_type) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %magic_snoop_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_dsp_create_pcm_channel(ptr noundef %chip, i32 noundef %sample_rate, ptr noundef %private_data, i32 noundef %hw_dma_addr, i32 noundef %pcm_channel_id) local_unnamed_addr #0 align 64 {
entry:
  %pcm_reader_scb.i = alloca %struct.dsp_generic_scb, align 4
  %scb_name = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %scb_name) #7
  %2 = call ptr @memset(ptr %scb_name, i32 255, i32 60)
  %3 = zext i32 %pcm_channel_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %pcm_channel_id, label %do.end83 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %do.end
    i32 5, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_mix_scb, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rear_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %rear_mix_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rear_mix_scb, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %center_lfe_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %center_lfe_mix_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %center_lfe_mix_scb, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1244, i32 noundef 9, ptr noundef nonnull @.str.21) #7
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  %asynch_tx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %asynch_tx_scb, align 4
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %do.end38, label %if.end54, !prof !135

do.end38:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1247, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end54:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %sample_rate)
  %cmp = icmp eq i32 %sample_rate, 48000
  br i1 %cmp, label %do.body57, label %if.end54.sw.epilog_crit_edge

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_pcm_channel, %if.then66)) #7
          to label %sw.epilog [label %if.then66], !srcloc !134

if.then66:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug241, ptr noundef %15, ptr noundef nonnull @.str.23) #7
  br label %sw.epilog

do.end83:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1261, i32 noundef 9, ptr noundef nonnull @.str.21) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.then66, %do.body57, %if.end54.sw.epilog_crit_edge, %do.end, %sw.bb2, %sw.bb1, %sw.bb
  %pass_through.0 = phi i32 [ 0, %if.end54.sw.epilog_crit_edge ], [ 0, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ], [ 1, %if.then66 ], [ 1, %do.body57 ]
  %mixer_scb.0 = phi ptr [ %11, %if.end54.sw.epilog_crit_edge ], [ null, %do.end ], [ %9, %sw.bb2 ], [ %7, %sw.bb1 ], [ %5, %sw.bb ], [ %11, %if.then66 ], [ %11, %do.body57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sample_rate)
  %tobool97.not = icmp eq i32 %sample_rate, 0
  %spec.store.select = select i1 %tobool97.not, i32 44100, i32 %sample_rate
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %sw.epilog
  %src_scb.0443 = phi ptr [ null, %sw.epilog ], [ %src_scb.1, %for.inc.land.rhs_crit_edge ]
  %i.0441 = phi i32 [ 0, %sw.epilog ], [ %inc132, %for.inc.land.rhs_crit_edge ]
  %pcm_index.0440 = phi i32 [ -1, %sw.epilog ], [ %pcm_index.1, %for.inc.land.rhs_crit_edge ]
  %src_index.0439 = phi i32 [ -1, %sw.epilog ], [ %src_index.1, %for.inc.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pcm_index.0440)
  %cmp101 = icmp eq i32 %pcm_index.0440, -1
  %cmp102 = icmp eq ptr %src_scb.0443, null
  %or.cond = select i1 %cmp101, i1 true, i1 %cmp102
  br i1 %or.cond, label %for.body, label %land.rhs.if.end238_crit_edge

land.rhs.if.end238_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

for.body:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0441)
  %cmp103 = icmp eq i32 %i.0441, 1
  br i1 %cmp103, label %for.body.for.inc_crit_edge, label %if.end105

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end105:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0441
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool106.not = icmp eq i32 %17, 0
  br i1 %tobool106.not, label %if.else, label %if.then107

if.then107:                                       ; preds = %if.end105
  br i1 %cmp102, label %land.lhs.true, label %if.then107.for.inc_crit_edge

if.then107.for.inc_crit_edge:                     ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.then107
  %sample_rate111 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0441, i32 3
  %18 = ptrtoint ptr %sample_rate111 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sample_rate111, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %spec.store.select)
  %cmp112 = icmp eq i32 %19, %spec.store.select
  br i1 %cmp112, label %land.lhs.true113, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true113:                                 ; preds = %land.lhs.true
  %mixer_scb116 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0441, i32 7
  %20 = ptrtoint ptr %mixer_scb116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mixer_scb116, align 4
  %cmp117 = icmp eq ptr %21, %mixer_scb.0
  br i1 %cmp117, label %if.then118, label %land.lhs.true113.for.inc_crit_edge

land.lhs.true113.for.inc_crit_edge:               ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then118:                                       ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #9
  %src_scb121 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0441, i32 6
  %22 = ptrtoint ptr %src_scb121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src_scb121, align 4
  %ref_count = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ref_count, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %ref_count, align 4
  %src_slot = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %i.0441, i32 1
  %26 = ptrtoint ptr %src_slot to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_slot, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %cmp101, i32 %i.0441, i32 %pcm_index.0440
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then118, %land.lhs.true113.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.then107.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %src_index.1 = phi i32 [ %src_index.0439, %for.body.for.inc_crit_edge ], [ %src_index.0439, %if.then107.for.inc_crit_edge ], [ %27, %if.then118 ], [ %src_index.0439, %land.lhs.true113.for.inc_crit_edge ], [ %src_index.0439, %land.lhs.true.for.inc_crit_edge ], [ %src_index.0439, %if.else ]
  %pcm_index.1 = phi i32 [ %pcm_index.0440, %for.body.for.inc_crit_edge ], [ %pcm_index.0440, %if.then107.for.inc_crit_edge ], [ %pcm_index.0440, %if.then118 ], [ %pcm_index.0440, %land.lhs.true113.for.inc_crit_edge ], [ %pcm_index.0440, %land.lhs.true.for.inc_crit_edge ], [ %spec.select, %if.else ]
  %src_scb.1 = phi ptr [ %src_scb.0443, %for.body.for.inc_crit_edge ], [ %src_scb.0443, %if.then107.for.inc_crit_edge ], [ %23, %if.then118 ], [ null, %land.lhs.true113.for.inc_crit_edge ], [ null, %land.lhs.true.for.inc_crit_edge ], [ %src_scb.0443, %if.else ]
  %inc132 = add nuw nsw i32 %i.0441, 1
  %exitcond.not = icmp eq i32 %inc132, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pcm_index.1)
  %cmp133 = icmp eq i32 %pcm_index.1, -1
  br i1 %cmp133, label %do.end137, label %if.end140

do.end137:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %card138 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %28 = ptrtoint ptr %card138 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card138, align 4
  %dev139 = getelementptr inbounds %struct.snd_card, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %dev139 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev139, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.24) #11
  br label %cleanup

if.end140:                                        ; preds = %for.end
  %cmp141 = icmp eq ptr %src_scb.1, null
  br i1 %cmp141, label %if.then142, label %if.end140.if.end238_crit_edge

if.end140.if.end238_crit_edge:                    ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end238

if.then142:                                       ; preds = %if.end140
  %nsrc_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 10
  %32 = ptrtoint ptr %nsrc_scb to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nsrc_scb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %33)
  %cmp143 = icmp sgt i32 %33, 13
  br i1 %cmp143, label %do.end147, label %for.body153.preheader

for.body153.preheader:                            ; preds = %if.then142
  %arrayidx154 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 0
  %34 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp155 = icmp eq i32 %35, 0
  br i1 %cmp155, label %for.body153.preheader.for.end162.thread_crit_edge, label %for.inc160

for.body153.preheader.for.end162.thread_crit_edge: ; preds = %for.body153.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

do.end147:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  %card148 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %36 = ptrtoint ptr %card148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card148, align 4
  %dev149 = getelementptr inbounds %struct.snd_card, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %dev149 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev149, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.26) #11
  br label %cleanup

for.end162.thread:                                ; preds = %for.inc160.12.for.end162.thread_crit_edge, %for.inc160.11.for.end162.thread_crit_edge, %for.inc160.10.for.end162.thread_crit_edge, %for.inc160.9.for.end162.thread_crit_edge, %for.inc160.8.for.end162.thread_crit_edge, %for.inc160.7.for.end162.thread_crit_edge, %for.inc160.6.for.end162.thread_crit_edge, %for.inc160.5.for.end162.thread_crit_edge, %for.inc160.4.for.end162.thread_crit_edge, %for.inc160.3.for.end162.thread_crit_edge, %for.inc160.2.for.end162.thread_crit_edge, %for.inc160.1.for.end162.thread_crit_edge, %for.inc160.for.end162.thread_crit_edge, %for.body153.preheader.for.end162.thread_crit_edge
  %i.1444.lcssa = phi i32 [ 0, %for.body153.preheader.for.end162.thread_crit_edge ], [ 1, %for.inc160.for.end162.thread_crit_edge ], [ 2, %for.inc160.1.for.end162.thread_crit_edge ], [ 3, %for.inc160.2.for.end162.thread_crit_edge ], [ 4, %for.inc160.3.for.end162.thread_crit_edge ], [ 5, %for.inc160.4.for.end162.thread_crit_edge ], [ 6, %for.inc160.5.for.end162.thread_crit_edge ], [ 7, %for.inc160.6.for.end162.thread_crit_edge ], [ 8, %for.inc160.7.for.end162.thread_crit_edge ], [ 9, %for.inc160.8.for.end162.thread_crit_edge ], [ 10, %for.inc160.9.for.end162.thread_crit_edge ], [ 11, %for.inc160.10.for.end162.thread_crit_edge ], [ 12, %for.inc160.11.for.end162.thread_crit_edge ], [ 13, %for.inc160.12.for.end162.thread_crit_edge ]
  %arrayidx154.lcssa = phi ptr [ %arrayidx154, %for.body153.preheader.for.end162.thread_crit_edge ], [ %arrayidx154.1, %for.inc160.for.end162.thread_crit_edge ], [ %arrayidx154.2, %for.inc160.1.for.end162.thread_crit_edge ], [ %arrayidx154.3, %for.inc160.2.for.end162.thread_crit_edge ], [ %arrayidx154.4, %for.inc160.3.for.end162.thread_crit_edge ], [ %arrayidx154.5, %for.inc160.4.for.end162.thread_crit_edge ], [ %arrayidx154.6, %for.inc160.5.for.end162.thread_crit_edge ], [ %arrayidx154.7, %for.inc160.6.for.end162.thread_crit_edge ], [ %arrayidx154.8, %for.inc160.7.for.end162.thread_crit_edge ], [ %arrayidx154.9, %for.inc160.8.for.end162.thread_crit_edge ], [ %arrayidx154.10, %for.inc160.9.for.end162.thread_crit_edge ], [ %arrayidx154.11, %for.inc160.10.for.end162.thread_crit_edge ], [ %arrayidx154.12, %for.inc160.11.for.end162.thread_crit_edge ], [ %arrayidx154.13, %for.inc160.12.for.end162.thread_crit_edge ]
  %40 = ptrtoint ptr %arrayidx154.lcssa to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %arrayidx154.lcssa, align 4
  br label %if.end196

for.inc160:                                       ; preds = %for.body153.preheader
  %arrayidx154.1 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 1
  %41 = ptrtoint ptr %arrayidx154.1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx154.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp155.1 = icmp eq i32 %42, 0
  br i1 %cmp155.1, label %for.inc160.for.end162.thread_crit_edge, label %for.inc160.1

for.inc160.for.end162.thread_crit_edge:           ; preds = %for.inc160
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.1:                                     ; preds = %for.inc160
  %arrayidx154.2 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 2
  %43 = ptrtoint ptr %arrayidx154.2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx154.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp155.2 = icmp eq i32 %44, 0
  br i1 %cmp155.2, label %for.inc160.1.for.end162.thread_crit_edge, label %for.inc160.2

for.inc160.1.for.end162.thread_crit_edge:         ; preds = %for.inc160.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.2:                                     ; preds = %for.inc160.1
  %arrayidx154.3 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 3
  %45 = ptrtoint ptr %arrayidx154.3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx154.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp155.3 = icmp eq i32 %46, 0
  br i1 %cmp155.3, label %for.inc160.2.for.end162.thread_crit_edge, label %for.inc160.3

for.inc160.2.for.end162.thread_crit_edge:         ; preds = %for.inc160.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.3:                                     ; preds = %for.inc160.2
  %arrayidx154.4 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 4
  %47 = ptrtoint ptr %arrayidx154.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx154.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp155.4 = icmp eq i32 %48, 0
  br i1 %cmp155.4, label %for.inc160.3.for.end162.thread_crit_edge, label %for.inc160.4

for.inc160.3.for.end162.thread_crit_edge:         ; preds = %for.inc160.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.4:                                     ; preds = %for.inc160.3
  %arrayidx154.5 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 5
  %49 = ptrtoint ptr %arrayidx154.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx154.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp155.5 = icmp eq i32 %50, 0
  br i1 %cmp155.5, label %for.inc160.4.for.end162.thread_crit_edge, label %for.inc160.5

for.inc160.4.for.end162.thread_crit_edge:         ; preds = %for.inc160.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.5:                                     ; preds = %for.inc160.4
  %arrayidx154.6 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 6
  %51 = ptrtoint ptr %arrayidx154.6 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx154.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp155.6 = icmp eq i32 %52, 0
  br i1 %cmp155.6, label %for.inc160.5.for.end162.thread_crit_edge, label %for.inc160.6

for.inc160.5.for.end162.thread_crit_edge:         ; preds = %for.inc160.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.6:                                     ; preds = %for.inc160.5
  %arrayidx154.7 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 7
  %53 = ptrtoint ptr %arrayidx154.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx154.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp155.7 = icmp eq i32 %54, 0
  br i1 %cmp155.7, label %for.inc160.6.for.end162.thread_crit_edge, label %for.inc160.7

for.inc160.6.for.end162.thread_crit_edge:         ; preds = %for.inc160.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.7:                                     ; preds = %for.inc160.6
  %arrayidx154.8 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 8
  %55 = ptrtoint ptr %arrayidx154.8 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx154.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp155.8 = icmp eq i32 %56, 0
  br i1 %cmp155.8, label %for.inc160.7.for.end162.thread_crit_edge, label %for.inc160.8

for.inc160.7.for.end162.thread_crit_edge:         ; preds = %for.inc160.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.8:                                     ; preds = %for.inc160.7
  %arrayidx154.9 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 9
  %57 = ptrtoint ptr %arrayidx154.9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx154.9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp155.9 = icmp eq i32 %58, 0
  br i1 %cmp155.9, label %for.inc160.8.for.end162.thread_crit_edge, label %for.inc160.9

for.inc160.8.for.end162.thread_crit_edge:         ; preds = %for.inc160.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.9:                                     ; preds = %for.inc160.8
  %arrayidx154.10 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 10
  %59 = ptrtoint ptr %arrayidx154.10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx154.10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp155.10 = icmp eq i32 %60, 0
  br i1 %cmp155.10, label %for.inc160.9.for.end162.thread_crit_edge, label %for.inc160.10

for.inc160.9.for.end162.thread_crit_edge:         ; preds = %for.inc160.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.10:                                    ; preds = %for.inc160.9
  %arrayidx154.11 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 11
  %61 = ptrtoint ptr %arrayidx154.11 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx154.11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp155.11 = icmp eq i32 %62, 0
  br i1 %cmp155.11, label %for.inc160.10.for.end162.thread_crit_edge, label %for.inc160.11

for.inc160.10.for.end162.thread_crit_edge:        ; preds = %for.inc160.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.11:                                    ; preds = %for.inc160.10
  %arrayidx154.12 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 12
  %63 = ptrtoint ptr %arrayidx154.12 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx154.12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp155.12 = icmp eq i32 %64, 0
  br i1 %cmp155.12, label %for.inc160.11.for.end162.thread_crit_edge, label %for.inc160.12

for.inc160.11.for.end162.thread_crit_edge:        ; preds = %for.inc160.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.inc160.12:                                    ; preds = %for.inc160.11
  %arrayidx154.13 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 13
  %65 = ptrtoint ptr %arrayidx154.13 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx154.13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp155.13 = icmp eq i32 %66, 0
  br i1 %cmp155.13, label %for.inc160.12.for.end162.thread_crit_edge, label %for.end162

for.inc160.12.for.end162.thread_crit_edge:        ; preds = %for.inc160.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end162.thread

for.end162:                                       ; preds = %for.inc160.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_index.1)
  %cmp164 = icmp eq i32 %src_index.1, -1
  br i1 %cmp164, label %do.end180, label %for.end162.if.end196_crit_edge, !prof !135

for.end162.if.end196_crit_edge:                   ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end196

do.end180:                                        ; preds = %for.end162
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end196:                                        ; preds = %for.end162.if.end196_crit_edge, %for.end162.thread
  %src_index.2454 = phi i32 [ %i.1444.lcssa, %for.end162.thread ], [ %src_index.1, %for.end162.if.end196_crit_edge ]
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %mixer_scb.0, i32 0, i32 4
  %67 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sub_list_ptr, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %69 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %the_null_scb, align 4
  %cmp197 = icmp eq ptr %68, %70
  br i1 %cmp197, label %if.end196.if.end202_crit_edge, label %if.else199

if.end196.if.end202_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202

if.else199:                                       ; preds = %if.end196
  %71 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dsp_spos_instance, align 4
  %the_null_scb.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %72, i32 0, i32 20
  %73 = ptrtoint ptr %the_null_scb.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %the_null_scb.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.else199
  %scb.0.i = phi ptr [ %68, %if.else199 ], [ %76, %while.body.i.while.cond.i_crit_edge ]
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.0.i, i32 0, i32 5
  %75 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %next_scb_ptr.i, align 4
  %cmp.not.i = icmp eq ptr %76, %74
  br i1 %cmp.not.i, label %while.cond.i.if.end202_crit_edge, label %while.body.i

while.cond.i.if.end202_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end202

while.body.i:                                     ; preds = %while.cond.i
  %tobool.not.i = icmp eq ptr %76, null
  br i1 %tobool.not.i, label %do.end.i, label %while.body.i.while.cond.i_crit_edge, !prof !135

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #7
  br label %if.end202

if.end202:                                        ; preds = %do.end.i, %while.cond.i.if.end202_crit_edge, %if.end196.if.end202_crit_edge
  %insert_point.0 = phi i32 [ 2, %if.end196.if.end202_crit_edge ], [ 1, %do.end.i ], [ 1, %while.cond.i.if.end202_crit_edge ]
  %src_parent_scb.0 = phi ptr [ %mixer_scb.0, %if.end196.if.end202_crit_edge ], [ null, %do.end.i ], [ %scb.0.i, %while.cond.i.if.end202_crit_edge ]
  %call203 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %scb_name, i32 noundef 60, ptr noundef nonnull @.str.28, i32 noundef %src_index.2454)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_pcm_channel, %if.then216)) #7
          to label %do.end222 [label %if.then216], !srcloc !134

if.then216:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #9
  %card217 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %77 = ptrtoint ptr %card217 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %card217, align 4
  %dev218 = getelementptr inbounds %struct.snd_card, ptr %78, i32 0, i32 27
  %79 = ptrtoint ptr %dev218 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev218, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug242, ptr noundef %80, ptr noundef nonnull @.str.29, ptr noundef nonnull %scb_name) #7
  br label %do.end222

do.end222:                                        ; preds = %if.then216, %if.end202
  %arrayidx224 = getelementptr [14 x i32], ptr @src_output_buffer_addr, i32 0, i32 %src_index.2454
  %81 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx224, align 4
  %conv = trunc i32 %82 to i16
  %arrayidx225 = getelementptr [14 x i32], ptr @src_delay_buffer_addr, i32 0, i32 %src_index.2454
  %83 = ptrtoint ptr %arrayidx225 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx225, align 4
  %conv226 = trunc i32 %84 to i16
  %mul = shl i32 %src_index.2454, 4
  %add = add i32 %mul, 1024
  %call227 = call ptr @cs46xx_dsp_create_src_task_scb(ptr noundef %chip, ptr noundef nonnull %scb_name, i32 noundef %spec.store.select, i16 noundef zeroext %conv, i16 noundef zeroext %conv226, i32 noundef %add, ptr noundef %src_parent_scb.0, i32 noundef %insert_point.0, i32 noundef %pass_through.0)
  %tobool228.not = icmp eq ptr %call227, null
  br i1 %tobool228.not, label %do.end232, label %if.end235

do.end232:                                        ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  %card233 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %85 = ptrtoint ptr %card233 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %card233, align 4
  %dev234 = getelementptr inbounds %struct.snd_card, ptr %86, i32 0, i32 27
  %87 = ptrtoint ptr %dev234 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev234, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.31) #11
  br label %cleanup

if.end235:                                        ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %nsrc_scb to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %nsrc_scb, align 4
  %inc237 = add i32 %90, 1
  store i32 %inc237, ptr %nsrc_scb, align 4
  br label %if.end238

if.end238:                                        ; preds = %if.end235, %if.end140.if.end238_crit_edge, %land.rhs.if.end238_crit_edge
  %pcm_index.0437 = phi i32 [ %pcm_index.1, %if.end235 ], [ %pcm_index.1, %if.end140.if.end238_crit_edge ], [ %pcm_index.0440, %land.rhs.if.end238_crit_edge ]
  %src_index.3 = phi i32 [ %src_index.2454, %if.end235 ], [ %src_index.1, %if.end140.if.end238_crit_edge ], [ %src_index.0439, %land.rhs.if.end238_crit_edge ]
  %src_scb.2 = phi ptr [ %call227, %if.end235 ], [ %src_scb.1, %if.end140.if.end238_crit_edge ], [ %src_scb.0443, %land.rhs.if.end238_crit_edge ]
  %call240 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %scb_name, i32 noundef 60, ptr noundef nonnull @.str.33, i32 noundef %pcm_index.0437)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_create_pcm_channel, %if.then253)) #7
          to label %do.end259 [label %if.then253], !srcloc !134

if.then253:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #9
  %card254 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %91 = ptrtoint ptr %card254 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %card254, align 4
  %dev255 = getelementptr inbounds %struct.snd_card, ptr %92, i32 0, i32 27
  %93 = ptrtoint ptr %dev255 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev255, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug243, ptr noundef %94, ptr noundef nonnull @.str.34, ptr noundef nonnull %scb_name, i32 noundef %pcm_channel_id) #7
  br label %do.end259

do.end259:                                        ; preds = %if.then253, %if.end238
  %arrayidx261 = getelementptr [32 x i32], ptr @pcm_reader_buffer_addr, i32 0, i32 %pcm_index.0437
  %95 = ptrtoint ptr %arrayidx261 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx261, align 4
  %mul263 = shl i32 %pcm_index.0437, 4
  %add264 = add i32 %mul263, 512
  %97 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dsp_spos_instance, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pcm_reader_scb.i) #7
  %99 = ptrtoint ptr %pcm_reader_scb.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -222298097, ptr %pcm_reader_scb.i, align 4
  %dmw.i = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %pcm_reader_scb.i, i32 0, i32 1
  %add.i = add i32 %pcm_index.0437, 512
  %100 = ptrtoint ptr %dmw.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %add.i, ptr %dmw.i, align 4
  %saw.i = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %pcm_reader_scb.i, i32 0, i32 2
  %101 = ptrtoint ptr %saw.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %hw_dma_addr, ptr %saw.i, align 4
  %daw.i = getelementptr inbounds %struct.dsp_basic_dma_req, ptr %pcm_reader_scb.i, i32 0, i32 3
  %conv.i = and i32 %96, 65535
  %add1.i = or i32 %conv.i, 65536
  %102 = ptrtoint ptr %daw.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %add1.i, ptr %daw.i, align 4
  %sg_ext.i = getelementptr inbounds %struct.dsp_generic_scb, ptr %pcm_reader_scb.i, i32 0, i32 1
  %strm_rs_config.i = getelementptr inbounds %struct.dsp_generic_scb, ptr %pcm_reader_scb.i, i32 0, i32 6
  %103 = shl i32 %add264, 12
  %add4.i = add i32 %103, 855638210
  %104 = call ptr @memset(ptr %sg_ext.i, i32 0, i32 28)
  %105 = ptrtoint ptr %strm_rs_config.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add4.i, ptr %strm_rs_config.i, align 4
  %strm_buf_ptr.i = getelementptr inbounds %struct.dsp_generic_scb, ptr %pcm_reader_scb.i, i32 0, i32 7
  %shl6.i = shl nuw i32 %conv.i, 16
  %106 = ptrtoint ptr %strm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %shl6.i, ptr %strm_buf_ptr.i, align 4
  %strmPhiIncr.i = getelementptr inbounds %struct.dsp_generic_scb, ptr %pcm_reader_scb.i, i32 0, i32 8
  %107 = ptrtoint ptr %strmPhiIncr.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %strmPhiIncr.i, align 4
  %vol_ctrl_t.i = getelementptr inbounds %struct.dsp_generic_scb, ptr %pcm_reader_scb.i, i32 0, i32 9
  %null_algorithm.i = getelementptr inbounds %struct.dsp_spos_instance, ptr %98, i32 0, i32 13
  %108 = ptrtoint ptr %vol_ctrl_t.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 -1, ptr %vol_ctrl_t.i, align 4
  %109 = ptrtoint ptr %null_algorithm.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %null_algorithm.i, align 4
  %cmp.i = icmp eq ptr %110, null
  br i1 %cmp.i, label %if.then.i, label %do.end259.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge

do.end259.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge: ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs46xx_dsp_create_pcm_reader_scb.exit

if.then.i:                                        ; preds = %do.end259
  %call.i = call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.54, i32 noundef 3) #7
  %111 = ptrtoint ptr %null_algorithm.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call.i, ptr %null_algorithm.i, align 4
  %cmp10.i = icmp eq ptr %call.i, null
  br i1 %cmp10.i, label %cs46xx_dsp_create_pcm_reader_scb.exit.thread, label %if.then.i.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge

if.then.i.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cs46xx_dsp_create_pcm_reader_scb.exit

cs46xx_dsp_create_pcm_reader_scb.exit.thread:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %112 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.55) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pcm_reader_scb.i) #7
  br label %do.end270

cs46xx_dsp_create_pcm_reader_scb.exit:            ; preds = %if.then.i.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge, %do.end259.cs46xx_dsp_create_pcm_reader_scb.exit_crit_edge
  %116 = ptrtoint ptr %null_algorithm.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %null_algorithm.i, align 4
  %call15.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef nonnull %scb_name, ptr noundef nonnull %pcm_reader_scb.i, i32 noundef %add264, ptr noundef %117, ptr noundef null, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pcm_reader_scb.i) #7
  %tobool266.not = icmp eq ptr %call15.i, null
  br i1 %tobool266.not, label %cs46xx_dsp_create_pcm_reader_scb.exit.do.end270_crit_edge, label %do.body275

cs46xx_dsp_create_pcm_reader_scb.exit.do.end270_crit_edge: ; preds = %cs46xx_dsp_create_pcm_reader_scb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end270

do.end270:                                        ; preds = %cs46xx_dsp_create_pcm_reader_scb.exit.do.end270_crit_edge, %cs46xx_dsp_create_pcm_reader_scb.exit.thread
  %card271 = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %118 = ptrtoint ptr %card271 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card271, align 4
  %dev272 = getelementptr inbounds %struct.snd_card, ptr %119, i32 0, i32 27
  %120 = ptrtoint ptr %dev272 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev272, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.36) #11
  br label %cleanup

do.body275:                                       ; preds = %cs46xx_dsp_create_pcm_reader_scb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call280 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %pcm_channels285 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 11
  %arrayidx286 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437
  %sample_rate287 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 3
  %122 = ptrtoint ptr %sample_rate287 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %spec.store.select, ptr %sample_rate287, align 4
  %pcm_reader_scb = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 5
  %123 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call15.i, ptr %pcm_reader_scb, align 4
  %src_scb292 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 6
  %124 = ptrtoint ptr %src_scb292 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %src_scb.2, ptr %src_scb292, align 4
  %unlinked = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 4
  %125 = ptrtoint ptr %unlinked to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %unlinked, align 4
  %private_data297 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 8
  %126 = ptrtoint ptr %private_data297 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %private_data, ptr %private_data297, align 4
  %src_slot300 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 1
  %127 = ptrtoint ptr %src_slot300 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %src_index.3, ptr %src_slot300, align 4
  %128 = ptrtoint ptr %arrayidx286 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %arrayidx286, align 4
  %pcm_slot = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 2
  %129 = ptrtoint ptr %pcm_slot to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %pcm_index.0437, ptr %pcm_slot, align 4
  %mixer_scb308 = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 11, i32 %pcm_index.0437, i32 7
  %130 = ptrtoint ptr %mixer_scb308 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %mixer_scb.0, ptr %mixer_scb308, align 4
  %npcm_channels = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 9
  %131 = ptrtoint ptr %npcm_channels to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %npcm_channels, align 4
  %inc309 = add i32 %132, 1
  store i32 %inc309, ptr %npcm_channels, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call280) #7
  %add.ptr = getelementptr %struct.dsp_pcm_channel_descriptor, ptr %pcm_channels285, i32 %pcm_index.0437
  br label %cleanup

cleanup:                                          ; preds = %do.body275, %do.end270, %do.end232, %do.end180, %do.end147, %do.end137, %do.end83, %do.end38
  %retval.0 = phi ptr [ null, %do.end83 ], [ null, %do.end38 ], [ null, %do.end137 ], [ null, %do.end147 ], [ null, %do.end180 ], [ %add.ptr, %do.body275 ], [ null, %do.end270 ], [ null, %do.end232 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %scb_name) #7
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_pcm_channel_set_period(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %pcm_channel, i32 noundef %period_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 5
  %0 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm_reader_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address, align 4
  %shl = shl i32 %3, 2
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %4 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %and.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !139
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %and = and i32 %7, -1879048193
  %8 = zext i32 %period_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %period_size, label %do.body [
    i32 2048, label %sw.bb
    i32 1024, label %sw.bb1
    i32 512, label %sw.bb3
    i32 256, label %sw.bb5
    i32 128, label %sw.bb7
    i32 64, label %sw.bb9
    i32 32, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %7, 1879048192
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or2 = or i32 %and, 1610612736
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %and, 1342177280
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %and, 1073741824
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %and, 805306368
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %and, 536870912
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = or i32 %and, 268435456
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_pcm_channel_set_period.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_pcm_channel_set_period, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !134

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_pcm_channel_set_period.__UNIQUE_ID_ddebug244, ptr noundef %12, ptr noundef nonnull @.str.39, i32 noundef %period_size) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %temp.0 = phi i32 [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  %13 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm_reader_scb, align 4
  %address17 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %address17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address17, align 4
  %shl18 = shl i32 %16, 2
  %shr.i31 = lshr i32 %shl18, 16
  %and.i32 = and i32 %shl18, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %temp.0) #7
  %add.i34 = add nuw nsw i32 %shr.i31, 1
  %remap_addr.i35 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i34, i32 2
  %18 = ptrtoint ptr %remap_addr.i35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remap_addr.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %19, i32 %and.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 %17) #7, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_pcm_ostream_set_period(ptr nocapture noundef readonly %chip, i32 noundef %period_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 256
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !139
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %and = and i32 %3, -117440513
  %4 = zext i32 %period_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %period_size, label %do.body [
    i32 2048, label %sw.bb
    i32 1024, label %sw.bb1
    i32 512, label %sw.bb3
    i32 256, label %sw.bb5
    i32 128, label %sw.bb7
    i32 64, label %sw.bb9
    i32 32, label %sw.bb11
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %3, 117440512
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or2 = or i32 %and, 100663296
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or4 = or i32 %and, 83886080
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %and, 67108864
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or8 = or i32 %and, 50331648
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %and, 33554432
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or12 = or i32 %and, 16777216
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs46xx_dsp_pcm_ostream_set_period.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs46xx_dsp_pcm_ostream_set_period, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !134

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %card = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %5 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cs46xx_dsp_pcm_ostream_set_period.__UNIQUE_ID_ddebug245, ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef %period_size) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb
  %temp.0 = phi i32 [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or8, %sw.bb7 ], [ %or6, %sw.bb5 ], [ %or4, %sw.bb3 ], [ %or2, %sw.bb1 ], [ %or, %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %temp.0) #7
  %10 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %11, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %9) #7, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cs46xx_dsp_destroy_pcm_channel(ptr noundef %chip, ptr nocapture noundef %pcm_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %2 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pcm_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %npcm_channels = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %npcm_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npcm_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %lor.lhs.false.do.end_crit_edge, label %lor.rhs

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %src_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 6
  %6 = ptrtoint ptr %src_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_scb, align 4
  %ref_count = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %ref_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ref_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp1 = icmp slt i32 %9, 1
  br i1 %cmp1, label %lor.rhs.do.end_crit_edge, label %do.body25, !prof !135

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1470, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body25:                                        ; preds = %lor.rhs
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %unlinked = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 4
  %10 = ptrtoint ptr %unlinked to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %unlinked, align 4
  %11 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %pcm_channel, align 4
  %private_data = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 8
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %private_data, align 4
  %13 = ptrtoint ptr %src_scb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src_scb, align 4
  %ref_count35 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %ref_count35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ref_count35, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %ref_count35, align 4
  %17 = ptrtoint ptr %npcm_channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %npcm_channels, align 4
  %dec37 = add i32 %18, -1
  store i32 %dec37, ptr %npcm_channels, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call28) #7
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 5
  %19 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcm_reader_scb, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %20)
  %21 = ptrtoint ptr %src_scb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src_scb, align 4
  %ref_count40 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %ref_count40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ref_count40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool41.not = icmp eq i32 %24, 0
  br i1 %tobool41.not, label %if.then42, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %do.body25
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %22)
  %src_slot = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 1
  %25 = ptrtoint ptr %src_slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %26)
  %27 = icmp ugt i32 %26, 13
  br i1 %27, label %do.end67, label %if.end83, !prof !135

do.end67:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1487, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end83:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.dsp_spos_instance, ptr %1, i32 0, i32 12, i32 %26
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx, align 4
  %nsrc_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %nsrc_scb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nsrc_scb, align 4
  %dec85 = add i32 %30, -1
  store i32 %dec85, ptr %nsrc_scb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %do.end67, %do.body25.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_pcm_unlink(ptr noundef %chip, ptr nocapture noundef %pcm_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pcm_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcm_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %2 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsp_spos_instance, align 4
  %npcm_channels = getelementptr inbounds %struct.dsp_spos_instance, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %npcm_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npcm_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %lor.rhs.do.end_crit_edge, label %do.body24, !prof !135

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1501, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body24:                                        ; preds = %lor.rhs
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %unlinked = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 4
  %6 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool32.not = icmp eq i32 %7, 0
  br i1 %tobool32.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call27) #7
  br label %cleanup

if.end35:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %unlinked to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %unlinked, align 4
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 5
  %9 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm_reader_scb, align 4
  tail call fastcc void @_dsp_unlink_scb(ptr noundef %chip, ptr noundef %10)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then33, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %if.then33 ], [ 0, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_pcm_link(ptr noundef %chip, ptr nocapture noundef %pcm_channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %src_scb1 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 6
  %2 = ptrtoint ptr %src_scb1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src_scb1, align 4
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  %unlinked = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 4
  %4 = ptrtoint ptr %unlinked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %unlinked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sub_list_ptr, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %the_null_scb, align 4
  %cmp9.not = icmp eq ptr %7, %9
  br i1 %cmp9.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pcm_reader_scb = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 5
  %10 = ptrtoint ptr %pcm_reader_scb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcm_reader_scb, align 4
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %7, i32 0, i32 6
  %12 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %parent_scb_ptr, align 4
  %13 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sub_list_ptr, align 4
  %15 = load ptr, ptr %pcm_reader_scb, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %next_scb_ptr, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %pcm_reader_scb16 = getelementptr inbounds %struct.dsp_pcm_channel_descriptor, ptr %pcm_channel, i32 0, i32 5
  %17 = ptrtoint ptr %pcm_reader_scb16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcm_reader_scb16, align 4
  %19 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sub_list_ptr, align 4
  %20 = load ptr, ptr %pcm_reader_scb16, align 4
  %parent_scb_ptr19 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %parent_scb_ptr19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_scb_ptr19, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %if.end15.if.end37_crit_edge, label %do.end31, !prof !133

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end31:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1542, i32 noundef 9, ptr noundef null) #7
  br label %if.end37

if.end37:                                         ; preds = %do.end31, %if.end15.if.end37_crit_edge
  %23 = ptrtoint ptr %pcm_reader_scb16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcm_reader_scb16, align 4
  %parent_scb_ptr46 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %parent_scb_ptr46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %parent_scb_ptr46, align 4
  %26 = load ptr, ptr %pcm_reader_scb16, align 4
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %28, 2
  %shl.i = add i32 %add.i, 36
  %sub_list_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sub_list_ptr.i, align 4
  %address1.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %address1.i, align 4
  %shl2.i = shl i32 %32, 16
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %26, i32 0, i32 5
  %33 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %next_scb_ptr.i, align 4
  %address3.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %address3.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %address3.i, align 4
  %or.i = or i32 %36, %shl2.i
  %shr.i.i = lshr i32 %shl.i, 16
  %and.i.i = and i32 %shl.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %38 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %37) #7, !srcloc !138
  %updated.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %26, i32 0, i32 12
  %40 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i = load i8, ptr %updated.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %updated.i, align 4
  %address.i73 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 1
  %41 = ptrtoint ptr %address.i73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %address.i73, align 4
  %add.i74 = shl i32 %42, 2
  %shl.i75 = add i32 %add.i74, 36
  %43 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sub_list_ptr, align 4
  %address1.i77 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %address1.i77 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %address1.i77, align 4
  %shl2.i78 = shl i32 %46, 16
  %next_scb_ptr.i79 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 5
  %47 = ptrtoint ptr %next_scb_ptr.i79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next_scb_ptr.i79, align 4
  %address3.i80 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %address3.i80 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %address3.i80, align 4
  %or.i81 = or i32 %50, %shl2.i78
  %shr.i.i82 = lshr i32 %shl.i75, 16
  %and.i.i83 = and i32 %shl.i75, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i81) #7
  %add.i.i85 = add nuw nsw i32 %shr.i.i82, 1
  %remap_addr.i.i86 = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i85, i32 2
  %52 = ptrtoint ptr %remap_addr.i.i86 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %remap_addr.i.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %53, i32 %and.i.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i87, i32 %51) #7, !srcloc !138
  %updated.i88 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 12
  %54 = ptrtoint ptr %updated.i88 to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i89 = load i8, ptr %updated.i88, align 4
  %bf.set.i90 = or i8 %bf.load.i89, 64
  store i8 %bf.set.i90, ptr %updated.i88, align 4
  %55 = ptrtoint ptr %unlinked to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %unlinked, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -5, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call3) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cs46xx_add_record_source(ptr noundef %chip, ptr nocapture noundef readonly %source, i16 noundef zeroext %addr, ptr noundef %scb_name) local_unnamed_addr #0 align 64 {
entry:
  %pcm_serial_input_scb.i = alloca %struct.dsp_pcm_serial_input_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %record_mixer_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %record_mixer_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %record_mixer_scb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !135

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1565, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sub_list_ptr, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %the_null_scb, align 4
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %if.end23.if.end29_crit_edge, label %if.end23.while.cond.i_crit_edge

if.end23.while.cond.i_crit_edge:                  ; preds = %if.end23
  br label %while.cond.i

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end23.while.cond.i_crit_edge
  %scb.0.i = phi ptr [ %9, %while.body.i.while.cond.i_crit_edge ], [ %5, %if.end23.while.cond.i_crit_edge ]
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.0.i, i32 0, i32 5
  %8 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next_scb_ptr.i, align 4
  %cmp.not.i = icmp eq ptr %9, %7
  br i1 %cmp.not.i, label %while.cond.i.if.end29_crit_edge, label %while.body.i

while.cond.i.if.end29_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

while.body.i:                                     ; preds = %while.cond.i
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %do.end.i, label %while.body.i.while.cond.i_crit_edge, !prof !135

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #7
  br label %if.end29

if.end29:                                         ; preds = %do.end.i, %while.cond.i.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %parent.0 = phi ptr [ %3, %if.end23.if.end29_crit_edge ], [ null, %do.end.i ], [ %scb.0.i, %while.cond.i.if.end29_crit_edge ]
  %insert_point.0 = phi i32 [ 2, %if.end23.if.end29_crit_edge ], [ 1, %do.end.i ], [ 1, %while.cond.i.if.end29_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pcm_serial_input_scb.i) #7
  %10 = call ptr @memset(ptr %pcm_serial_input_scb.i, i32 0, i32 56)
  %strm_buf_ptr.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 6
  %11 = ptrtoint ptr %strm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 193, ptr %strm_buf_ptr.i, align 4
  %init_codec_input_link.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 9
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %source, i32 0, i32 1
  %12 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %address.i, align 4
  %conv.i = trunc i32 %13 to i16
  %14 = ptrtoint ptr %init_codec_input_link.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %init_codec_input_link.i, align 2
  %psi_vol_ctrl.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10
  %15 = ptrtoint ptr %psi_vol_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32768, ptr %psi_vol_ctrl.i, align 4
  %rightTarg.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %rightTarg.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -32768, ptr %rightTarg.i, align 2
  %leftVol.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %leftVol.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -32768, ptr %leftVol.i, align 4
  %rightVol.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %rightVol.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -32768, ptr %rightVol.i, align 2
  %call.i.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.57, i32 noundef 3) #7
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %card.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %19 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 27
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.57) #11
  br label %cs46xx_dsp_create_pcm_serial_input_scb.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %addr to i32
  %call1.i.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef %scb_name, ptr noundef nonnull %pcm_serial_input_scb.i, i32 noundef %conv, ptr noundef nonnull %call.i.i, ptr noundef %parent.0, i32 noundef %insert_point.0) #7
  br label %cs46xx_dsp_create_pcm_serial_input_scb.exit

cs46xx_dsp_create_pcm_serial_input_scb.exit:      ; preds = %if.end.i.i, %do.end.i.i
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %call1.i.i, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pcm_serial_input_scb.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cs46xx_dsp_create_pcm_serial_input_scb.exit, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %retval.0.i.i, %cs46xx_dsp_create_pcm_serial_input_scb.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_src_unlink(ptr noundef %chip, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 6
  %0 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent_scb_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !135

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1587, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 1
  %2 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %3, 2
  %shl3.i = add i32 %add.i, 56
  %shr.i.i = lshr i32 %shl3.i, 16
  %and.i.i = and i32 %shl3.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %4 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !138
  %6 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address.i, align 4
  %add6.i = shl i32 %7, 2
  %shl7.i = add i32 %add6.i, 60
  %shr.i1.i = lshr i32 %shl7.i, 16
  %and.i2.i = and i32 %shl7.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %add.i4.i = add nuw nsw i32 %shr.i1.i, 1
  %remap_addr.i5.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i4.i, i32 2
  %8 = ptrtoint ptr %remap_addr.i5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %remap_addr.i5.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %9, i32 %and.i2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 -1) #7, !srcloc !138
  %volume_set.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 12
  %10 = ptrtoint ptr %volume_set.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %volume_set.i, align 4
  %bf.set.i = or i8 %bf.load.i, 32
  store i8 %bf.set.i, ptr %volume_set.i, align 4
  %volume.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 11
  %11 = ptrtoint ptr %volume.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %volume.i, align 4
  %arrayidx9.i = getelementptr %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 11, i32 1
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayidx9.i, align 2
  %reg_lock = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 15
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #7
  tail call fastcc void @_dsp_unlink_scb(ptr noundef %chip, ptr noundef %src)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock, i32 noundef %call27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_src_link(ptr nocapture noundef readonly %chip, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %src, i32 0, i32 6
  %2 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_scb_ptr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !133

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1605, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end22:                                         ; preds = %entry
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master_mix_scb, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %do.end42, label %if.end58, !prof !135

do.end42:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1607, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end58:                                         ; preds = %if.end22
  %sub_list_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sub_list_ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sub_list_ptr, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %the_null_scb, align 4
  %cmp.not = icmp eq ptr %7, %9
  br i1 %cmp.not, label %if.end58.if.end65_crit_edge, label %if.end58.while.cond.i_crit_edge

if.end58.while.cond.i_crit_edge:                  ; preds = %if.end58
  br label %while.cond.i

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end58.while.cond.i_crit_edge
  %scb.0.i = phi ptr [ %11, %while.body.i.while.cond.i_crit_edge ], [ %7, %if.end58.while.cond.i_crit_edge ]
  %next_scb_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %scb.0.i, i32 0, i32 5
  %10 = ptrtoint ptr %next_scb_ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next_scb_ptr.i, align 4
  %cmp.not.i = icmp eq ptr %11, %9
  br i1 %cmp.not.i, label %while.cond.i.find_next_free_scb.exit_crit_edge, label %while.body.i

while.cond.i.find_next_free_scb.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_next_free_scb.exit

while.body.i:                                     ; preds = %while.cond.i
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.end.i, label %while.body.i.while.cond.i_crit_edge, !prof !135

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 9, ptr noundef null) #7
  br label %find_next_free_scb.exit

find_next_free_scb.exit:                          ; preds = %do.end.i, %while.cond.i.find_next_free_scb.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %scb.0.i, %while.cond.i.find_next_free_scb.exit_crit_edge ]
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %retval.0.i, i32 0, i32 5
  br label %if.end65

if.end65:                                         ; preds = %find_next_free_scb.exit, %if.end58.if.end65_crit_edge
  %sub_list_ptr.sink = phi ptr [ %next_scb_ptr, %find_next_free_scb.exit ], [ %sub_list_ptr, %if.end58.if.end65_crit_edge ]
  %parent_scb.0 = phi ptr [ %retval.0.i, %find_next_free_scb.exit ], [ %5, %if.end58.if.end65_crit_edge ]
  %12 = ptrtoint ptr %sub_list_ptr.sink to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %src, ptr %sub_list_ptr.sink, align 4
  %13 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_scb.0, ptr %parent_scb_ptr, align 4
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb.0, i32 0, i32 1
  %14 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %address.i, align 4
  %add.i = shl i32 %15, 2
  %shl.i = add i32 %add.i, 36
  %sub_list_ptr.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb.0, i32 0, i32 4
  %16 = ptrtoint ptr %sub_list_ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sub_list_ptr.i, align 4
  %address1.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %address1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %address1.i, align 4
  %shl2.i = shl i32 %19, 16
  %next_scb_ptr.i82 = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb.0, i32 0, i32 5
  %20 = ptrtoint ptr %next_scb_ptr.i82 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %next_scb_ptr.i82, align 4
  %address3.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %address3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %address3.i, align 4
  %or.i = or i32 %23, %shl2.i
  %shr.i.i = lshr i32 %shl.i, 16
  %and.i.i = and i32 %shl.i, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %region.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %remap_addr.i.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i.i, i32 0, i32 %add.i.i, i32 2
  %25 = ptrtoint ptr %remap_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %remap_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %and.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !138
  %updated.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %parent_scb.0, i32 0, i32 12
  %27 = ptrtoint ptr %updated.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load.i = load i8, ptr %updated.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %updated.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %do.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end42 ], [ 0, %if.end65 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_enable_spdif_out(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %pcm_serial_input_scb.i = alloca %struct.dsp_pcm_serial_input_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cs46xx_dsp_enable_spdif_hw(ptr noundef %chip) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_status_out, align 4
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %5, 1
  %6 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %spdif_status_out, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %asynch_tx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 35
  %7 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %asynch_tx_scb, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end31, label %do.end, !prof !133

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1644, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end31:                                         ; preds = %if.end6
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_mix_scb, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_scb_ptr, align 4
  %the_null_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %the_null_scb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %the_null_scb, align 4
  %cmp.not = icmp eq ptr %12, %14
  br i1 %cmp.not, label %if.end64, label %do.end48, !prof !133

do.end48:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1647, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end31
  %ref_snoop_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 33
  %15 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ref_snoop_scb, align 4
  %address = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %address, align 4
  %add = shl i32 %18, 2
  %shl = add i32 %add, 8
  %shr.i = lshr i32 %shl, 16
  %and.i = and i32 %shl, 65532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %region.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 3
  %add.i = add nuw nsw i32 %shr.i, 1
  %remap_addr.i = getelementptr [5 x %struct.snd_cs46xx_region], ptr %region.i, i32 0, i32 %add.i, i32 2
  %19 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %and.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 4107) #7, !srcloc !138
  %21 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master_mix_scb, align 4
  %call66 = tail call fastcc ptr @cs46xx_dsp_create_asynch_fg_tx_scb(ptr noundef %chip, ptr noundef %22)
  %23 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call66, ptr %asynch_tx_scb, align 4
  %tobool69.not = icmp eq ptr %call66, null
  br i1 %tobool69.not, label %if.end64.cleanup_crit_edge, label %if.end71

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %24 = ptrtoint ptr %ref_snoop_scb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ref_snoop_scb, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pcm_serial_input_scb.i) #7
  %26 = call ptr @memset(ptr %pcm_serial_input_scb.i, i32 0, i32 56)
  %strm_buf_ptr.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 6
  %27 = ptrtoint ptr %strm_buf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 193, ptr %strm_buf_ptr.i, align 4
  %init_codec_input_link.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 9
  %address.i = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %address.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %address.i, align 4
  %conv.i = trunc i32 %29 to i16
  %30 = ptrtoint ptr %init_codec_input_link.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %init_codec_input_link.i, align 2
  %psi_vol_ctrl.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10
  %31 = ptrtoint ptr %psi_vol_ctrl.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 -32768, ptr %psi_vol_ctrl.i, align 4
  %rightTarg.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %rightTarg.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -32768, ptr %rightTarg.i, align 2
  %leftVol.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 2
  %33 = ptrtoint ptr %leftVol.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 -32768, ptr %leftVol.i, align 4
  %rightVol.i = getelementptr inbounds %struct.dsp_pcm_serial_input_scb, ptr %pcm_serial_input_scb.i, i32 0, i32 10, i32 3
  %34 = ptrtoint ptr %rightVol.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -32768, ptr %rightVol.i, align 2
  %call.i.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.57, i32 noundef 3) #7
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %cs46xx_dsp_create_pcm_serial_input_scb.exit.thread, label %cs46xx_dsp_create_pcm_serial_input_scb.exit

cs46xx_dsp_create_pcm_serial_input_scb.exit.thread: ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %card.i.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %35 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.57) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pcm_serial_input_scb.i) #7
  %spdif_pcm_input_scb102 = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 34
  %39 = ptrtoint ptr %spdif_pcm_input_scb102 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %spdif_pcm_input_scb102, align 4
  br label %cleanup

cs46xx_dsp_create_pcm_serial_input_scb.exit:      ; preds = %if.end71
  %call1.i.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef nonnull @.str.42, ptr noundef nonnull %pcm_serial_input_scb.i, i32 noundef 288, ptr noundef nonnull %call.i.i, ptr noundef nonnull %call66, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pcm_serial_input_scb.i) #7
  %spdif_pcm_input_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 34
  %40 = ptrtoint ptr %spdif_pcm_input_scb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call1.i.i, ptr %spdif_pcm_input_scb, align 4
  %tobool76.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool76.not, label %cs46xx_dsp_create_pcm_serial_input_scb.exit.cleanup_crit_edge, label %if.end78

cs46xx_dsp_create_pcm_serial_input_scb.exit.cleanup_crit_edge: ; preds = %cs46xx_dsp_create_pcm_serial_input_scb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %cs46xx_dsp_create_pcm_serial_input_scb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spdif_status_out, align 4
  %or80 = or i32 %42, 1
  store i32 %or80, ptr %spdif_status_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %cs46xx_dsp_create_pcm_serial_input_scb.exit.cleanup_crit_edge, %cs46xx_dsp_create_pcm_serial_input_scb.exit.thread, %if.end64.cleanup_crit_edge, %do.end48, %do.end, %if.then4
  %retval.0 = phi i32 [ -16, %if.then4 ], [ -22, %do.end ], [ -22, %do.end48 ], [ 0, %if.end78 ], [ -12, %if.end64.cleanup_crit_edge ], [ -12, %cs46xx_dsp_create_pcm_serial_input_scb.exit.cleanup_crit_edge ], [ -12, %cs46xx_dsp_create_pcm_serial_input_scb.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_dsp_enable_spdif_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @cs46xx_dsp_create_asynch_fg_tx_scb(ptr noundef %chip, ptr noundef %parent_scb) unnamed_addr #0 align 64 {
entry:
  %asynch_fg_tx_scb = alloca %struct.dsp_asynch_fg_tx_scb, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %asynch_fg_tx_scb) #7
  %0 = ptrtoint ptr %asynch_fg_tx_scb to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1024, ptr %asynch_fg_tx_scb, align 4
  %not_buf_mask = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 1
  %1 = ptrtoint ptr %not_buf_mask to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1023, ptr %not_buf_mask, align 2
  %min = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 2
  %2 = ptrtoint ptr %min to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 88, ptr %min, align 4
  %max = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 3
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 40, ptr %max, align 2
  %hfg_scb_ptr = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 4
  %4 = ptrtoint ptr %hfg_scb_ptr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %hfg_scb_ptr, align 4
  %unused1 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 5
  %5 = ptrtoint ptr %unused1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3008, ptr %unused1, align 2
  %adjust_count = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 6
  %unused2 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 10
  %6 = call ptr @memset(ptr %adjust_count, i32 0, i32 10)
  %7 = ptrtoint ptr %unused2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 10923, ptr %unused2, align 2
  %unused3 = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 11
  %codePtr = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 15
  %8 = call ptr @memset(ptr %unused3, i32 0, i32 18)
  %9 = ptrtoint ptr %codePtr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 228, ptr %codePtr, align 2
  %strm_rs_config = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 16
  %10 = ptrtoint ptr %strm_rs_config to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 197, ptr %strm_rs_config, align 4
  %strm_buf_ptr = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 17
  %11 = ptrtoint ptr %strm_buf_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 268435456, ptr %strm_buf_ptr, align 4
  %phi_incr = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 18
  %12 = ptrtoint ptr %phi_incr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 402653184, ptr %phi_incr, align 4
  %unused_left_targ = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 19
  %13 = ptrtoint ptr %unused_left_targ to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -32768, ptr %unused_left_targ, align 4
  %unused_right_targ = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 20
  %14 = ptrtoint ptr %unused_right_targ to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -32768, ptr %unused_right_targ, align 2
  %unused_left_vol = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 21
  %15 = ptrtoint ptr %unused_left_vol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -32768, ptr %unused_left_vol, align 4
  %unused_right_vol = getelementptr inbounds %struct.dsp_asynch_fg_tx_scb, ptr %asynch_fg_tx_scb, i32 0, i32 22
  %16 = ptrtoint ptr %unused_right_vol to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -32768, ptr %unused_right_vol, align 2
  %call.i = tail call ptr @cs46xx_dsp_lookup_symbol(ptr noundef %chip, ptr noundef nonnull @.str.58, i32 noundef 3) #7
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %card.i = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 10
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.58) #11
  br label %cs46xx_dsp_create_generic_scb.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = call fastcc ptr @_dsp_create_generic_scb(ptr noundef %chip, ptr noundef nonnull @.str.41, ptr noundef nonnull %asynch_fg_tx_scb, i32 noundef 224, ptr noundef nonnull %call.i, ptr noundef %parent_scb, i32 noundef 1) #7
  br label %cs46xx_dsp_create_generic_scb.exit

cs46xx_dsp_create_generic_scb.exit:               ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %call1.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %asynch_fg_tx_scb) #7
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_dsp_disable_spdif_out(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %3, -2
  %4 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2, ptr %spdif_status_out, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %asynch_tx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 35
  %5 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %asynch_tx_scb, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %do.end, label %if.end28, !prof !135

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1688, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end
  %spdif_pcm_input_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 34
  %7 = ptrtoint ptr %spdif_pcm_input_scb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spdif_pcm_input_scb, align 4
  %tobool30.not = icmp eq ptr %8, null
  br i1 %tobool30.not, label %do.end48, label %if.end64, !prof !135

do.end48:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1690, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end64:                                         ; preds = %if.end28
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master_mix_scb, align 4
  %next_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %next_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_scb_ptr, align 4
  %cmp.not = icmp eq ptr %12, %6
  br i1 %cmp.not, label %if.end98, label %do.end82, !prof !133

do.end82:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1692, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end98:                                         ; preds = %if.end64
  %parent_scb_ptr = getelementptr inbounds %struct.dsp_scb_descriptor, ptr %6, i32 0, i32 6
  %13 = ptrtoint ptr %parent_scb_ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent_scb_ptr, align 4
  %cmp102.not = icmp eq ptr %14, %10
  br i1 %cmp102.not, label %if.end134, label %do.end118, !prof !133

do.end118:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1695, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end134:                                        ; preds = %if.end98
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef nonnull %8)
  %15 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %asynch_tx_scb, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %16)
  %17 = ptrtoint ptr %spdif_pcm_input_scb to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %spdif_pcm_input_scb, align 4
  %18 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %asynch_tx_scb, align 4
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4096
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end134
  %i.06.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end134 ]
  %dst.05.i = phi ptr [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr.i, %if.end134 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.05.i, i32 0) #7, !srcloc !138
  %add.ptr1.i = getelementptr i8, ptr %dst.05.i, i32 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %_dsp_clear_sample_buffer.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

_dsp_clear_sample_buffer.exit:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spdif_status_out, align 4
  %and140 = and i32 %22, -2
  store i32 %and140, ptr %spdif_status_out, align 4
  br label %cleanup

cleanup:                                          ; preds = %_dsp_clear_sample_buffer.exit, %do.end118, %do.end82, %do.end48, %do.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ -22, %do.end ], [ -22, %do.end48 ], [ -22, %do.end82 ], [ -22, %do.end118 ], [ 0, %_dsp_clear_sample_buffer.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_iec958_pre_open(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @cs46xx_dsp_disable_spdif_out(ptr noundef %chip)
  %4 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_status_out, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %spdif_status_out, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spdif_status_out, align 4
  %and3 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 @cs46xx_dsp_enable_spdif_hw(ptr noundef %chip) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %master_mix_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %master_mix_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master_mix_scb, align 4
  %call8 = tail call fastcc ptr @cs46xx_dsp_create_asynch_fg_tx_scb(ptr noundef %chip, ptr noundef %9)
  %asynch_tx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 35
  %10 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %asynch_tx_scb, align 4
  %spdif_csuv_stream = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %spdif_csuv_stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spdif_csuv_stream, align 4
  %call9 = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32910, i32 noundef %12) #7
  %13 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %spdif_status_out, align 4
  %or11 = or i32 %14, 2
  store i32 %or11, ptr %spdif_status_out, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cs46xx_poke_via_dsp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs46xx_iec958_post_close(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dsp_spos_instance = getelementptr inbounds %struct.snd_cs46xx, ptr %chip, i32 0, i32 28
  %0 = ptrtoint ptr %dsp_spos_instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsp_spos_instance, align 4
  %asynch_tx_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %asynch_tx_scb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !135

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1751, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end23:                                         ; preds = %entry
  %spdif_status_out = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spdif_status_out, align 4
  %and = and i32 %5, -3
  store i32 %and, ptr %spdif_status_out, align 4
  %spdif_csuv_default = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %spdif_csuv_default to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spdif_csuv_default, align 4
  %call = tail call i32 @cs46xx_poke_via_dsp(ptr noundef %chip, i32 noundef 32910, i32 noundef %7) #7
  %spdif_pcm_input_scb = getelementptr inbounds %struct.dsp_spos_instance, ptr %1, i32 0, i32 34
  %8 = ptrtoint ptr %spdif_pcm_input_scb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spdif_pcm_input_scb, align 4
  %cmp.not = icmp eq ptr %9, null
  br i1 %cmp.not, label %if.end23.if.end27_crit_edge, label %if.then24

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef nonnull %9)
  %10 = ptrtoint ptr %spdif_pcm_input_scb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %spdif_pcm_input_scb, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end23.if.end27_crit_edge
  %11 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %asynch_tx_scb, align 4
  tail call void @cs46xx_dsp_remove_scb(ptr noundef %chip, ptr noundef %12)
  %13 = ptrtoint ptr %asynch_tx_scb to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %asynch_tx_scb, align 4
  %remap_addr.i = getelementptr %struct.snd_cs46xx, ptr %chip, i32 0, i32 3, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %remap_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remap_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4096
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end27
  %i.06.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.end27 ]
  %dst.05.i = phi ptr [ %add.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %add.ptr.i, %if.end27 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dst.05.i, i32 0) #7, !srcloc !138
  %add.ptr1.i = getelementptr i8, ptr %dst.05.i, i32 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %_dsp_clear_sample_buffer.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

_dsp_clear_sample_buffer.exit:                    ; preds = %do.body.i
  %16 = ptrtoint ptr %spdif_status_out to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spdif_status_out, align 4
  %and31 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %_dsp_clear_sample_buffer.exit.cleanup_crit_edge, label %if.then33

_dsp_clear_sample_buffer.exit.cleanup_crit_edge:  ; preds = %_dsp_clear_sample_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %_dsp_clear_sample_buffer.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 @cs46xx_dsp_enable_spdif_out(ptr noundef %chip)
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %_dsp_clear_sample_buffer.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then33 ], [ 0, %_dsp_clear_sample_buffer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cs46xx_dsp_create_scb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !62, !63, !64, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !116, !117, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 166, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 221, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cs46xx_dsp_proc_free_scb_desc.__UNIQUE_ID_ddebug238, !3, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 389, i32 43}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 391, i32 10}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 429, i32 15}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 474, i32 15}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 600, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @cs46xx_dsp_create_src_task_scb.__UNIQUE_ID_ddebug240, !16, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 655, i32 50}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 659, i32 5}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cs46xx_dsp_create_src_task_scb._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @cs46xx_dsp_create_src_task_scb._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 675, i32 17}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 774, i32 15}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 827, i32 11}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 871, i32 15}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1010, i32 15}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1090, i32 15}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1126, i32 15}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1244, i32 3}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1255, i32 4}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug241, !44, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1289, i32 3}
!49 = !{ptr @cs46xx_dsp_create_pcm_channel._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cs46xx_dsp_create_pcm_channel._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1295, i32 4}
!53 = !{ptr @cs46xx_dsp_create_pcm_channel._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1320, i32 39}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1322, i32 3}
!59 = !{ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug242, !58, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1335, i32 4}
!62 = !{ptr @cs46xx_dsp_create_pcm_channel._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1346, i32 38}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1348, i32 2}
!68 = !{ptr @cs46xx_dsp_create_pcm_channel.__UNIQUE_ID_ddebug243, !67, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1362, i32 3}
!71 = !{ptr @cs46xx_dsp_create_pcm_channel._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cs46xx_dsp_create_pcm_channel._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1413, i32 3}
!75 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @cs46xx_dsp_pcm_channel_set_period.__UNIQUE_ID_ddebug244, !74, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1452, i32 3}
!79 = !{ptr @cs46xx_dsp_pcm_ostream_set_period.__UNIQUE_ID_ddebug245, !78, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1655, i32 63}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1662, i32 73}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 67, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 71, i32 4}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 74, i32 3}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 80, i32 3}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 83, i32 9}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 85, i32 2}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 93, i32 2}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 354, i32 3}
!100 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cs46xx_dsp_create_generic_scb._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @cs46xx_dsp_create_generic_scb._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 285, i32 2}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @_dsp_create_generic_scb.__UNIQUE_ID_ddebug239, !104, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!107 = !{ptr @src_output_buffer_addr, !108, !"src_output_buffer_addr", i1 false, i1 false}
!108 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1183, i32 18}
!109 = !{ptr @src_delay_buffer_addr, !110, !"src_delay_buffer_addr", i1 false, i1 false}
!110 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1200, i32 18}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 565, i32 57}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 569, i32 4}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @cs46xx_dsp_create_pcm_reader_scb._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @cs46xx_dsp_create_pcm_reader_scb._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @pcm_reader_buffer_addr, !119, !"pcm_reader_buffer_addr", i1 false, i1 false}
!119 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 1148, i32 18}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 915, i32 15}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/pci/cs46xx/dsp_spos_scb_lib.c", i32 961, i32 15}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2148199005, i64 2148199010, i64 2148199023, i64 2148199067, i64 2148199101, i64 2148199122}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{!"branch_weights", i32 2002, i32 2000}
!137 = !{i64 2154481904}
!138 = !{i64 731848}
!139 = !{i64 732266}
!140 = !{i64 2154493936}
!141 = !{!"auto-init"}
!142 = !{i64 2154495628}
!143 = !{i64 2154482869}
