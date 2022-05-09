; ModuleID = '/llk/IR_all_yes/sound/soc/sh/rcar/adg.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/adg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rsnd_adg = type { [4 x ptr], [4 x ptr], ptr, %struct.clk_onecell_data, %struct.rsnd_mod, [4 x i32], i32, i32, i32, i32, i32, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.__va_list = type { ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@__const.rsnd_adg_clk_query.sel_table = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 0], align 4
@rsnd_adg_ssi_clk_try_start.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_soc_rcar\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rsnd_adg_ssi_clk_try_start\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/sh/rcar/adg.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CLKOUT is based on BRG%c (= %dHz)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s    : %pa : %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@clk_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"BRGCKR = 0x%08x, BRRA/BRRB = 0x%x/0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BRGA (for 44100 base) = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"BRGB (for 48000 base) = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkout %d : %pa : %ld\0A\00", [41 x i8] zeroinitializer }, align 32
@adg_ops = internal global { %struct.rsnd_mod_ops, [44 x i8] } { %struct.rsnd_mod_ops { ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@__rsnd_adg_get_timesel_ratio._entry = internal constant %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 160, ptr @.str.11, ptr @.str.12 }, align 1
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no Input clock\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"__rsnd_adg_get_timesel_ratio\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__rsnd_adg_get_timesel_ratio._entry_ptr = internal global ptr @__rsnd_adg_get_timesel_ratio._entry, section ".printk_index", align 4
@rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rsnd_adg_set_ssi_clk\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AUDIO_CLK_SEL is 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@dbg_msg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dbg_msg\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_a\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_b\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_c\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_i\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"adg\00", [28 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 444, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adg clock IN get failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rsnd_adg_get_clkin\00", [45 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkin._entry_ptr = internal global ptr @rsnd_adg_get_clkin._entry, section ".printk_index", align 4
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rsnd_adg_null\00", [18 x i8] zeroinitializer }, align 32
@rsnd_adg_create_null_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 395, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"create null clk error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rsnd_adg_create_null_clk\00", [39 x i8] zeroinitializer }, align 32
@rsnd_adg_create_null_clk._entry_ptr = internal global ptr @rsnd_adg_create_null_clk._entry, section ".printk_index", align 4
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"audio_clkout\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_clkout1\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_clkout2\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_clkout3\00", [18 x i8] zeroinitializer }, align 32
@__const.rsnd_adg_get_clkout.brg_table = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 4, i32 2], align 4
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 503, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"too many clock-frequency\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rsnd_adg_get_clkout\00", [44 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkout._entry_ptr = internal global ptr @rsnd_adg_get_clkout._entry, section ".printk_index", align 4
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clkout-lr-asynchronous\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkout._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.33, ptr @.str.2, i32 618, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adg clock OUT get failed\0A\00", [38 x i8] zeroinitializer }, align 32
@rsnd_adg_get_clkout._entry_ptr.38 = internal global ptr @rsnd_adg_get_clkout._entry.36, section ".printk_index", align 4
@switch.table.rsnd_adg_get_timesel_ratio = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0, i32 7, i32 0], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 356, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 651, i32 19 }
@___asan_gen_.54 = private unnamed_addr constant [9 x i8] c"clk_name\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 59, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 654, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 656, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 657, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 664, i32 19 }
@___asan_gen_.69 = private unnamed_addr constant [8 x i8] c"adg_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 24, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 160, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 288, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 640, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 60, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 61, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 62, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 63, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 25, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 444, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 407, i32 36 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 395, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 477, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 478, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 479, i32 15 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 480, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 497, i32 30 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 503, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 520, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 578, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.166 = private constant [27 x i8] c"../sound/soc/sh/rcar/adg.c\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.166, i32 618, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant [40 x i8] c"switch.table.rsnd_adg_get_timesel_ratio\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__rsnd_adg_get_timesel_ratio._entry, ptr @__rsnd_adg_get_timesel_ratio._entry_ptr, ptr @rsnd_adg_create_null_clk._entry, ptr @rsnd_adg_create_null_clk._entry_ptr, ptr @rsnd_adg_get_clkin._entry, ptr @rsnd_adg_get_clkin._entry_ptr, ptr @rsnd_adg_get_clkout._entry, ptr @rsnd_adg_get_clkout._entry.36, ptr @rsnd_adg_get_clkout._entry_ptr, ptr @rsnd_adg_get_clkout._entry_ptr.38, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clk_name, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @adg_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @switch.table.rsnd_adg_get_timesel_ratio], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adg_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_adg_get_clkin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_adg_create_null_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_adg_get_clkout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rsnd_adg_get_clkout._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rsnd_adg_get_timesel_ratio to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef %cmd_mod, ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %cmd_mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %adg2 = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adg2, align 4
  %mod = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 4
  %call = tail call i32 @rsnd_mod_id(ptr noundef %cmd_mod) #8
  %4 = shl i32 %call, 4
  %5 = and i32 %4, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !93
  %call3 = tail call i32 @rsnd_src_get_rate(ptr noundef %1, ptr noundef %io, i32 noundef 1) #8
  %call4 = tail call i32 @rsnd_src_get_rate(ptr noundef %1, ptr noundef %io, i32 noundef 0) #8
  call fastcc void @rsnd_adg_get_timesel_ratio(ptr noundef %1, ptr noundef %io, i32 noundef %call3, i32 noundef %call4, ptr noundef null, ptr noundef nonnull %val, ptr noundef null)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shl = shl i32 %8, %5
  store i32 %shl, ptr %val, align 4
  %shl5 = shl nuw nsw i32 3871, %5
  call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 32, i32 noundef %shl5, i32 noundef %shl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rsnd_adg_get_timesel_ratio(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %io, i32 noundef %in_rate, i32 noundef %out_rate, ptr noundef writeonly %in, ptr noundef writeonly %out, ptr noundef writeonly %en) unnamed_addr #0 align 64 {
entry:
  %sel_rate.i = alloca [5 x i32], align 4
  %_in = alloca i32, align 4
  %_out = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.rsnd_dai_stream, ptr %io, i32 0, i32 1
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %runtime2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_in)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_out)
  %arrayidx.i = getelementptr %struct.rsnd_dai_stream, ptr %io, i32 0, i32 2, i32 11
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef %5) #8
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call3.i = tail call i32 @__rsnd_ssi_is_pin_sharing(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %cond.end.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge, label %if.then.i

cond.end.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_ssi_ws_timing_gen2.exit

if.then.i:                                        ; preds = %cond.end
  %switch.tableidx = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 9
  br i1 %8, label %switch.hole_check, label %if.then.i.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge

if.then.i.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_ssi_ws_timing_gen2.exit

switch.hole_check:                                ; preds = %if.then.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 395, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge, label %switch.lookup

switch.hole_check.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_ssi_ws_timing_gen2.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.rsnd_adg_get_timesel_ratio, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rsnd_adg_ssi_ws_timing_gen2.exit

rsnd_adg_ssi_ws_timing_gen2.exit:                 ; preds = %switch.lookup, %switch.hole_check.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge, %if.then.i.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge, %cond.end.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge
  %ws.0.i = phi i32 [ %call.i, %if.then.i.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge ], [ %call.i, %cond.end.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge ], [ %call.i, %switch.hole_check.rsnd_adg_ssi_ws_timing_gen2.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %add.i = shl i32 %ws.0.i, 8
  %shl.i = add i32 %add.i, 1536
  %11 = ptrtoint ptr %_out to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %_out, align 4
  %12 = ptrtoint ptr %_in to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i, ptr %_in, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %cond, i32 0, i32 14
  %13 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %in_rate)
  %cmp.not = icmp eq i32 %14, %in_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %out_rate)
  %cmp4.not = icmp eq i32 %14, %out_rate
  %spec.select = select i1 %cmp4.not, i32 0, i32 %in_rate
  %spec.select30 = select i1 %cmp4.not, ptr null, ptr %_in
  %target_rate.0 = select i1 %cmp.not, i32 %spec.select, i32 %out_rate
  %target_val.0 = select i1 %cmp.not, ptr %spec.select30, ptr %_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %target_rate.0)
  %tobool7.not = icmp eq i32 %target_rate.0, 0
  br i1 %tobool7.not, label %rsnd_adg_ssi_ws_timing_gen2.exit.if.end9_crit_edge, label %if.then8

rsnd_adg_ssi_ws_timing_gen2.exit.if.end9_crit_edge: ; preds = %rsnd_adg_ssi_ws_timing_gen2.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %rsnd_adg_ssi_ws_timing_gen2.exit
  %adg1.i = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %15 = ptrtoint ptr %adg1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adg1.i, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sel_rate.i) #8
  %19 = getelementptr inbounds [5 x i32], ptr %sel_rate.i, i32 0, i32 1
  %20 = getelementptr inbounds [5 x i32], ptr %sel_rate.i, i32 0, i32 2
  %21 = getelementptr inbounds [5 x i32], ptr %sel_rate.i, i32 0, i32 3
  %22 = getelementptr inbounds [5 x i32], ptr %sel_rate.i, i32 0, i32 4
  %clk_rate.i = getelementptr inbounds %struct.rsnd_adg, ptr %16, i32 0, i32 5
  %23 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_rate.i, align 4
  %25 = ptrtoint ptr %sel_rate.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sel_rate.i, align 4
  %arrayidx4.i = getelementptr %struct.rsnd_adg, ptr %16, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx4.i, align 4
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %19, align 4
  %arrayidx7.i = getelementptr %struct.rsnd_adg, ptr %16, i32 0, i32 5, i32 2
  %29 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx7.i, align 4
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %20, align 4
  %rbga_rate_for_441khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %16, i32 0, i32 10
  %32 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rbga_rate_for_441khz.i, align 4
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %21, align 4
  %rbgb_rate_for_48khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %16, i32 0, i32 11
  %35 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rbgb_rate_for_48khz.i, align 4
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %22, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then8
  %min.011.i = phi i32 [ -1, %if.then8 ], [ %min.3.i, %cleanup.i.for.body.i_crit_edge ]
  %en.010.i = phi i32 [ 0, %if.then8 ], [ %en.3.i, %cleanup.i.for.body.i_crit_edge ]
  %val.09.i = phi i32 [ 0, %if.then8 ], [ %val.3.i, %cleanup.i.for.body.i_crit_edge ]
  %sel.07.i = phi i32 [ 0, %if.then8 ], [ %inc35.pre-phi.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx10.i = getelementptr [5 x i32], ptr %sel_rate.i, i32 0, i32 %sel.07.i
  %38 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i31 = icmp eq i32 %39, 0
  br i1 %tobool.not.i31, label %for.body.i.cleanup.i_crit_edge, label %for.cond11.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  %shl.i32 = shl i32 %sel.07.i, 8
  %shl20.i = shl i32 2, %sel.07.i
  br label %for.body13.i

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond11.preheader.i
  %div.06.i = phi i32 [ 2, %for.cond11.preheader.i ], [ %add31.i, %for.body13.i.for.body13.i_crit_edge ]
  %step.05.i = phi i32 [ 2, %for.cond11.preheader.i ], [ %step.2.i, %for.body13.i.for.body13.i_crit_edge ]
  %idx.04.i = phi i32 [ 0, %for.cond11.preheader.i ], [ %inc.i, %for.body13.i.for.body13.i_crit_edge ]
  %min.13.i = phi i32 [ %min.011.i, %for.cond11.preheader.i ], [ %41, %for.body13.i.for.body13.i_crit_edge ]
  %en.12.i = phi i32 [ %en.010.i, %for.cond11.preheader.i ], [ %en.2.i, %for.body13.i.for.body13.i_crit_edge ]
  %val.11.i = phi i32 [ %val.09.i, %for.cond11.preheader.i ], [ %val.2.i, %for.body13.i.for.body13.i_crit_edge ]
  %div15.i = udiv i32 %39, %div.06.i
  %sub.i = sub i32 %target_rate.0, %div15.i
  %40 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %min.13.i, i32 %40)
  %cmp18.i = icmp ugt i32 %min.13.i, %40
  %or.i = or i32 %idx.04.i, %shl.i32
  %val.2.i = select i1 %cmp18.i, i32 %or.i, i32 %val.11.i
  %en.2.i = select i1 %cmp18.i, i32 %shl20.i, i32 %en.12.i
  %41 = tail call i32 @llvm.umin.i32(i32 %min.13.i, i32 %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.04.i)
  %cmp22.i = icmp sgt i32 %idx.04.i, 2
  %42 = and i32 %idx.04.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool23.not.i = icmp ne i32 %42, 0
  %not.or.cond.i = and i1 %cmp22.i, %tobool23.not.i
  %mul.i = zext i1 %not.or.cond.i to i32
  %step.1.i = shl i32 %step.05.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %idx.04.i)
  %cmp26.i = icmp eq i32 %idx.04.i, 28
  %mul29.i = zext i1 %cmp26.i to i32
  %step.2.i = shl i32 %step.1.i, %mul29.i
  %add28.i = select i1 %cmp26.i, i32 %step.1.i, i32 0
  %div.1.i = add i32 %add28.i, %div.06.i
  %inc.i = add i32 %idx.04.i, 1
  %add31.i = add i32 %div.1.i, %step.2.i
  %cmp12.i = icmp slt i32 %add31.i, 98305
  br i1 %cmp12.i, label %for.body13.i.for.body13.i_crit_edge, label %for.body13.i.cleanup.i_crit_edge

for.body13.i.cleanup.i_crit_edge:                 ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13.i

cleanup.i:                                        ; preds = %for.body13.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %val.3.i = phi i32 [ %val.09.i, %for.body.i.cleanup.i_crit_edge ], [ %val.2.i, %for.body13.i.cleanup.i_crit_edge ]
  %en.3.i = phi i32 [ %en.010.i, %for.body.i.cleanup.i_crit_edge ], [ %en.2.i, %for.body13.i.cleanup.i_crit_edge ]
  %min.3.i = phi i32 [ %min.011.i, %for.body.i.cleanup.i_crit_edge ], [ %41, %for.body13.i.cleanup.i_crit_edge ]
  %inc35.pre-phi.i = add nuw nsw i32 %sel.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc35.pre-phi.i, 5
  br i1 %exitcond.not.i, label %for.end36.i, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end36.i:                                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %min.3.i)
  %cmp37.i = icmp eq i32 %min.3.i, -1
  br i1 %cmp37.i, label %do.end.i, label %if.end39.i

do.end.i:                                         ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.9) #11
  br label %__rsnd_adg_get_timesel_ratio.exit

if.end39.i:                                       ; preds = %for.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %target_val.0 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %val.3.i, ptr %target_val.0, align 4
  br label %__rsnd_adg_get_timesel_ratio.exit

__rsnd_adg_get_timesel_ratio.exit:                ; preds = %if.end39.i, %do.end.i
  %_en.0 = phi i32 [ 0, %do.end.i ], [ %en.3.i, %if.end39.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sel_rate.i) #8
  br label %if.end9

if.end9:                                          ; preds = %__rsnd_adg_get_timesel_ratio.exit, %rsnd_adg_ssi_ws_timing_gen2.exit.if.end9_crit_edge
  %_en.1 = phi i32 [ 0, %rsnd_adg_ssi_ws_timing_gen2.exit.if.end9_crit_edge ], [ %_en.0, %__rsnd_adg_get_timesel_ratio.exit ]
  %tobool10.not = icmp eq ptr %in, null
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %_in to i32
  call void @__asan_load4_noabort(i32 %44)
  %_in.0._in.0. = load i32, ptr %_in, align 4
  %45 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %_in.0._in.0., ptr %in, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %tobool13.not = icmp eq ptr %out, null
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %_out to i32
  call void @__asan_load4_noabort(i32 %46)
  %_out.0._out.0. = load i32, ptr %_out, align 4
  %47 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %_out.0._out.0., ptr %out, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %en, null
  br i1 %tobool16.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %_en.1, ptr %en, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_out)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_in)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_src_get_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_bset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_set_src_timesel_gen2(ptr noundef %src_mod, ptr nocapture noundef readonly %io, i32 noundef %in_rate, i32 noundef %out_rate) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca i32, align 4
  %out = alloca i32, align 4
  %en = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %src_mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %adg2 = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adg2, align 4
  %mod = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #8
  %4 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %in, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out) #8
  %5 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %out, align 4, !annotation !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %en) #8
  %6 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %en, align 4, !annotation !93
  %call = tail call i32 @rsnd_mod_id(ptr noundef %src_mod) #8
  %7 = shl i32 %call, 4
  %8 = and i32 %7, 16
  call fastcc void @rsnd_adg_get_timesel_ratio(ptr noundef %1, ptr noundef %io, i32 noundef %in_rate, i32 noundef %out_rate, ptr noundef nonnull %in, ptr noundef nonnull %out, ptr noundef nonnull %en)
  %9 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %in, align 4
  %shl = shl i32 %10, %8
  store i32 %shl, ptr %in, align 4
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  %shl3 = shl i32 %12, %8
  store i32 %shl3, ptr %out, align 4
  %shl4 = shl nuw nsw i32 3871, %8
  %div = sdiv i32 %call, 2
  %add = add nsw i32 %div, 14
  call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef %add, i32 noundef %shl4, i32 noundef %shl) #8
  %add6 = add nsw i32 %div, 19
  %13 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %out, align 4
  call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef %add6, i32 noundef %shl4, i32 noundef %14) #8
  %15 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 100, i32 noundef %16, i32 noundef %16) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %en) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #8
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_clk_query(ptr nocapture noundef readonly %priv, i32 noundef %rate) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adg1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %adg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adg1, align 4
  %arrayidx = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp2 = icmp eq i32 %3, %rate
  br i1 %cmp2, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %i.020.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ]
  %arrayidx3 = getelementptr [4 x i32], ptr @__const.rsnd_adg_clk_query.sel_table, i32 0, i32 %i.020.lcssa
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx3, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp2.1 = icmp eq i32 %7, %rate
  br i1 %cmp2.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rate)
  %cmp2.2 = icmp eq i32 %9, %rate
  br i1 %cmp2.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate)
  %cmp2.3 = icmp eq i32 %11, %rate
  br i1 %cmp2.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %rbga_rate_for_441khz = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %rbga_rate_for_441khz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rbga_rate_for_441khz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rate)
  %cmp4 = icmp eq i32 %13, %rate
  br i1 %cmp4, label %for.inc.3.cleanup_crit_edge, label %if.end6

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %rbgb_rate_for_48khz = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %rbgb_rate_for_48khz to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rbgb_rate_for_48khz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %rate)
  %cmp7 = icmp eq i32 %15, %rate
  %. = select i1 %cmp7, i32 32, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.inc.3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ 16, %for.inc.3.cleanup_crit_edge ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_ssi_clk_stop(ptr noundef %ssi_mod) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.rsnd_mod, ptr %ssi_mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %adg2.i = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adg2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adg2.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev3.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef %ssi_mod) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 8
  br i1 %cmp.i, label %entry.rsnd_adg_set_ssi_clk.exit_crit_edge, label %if.end.i

entry.rsnd_adg_set_ssi_clk.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_set_ssi_clk.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.frozen = freeze i32 %call.i
  %div.i = sdiv i32 %call.i.frozen, 4
  %6 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %call.i.frozen, %6
  %mul.i = shl nsw i32 %rem.i.decomposed, 3
  %shl.i = shl i32 255, %mul.i
  %mod.i = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 4
  %add.i = add nsw i32 %div.i, 101
  tail call void @rsnd_mod_bset(ptr noundef %mod.i, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_adg_ssi_clk_stop, %if.then8.i)) #8
          to label %rsnd_adg_set_ssi_clk.exit [label %if.then8.i], !srcloc !94

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242, ptr noundef %dev3.i, ptr noundef nonnull @.str.14, i32 noundef 0) #8
  br label %rsnd_adg_set_ssi_clk.exit

rsnd_adg_set_ssi_clk.exit:                        ; preds = %if.then8.i, %if.end.i, %entry.rsnd_adg_set_ssi_clk.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_ssi_clk_try_start(ptr noundef %ssi_mod, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rsnd_mod, ptr %ssi_mod, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %adg2 = getelementptr inbounds %struct.rsnd_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adg2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adg2, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %mod = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.rsnd_adg, ptr %3, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %rate)
  %cmp2.i = icmp eq i32 %7, %rate
  br i1 %cmp2.i, label %entry.rsnd_adg_clk_query.exit_crit_edge, label %for.inc.i

entry.rsnd_adg_clk_query.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_clk_query.exit

for.inc.i:                                        ; preds = %entry
  %arrayidx.1.i = getelementptr %struct.rsnd_adg, ptr %3, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %rate)
  %cmp2.1.i = icmp eq i32 %9, %rate
  br i1 %cmp2.1.i, label %for.inc.i.rsnd_adg_clk_query.exit_crit_edge, label %for.inc.1.i

for.inc.i.rsnd_adg_clk_query.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_clk_query.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr %struct.rsnd_adg, ptr %3, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %rate)
  %cmp2.2.i = icmp eq i32 %11, %rate
  br i1 %cmp2.2.i, label %for.inc.1.i.rsnd_adg_clk_query.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.rsnd_adg_clk_query.exit_crit_edge:    ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_clk_query.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr %struct.rsnd_adg, ptr %3, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %rate)
  %cmp2.3.i = icmp eq i32 %13, %rate
  br i1 %cmp2.3.i, label %for.inc.2.i.rsnd_adg_clk_query.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.rsnd_adg_clk_query.exit_crit_edge:    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_clk_query.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %rbga_rate_for_441khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rbga_rate_for_441khz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %rate)
  %cmp4.i = icmp eq i32 %15, %rate
  br i1 %cmp4.i, label %for.inc.3.i.if.end_crit_edge, label %if.end6.i

for.inc.3.i.if.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end6.i:                                        ; preds = %for.inc.3.i
  %rbgb_rate_for_48khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 11
  %16 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rbgb_rate_for_48khz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %rate)
  %cmp7.i = icmp eq i32 %17, %rate
  br i1 %cmp7.i, label %if.end6.i.if.end_crit_edge, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i.if.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

rsnd_adg_clk_query.exit:                          ; preds = %for.inc.2.i.rsnd_adg_clk_query.exit_crit_edge, %for.inc.1.i.rsnd_adg_clk_query.exit_crit_edge, %for.inc.i.rsnd_adg_clk_query.exit_crit_edge, %entry.rsnd_adg_clk_query.exit_crit_edge
  %i.020.lcssa.i = phi i32 [ 0, %entry.rsnd_adg_clk_query.exit_crit_edge ], [ 1, %for.inc.i.rsnd_adg_clk_query.exit_crit_edge ], [ 2, %for.inc.1.i.rsnd_adg_clk_query.exit_crit_edge ], [ 3, %for.inc.2.i.rsnd_adg_clk_query.exit_crit_edge ]
  %arrayidx3.i = getelementptr [4 x i32], ptr @__const.rsnd_adg_clk_query.sel_table, i32 0, i32 %i.020.lcssa.i
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx3.i, align 4
  br label %if.end

if.end:                                           ; preds = %rsnd_adg_clk_query.exit, %if.end6.i.if.end_crit_edge, %for.inc.3.i.if.end_crit_edge
  %retval.0.i4952 = phi i32 [ %19, %rsnd_adg_clk_query.exit ], [ 16, %for.inc.3.i.if.end_crit_edge ], [ 32, %if.end6.i.if.end_crit_edge ]
  %call.i = tail call i32 @rsnd_mod_id(ptr noundef %ssi_mod) #8
  %call.i.frozen = freeze i32 %call.i
  %div.i = sdiv i32 %call.i.frozen, 4
  %20 = mul i32 %div.i, 4
  %rem.i.decomposed = sub i32 %call.i.frozen, %20
  %mul.i = shl nsw i32 %rem.i.decomposed, 3
  %shl4.i = shl i32 %retval.0.i4952, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 8
  br i1 %cmp.i, label %if.end.rsnd_adg_set_ssi_clk.exit_crit_edge, label %if.end.i

if.end.rsnd_adg_set_ssi_clk.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_set_ssi_clk.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl i32 255, %mul.i
  %add.i = add nsw i32 %div.i, 101
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl4.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_adg_ssi_clk_try_start, %if.then8.i)) #8
          to label %rsnd_adg_set_ssi_clk.exit [label %if.then8.i], !srcloc !94

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242, ptr noundef %dev3, ptr noundef nonnull @.str.14, i32 noundef %shl4.i) #8
  br label %rsnd_adg_set_ssi_clk.exit

rsnd_adg_set_ssi_clk.exit:                        ; preds = %if.then8.i, %if.end.i, %if.end.rsnd_adg_set_ssi_clk.exit_crit_edge
  %flags = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %rsnd_adg_set_ssi_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and6 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %23 = shl nuw i32 %and6, 30
  br label %if.end13

if.else:                                          ; preds = %rsnd_adg_set_ssi_clk.exit
  call void @__sanitizer_cov_trace_pc() #10
  %rem = urem i32 %rate, 8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 0
  %not.cmp10 = xor i1 %cmp10, true
  %spec.select48 = select i1 %cmp10, i32 -2147483648, i32 0
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then4
  %tobool20.not = phi i1 [ %tobool7.not, %if.then4 ], [ %not.cmp10, %if.else ]
  %ckr.0 = phi i32 [ %23, %if.then4 ], [ %spec.select48, %if.else ]
  %ckr14 = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %ckr14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ckr14, align 4
  %or = or i32 %25, %ckr.0
  tail call void @rsnd_mod_bset(ptr noundef %mod, i32 noundef 99, i32 noundef -2139684864, i32 noundef %or) #8
  %rbga = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %rbga to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rbga, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 97, i32 noundef %27) #8
  %rbgb = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %rbgb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rbgb, align 4
  tail call void @rsnd_mod_write(ptr noundef %mod, i32 noundef 98, i32 noundef %29) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rsnd_adg_ssi_clk_try_start.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rsnd_adg_ssi_clk_try_start, %if.then19)) #8
          to label %cleanup [label %if.then19], !srcloc !94

if.then19:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %cond = select i1 %tobool20.not, i32 65, i32 66
  %rbgb_rate_for_48khz = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 11
  %rbga_rate_for_441khz = getelementptr inbounds %struct.rsnd_adg, ptr %3, i32 0, i32 10
  %cond22.in = select i1 %tobool20.not, ptr %rbga_rate_for_441khz, ptr %rbgb_rate_for_48khz
  %30 = ptrtoint ptr %cond22.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %cond22 = load i32, ptr %cond22.in, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rsnd_adg_ssi_clk_try_start.__UNIQUE_ID_ddebug243, ptr noundef %dev3, ptr noundef nonnull @.str.3, i32 noundef %cond, i32 noundef %cond22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end13, %if.end6.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then19 ], [ 0, %if.end13 ], [ -5, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_adg_clk_control(ptr nocapture noundef readonly %priv, i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adg1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %adg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adg1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  br i1 %tobool3.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.for.inc.thread_crit_edge

if.then.for.inc.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.thread

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc.thread_crit_edge, label %if.then3.i

if.end.i.for.inc.thread_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.thread

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  tail call void @clk_disable(ptr noundef nonnull %3) #8
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  %arrayidx.1 = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.thread:                                   ; preds = %if.then3.i, %if.end.i.for.inc.thread_crit_edge, %if.then.for.inc.thread_crit_edge
  %call4 = tail call i32 @clk_get_rate(ptr noundef nonnull %3) #8
  %arrayidx5 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 0
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call4, ptr %arrayidx5, align 4
  %arrayidx.114 = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx.114 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.114, align 4
  %tobool.not.115 = icmp eq ptr %8, null
  br i1 %tobool.not.115, label %for.inc.thread.for.end_crit_edge, label %if.then.1

for.inc.thread.for.end_crit_edge:                 ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.1:                                        ; preds = %for.inc.thread
  %call.i.1 = tail call i32 @clk_prepare(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then.1.for.inc.1.thread_crit_edge

if.then.1.for.inc.1.thread_crit_edge:             ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread

if.end.i.1:                                       ; preds = %if.then.1
  %call1.i.1 = tail call i32 @clk_enable(ptr noundef nonnull %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1)
  %tobool2.not.i.1 = icmp eq i32 %call1.i.1, 0
  br i1 %tobool2.not.i.1, label %if.end.i.1.for.inc.1.thread_crit_edge, label %if.then3.i.1

if.end.i.1.for.inc.1.thread_crit_edge:            ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.thread

if.then3.i.1:                                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %8) #8
  br label %for.inc.1.thread

for.inc.1:                                        ; preds = %for.inc
  tail call void @clk_disable(ptr noundef nonnull %5) #8
  tail call void @clk_unprepare(ptr noundef nonnull %5) #8
  %arrayidx.2 = getelementptr [4 x ptr], ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %10, null
  br i1 %tobool.not.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1.thread:                                 ; preds = %if.then3.i.1, %if.end.i.1.for.inc.1.thread_crit_edge, %if.then.1.for.inc.1.thread_crit_edge
  %call4.1 = tail call i32 @clk_get_rate(ptr noundef nonnull %8) #8
  %arrayidx5.1 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call4.1, ptr %arrayidx5.1, align 4
  %arrayidx.216 = getelementptr [4 x ptr], ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx.216 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.216, align 4
  %tobool.not.217 = icmp eq ptr %13, null
  br i1 %tobool.not.217, label %for.inc.1.thread.for.end_crit_edge, label %if.then.2

for.inc.1.thread.for.end_crit_edge:               ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.2:                                        ; preds = %for.inc.1.thread
  %call.i.2 = tail call i32 @clk_prepare(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.then.2.for.inc.2.thread_crit_edge

if.then.2.for.inc.2.thread_crit_edge:             ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.thread

if.end.i.2:                                       ; preds = %if.then.2
  %call1.i.2 = tail call i32 @clk_enable(ptr noundef nonnull %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2)
  %tobool2.not.i.2 = icmp eq i32 %call1.i.2, 0
  br i1 %tobool2.not.i.2, label %if.end.i.2.for.inc.2.thread_crit_edge, label %if.then3.i.2

if.end.i.2.for.inc.2.thread_crit_edge:            ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.thread

if.then3.i.2:                                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %13) #8
  br label %for.inc.2.thread

for.inc.2:                                        ; preds = %for.inc.1
  tail call void @clk_disable(ptr noundef nonnull %10) #8
  tail call void @clk_unprepare(ptr noundef nonnull %10) #8
  %arrayidx.3 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %15, null
  br i1 %tobool.not.3, label %for.inc.2.for.end_crit_edge, label %if.else.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2.thread:                                 ; preds = %if.then3.i.2, %if.end.i.2.for.inc.2.thread_crit_edge, %if.then.2.for.inc.2.thread_crit_edge
  %call4.2 = tail call i32 @clk_get_rate(ptr noundef nonnull %13) #8
  %arrayidx5.2 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 2
  %16 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4.2, ptr %arrayidx5.2, align 4
  %arrayidx.318 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.318 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.318, align 4
  %tobool.not.319 = icmp eq ptr %18, null
  br i1 %tobool.not.319, label %for.inc.2.thread.for.end_crit_edge, label %if.then.3

for.inc.2.thread.for.end_crit_edge:               ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.3:                                        ; preds = %for.inc.2.thread
  %call.i.3 = tail call i32 @clk_prepare(ptr noundef nonnull %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %if.end.i.3, label %if.then.3.clk_prepare_enable.exit.3_crit_edge

if.then.3.clk_prepare_enable.exit.3_crit_edge:    ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.3

if.end.i.3:                                       ; preds = %if.then.3
  %call1.i.3 = tail call i32 @clk_enable(ptr noundef nonnull %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.3)
  %tobool2.not.i.3 = icmp eq i32 %call1.i.3, 0
  br i1 %tobool2.not.i.3, label %if.end.i.3.clk_prepare_enable.exit.3_crit_edge, label %if.then3.i.3

if.end.i.3.clk_prepare_enable.exit.3_crit_edge:   ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit.3

if.then3.i.3:                                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %18) #8
  br label %clk_prepare_enable.exit.3

clk_prepare_enable.exit.3:                        ; preds = %if.then3.i.3, %if.end.i.3.clk_prepare_enable.exit.3_crit_edge, %if.then.3.clk_prepare_enable.exit.3_crit_edge
  %call4.3 = tail call i32 @clk_get_rate(ptr noundef nonnull %18) #8
  %arrayidx5.3 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 5, i32 3
  %19 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call4.3, ptr %arrayidx5.3, align 4
  br label %for.end

if.else.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %15) #8
  tail call void @clk_unprepare(ptr noundef nonnull %15) #8
  br label %for.end

for.end:                                          ; preds = %if.else.3, %clk_prepare_enable.exit.3, %for.inc.2.thread.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.thread.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.thread.for.end_crit_edge, %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_adg_clk_dbg_info(ptr nocapture noundef readonly %priv, ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adg1 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %0 = ptrtoint ptr %adg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adg1, align 4
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %entry
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.17, ptr noundef nonnull %5, i32 noundef %call)
  %arrayidx.1 = getelementptr [4 x ptr], ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %for.body.for.end_crit_edge, label %for.body.1

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %call.1 = tail call i32 @clk_get_rate(ptr noundef nonnull %7) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.18, ptr noundef nonnull %7, i32 noundef %call.1)
  %arrayidx.2 = getelementptr [4 x ptr], ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %call.2 = tail call i32 @clk_get_rate(ptr noundef nonnull %9) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19, ptr noundef nonnull %9, i32 noundef %call.2)
  %arrayidx.3 = getelementptr [4 x ptr], ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.3 = tail call i32 @clk_get_rate(ptr noundef nonnull %11) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.20, ptr noundef nonnull %11, i32 noundef %call.3)
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ckr = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %ckr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ckr, align 4
  %rbga = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %rbga to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rbga, align 4
  %rbgb = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %rbgb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rbgb, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %13, i32 noundef %15, i32 noundef %17)
  %rbga_rate_for_441khz = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 10
  %18 = ptrtoint ptr %rbga_rate_for_441khz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rbga_rate_for_441khz, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %19)
  %rbgb_rate_for_48khz = getelementptr inbounds %struct.rsnd_adg, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %rbgb_rate_for_48khz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rbgb_rate_for_48khz, align 4
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %21)
  %arrayidx8 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 1, i32 0
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %for.end.for.end15_crit_edge, label %for.body11

for.end.for.end15_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body11:                                       ; preds = %for.end
  %call12 = tail call i32 @clk_get_rate(ptr noundef nonnull %23) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %23, i32 noundef %call12)
  %arrayidx8.1 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx8.1, align 4
  %tobool9.not.1 = icmp eq ptr %25, null
  br i1 %tobool9.not.1, label %for.body11.for.end15_crit_edge, label %for.body11.1

for.body11.for.end15_crit_edge:                   ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body11.1:                                     ; preds = %for.body11
  %call12.1 = tail call i32 @clk_get_rate(ptr noundef nonnull %25) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef nonnull %25, i32 noundef %call12.1)
  %arrayidx8.2 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8.2, align 4
  %tobool9.not.2 = icmp eq ptr %27, null
  br i1 %tobool9.not.2, label %for.body11.1.for.end15_crit_edge, label %for.body11.2

for.body11.1.for.end15_crit_edge:                 ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body11.2:                                     ; preds = %for.body11.1
  %call12.2 = tail call i32 @clk_get_rate(ptr noundef nonnull %27) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef 2, ptr noundef nonnull %27, i32 noundef %call12.2)
  %arrayidx8.3 = getelementptr %struct.rsnd_adg, ptr %1, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %arrayidx8.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx8.3, align 4
  %tobool9.not.3 = icmp eq ptr %29, null
  br i1 %tobool9.not.3, label %for.body11.2.for.end15_crit_edge, label %for.body11.3

for.body11.2.for.end15_crit_edge:                 ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body11.3:                                     ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #10
  %call12.3 = tail call i32 @clk_get_rate(ptr noundef nonnull %29) #8
  tail call void (ptr, ptr, ptr, ...) @dbg_msg(ptr noundef %dev2, ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef 3, ptr noundef nonnull %29, i32 noundef %call12.3)
  br label %for.end15

for.end15:                                        ; preds = %for.body11.3, %for.body11.2.for.end15_crit_edge, %for.body11.1.for.end15_crit_edge, %for.body11.for.end15_crit_edge, %for.end.for.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dbg_msg(ptr noundef %dev, ptr noundef %m, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %msg = alloca [128 x i8], align 1
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %msg) #8
  %0 = call ptr @memset(ptr %msg, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #8
  %1 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !93
  call void @llvm.va_start(ptr nonnull %args)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef nonnull %msg, i32 noundef 128, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %tobool.not = icmp eq ptr %m, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @seq_puts(ptr noundef nonnull %m, ptr noundef nonnull %msg) #8
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dbg_msg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dbg_msg, %if.then6)) #8
          to label %if.end8 [label %if.then6], !srcloc !94

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dbg_msg.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %msg) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %msg) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rsnd_adg_probe(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %req_rate.i = alloca [2 x i32], align 8
  %count.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mod = getelementptr inbounds %struct.rsnd_adg, ptr %call.i, i32 0, i32 4
  %call2 = tail call i32 @rsnd_mod_init(ptr noundef %priv, ptr noundef %mod, ptr noundef nonnull @adg_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %adg6 = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %adg6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %adg6, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.end5
  %i.030.i = phi i32 [ 0, %if.end5 ], [ %inc.i, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x ptr], ptr @clk_name, i32 0, i32 %i.030.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i30 = tail call ptr @devm_clk_get(ptr noundef %dev2.i, ptr noundef %6) #8
  %tobool.not.i.i = icmp eq ptr %call.i30, null
  %cmp.i.i = icmp ugt ptr %call.i30, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %7 = ptrtoint ptr %adg6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adg6, align 4
  %null_clk.i.i = getelementptr inbounds %struct.rsnd_adg, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %null_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %null_clk.i.i, align 4
  %tobool.not.i22.i = icmp eq ptr %10, null
  br i1 %tobool.not.i22.i, label %if.then.i.i, label %if.then.i.rsnd_adg_null_clk_get.exit.i_crit_edge

if.then.i.rsnd_adg_null_clk_get.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_null_clk_get.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call.i.i.i = tail call ptr @clk_register_fixed_rate(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i, null
  %cmp.i.i.i.i = icmp ugt ptr %call.i.i.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %do.end.i.i.i, label %if.then.i.i.rsnd_adg_create_null_clk.exit.i.i_crit_edge

if.then.i.i.rsnd_adg_create_null_clk.exit.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_create_null_clk.exit.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.25) #11
  br label %rsnd_adg_create_null_clk.exit.i.i

rsnd_adg_create_null_clk.exit.i.i:                ; preds = %do.end.i.i.i, %if.then.i.i.rsnd_adg_create_null_clk.exit.i.i_crit_edge
  %13 = ptrtoint ptr %null_clk.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %null_clk.i.i, align 4
  br label %rsnd_adg_null_clk_get.exit.i

rsnd_adg_null_clk_get.exit.i:                     ; preds = %rsnd_adg_create_null_clk.exit.i.i, %if.then.i.rsnd_adg_null_clk_get.exit.i_crit_edge
  %14 = ptrtoint ptr %null_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %null_clk.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %rsnd_adg_null_clk_get.exit.i, %for.body.i.if.end.i_crit_edge
  %clk.0.i = phi ptr [ %15, %rsnd_adg_null_clk_get.exit.i ], [ %call.i30, %for.body.i.if.end.i_crit_edge ]
  %tobool.not.i23.i = icmp eq ptr %clk.0.i, null
  %cmp.i24.i = icmp ugt ptr %clk.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i25.i = or i1 %tobool.not.i23.i, %cmp.i24.i
  br i1 %spec.select.i25.i, label %do.end.i, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %arrayidx9.i = getelementptr [4 x ptr], ptr %call.i, i32 0, i32 %i.030.i
  %16 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %clk.0.i, ptr %arrayidx9.i, align 4
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 4
  br i1 %exitcond.not.i, label %if.end10, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.22) #11
  %17 = ptrtoint ptr %adg6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adg6, align 4
  %null_clk.i27.i = getelementptr inbounds %struct.rsnd_adg, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %null_clk.i27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %null_clk.i27.i, align 4
  %tobool.not.i28.i = icmp eq ptr %20, null
  br i1 %tobool.not.i28.i, label %do.end.i.cleanup_crit_edge, label %if.then.i29.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i29.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %20) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7.i
  %21 = ptrtoint ptr %adg6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adg6, align 4
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 4
  %dev2.i32 = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %req_rate.i) #8
  %27 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 0, ptr %req_rate.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %count.i) #8
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %count.i, align 4
  %call.i33 = tail call ptr @of_find_property(ptr noundef %26, ptr noundef nonnull @.str.31, ptr noundef null) #8
  %tobool.not.i = icmp eq ptr %call.i33, null
  br i1 %tobool.not.i, label %if.end10.if.end14_crit_edge, label %if.end.i34

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end.i34:                                       ; preds = %if.end10
  %length.i = getelementptr inbounds %struct.property, ptr %call.i33, i32 0, i32 1
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %30)
  %cmp.i = icmp ugt i32 %30, 11
  br i1 %cmp.i, label %do.end.i35, label %if.end5.i

do.end.i35:                                       ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i32, ptr noundef nonnull @.str.32) #11
  br label %rsnd_adg_get_clkout.exit.thread

if.end5.i:                                        ; preds = %if.end.i34
  %div3226.i = lshr i32 %30, 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.31, ptr noundef nonnull %req_rate.i, i32 noundef %div3226.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp7324.not.i = icmp ult i32 %30, 4
  br i1 %cmp7324.not.i, label %if.end5.i.for.end.i_crit_edge, label %for.body.i39

if.end5.i.for.end.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i39:                                     ; preds = %if.end5.i
  %31 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %req_rate.i, align 8
  %rem.i = urem i32 %32, 44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp8.i = icmp eq i32 %rem.i, 0
  %spec.select.i = select i1 %cmp8.i, i32 %32, i32 0
  %rem13.i = urem i32 %32, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i)
  %cmp14.i = icmp eq i32 %rem13.i, 0
  %req_48kHz_rate.1.i = select i1 %cmp14.i, i32 %32, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %exitcond.not.i38 = icmp ult i32 %30, 8
  br i1 %exitcond.not.i38, label %for.body.i39.for.end.i_crit_edge, label %for.body.i39.1

for.body.i39.for.end.i_crit_edge:                 ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i39.1:                                   ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i36.1 = getelementptr inbounds [2 x i32], ptr %req_rate.i, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx.i36.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i36.1, align 4
  %rem.i.1 = urem i32 %34, 44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.1)
  %cmp8.i.1 = icmp eq i32 %rem.i.1, 0
  %spec.select.i.1 = select i1 %cmp8.i.1, i32 %34, i32 %spec.select.i
  %rem13.i.1 = urem i32 %34, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem13.i.1)
  %cmp14.i.1 = icmp eq i32 %rem13.i.1, 0
  %req_48kHz_rate.1.i.1 = select i1 %cmp14.i.1, i32 %34, i32 %req_48kHz_rate.1.i
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i39.1, %for.body.i39.for.end.i_crit_edge, %if.end5.i.for.end.i_crit_edge
  %req_48kHz_rate.0.lcssa.i = phi i32 [ 0, %if.end5.i.for.end.i_crit_edge ], [ %req_48kHz_rate.1.i, %for.body.i39.for.end.i_crit_edge ], [ %req_48kHz_rate.1.i.1, %for.body.i39.1 ]
  %req_441kHz_rate.0.lcssa.i = phi i32 [ 0, %if.end5.i.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i39.for.end.i_crit_edge ], [ %spec.select.i.1, %for.body.i39.1 ]
  %35 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %req_rate.i, align 8
  %rem19.i = urem i32 %36, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem19.i)
  %cmp20.i = icmp eq i32 %rem19.i, 0
  br i1 %cmp20.i, label %if.then21.i, label %for.end.i.if.end22.i_crit_edge

for.end.i.if.end22.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 6
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %38, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %for.end.i.if.end22.i_crit_edge
  %call23.i = call ptr @of_get_property(ptr noundef %26, ptr noundef nonnull @.str.34, ptr noundef null) #8
  %tobool24.not.i = icmp eq ptr %call23.i, null
  br i1 %tobool24.not.i, label %if.end22.i.if.end28.i_crit_edge, label %if.then25.i

if.end22.i.if.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags26.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 6
  %39 = ptrtoint ptr %flags26.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags26.i, align 4
  %or27.i = or i32 %40, 1
  store i32 %or27.i, ptr %flags26.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end28.i_crit_edge
  %rbga_rate_for_441khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 10
  %41 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %rbga_rate_for_441khz.i, align 4
  %rbgb_rate_for_48khz.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 11
  %42 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %rbgb_rate_for_48khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_441kHz_rate.0.lcssa.i)
  %tobool44.not.i = icmp eq i32 %req_441kHz_rate.0.lcssa.i, 0
  %flags57.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_48kHz_rate.0.lcssa.i)
  %tobool71.not.i = icmp eq i32 %req_48kHz_rate.0.lcssa.i, 0
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc94.i.land.rhs.i_crit_edge, %if.end28.i
  %parent_clk_name.0339.i = phi ptr [ null, %if.end28.i ], [ %parent_clk_name.2.i, %for.inc94.i.land.rhs.i_crit_edge ]
  %i.1335.i = phi i32 [ 0, %if.end28.i ], [ %inc95.i, %for.inc94.i.land.rhs.i_crit_edge ]
  %rbgb.0333.i = phi i32 [ 2, %if.end28.i ], [ %rbgb.1.i, %for.inc94.i.land.rhs.i_crit_edge ]
  %rbga.0331.i = phi i32 [ 2, %if.end28.i ], [ %rbga.2.i, %for.inc94.i.land.rhs.i_crit_edge ]
  %ckr.0329.i = phi i32 [ 0, %if.end28.i ], [ %ckr.2.i, %for.inc94.i.land.rhs.i_crit_edge ]
  %arrayidx32.i = getelementptr [4 x ptr], ptr %22, i32 0, i32 %i.1335.i
  %43 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx32.i, align 4
  %tobool33.not.i = icmp eq ptr %44, null
  br i1 %tobool33.not.i, label %land.rhs.i.for.end96.i_crit_edge, label %for.body34.i

land.rhs.i.for.end96.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.body34.i:                                     ; preds = %land.rhs.i
  %call35.i = call i32 @clk_get_rate(ptr noundef nonnull %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.i, label %for.body34.i.for.inc94.i_crit_edge, label %if.end38.i

for.body34.i.for.inc94.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

if.end38.i:                                       ; preds = %for.body34.i
  %45 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rbga_rate_for_441khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool40.not.i = icmp eq i32 %46, 0
  %rem41.i = urem i32 %call35.i, 44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem41.i)
  %cmp42.i = icmp eq i32 %rem41.i, 0
  %or.cond.i = select i1 %tobool40.not.i, i1 %cmp42.i, i1 false
  br i1 %or.cond.i, label %if.then43.i, label %if.end38.i.if.end64.i_crit_edge

if.end38.i.if.end64.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then43.i:                                      ; preds = %if.end38.i
  br i1 %tobool44.not.i, label %if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, label %if.end47.i

if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit.i

if.end47.i:                                       ; preds = %if.then43.i
  %div46.i = udiv i32 %call35.i, %req_441kHz_rate.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %req_441kHz_rate.0.lcssa.i, i32 %call35.i)
  %tobool.not.i.i40 = icmp ugt i32 %req_441kHz_rate.0.lcssa.i, %call35.i
  br i1 %tobool.not.i.i40, label %if.then50.thread.i, label %for.body.preheader.i.i

if.then50.thread.i:                               ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %div51283.i = udiv i32 %call35.i, %div46.i
  %47 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div51283.i, ptr %rbga_rate_for_441khz.i, align 4
  %arrayidx53284.i = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %i.1335.i
  %48 = ptrtoint ptr %arrayidx53284.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx53284.i, align 4
  %shl285.i = shl i32 %49, 20
  %or54286.i = or i32 %shl285.i, %ckr.0329.i
  br label %land.lhs.true56.i

for.body.preheader.i.i:                           ; preds = %if.end47.i
  %rem.i.i = and i32 %div46.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp1.i.i, label %for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, label %for.inc.i.i

for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge: ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit.i

for.inc.i.i:                                      ; preds = %for.body.preheader.i.i
  %rem.1.i.i = and i32 %div46.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i.i)
  %cmp1.1.i.i = icmp eq i32 %rem.1.i.i, 0
  br i1 %cmp1.1.i.i, label %for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %rem.2.i.i = and i32 %div46.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i.i)
  %cmp1.2.i.i = icmp eq i32 %rem.2.i.i, 0
  br i1 %cmp1.2.i.i, label %for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %rem.3.i.i = and i32 %div46.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i.i)
  %cmp1.3.i.i = icmp eq i32 %rem.3.i.i, 0
  br i1 %cmp1.3.i.i, label %for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, label %for.inc.2.i.i.if.end64.i_crit_edge

for.inc.2.i.i.if.end64.i_crit_edge:               ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit.i

rsnd_adg_calculate_rbgx.exit.i:                   ; preds = %for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, %for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, %for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, %for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge, %if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge
  %div.0256262.i = phi i32 [ %div46.i, %for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ %div46.i, %for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ %div46.i, %for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ %div46.i, %for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 6, %if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ]
  %i.016.lcssa.i.i = phi i32 [ 768, %for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 512, %for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 256, %for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 0, %for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 0, %if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ]
  %mul.lcssa.i.i = phi i32 [ 7, %for.body.preheader.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 5, %for.inc.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 3, %for.inc.1.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 1, %for.inc.2.i.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ], [ 1, %if.then43.i.rsnd_adg_calculate_rbgx.exit.i_crit_edge ]
  %div413.le.i.i = lshr i32 %div.0256262.i, %mul.lcssa.i.i
  %sub.le.i.i = add nsw i32 %div413.le.i.i, -1
  %or.le.i.i = or i32 %sub.le.i.i, %i.016.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %or.le.i.i)
  %50 = icmp ult i32 %or.le.i.i, 1024
  br i1 %50, label %if.then50.i, label %rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge

rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge: ; preds = %rsnd_adg_calculate_rbgx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then50.i:                                      ; preds = %rsnd_adg_calculate_rbgx.exit.i
  %div51.i = udiv i32 %call35.i, %div.0256262.i
  %51 = ptrtoint ptr %rbga_rate_for_441khz.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div51.i, ptr %rbga_rate_for_441khz.i, align 4
  %arrayidx53.i = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %i.1335.i
  %52 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx53.i, align 4
  %shl.i = shl i32 %53, 20
  %or54.i = or i32 %shl.i, %ckr.0329.i
  br i1 %tobool44.not.i, label %if.then50.i.if.end64.i_crit_edge, label %if.then50.i.land.lhs.true56.i_crit_edge

if.then50.i.land.lhs.true56.i_crit_edge:          ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true56.i

if.then50.i.if.end64.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

land.lhs.true56.i:                                ; preds = %if.then50.i.land.lhs.true56.i_crit_edge, %if.then50.thread.i
  %or54288.i = phi i32 [ %or54286.i, %if.then50.thread.i ], [ %or54.i, %if.then50.i.land.lhs.true56.i_crit_edge ]
  %retval.2.i277287.i = phi i32 [ 0, %if.then50.thread.i ], [ %or.le.i.i, %if.then50.i.land.lhs.true56.i_crit_edge ]
  %54 = ptrtoint ptr %flags57.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags57.i, align 4
  %and58.i = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %if.then60.i, label %land.lhs.true56.i.if.end64.i_crit_edge

land.lhs.true56.i.if.end64.i_crit_edge:           ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64.i

if.then60.i:                                      ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #10
  %call61.i = call ptr @__clk_get_name(ptr noundef nonnull %44) #8
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then60.i, %land.lhs.true56.i.if.end64.i_crit_edge, %if.then50.i.if.end64.i_crit_edge, %rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge, %for.inc.2.i.i.if.end64.i_crit_edge, %if.end38.i.if.end64.i_crit_edge
  %ckr.1.i = phi i32 [ %ckr.0329.i, %if.end38.i.if.end64.i_crit_edge ], [ %or54288.i, %land.lhs.true56.i.if.end64.i_crit_edge ], [ %or54288.i, %if.then60.i ], [ %or54.i, %if.then50.i.if.end64.i_crit_edge ], [ %ckr.0329.i, %rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge ], [ %ckr.0329.i, %for.inc.2.i.i.if.end64.i_crit_edge ]
  %rbga.1.i = phi i32 [ %rbga.0331.i, %if.end38.i.if.end64.i_crit_edge ], [ %retval.2.i277287.i, %land.lhs.true56.i.if.end64.i_crit_edge ], [ %retval.2.i277287.i, %if.then60.i ], [ %or.le.i.i, %if.then50.i.if.end64.i_crit_edge ], [ %rbga.0331.i, %rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge ], [ %rbga.0331.i, %for.inc.2.i.i.if.end64.i_crit_edge ]
  %parent_clk_name.1.i = phi ptr [ %parent_clk_name.0339.i, %if.end38.i.if.end64.i_crit_edge ], [ %parent_clk_name.0339.i, %land.lhs.true56.i.if.end64.i_crit_edge ], [ %call61.i, %if.then60.i ], [ %parent_clk_name.0339.i, %if.then50.i.if.end64.i_crit_edge ], [ %parent_clk_name.0339.i, %rsnd_adg_calculate_rbgx.exit.i.if.end64.i_crit_edge ], [ %parent_clk_name.0339.i, %for.inc.2.i.i.if.end64.i_crit_edge ]
  %56 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rbgb_rate_for_48khz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool66.not.i = icmp eq i32 %57, 0
  %rem68.i = urem i32 %call35.i, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem68.i)
  %cmp69.i = icmp eq i32 %rem68.i, 0
  %or.cond227.i = select i1 %tobool66.not.i, i1 %cmp69.i, i1 false
  br i1 %or.cond227.i, label %if.then70.i, label %if.end64.i.for.inc94.i_crit_edge

if.end64.i.for.inc94.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

if.then70.i:                                      ; preds = %if.end64.i
  br i1 %tobool71.not.i, label %if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, label %if.end74.i

if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge: ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit248.i

if.end74.i:                                       ; preds = %if.then70.i
  %div73.i = udiv i32 %call35.i, %req_48kHz_rate.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %req_48kHz_rate.0.lcssa.i, i32 %call35.i)
  %tobool.not.i228.i = icmp ugt i32 %req_48kHz_rate.0.lcssa.i, %call35.i
  br i1 %tobool.not.i228.i, label %if.then78.thread.i, label %for.body.preheader.i231.i

if.then78.thread.i:                               ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  %div79318.i = udiv i32 %call35.i, %div73.i
  %58 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div79318.i, ptr %rbgb_rate_for_48khz.i, align 4
  %arrayidx81319.i = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %i.1335.i
  %59 = ptrtoint ptr %arrayidx81319.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx81319.i, align 4
  %shl82320.i = shl i32 %60, 16
  %or83321.i = or i32 %shl82320.i, %ckr.1.i
  br label %land.lhs.true85.i

for.body.preheader.i231.i:                        ; preds = %if.end74.i
  %rem.i229.i = and i32 %div73.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i229.i)
  %cmp1.i230.i = icmp eq i32 %rem.i229.i, 0
  br i1 %cmp1.i230.i, label %for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, label %for.inc.i234.i

for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge: ; preds = %for.body.preheader.i231.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit248.i

for.inc.i234.i:                                   ; preds = %for.body.preheader.i231.i
  %rem.1.i232.i = and i32 %div73.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1.i232.i)
  %cmp1.1.i233.i = icmp eq i32 %rem.1.i232.i, 0
  br i1 %cmp1.1.i233.i, label %for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, label %for.inc.1.i237.i

for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge: ; preds = %for.inc.i234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit248.i

for.inc.1.i237.i:                                 ; preds = %for.inc.i234.i
  %rem.2.i235.i = and i32 %div73.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2.i235.i)
  %cmp1.2.i236.i = icmp eq i32 %rem.2.i235.i, 0
  br i1 %cmp1.2.i236.i, label %for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, label %for.inc.2.i240.i

for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge: ; preds = %for.inc.1.i237.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit248.i

for.inc.2.i240.i:                                 ; preds = %for.inc.1.i237.i
  %rem.3.i238.i = and i32 %div73.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3.i238.i)
  %cmp1.3.i239.i = icmp eq i32 %rem.3.i238.i, 0
  br i1 %cmp1.3.i239.i, label %for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, label %for.inc.2.i240.i.for.inc94.i_crit_edge

for.inc.2.i240.i.for.inc94.i_crit_edge:           ; preds = %for.inc.2.i240.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge: ; preds = %for.inc.2.i240.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_calculate_rbgx.exit248.i

rsnd_adg_calculate_rbgx.exit248.i:                ; preds = %for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, %for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, %for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, %for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge, %if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge
  %div.1291297.i = phi i32 [ %div73.i, %for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ %div73.i, %for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ %div73.i, %for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ %div73.i, %for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 6, %if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ]
  %i.016.lcssa.i241.i = phi i32 [ 768, %for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 512, %for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 256, %for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 0, %for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 0, %if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ]
  %mul.lcssa.i242.i = phi i32 [ 7, %for.body.preheader.i231.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 5, %for.inc.i234.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 3, %for.inc.1.i237.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 1, %for.inc.2.i240.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ], [ 1, %if.then70.i.rsnd_adg_calculate_rbgx.exit248.i_crit_edge ]
  %div413.le.i243.i = lshr i32 %div.1291297.i, %mul.lcssa.i242.i
  %sub.le.i244.i = add nsw i32 %div413.le.i243.i, -1
  %or.le.i245.i = or i32 %sub.le.i244.i, %i.016.lcssa.i241.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %or.le.i245.i)
  %61 = icmp ult i32 %or.le.i245.i, 1024
  br i1 %61, label %if.then78.i, label %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge

rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge: ; preds = %rsnd_adg_calculate_rbgx.exit248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

if.then78.i:                                      ; preds = %rsnd_adg_calculate_rbgx.exit248.i
  %div79.i = udiv i32 %call35.i, %div.1291297.i
  %62 = ptrtoint ptr %rbgb_rate_for_48khz.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div79.i, ptr %rbgb_rate_for_48khz.i, align 4
  %arrayidx81.i = getelementptr [4 x i32], ptr @__const.rsnd_adg_get_clkout.brg_table, i32 0, i32 %i.1335.i
  %63 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx81.i, align 4
  %shl82.i = shl i32 %64, 16
  %or83.i = or i32 %shl82.i, %ckr.1.i
  br i1 %tobool71.not.i, label %if.then78.i.for.inc94.i_crit_edge, label %if.then78.i.land.lhs.true85.i_crit_edge

if.then78.i.land.lhs.true85.i_crit_edge:          ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true85.i

if.then78.i.for.inc94.i_crit_edge:                ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

land.lhs.true85.i:                                ; preds = %if.then78.i.land.lhs.true85.i_crit_edge, %if.then78.thread.i
  %or83323.i = phi i32 [ %or83321.i, %if.then78.thread.i ], [ %or83.i, %if.then78.i.land.lhs.true85.i_crit_edge ]
  %retval.2.i247312322.i = phi i32 [ 0, %if.then78.thread.i ], [ %or.le.i245.i, %if.then78.i.land.lhs.true85.i_crit_edge ]
  %65 = ptrtoint ptr %flags57.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags57.i, align 4
  %and87.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %land.lhs.true85.i.for.inc94.i_crit_edge, label %if.then89.i

land.lhs.true85.i.for.inc94.i_crit_edge:          ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc94.i

if.then89.i:                                      ; preds = %land.lhs.true85.i
  call void @__sanitizer_cov_trace_pc() #10
  %call90.i = call ptr @__clk_get_name(ptr noundef nonnull %44) #8
  br label %for.inc94.i

for.inc94.i:                                      ; preds = %if.then89.i, %land.lhs.true85.i.for.inc94.i_crit_edge, %if.then78.i.for.inc94.i_crit_edge, %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge, %for.inc.2.i240.i.for.inc94.i_crit_edge, %if.end64.i.for.inc94.i_crit_edge, %for.body34.i.for.inc94.i_crit_edge
  %ckr.2.i = phi i32 [ %ckr.0329.i, %for.body34.i.for.inc94.i_crit_edge ], [ %ckr.1.i, %if.end64.i.for.inc94.i_crit_edge ], [ %or83323.i, %if.then89.i ], [ %or83323.i, %land.lhs.true85.i.for.inc94.i_crit_edge ], [ %or83.i, %if.then78.i.for.inc94.i_crit_edge ], [ %ckr.1.i, %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge ], [ %ckr.1.i, %for.inc.2.i240.i.for.inc94.i_crit_edge ]
  %rbga.2.i = phi i32 [ %rbga.0331.i, %for.body34.i.for.inc94.i_crit_edge ], [ %rbga.1.i, %if.end64.i.for.inc94.i_crit_edge ], [ %rbga.1.i, %if.then89.i ], [ %rbga.1.i, %land.lhs.true85.i.for.inc94.i_crit_edge ], [ %rbga.1.i, %if.then78.i.for.inc94.i_crit_edge ], [ %rbga.1.i, %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge ], [ %rbga.1.i, %for.inc.2.i240.i.for.inc94.i_crit_edge ]
  %rbgb.1.i = phi i32 [ %rbgb.0333.i, %for.body34.i.for.inc94.i_crit_edge ], [ %rbgb.0333.i, %if.end64.i.for.inc94.i_crit_edge ], [ %retval.2.i247312322.i, %if.then89.i ], [ %retval.2.i247312322.i, %land.lhs.true85.i.for.inc94.i_crit_edge ], [ %or.le.i245.i, %if.then78.i.for.inc94.i_crit_edge ], [ %rbgb.0333.i, %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge ], [ %rbgb.0333.i, %for.inc.2.i240.i.for.inc94.i_crit_edge ]
  %parent_clk_name.2.i = phi ptr [ %parent_clk_name.0339.i, %for.body34.i.for.inc94.i_crit_edge ], [ %parent_clk_name.1.i, %if.end64.i.for.inc94.i_crit_edge ], [ %call90.i, %if.then89.i ], [ %parent_clk_name.1.i, %land.lhs.true85.i.for.inc94.i_crit_edge ], [ %parent_clk_name.1.i, %if.then78.i.for.inc94.i_crit_edge ], [ %parent_clk_name.1.i, %rsnd_adg_calculate_rbgx.exit248.i.for.inc94.i_crit_edge ], [ %parent_clk_name.1.i, %for.inc.2.i240.i.for.inc94.i_crit_edge ]
  %inc95.i = add nuw nsw i32 %i.1335.i, 1
  %exitcond343.not.i = icmp eq i32 %inc95.i, 4
  br i1 %exitcond343.not.i, label %for.inc94.i.for.end96.i_crit_edge, label %for.inc94.i.land.rhs.i_crit_edge

for.inc94.i.land.rhs.i_crit_edge:                 ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

for.inc94.i.for.end96.i_crit_edge:                ; preds = %for.inc94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i

for.end96.i:                                      ; preds = %for.inc94.i.for.end96.i_crit_edge, %land.rhs.i.for.end96.i_crit_edge
  %ckr.0.lcssa.i = phi i32 [ %ckr.2.i, %for.inc94.i.for.end96.i_crit_edge ], [ %ckr.0329.i, %land.rhs.i.for.end96.i_crit_edge ]
  %rbga.0.lcssa.i = phi i32 [ %rbga.2.i, %for.inc94.i.for.end96.i_crit_edge ], [ %rbga.0331.i, %land.rhs.i.for.end96.i_crit_edge ]
  %rbgb.0.lcssa.i = phi i32 [ %rbgb.1.i, %for.inc94.i.for.end96.i_crit_edge ], [ %rbgb.0333.i, %land.rhs.i.for.end96.i_crit_edge ]
  %parent_clk_name.0.lcssa.i = phi ptr [ %parent_clk_name.2.i, %for.inc94.i.for.end96.i_crit_edge ], [ %parent_clk_name.0339.i, %land.rhs.i.for.end96.i_crit_edge ]
  %call.i.i.i41 = call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.35, ptr noundef nonnull %count.i, i32 noundef 1, i32 noundef 0) #8
  %67 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool98.not.i = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %req_rate.i, align 8
  %call101.i = call ptr @clk_register_fixed_rate(ptr noundef %dev2.i32, ptr noundef nonnull @.str.27, ptr noundef %parent_clk_name.0.lcssa.i, i32 noundef 0, i32 noundef %70) #8
  %tobool.not.i249.i = icmp eq ptr %call101.i, null
  %cmp.i.i42 = icmp ugt ptr %call101.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i43 = or i1 %tobool.not.i249.i, %cmp.i.i42
  br i1 %tobool98.not.i, label %if.then99.i, label %for.body109.preheader.i

for.body109.preheader.i:                          ; preds = %for.end96.i
  br i1 %spec.select.i.i43, label %for.body109.preheader.i.do.end132.i_crit_edge, label %if.end115.i

for.body109.preheader.i.do.end132.i_crit_edge:    ; preds = %for.body109.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i

if.then99.i:                                      ; preds = %for.end96.i
  br i1 %spec.select.i.i43, label %if.then99.i.do.end132.i_crit_edge, label %if.end104.i

if.then99.i.do.end132.i_crit_edge:                ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i

if.end104.i:                                      ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  %clkout.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 1
  %71 = ptrtoint ptr %clkout.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call101.i, ptr %clkout.i, align 4
  %call106.i = call i32 @of_clk_add_provider(ptr noundef %26, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef nonnull %call101.i) #8
  br label %if.end14

if.end115.i:                                      ; preds = %for.body109.preheader.i
  %arrayidx117.i = getelementptr %struct.rsnd_adg, ptr %22, i32 0, i32 1, i32 0
  %72 = ptrtoint ptr %arrayidx117.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call101.i, ptr %arrayidx117.i, align 4
  %73 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %req_rate.i, align 8
  %call112.1.i = call ptr @clk_register_fixed_rate(ptr noundef %dev2.i32, ptr noundef nonnull @.str.28, ptr noundef %parent_clk_name.0.lcssa.i, i32 noundef 0, i32 noundef %74) #8
  %tobool.not.i250.1.i = icmp eq ptr %call112.1.i, null
  %cmp.i251.1.i = icmp ugt ptr %call112.1.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i252.1.i = or i1 %tobool.not.i250.1.i, %cmp.i251.1.i
  br i1 %spec.select.i252.1.i, label %if.end115.i.do.end132.i_crit_edge, label %if.end115.1.i

if.end115.i.do.end132.i_crit_edge:                ; preds = %if.end115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i

if.end115.1.i:                                    ; preds = %if.end115.i
  %arrayidx117.1.i = getelementptr %struct.rsnd_adg, ptr %22, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %arrayidx117.1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call112.1.i, ptr %arrayidx117.1.i, align 4
  %76 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %req_rate.i, align 8
  %call112.2.i = call ptr @clk_register_fixed_rate(ptr noundef %dev2.i32, ptr noundef nonnull @.str.29, ptr noundef %parent_clk_name.0.lcssa.i, i32 noundef 0, i32 noundef %77) #8
  %tobool.not.i250.2.i = icmp eq ptr %call112.2.i, null
  %cmp.i251.2.i = icmp ugt ptr %call112.2.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i252.2.i = or i1 %tobool.not.i250.2.i, %cmp.i251.2.i
  br i1 %spec.select.i252.2.i, label %if.end115.1.i.do.end132.i_crit_edge, label %if.end115.2.i

if.end115.1.i.do.end132.i_crit_edge:              ; preds = %if.end115.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i

if.end115.2.i:                                    ; preds = %if.end115.1.i
  %arrayidx117.2.i = getelementptr %struct.rsnd_adg, ptr %22, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %arrayidx117.2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call112.2.i, ptr %arrayidx117.2.i, align 4
  %79 = ptrtoint ptr %req_rate.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %req_rate.i, align 8
  %call112.3.i = call ptr @clk_register_fixed_rate(ptr noundef %dev2.i32, ptr noundef nonnull @.str.30, ptr noundef %parent_clk_name.0.lcssa.i, i32 noundef 0, i32 noundef %80) #8
  %tobool.not.i250.3.i = icmp eq ptr %call112.3.i, null
  %cmp.i251.3.i = icmp ugt ptr %call112.3.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i252.3.i = or i1 %tobool.not.i250.3.i, %cmp.i251.3.i
  br i1 %spec.select.i252.3.i, label %if.end115.2.i.do.end132.i_crit_edge, label %if.end115.3.i

if.end115.2.i.do.end132.i_crit_edge:              ; preds = %if.end115.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end132.i

if.end115.3.i:                                    ; preds = %if.end115.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx117.3.i = getelementptr %struct.rsnd_adg, ptr %22, i32 0, i32 1, i32 3
  %81 = ptrtoint ptr %arrayidx117.3.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call112.3.i, ptr %arrayidx117.3.i, align 4
  %onecell.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 3
  %82 = ptrtoint ptr %onecell.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %arrayidx117.i, ptr %onecell.i, align 4
  %clk_num.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %clk_num.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4, ptr %clk_num.i, align 4
  %call125.i = call i32 @of_clk_add_provider(ptr noundef %26, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %onecell.i) #8
  br label %if.end14

do.end132.i:                                      ; preds = %if.end115.2.i.do.end132.i_crit_edge, %if.end115.1.i.do.end132.i_crit_edge, %if.end115.i.do.end132.i_crit_edge, %if.then99.i.do.end132.i_crit_edge, %for.body109.preheader.i.do.end132.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i32, ptr noundef nonnull @.str.37) #11
  %84 = ptrtoint ptr %adg6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %adg6, align 4
  %arrayidx.i.i = getelementptr %struct.rsnd_adg, ptr %85, i32 0, i32 1, i32 0
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i253.i = icmp eq ptr %87, null
  br i1 %tobool.not.i253.i, label %do.end132.i.rsnd_adg_get_clkout.exit.thread_crit_edge, label %for.body.i.i

do.end132.i.rsnd_adg_get_clkout.exit.thread_crit_edge: ; preds = %do.end132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_get_clkout.exit.thread

for.body.i.i:                                     ; preds = %do.end132.i
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %87) #8
  %arrayidx.1.i.i = getelementptr %struct.rsnd_adg, ptr %85, i32 0, i32 1, i32 1
  %88 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.1.i.i, align 4
  %tobool.not.1.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.1.i.i, label %for.body.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, label %for.body.1.i.i

for.body.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_get_clkout.exit.thread

for.body.1.i.i:                                   ; preds = %for.body.i.i
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %89) #8
  %arrayidx.2.i.i = getelementptr %struct.rsnd_adg, ptr %85, i32 0, i32 1, i32 2
  %90 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.2.i.i, align 4
  %tobool.not.2.i.i = icmp eq ptr %91, null
  br i1 %tobool.not.2.i.i, label %for.body.1.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, label %for.body.2.i.i

for.body.1.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge: ; preds = %for.body.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_get_clkout.exit.thread

for.body.2.i.i:                                   ; preds = %for.body.1.i.i
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %91) #8
  %arrayidx.3.i.i = getelementptr %struct.rsnd_adg, ptr %85, i32 0, i32 1, i32 3
  %92 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.3.i.i, align 4
  %tobool.not.3.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.3.i.i, label %for.body.2.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, label %for.body.3.i.i

for.body.2.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge: ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_get_clkout.exit.thread

for.body.3.i.i:                                   ; preds = %for.body.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %93) #8
  br label %rsnd_adg_get_clkout.exit.thread

rsnd_adg_get_clkout.exit.thread:                  ; preds = %for.body.3.i.i, %for.body.2.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, %for.body.1.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, %for.body.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge, %do.end132.i.rsnd_adg_get_clkout.exit.thread_crit_edge, %do.end.i35
  %retval.0.i44.ph = phi i32 [ -5, %for.body.3.i.i ], [ -5, %for.body.2.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge ], [ -5, %for.body.1.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge ], [ -5, %for.body.i.i.rsnd_adg_get_clkout.exit.thread_crit_edge ], [ -5, %do.end132.i.rsnd_adg_get_clkout.exit.thread_crit_edge ], [ -22, %do.end.i35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_rate.i) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end115.3.i, %if.end104.i, %if.end10.if.end14_crit_edge
  %ckr.3.i = phi i32 [ %ckr.0.lcssa.i, %if.end115.3.i ], [ %ckr.0.lcssa.i, %if.end104.i ], [ 0, %if.end10.if.end14_crit_edge ]
  %rbga.3.i = phi i32 [ %rbga.0.lcssa.i, %if.end115.3.i ], [ %rbga.0.lcssa.i, %if.end104.i ], [ 2, %if.end10.if.end14_crit_edge ]
  %rbgb.2.i = phi i32 [ %rbgb.0.lcssa.i, %if.end115.3.i ], [ %rbgb.0.lcssa.i, %if.end104.i ], [ 2, %if.end10.if.end14_crit_edge ]
  %ckr127.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 7
  %94 = ptrtoint ptr %ckr127.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %ckr.3.i, ptr %ckr127.i, align 4
  %rbga128.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 8
  %95 = ptrtoint ptr %rbga128.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %rbga.3.i, ptr %rbga128.i, align 4
  %rbgb129.i = getelementptr inbounds %struct.rsnd_adg, ptr %22, i32 0, i32 9
  %96 = ptrtoint ptr %rbgb129.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %rbgb.2.i, ptr %rbgb129.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %count.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %req_rate.i) #8
  call void @rsnd_adg_clk_control(ptr noundef %priv, i32 noundef 1)
  call void @rsnd_adg_clk_dbg_info(ptr noundef %priv, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %rsnd_adg_get_clkout.exit.thread, %if.then.i29.i, %do.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %retval.0.i44.ph, %rsnd_adg_get_clkout.exit.thread ], [ -5, %do.end.i.cleanup_crit_edge ], [ -5, %if.then.i29.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rsnd_adg_remove(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %adg1.i = getelementptr inbounds %struct.rsnd_priv, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %adg1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adg1.i, align 4
  %arrayidx.i = getelementptr %struct.rsnd_adg, ptr %5, i32 0, i32 1, i32 0
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.rsnd_adg_unregister_clkout.exit_crit_edge, label %for.body.i

entry.rsnd_adg_unregister_clkout.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_unregister_clkout.exit

for.body.i:                                       ; preds = %entry
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %7) #8
  %arrayidx.1.i = getelementptr %struct.rsnd_adg, ptr %5, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %9, null
  br i1 %tobool.not.1.i, label %for.body.i.rsnd_adg_unregister_clkout.exit_crit_edge, label %for.body.1.i

for.body.i.rsnd_adg_unregister_clkout.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_unregister_clkout.exit

for.body.1.i:                                     ; preds = %for.body.i
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %9) #8
  %arrayidx.2.i = getelementptr %struct.rsnd_adg, ptr %5, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %11, null
  br i1 %tobool.not.2.i, label %for.body.1.i.rsnd_adg_unregister_clkout.exit_crit_edge, label %for.body.2.i

for.body.1.i.rsnd_adg_unregister_clkout.exit_crit_edge: ; preds = %for.body.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_unregister_clkout.exit

for.body.2.i:                                     ; preds = %for.body.1.i
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %11) #8
  %arrayidx.3.i = getelementptr %struct.rsnd_adg, ptr %5, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %13, null
  br i1 %tobool.not.3.i, label %for.body.2.i.rsnd_adg_unregister_clkout.exit_crit_edge, label %for.body.3.i

for.body.2.i.rsnd_adg_unregister_clkout.exit_crit_edge: ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_unregister_clkout.exit

for.body.3.i:                                     ; preds = %for.body.2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %13) #8
  br label %rsnd_adg_unregister_clkout.exit

rsnd_adg_unregister_clkout.exit:                  ; preds = %for.body.3.i, %for.body.2.i.rsnd_adg_unregister_clkout.exit_crit_edge, %for.body.1.i.rsnd_adg_unregister_clkout.exit_crit_edge, %for.body.i.rsnd_adg_unregister_clkout.exit_crit_edge, %entry.rsnd_adg_unregister_clkout.exit_crit_edge
  tail call void @of_clk_del_provider(ptr noundef %3) #8
  tail call void @rsnd_adg_clk_control(ptr noundef %priv, i32 noundef 0)
  %14 = ptrtoint ptr %adg1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adg1.i, align 4
  %null_clk.i = getelementptr inbounds %struct.rsnd_adg, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %null_clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %null_clk.i, align 4
  %tobool.not.i6 = icmp eq ptr %17, null
  br i1 %tobool.not.i6, label %rsnd_adg_unregister_clkout.exit.rsnd_adg_null_clk_clean.exit_crit_edge, label %if.then.i

rsnd_adg_unregister_clkout.exit.rsnd_adg_null_clk_clean.exit_crit_edge: ; preds = %rsnd_adg_unregister_clkout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rsnd_adg_null_clk_clean.exit

if.then.i:                                        ; preds = %rsnd_adg_unregister_clkout.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %17) #8
  br label %rsnd_adg_null_clk_clean.exit

rsnd_adg_null_clk_clean.exit:                     ; preds = %if.then.i, %rsnd_adg_unregister_clkout.exit.rsnd_adg_null_clk_clean.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rsnd_ssi_is_pin_sharing(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sh/rcar/adg.c", i32 356, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rsnd_adg_ssi_clk_try_start.__UNIQUE_ID_ddebug243, !1, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/sh/rcar/adg.c", i32 651, i32 19}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/sh/rcar/adg.c", i32 654, i32 18}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sh/rcar/adg.c", i32 656, i32 18}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/sh/rcar/adg.c", i32 657, i32 18}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sh/rcar/adg.c", i32 664, i32 19}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/sh/rcar/adg.c", i32 160, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__rsnd_adg_get_timesel_ratio._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @__rsnd_adg_get_timesel_ratio._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/sh/rcar/adg.c", i32 288, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rsnd_adg_set_ssi_clk.__UNIQUE_ID_ddebug242, !24, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/sh/rcar/adg.c", i32 640, i32 3}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dbg_msg.__UNIQUE_ID_ddebug244, !28, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/sh/rcar/adg.c", i32 60, i32 11}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sh/rcar/adg.c", i32 61, i32 11}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/sh/rcar/adg.c", i32 62, i32 11}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/sh/rcar/adg.c", i32 63, i32 11}
!39 = !{ptr @clk_name, !40, !"clk_name", i1 false, i1 false}
!40 = !{!"../sound/soc/sh/rcar/adg.c", i32 59, i32 27}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sh/rcar/adg.c", i32 25, i32 10}
!43 = !{ptr @adg_ops, !44, !"adg_ops", i1 false, i1 false}
!44 = !{!"../sound/soc/sh/rcar/adg.c", i32 24, i32 28}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sh/rcar/adg.c", i32 444, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rsnd_adg_get_clkin._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @rsnd_adg_get_clkin._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sh/rcar/adg.c", i32 407, i32 36}
!52 = distinct !{null, !53, !"name", i1 false, i1 false}
!53 = !{!"../sound/soc/sh/rcar/adg.c", i32 407, i32 29}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sh/rcar/adg.c", i32 395, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @rsnd_adg_create_null_clk._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @rsnd_adg_create_null_clk._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sh/rcar/adg.c", i32 477, i32 15}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/sh/rcar/adg.c", i32 478, i32 15}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/sh/rcar/adg.c", i32 479, i32 15}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/sh/rcar/adg.c", i32 480, i32 15}
!67 = distinct !{null, !68, !"clkout_name", i1 false, i1 false}
!68 = !{!"../sound/soc/sh/rcar/adg.c", i32 476, i32 28}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/sh/rcar/adg.c", i32 497, i32 30}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/sh/rcar/adg.c", i32 503, i32 3}
!73 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @rsnd_adg_get_clkout._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @rsnd_adg_get_clkout._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/sh/rcar/adg.c", i32 520, i32 26}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sh/rcar/adg.c", i32 578, i32 27}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/sh/rcar/adg.c", i32 618, i32 2}
!82 = !{ptr @rsnd_adg_get_clkout._entry.36, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rsnd_adg_get_clkout._entry_ptr.38, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"auto-init"}
!94 = !{i64 2148930202, i64 2148930207, i64 2148930220, i64 2148930264, i64 2148930298, i64 2148930319}
